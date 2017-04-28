/*
* Copyright (C) 2014 MediaTek Inc.
* Modification based on code covered by the mentioned copyright
* and/or permission notice(s).
*/
/*
 * Copyright (C) 2007-2008 Esmertec AG.
 * Copyright (C) 2007-2008 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.android.mms.transaction;

import static com.google.android.mms.pdu.PduHeaders.STATUS_EXPIRED;

import android.app.Activity;
import android.app.ActivityThread;
import android.app.PendingIntent;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SqliteWrapper;
import android.net.Uri;
import android.provider.Telephony;
import android.provider.Telephony.Mms;
import android.support.v4.content.FileProvider;
import android.telephony.SmsManager;
import android.text.TextUtils;
import android.util.Log;

import com.android.internal.telephony.PhoneConstants;
import com.android.mms.LogTag;
import com.android.mms.MmsApp;
import com.android.mms.MmsConfig;
import com.android.mms.ui.MessageUtils;
import com.android.mms.util.DownloadManager;
import com.android.mms.util.MmsLog;
import com.android.mms.util.Recycler;
import com.google.android.mms.InvalidHeaderValueException;
import com.google.android.mms.MmsException;
import com.google.android.mms.pdu.AcknowledgeInd;
import com.google.android.mms.pdu.EncodedStringValue;
import com.google.android.mms.pdu.GenericPdu;
import com.google.android.mms.pdu.NotificationInd;
import com.google.android.mms.pdu.NotifyRespInd;
import com.google.android.mms.pdu.PduComposer;
import com.google.android.mms.pdu.PduHeaders;
import com.google.android.mms.pdu.PduParser;
import com.google.android.mms.pdu.PduPersister;
import com.google.android.mms.pdu.RetrieveConf;

import com.mediatek.mms.ext.IOpRetrieveTransactionExt;
import com.mediatek.opmsg.util.OpMessageUtils;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
/**
 * The RetrieveTransaction is responsible for retrieving multimedia
 * messages (M-Retrieve.conf) from the MMSC server.  It:
 *
 * <ul>
 * <li>Sends a GET request to the MMSC server.
 * <li>Retrieves the binary M-Retrieve.conf data and parses it.
 * <li>Persists the retrieve multimedia message.
 * <li>Determines whether an acknowledgement is required.
 * <li>Creates appropriate M-Acknowledge.ind and sends it to MMSC server.
 * <li>Notifies the TransactionService about succesful completion.
 * </ul>
 */
public class RetrieveTransaction extends Transaction implements Runnable {
    private static final String TAG = LogTag.TAG;
    private static final boolean DEBUG = false;
    private static final boolean LOCAL_LOGV = false;
    private static final String NOTIFY_RESP_NAME = "NotifyResp_retr";
    private static final String ACK_RESP_NAME = "AckResp_retr";
    private static final String RETRIEVE_RESULT_NAME = "RetrieveResult_retr";
    private static final String LOCATION_SELECTION =
        Telephony.Mms.MESSAGE_TYPE + "=? AND " + Telephony.Mms.CONTENT_LOCATION + " =?";
    private String mMessageUri = null;
    private boolean mLocked;

    /// M: For OP009 Plug-in
/*    private static IMmsFailedNotifyExt sMmsFailedNotifyPlugin;
    private static IMmsCancelDownloadExt sCancelDownloadPlugin;*/
    /// @}
    private IOpRetrieveTransactionExt mOpRetrieveTransactionExt;

    static final String[] PROJECTION = new String[] {
        Mms.CONTENT_LOCATION,
        Mms.LOCKED
    };

    // The indexes of the columns which must be consistent with above PROJECTION.
    static final int COLUMN_CONTENT_LOCATION      = 0;
    static final int COLUMN_LOCKED                = 1;

    public RetrieveTransaction(Context context, int serviceId, String uri, int subId)
            throws MmsException {
        super(context, serviceId, subId);

        if (uri.startsWith("content://")) {
            mUri = Uri.parse(uri); // The Uri of the M-Notification.ind
            mContentLocation = getContentLocation(context, mUri);
            if (LOCAL_LOGV) {
                Log.v(TAG, "X-Mms-Content-Location: " + mContentLocation);
            }
        } else {
            throw new IllegalArgumentException(
                    "Initializing from X-Mms-Content-Location is abandoned!");
        }
        mId = uri;
        // Attach the transaction to the instance of RetryScheduler.
        attach(RetryScheduler.getInstance(context));

        mOpRetrieveTransactionExt = OpMessageUtils.getOpMessagePlugin()
                .getOpRetrieveTransactionExt();
        mOpRetrieveTransactionExt.init(DownloadManager.getInstance());
    }

    private String getContentLocation(Context context, Uri uri)
            throws MmsException {
        Cursor cursor = SqliteWrapper.query(context, context.getContentResolver(),
                            uri, PROJECTION, null, null, null);
        mLocked = false;

        if (cursor != null) {
            try {
                if ((cursor.getCount() == 1) && cursor.moveToFirst()) {
                    // Get the locked flag from the M-Notification.ind so it can be transferred
                    // to the real message after the download.
                    mLocked = cursor.getInt(COLUMN_LOCKED) == 1;
                    return cursor.getString(COLUMN_CONTENT_LOCATION);
                }
            } finally {
                cursor.close();
            }
        }

        throw new MmsException("Cannot get X-Mms-Content-Location from: " + uri);
    }

    /*
     * (non-Javadoc)
     * @see com.android.mms.transaction.Transaction#process()
     */
    @Override
    public void process() {
        new Thread(this, "RetrieveTransaction").start();
    }

    public void run() {
        MmsLog.i(MmsApp.TXN_TAG, "RetrieveTransaction: run()");
        try {
            NotificationInd nInd = (NotificationInd) PduPersister.getPduPersister(mContext).load(
                    mUri);
            if (nInd.getExpiry() < System.currentTimeMillis() / 1000L) {
                MmsLog.d(MmsApp.TXN_TAG, "The message is expired!");
                sendExpiredRes();
                // Change the downloading state of the M-Notification.ind.
                DownloadManager.getInstance().markState(mUri, DownloadManager.STATE_DOWNLOADING);
                mTransactionState.setState(TransactionState.SUCCESS);
                mTransactionState.setContentUri(mUri);
                notifyObservers();
                return;
            }

            // Change the downloading state of the M-Notification.ind.
            DownloadManager.getInstance().markState(
                    mUri, DownloadManager.STATE_DOWNLOADING);

            /// M: For OP009, check if cancel download requested. @{
/*            if (MmsConfig.isCancelDownloadEnable() && mIsCancelling) {
                mTransactionState.setState(TransactionState.SUCCESS);
                mTransactionState.setContentUri(mUri);

                if (MmsConfig.isCancelDownloadEnable()) {
                    sMmsFailedNotifyPlugin.popupToast(mContext,
                        IMmsFailedNotifyExt.CANCEL_DOWNLOAD, null);
                }
                mIsCancelling = false;
                final Uri trxnUri = getUri();
                sCancelDownloadPlugin.markStateExt(trxnUri, sCancelDownloadPlugin.STATE_COMPLETE);
                DownloadManager.getInstance().markState(trxnUri, DownloadManager.STATE_UNSTARTED);

                return;
            }*/
            /// @}

            if (mOpRetrieveTransactionExt.run(mIsCancelling,
                    mUri, mContext, getUri(), mContentLocation)) {
                mTransactionState.setState(TransactionState.SUCCESS);
                mTransactionState.setContentUri(mUri);
                mIsCancelling = false;
                return;
            }

            mPduFile = createPduFile(null, RETRIEVE_RESULT_NAME + mUri.getLastPathSegment());
            mPduFile.setWritable(true, false);
            //Intent intent = new Intent(TransactionService.ACTION_TRANSACION_PROCESSED);
            //intent.putExtra(PhoneConstants.SUBSCRIPTION_KEY, mSubId);
            //intent.putExtra(TransactionBundle.URI, mUri.toString());
            Log.d(MmsApp.TXN_TAG, "RetrieveTransaction mUri:" + mUri);
            final Intent intent = new Intent(TransactionService.ACTION_TRANSACION_PROCESSED,
                    mUri,
                    mContext,
                    MmsReceiver.class);
            intent.putExtra(PhoneConstants.SUBSCRIPTION_KEY, mSubId);

            PendingIntent downloadedIntent = PendingIntent.getBroadcast(mContext, 0, intent,
                    PendingIntent.FLAG_UPDATE_CURRENT);
            SmsManager manager = SmsManager.getSmsManagerForSubscriptionId(mSubId);
            Log.d(MmsApp.TXN_TAG, "download MMS with param, mContentLocation = " + mContentLocation
                    + ", mUri = " + mUri + ", subId" + mSubId);
            /// M: Add MmsService configure param @{
            Uri pduFileUri = FileProvider.getUriForFile(
                    mContext, MMS_FILE_PROVIDER_AUTHORITIES, mPduFile);
            manager.downloadMultimediaMessage(mContext, mContentLocation, pduFileUri,
                    MmsConfig.getMmsServiceConfig(), downloadedIntent);
            /// @}

            // Make sure this thread isn't over the limits in message count.
            Recycler.getMmsRecycler().deleteOldMessagesInSameThreadAsMessage(mContext, mUri);

            /// OP009 MMS Feature: cancel download Mms @{
/*            if (MmsConfig.isCancelDownloadEnable()) {
                sCancelDownloadPlugin.addHttpClient(mContentLocation, mUri);
            }*/
            /// @}

            // Send ACK to the Proxy-Relay to indicate we have fetched the
            // MM successfully.
            // Don't mark the transaction as failed if we failed to send it.
            // sendAcknowledgeInd(retrieveConf);
        } catch (Throwable t) {
            Log.e(TAG, Log.getStackTraceString(t));
            mTransactionState.setState(TransactionState.FAILED);
            mTransactionState.setContentUri(mUri);
            notifyObservers();
        }
    }

    @Override
    public int getType() {
        return RETRIEVE_TRANSACTION;
    }

    private void sendNotifyRespInd(int status) {
        MmsLog.i(MmsApp.TXN_TAG, "RetrieveTransaction: sendNotifyRespInd()");
        // Create the M-NotifyResp.ind
        try {
            NotificationInd notificationInd =
                (NotificationInd) PduPersister.getPduPersister(mContext)
                    .load(mUri);

            NotifyRespInd notifyRespInd = null;
            try {
                notifyRespInd = new NotifyRespInd(PduHeaders.CURRENT_MMS_VERSION,
                        notificationInd.getTransactionId(), status);
            } catch (InvalidHeaderValueException ex) {
                ex.printStackTrace();
                return;
            }
            byte[] datas = new PduComposer(mContext, notifyRespInd).make();
            File pduFile = createPduFile(datas, NOTIFY_RESP_NAME + mUri.getLastPathSegment());
            if (pduFile == null) {
                return;
            }

            SmsManager manager = SmsManager.getSmsManagerForSubscriptionId(mSubId);
            /*
            Intent intent = new Intent(TransactionService.ACTION_TRANSACION_PROCESSED);
            intent.putExtra(PhoneConstants.SUBSCRIPTION_KEY, mSubId);
            // intent.putExtra(TransactionBundle.URI, mUri.toString());
            PendingIntent sentIntent = PendingIntent.getBroadcast(mContext, 0, intent,
                    PendingIntent.FLAG_UPDATE_CURRENT);
                    */
            // Pack M-NotifyResp.ind and send it
            Uri pduFileUri = FileProvider.getUriForFile(
                    mContext, MMS_FILE_PROVIDER_AUTHORITIES, pduFile);
            if (MmsConfig.getNotifyWapMMSC()) {
                manager.sendMultimediaMessage(mContext, pduFileUri, mContentLocation,
                        null, null);
            } else {
                manager.sendMultimediaMessage(mContext, pduFileUri, null, null, null);
            }
        } catch (Throwable t) {
            Log.e(TAG, Log.getStackTraceString(t));
        }
    }

    public void sendAcknowledgeInd() {
        if (mMessageUri == null) {
            MmsLog.w(MmsApp.TXN_TAG, "RetrieveTransaction: mMessageUri is null");
            return;
        }
        // Send M-Acknowledge.ind to MMSC if required.
        // If the Transaction-ID isn't set in the M-Retrieve.conf, it means
        // the MMS proxy-relay doesn't require an ACK.
        MmsLog.i(MmsApp.TXN_TAG, "RetrieveTransaction: sendAcknowledgeInd()");
        try {
            Uri uri = Uri.parse(mMessageUri);
            PduPersister persister = PduPersister.getPduPersister(mContext);
            RetrieveConf retrieveConf = null;

            retrieveConf = (RetrieveConf) persister.load(uri);

            byte[] tranId = retrieveConf.getTransactionId();
            if (tranId != null) {
                // Create M-Acknowledge.ind
                AcknowledgeInd acknowledgeInd = new AcknowledgeInd(PduHeaders.CURRENT_MMS_VERSION,
                        tranId);

                // insert the 'from' address per spec
                String lineNumber = MessageUtils.getLocalNumber(mSubId);
                if (lineNumber != null) {
                    acknowledgeInd.setFrom(new EncodedStringValue(lineNumber));
                } else {
                    MmsLog.d(MmsApp.TXN_TAG, "getLocalNumber(" + mSubId + "),return null");
                }

                /// M:Code analyze 012,add for new feature,judge if it is allowed
                /// to send delivery report for acknowledgeInd transaction @{
                /// M: modify for MmsPreference Plugin @{
                mOpRetrieveTransactionExt.sendAcknowledgeInd(mContext, mSubId, acknowledgeInd);
                /// @}

                byte[] datas = new PduComposer(mContext, acknowledgeInd).make();
                File pduFile = createPduFile(datas, ACK_RESP_NAME + mUri.getLastPathSegment());
                if (pduFile == null) {
                    return;
                }

                SmsManager manager = SmsManager.getSmsManagerForSubscriptionId(mSubId);
                /*
                Intent intent = new Intent(TransactionService.ACTION_TRANSACION_PROCESSED);
                intent.putExtra(PhoneConstants.SUBSCRIPTION_KEY, mSubId);
                // intent.putExtra(TransactionBundle.URI, mUri.toString());
                PendingIntent sentIntent = PendingIntent.getBroadcast(mContext, 0, intent,
                        PendingIntent.FLAG_UPDATE_CURRENT);
                        */
                // Pack M-NotifyResp.ind and send it
                Uri pduFileUri = FileProvider.getUriForFile(
                        mContext, MMS_FILE_PROVIDER_AUTHORITIES, pduFile);
                if (MmsConfig.getNotifyWapMMSC()) {
                    manager.sendMultimediaMessage(mContext, pduFileUri, mContentLocation,
                            null, null);
                } else {
                    manager.sendMultimediaMessage(mContext, pduFileUri, null, null, null);
                }
            }
        } catch (MmsException ex) {
            ex.printStackTrace();
        }
    }

    public int checkPduResult() {
        if (!mPduFile.exists()) {
            Log.e(MmsApp.TXN_TAG,
                    "checkPduResult MMS Fail, no pduFile = " + mPduFile);
            return SmsManager.MMS_ERROR_UNSPECIFIED;
        }
        FileChannel channel = null;
        FileInputStream fs = null;
        RetrieveConf retrieveConf;
        try {
            fs = new FileInputStream(mPduFile);
            channel = fs.getChannel();
            ByteBuffer byteBuffer = ByteBuffer.allocate((int) channel.size());
            while ((channel.read(byteBuffer)) > 0) {
                // do nothing
                // System.out.println("reading");
            }
            final GenericPdu pdu = (new PduParser(byteBuffer.array(),
                    PduParserUtil.shouldParseContentDisposition(mSubId))).parse();
            if (pdu == null || !(pdu instanceof RetrieveConf)) {
                Log.e(MmsApp.TXN_TAG, "checkPduResult: invalid parsed PDU");
                return SmsManager.MMS_ERROR_UNSPECIFIED;
            }
            retrieveConf = (RetrieveConf) pdu;
            byte[] messageId = retrieveConf.getMessageId();
            MmsLog.d(MmsApp.TXN_TAG, "checkPduResult retrieveConf.messageId = "
                                + new String(messageId));

            // Store the downloaded message
            PduPersister persister = PduPersister.getPduPersister(mContext);
            Uri messageUri = persister.persist(
                    pdu,
                    Telephony.Mms.Inbox.CONTENT_URI,
                    true/*createThreadId*/,
                    true/*groupMmsEnabled*/,
                    null/*preOpenedFiles*/);
            if (messageUri == null) {
                Log.e(MmsApp.TXN_TAG, "checkPduResult: can not persist message");
                return SmsManager.MMS_ERROR_UNSPECIFIED;
            }
            mMessageUri = messageUri.toString();
            // Update some of the properties of the message
            final ContentValues values = new ContentValues();
            values.put(Telephony.Mms.DATE, System.currentTimeMillis() / 1000L);
            values.put(Telephony.Mms.READ, 0);
            values.put(Telephony.Mms.SEEN, 0);
            String creator = ActivityThread.currentPackageName();
            if (!TextUtils.isEmpty(creator)) {
                values.put(Telephony.Mms.CREATOR, creator);
            }
            values.put(Telephony.Mms.SUBSCRIPTION_ID, mSubId);
            if (SqliteWrapper.update(
                    mContext,
                    mContext.getContentResolver(),
                    messageUri,
                    values,
                    null/*where*/,
                    null/*selectionArg*/) != 1) {
                Log.e(MmsApp.TXN_TAG, "persistIfRequired: can not update message");
            }
            // Delete the corresponding NotificationInd
            SqliteWrapper.delete(mContext,
                    mContext.getContentResolver(),
                    Telephony.Mms.CONTENT_URI,
                    LOCATION_SELECTION,
                    new String[]{
                            Integer.toString(PduHeaders.MESSAGE_TYPE_NOTIFICATION_IND),
                            mContentLocation
                    });
            return Activity.RESULT_OK;
        } catch (IOException e) {
            e.printStackTrace();
            return SmsManager.MMS_ERROR_UNSPECIFIED;
        } catch (MmsException e) {
            e.printStackTrace();
            return SmsManager.MMS_ERROR_UNSPECIFIED;
        } catch (SQLiteException e) {
            e.printStackTrace();
            return SmsManager.MMS_ERROR_UNSPECIFIED;
        } catch (RuntimeException e) {
            e.printStackTrace();
            return SmsManager.MMS_ERROR_UNSPECIFIED;
        } finally {
            if (mPduFile != null) {
                mPduFile.delete();
            }
            try {
                if (channel != null) {
                    channel.close();
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
            try {
                if (fs != null) {
                    fs.close();
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    // / M: RetrieveTransaction Plugin, host method {@
    public void sendExpiredRes() {
        MmsLog.d(MmsApp.TXN_TAG, "sendExpiredRes");
        sendNotifyRespInd(STATUS_EXPIRED);
    }
    // / @}
    public String getContentUri() {
        return mMessageUri;
    }
}
