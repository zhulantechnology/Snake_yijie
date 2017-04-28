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

import android.content.BroadcastReceiver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.database.sqlite.SqliteWrapper;
import android.net.Uri;
import android.provider.Telephony.Sms;
import android.provider.Telephony.Sms.Outbox;
import android.telephony.SmsManager;
import android.telephony.SubscriptionInfo;
import android.telephony.SubscriptionManager;

import com.android.internal.telephony.IccCardConstants;
import com.android.internal.telephony.PhoneConstants;
import com.android.internal.telephony.TelephonyIntents;
import com.android.mms.MmsApp;
import com.android.mms.util.DraftCache;
import com.android.mms.util.MmsLog;

import com.mediatek.mms.util.PermissionCheckUtil;
/**
 * SmsSystemEventReceiver receives the
 * {@link android.content.intent.ACTION_BOOT_COMPLETED},
 */
public class SmsSystemEventReceiver extends BroadcastReceiver {
    private static final String TAG = "SmsSystemEventReceiver";
    @Override
    public void onReceive(Context context, Intent intent) {
        MmsLog.i(MmsApp.TXN_TAG, "onReceive(): intent=" + intent.toString());
        String action = intent.getAction();

        /// Add for runtime permission @{
        if (!PermissionCheckUtil.checkRequiredPermissions(context)) {
            MmsLog.d(MmsApp.LOG_TAG, "SmsSystemEventReceiver no permissions return !!");
            return;
        } else {
            MmsLog.d(MmsApp.LOG_TAG, "SmsSystemEventReceiver onReceive() has permisson DraftCache:"
                    + DraftCache.getInstance());
            if (DraftCache.getInstance() == null) {
                MmsApp.getApplication().onRequestPermissionsResult();
            }
        }
        /// @}

        if (action != null && action.equals(Intent.ACTION_BOOT_COMPLETED)) {
            handleBootCompleted(context);
        } else if  (action != null
                && action.equals(TelephonyIntents.ACTION_SIM_STATE_CHANGED)) {
            String newState = intent.getStringExtra(IccCardConstants.INTENT_KEY_ICC_STATE);
            // if sim is plug out, then set outbox and queued sms to failed.
            if (IccCardConstants.INTENT_VALUE_ICC_ABSENT.equals(newState)) {
                // get the absent sub id
                int subId = intent.getIntExtra(
                        PhoneConstants.SUBSCRIPTION_KEY,
                        SubscriptionManager.INVALID_SUBSCRIPTION_ID);

                if (subId == SubscriptionManager.INVALID_SUBSCRIPTION_ID
                        || subId < 0) {
                    return;
                }
                String selection = " and sub_id=" + subId;
                MmsLog.i(MmsApp.TXN_TAG, "SmsSystemEventReceiver" +
                        " onReceive() SIM absent, selection: " + selection);

                int numMoved = moveOutboxMessagesToFailedBox(context, selection);
                numMoved = numMoved + moveQueuedMessagesToFailedBox(context, selection);
                if (numMoved > 0) {
                    MessagingNotification.notifySendFailed(context.getApplicationContext(), true);
                    // Called off of the UI thread so ok to block.
                    MessagingNotification.blockingUpdateNewMessageIndicator(
                            context, MessagingNotification.THREAD_ALL, false, null);
                }
            }
        }
    }

    private void handleBootCompleted(Context context) {
        MmsLog.i(MmsApp.TXN_TAG, "handleBootCompleted sms");
        // fix first launch performance issue ALPS01760483, start a service to avoid mms killed.
        Intent intent = new Intent();
        intent.setClass(context, NoneService.class);
        context.startService(intent);

        // Some messages may get stuck in the outbox or queued.
        // At this point, they're probably irrelevant
        // to the user, so mark them as failed and notify the user, who can then decide whether to
        // resend them manually.
        int numMoved = moveOutboxMessagesToFailedBox(context, null);
        numMoved = numMoved + moveQueuedMessagesToFailedBox(context, null);
        if (numMoved > 0) {
            MessagingNotification.notifySendFailed(context.getApplicationContext(), true);
        }
        // Called off of the UI thread so ok to block.
        MessagingNotification.blockingUpdateNewMessageIndicator(
                context, MessagingNotification.THREAD_ALL, false, null);
    }

    /**
     * Move all messages that are in the outbox to the failed state and set them to unread.
     * @return The number of messages that were actually moved
     */
    private int moveOutboxMessagesToFailedBox(Context context, String selection) {
        ContentValues values = new ContentValues(3);

        values.put(Sms.TYPE, Sms.MESSAGE_TYPE_FAILED);
        values.put(Sms.ERROR_CODE, SmsManager.RESULT_ERROR_GENERIC_FAILURE);
        values.put(Sms.READ, Integer.valueOf(0));

        if (selection == null) {
            selection = "type = " + Sms.MESSAGE_TYPE_OUTBOX;
        } else {
            selection = "type = " + Sms.MESSAGE_TYPE_OUTBOX + selection;
        }

        int messageCount = SqliteWrapper.update(
                context.getApplicationContext(), context.getContentResolver(),
                Outbox.CONTENT_URI, values, selection, null);
        MmsLog.i(TAG, "moveOutboxMessagesToFailedBox messageCount: " + messageCount);
        return messageCount;
    }

    /**
     * Move all messages that are in the queued to the failed state and set them to unread.
     * @return The number of messages that were actually moved
     */
    private int moveQueuedMessagesToFailedBox(Context context, String selection) {
        ContentValues values = new ContentValues(3);

        values.put(Sms.TYPE, Sms.MESSAGE_TYPE_FAILED);
        values.put(Sms.ERROR_CODE, SmsManager.RESULT_ERROR_GENERIC_FAILURE);
        values.put(Sms.READ, Integer.valueOf(0));

        if (selection == null) {
            selection = "type = " + Sms.MESSAGE_TYPE_QUEUED;
        } else {
            selection = "type = " + Sms.MESSAGE_TYPE_QUEUED + selection;
        }

        final Uri uri = Uri.parse("content://sms/queued");
        int messageCount = SqliteWrapper.update(
                context.getApplicationContext(), context.getContentResolver(),
                uri, values, selection, null);

        MmsLog.i(TAG, "moveQueuedMessagesToFailedBox messageCount: " + messageCount);
        return messageCount;
    }
}
