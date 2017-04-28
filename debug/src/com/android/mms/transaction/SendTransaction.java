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

import static com.android.mms.transaction.TransactionState.FAILED;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SqliteWrapper;
import android.net.Uri;
import android.provider.Telephony;
import android.support.v4.content.FileProvider;
import android.telephony.SmsManager;
import android.util.Log;

import com.android.internal.telephony.PhoneConstants;
import com.android.mms.LogTag;
import com.android.mms.MmsApp;
import com.android.mms.MmsConfig;
import com.android.mms.util.RateController;
import com.google.android.mms.pdu.PduComposer;
import com.google.android.mms.pdu.PduHeaders;
import com.google.android.mms.pdu.PduParser;
import com.google.android.mms.pdu.PduPersister;
import com.google.android.mms.pdu.SendConf;
import com.google.android.mms.pdu.SendReq;

import com.mediatek.mms.ext.IOpSendTransactionExt;
import com.mediatek.opmsg.util.OpMessageUtils;

/**
 * The SendTransaction is responsible for sending multimedia messages
 * (M-Send.req) to the MMSC server.  It:
 *
 * <ul>
 * <li>Loads the multimedia message from storage (Outbox).
 * <li>Packs M-Send.req and sends it.
 * <li>Retrieves confirmation data from the server  (M-Send.conf).
 * <li>Parses confirmation message and handles it.
 * <li>Moves sent multimedia message from Outbox to Sent.
 * <li>Notifies the TransactionService about successful completion.
 * </ul>
 */
public class SendTransaction extends Transaction implements Runnable {
    private static final String TAG = LogTag.TAG;

    private Thread mThread;
    private String mMmscUrl;
    private static final String SEND_REQ_NAME = "SendReq_retr";
    public SendTransaction(Context context, int transId, String mmscUrl, String uri, int subId) {
        super(context, transId, subId);
        mUri = Uri.parse(uri);
        mMmscUrl = mmscUrl;
        mId = uri;

        // Attach the transaction to the instance of RetryScheduler.
        attach(RetryScheduler.getInstance(context));
    }

    /*
     * (non-Javadoc)
     * @see com.android.mms.Transaction#process()
     */
    @Override
    public void process() {
        mThread = new Thread(this, "SendTransaction");
        mThread.start();
    }

    public void run() {
        Log.d(MmsApp.TXN_TAG, "SendTransaction: run");
        RateController rateCtlr = RateController.getInstance();
        if (rateCtlr.isLimitSurpassed() && !rateCtlr.isAllowedByUser()) {
            Log.e(TAG, "Sending rate limit surpassed.");
            return;
        }

        try {
            final PduPersister persister = PduPersister.getPduPersister(mContext);
            final SendReq sendReq = (SendReq) persister.load(mUri);
            if (sendReq == null) {
                Log.w(MmsApp.TXN_TAG, "Send req is null!");
                return;
            }
            byte[] datas = new PduComposer(mContext, sendReq).make();
            mPduFile = createPduFile(datas, SEND_REQ_NAME + mUri.getLastPathSegment());
            if (mPduFile == null) {
                Log.w(MmsApp.TXN_TAG, "create pdu file req failed!");
                return;
            }

            //Intent intent = new Intent(TransactionService.ACTION_TRANSACION_PROCESSED);
            //intent.putExtra(PhoneConstants.SUBSCRIPTION_KEY, mSubId);
            //intent.putExtra(TransactionBundle.URI, mUri.toString());
            Log.d(MmsApp.TXN_TAG, "SendTransaction mUri:" + mUri);
            final Intent intent = new Intent(TransactionService.ACTION_TRANSACION_PROCESSED,
                    mUri,
                    mContext,
                    MmsReceiver.class);
            intent.putExtra(PhoneConstants.SUBSCRIPTION_KEY, mSubId);

            PendingIntent sentIntent = PendingIntent.getBroadcast(mContext, 0, intent,
                    PendingIntent.FLAG_UPDATE_CURRENT);
            Log.d(MmsApp.TXN_TAG, "send MMS with param, mUri = " + mUri + " mPdufile = " + mPduFile
                    + ", subId = " + mSubId);
            Uri pduFileUri = FileProvider.getUriForFile(
                    mContext, MMS_FILE_PROVIDER_AUTHORITIES, mPduFile);
            /// M: Add MmsService configure param @{
            SmsManager.getSmsManagerForSubscriptionId(mSubId).sendMultimediaMessage(mContext,
                    pduFileUri, null,
                    MmsConfig.getMmsServiceConfig(), sentIntent);
        /// @}
        } catch (Throwable t) {
            Log.e(TAG, Log.getStackTraceString(t));
            getState().setState(FAILED);
            getState().setContentUri(mUri);
            notifyObservers();
        }
    }

    @Override
    public int getType() {
        return SEND_TRANSACTION;
    }

    public int checkSendResult(byte[] response) {
        try {
            int result = Activity.RESULT_OK;
            if (response == null) {
                Log.d(MmsApp.TXN_TAG,
                        "checkSendResult:get response is null, maybe is not a normal sending");
                result = Activity.RESULT_OK;
            }
            boolean supportContentDisposition = PduParserUtil.shouldParseContentDisposition(mSubId);
            SendConf conf = (SendConf) new PduParser(response, supportContentDisposition).parse();
            if (conf == null) {
                Log.d(MmsApp.TXN_TAG, "checkSendResult:No M-Send.conf received.");
                result = Activity.RESULT_OK;
            } else {
                /// M: op09 notify mms failed notify @{
                IOpSendTransactionExt mOpSendTransactionExt
                        = OpMessageUtils.getOpMessagePlugin().getOpSendTransactionExt();
                mOpSendTransactionExt.checkSendResult(
                        conf.getResponseStatus(), conf.getResponseText());
                /// @}

                int respStatus = conf.getResponseStatus();
                Log.d(MmsApp.TXN_TAG, "checkSendResult get response  = " + respStatus);
                if (respStatus == PduHeaders.RESPONSE_STATUS_OK) {
                    result = Activity.RESULT_OK;
                } else {
                    result = SmsManager.MMS_ERROR_UNSPECIFIED;
                }
            }

            int messageStatus = result == Activity.RESULT_OK ?
                    Telephony.Mms.MESSAGE_BOX_SENT : Telephony.Mms.MESSAGE_BOX_FAILED;
            final ContentValues values = new ContentValues(3);
            values.put(Telephony.Mms.MESSAGE_BOX, messageStatus);
            if (conf != null) {
                values.put(Telephony.Mms.RESPONSE_STATUS, conf.getResponseStatus());
                values.put(Telephony.Mms.MESSAGE_ID,
                        PduPersister.toIsoString(conf.getMessageId()));
            }
            SqliteWrapper.update(mContext, mContext.getContentResolver(), mUri, values,
                    null, null);
            return result;
        } catch (SQLiteException e) {
            Log.e(MmsApp.TXN_TAG, "SendRequest.updateStatus: can not update message", e);
            return SmsManager.MMS_ERROR_UNSPECIFIED;
        } catch (RuntimeException e) {
            Log.e(MmsApp.TXN_TAG, "SendRequest.updateStatus: can not parse response", e);
            return SmsManager.MMS_ERROR_UNSPECIFIED;
        } finally {
            if (mPduFile != null) {
                mPduFile.delete();
            }
        }
    }
}
