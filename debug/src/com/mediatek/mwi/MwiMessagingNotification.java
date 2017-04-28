/* Copyright Statement:
 *
 * This software/firmware and related documentation ("MediaTek Software") are
 * protected under relevant copyright laws. The information contained herein
 * is confidential and proprietary to MediaTek Inc. and/or its licensors.
 * Without the prior written permission of MediaTek inc. and/or its licensors,
 * any reproduction, modification, use or disclosure of MediaTek Software,
 * and information contained herein, in whole or in part, shall be strictly prohibited.
 */
/* MediaTek Inc. (C) 2010. All rights reserved.
 *
 * BY OPENING THIS FILE, RECEIVER HEREBY UNEQUIVOCALLY ACKNOWLEDGES AND AGREES
 * THAT THE SOFTWARE/FIRMWARE AND ITS DOCUMENTATIONS ("MEDIATEK SOFTWARE")
 * RECEIVED FROM MEDIATEK AND/OR ITS REPRESENTATIVES ARE PROVIDED TO RECEIVER ON
 * AN "AS-IS" BASIS ONLY. MEDIATEK EXPRESSLY DISCLAIMS ANY AND ALL WARRANTIES,
 * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE IMPLIED WARRANTIES OF
 * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE OR NONINFRINGEMENT.
 * NEITHER DOES MEDIATEK PROVIDE ANY WARRANTY WHATSOEVER WITH RESPECT TO THE
 * SOFTWARE OF ANY THIRD PARTY WHICH MAY BE USED BY, INCORPORATED IN, OR
 * SUPPLIED WITH THE MEDIATEK SOFTWARE, AND RECEIVER AGREES TO LOOK ONLY TO SUCH
 * THIRD PARTY FOR ANY WARRANTY CLAIM RELATING THERETO. RECEIVER EXPRESSLY ACKNOWLEDGES
 * THAT IT IS RECEIVER'S SOLE RESPONSIBILITY TO OBTAIN FROM ANY THIRD PARTY ALL PROPER LICENSES
 * CONTAINED IN MEDIATEK SOFTWARE. MEDIATEK SHALL ALSO NOT BE RESPONSIBLE FOR ANY MEDIATEK
 * SOFTWARE RELEASES MADE TO RECEIVER'S SPECIFICATION OR TO CONFORM TO A PARTICULAR
 * STANDARD OR OPEN FORUM. RECEIVER'S SOLE AND EXCLUSIVE REMEDY AND MEDIATEK'S ENTIRE AND
 * CUMULATIVE LIABILITY WITH RESPECT TO THE MEDIATEK SOFTWARE RELEASED HEREUNDER WILL BE,
 * AT MEDIATEK'S OPTION, TO REVISE OR REPLACE THE MEDIATEK SOFTWARE AT ISSUE,
 * OR REFUND ANY SOFTWARE LICENSE FEES OR SERVICE CHARGE PAID BY RECEIVER TO
 * MEDIATEK FOR SUCH MEDIATEK SOFTWARE AT ISSUE.
 *
 * The following software/firmware and/or related documentation ("MediaTek Software")
 * have been modified by MediaTek Inc. All revisions are subject to any receiver's
 * applicable license agreements with MediaTek Inc.
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

package com.mediatek.mwi;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.TaskStackBuilder;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.media.AudioManager;
import android.net.Uri;
import android.preference.PreferenceManager;
import android.provider.Telephony.Mwi;
import android.telephony.TelephonyManager;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.TextAppearanceSpan;

import com.android.mms.R;
import com.android.mms.transaction.MessagingNotification;
import com.android.mms.transaction.NotificationPlayer;
import com.android.mms.ui.MessageUtils;
import com.android.mms.util.FeatureOption;
import com.android.mms.util.MmsLog;
import com.google.android.mms.util.SqliteWrapper;

import com.mediatek.setting.NotificationPreferenceActivity;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.SortedSet;
import java.util.TreeSet;

/**
 * This class is used to update the notification indicator. It will check whether
 * there are unread messages. If yes, it would show the notification indicator,
 * otherwise, hide the indicator.
 */
public class MwiMessagingNotification {
    private static final String TAG = "Mms/Mwi";

    public static final int NOTIFICATION_ID = 126;
    public static final int SL_AUTOLAUNCH_NOTIFICATION_ID = 5577;
    /**
     * This is the volume at which to play the in-conversation notification sound,
     * expressed as a fraction of the system notification volume.
     */
    private static final float IN_MWI_NOTIFICATION_VOLUME = 0.25f;
    private static final Uri MWI_URI = Mwi.CONTENT_URI;

    // This must be consistent with the column constants below.
    private static final String[] MWI_STATUS_PROJECTION = new String[] {
            Mwi._ID, Mwi.MSG_DATE, Mwi.SUBJECT, Mwi.FROM};

    private static final int COLUMN_MWI_ID = 0;
    private static final int COLUMN_DATE = 1;
    private static final int COLUMN_MWI_SUBJECT = 2;
    private static final int COLUMN_MWI_FROM = 3;

//    private static final String[] Mwi_THREAD_ID_PROJECTION = new String[] { Mwi.THREAD_ID };
    private static final String NEW_INCOMING_MSG_CONSTRAINT =
            "(" + /*Mwi.SEEN*/"seen" + " = 0)";

    private static final MwiNotificationInfoComparator INFO_COMPARATOR =
            new MwiNotificationInfoComparator();

    public static final long THREAD_ALL = -1;
    public static final long THREAD_NONE = -2;

    /**
     * mNotificationSet is kept sorted by the incoming message delivery time, with the
     * most recent message first.
     */
    private static SortedSet<MwiNotificationInfo> sNotificationSet =
            new TreeSet<MwiNotificationInfo>(INFO_COMPARATOR);

    private static final int MAX_MESSAGES_TO_SHOW = 8;  // the maximum number of new messages to
                                                        // show in a single notification.

    private MwiMessagingNotification() {
    }

    /**
     * Checks to see if there are any "unseen" messages or delivery
     * reports.  Shows the most recent notification if there is one.
     * Does its work and query in a worker thread.
     *
     * @param context the context to use
     * @param isNew is new message come or not
     */
    public static void nonBlockingUpdateNewMessageIndicator(final Context context,
            final boolean isNew) {
        MmsLog.d(TAG, "nonBlockingUpdateNewMessageIndicator");
        new Thread(new Runnable() {
            @Override
            public void run() {
                blockingUpdateNewMessageIndicator(context, isNew);
            }
        }, "MwiMessagingNotification.nonBlockingUpdateNewMessageIndicator").start();
    }

    /**
     * Checks to see if there are any "unseen" messages or delivery
     * reports and builds a sorted (by delivery date) list of unread notifications.
     *
     * @param context the context to use
     * @param isNew Whether new message comes or not
     */
    public static void blockingUpdateNewMessageIndicator(Context context, boolean isNew) {
        MmsLog.d(TAG, "blockingUpdateNewMessageIndicator");
        if (MwiListActivity.isShowing()) {
            playInActivityNotificationSound(context);
            return;
        }
//        sNotificationSet.clear();
        sNotificationSet = new TreeSet<MwiNotificationInfo>(INFO_COMPARATOR);

        Set<String> froms = new HashSet<String>(4);

        int count = 0;
        addMwiNotificationInfos(context, froms);

        cancelNotification(context, NOTIFICATION_ID);
        if (!sNotificationSet.isEmpty()) {
            MmsLog.d(TAG, "blockingUpdateNewMessageIndicator: count=" + count +
                    ", isNew=" + isNew);
            updateNotification(context, isNew, froms.size());
        }
    }

    /**
     * Play the in-conversation notification sound (it's the regular notification sound, but
     * played at half-volume
     */
    private static void playInActivityNotificationSound(Context context) {
        SharedPreferences sp = PreferenceManager.getDefaultSharedPreferences(context);
        String ringtoneStr = sp.getString(NotificationPreferenceActivity.NOTIFICATION_RINGTONE,
                null);
        ringtoneStr = MessagingNotification.checkRingtone(context, ringtoneStr);
        if (TextUtils.isEmpty(ringtoneStr)) {
            // Nothing to play
            MmsLog.d(TAG, "playInConversationNotificationSound ringtoneStr is empty");
            return;
        }
        Uri ringtoneUri = Uri.parse(ringtoneStr);
        NotificationPlayer player = new NotificationPlayer(TAG);
        player.play(context, ringtoneUri, false, AudioManager.STREAM_NOTIFICATION,
                IN_MWI_NOTIFICATION_VOLUME);
    }

    private static final class MwiNotificationInfo {
        public final int mId;
        public final String mMessage;
        public final CharSequence mTicker;
        public final long mTimeMillis;
        public final String mTitle;
        public final String mFrom;

        /**
         * @param ticker text displayed ticker-style across the notification, typically formatted
         * as sender: message
         * @param timeMillis date the message was received
         * @param title for a single message, this is the sender
         */
        public MwiNotificationInfo(int id, String message, CharSequence ticker,
                long timeMillis, String title, String from) {
            mId = id;
            mMessage = message;
            mTicker = ticker;
            mTimeMillis = timeMillis;
            mTitle = title;
            mFrom = from;
        }

        public long getTime() {
            return mTimeMillis;
        }

        // This is the message string used in bigText and bigPicture notifications.
        public CharSequence formatBigMessage(Context context) {
            // Change multiple newlines(with potential white space between), into a single new line
            final String message =
                    !TextUtils.isEmpty(mMessage) ? mMessage.replaceAll("\\n\\s+", "\n") : "";

            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            if (mMessage != null) {
                if (spannableStringBuilder.length() > 0) {
                    spannableStringBuilder.append('\n');
                }
                spannableStringBuilder.append(mMessage);
            }
            MmsLog.d(TAG, "formatBigMessage spannableStringBuilder = " + spannableStringBuilder);
            return spannableStringBuilder;
        }

        // This is the message string used in each line of an inboxStyle notification.
        public CharSequence formatInboxMessage(Context context) {
          final TextAppearanceSpan notificationSenderSpan = new TextAppearanceSpan(
                  context, R.style.NotificationPrimaryText);

          final TextAppearanceSpan notificationSubjectSpan = new TextAppearanceSpan(
                  context, R.style.NotificationSubjectText);

          // Change multiple newlines (with potential white space between), into a single new line
          final String message =
                  !TextUtils.isEmpty(mMessage) ? mMessage.replaceAll("\\n\\s+", "\n") : "";

          SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();

          if (!TextUtils.isEmpty(mFrom)) {
              spannableStringBuilder.append(mFrom);
              spannableStringBuilder.setSpan(notificationSenderSpan, 0, mFrom.length(), 0);
          }
          String separator = context.getString(R.string.notification_separator);
          if (message.length() > 0) {
              if (spannableStringBuilder.length() > 0) {
                  spannableStringBuilder.append(separator);
              }
              int start = spannableStringBuilder.length();
              spannableStringBuilder.append(message);
              spannableStringBuilder.setSpan(notificationSubjectSpan, start,
                      start + message.length(), 0);
          }
          MmsLog.d(TAG, "formatInboxMessage spannableStringBuilder = " + spannableStringBuilder);
          return spannableStringBuilder;
        }
    }

    // Return a formatted string with all the sender names separated by commas.
    private static CharSequence formatSenders(Context context,
            ArrayList<MwiNotificationInfo> senders) {
        final TextAppearanceSpan notificationSenderSpan = new TextAppearanceSpan(
                context, R.style.NotificationPrimaryText);

        String separator = context.getString(R.string.enumeration_comma);   // ", "
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        int len = senders.size();
        for (int i = 0; i < len; i++) {
            if (i > 0) {
                spannableStringBuilder.append(separator);
            }
            spannableStringBuilder.append(senders.get(i).mFrom);
        }
        spannableStringBuilder.setSpan(notificationSenderSpan, 0,
                spannableStringBuilder.length(), 0);
        MmsLog.d(TAG, "formatSenders spannableStringBuilder = " + spannableStringBuilder);
        return spannableStringBuilder;
    }

    /**
     *
     * Sorts by the time a notification was received in descending order -- newer first.
     *
     */
    private static final class MwiNotificationInfoComparator
            implements Comparator<MwiNotificationInfo> {
        @Override
        public int compare(
                MwiNotificationInfo info1, MwiNotificationInfo info2) {
            return Long.signum(info2.getTime() - info1.getTime());
        }
    }

    private static void addMwiNotificationInfos(
            Context context, Set<String> froms) {
        ContentResolver resolver = context.getContentResolver();
        Cursor cursor = SqliteWrapper.query(context, resolver, MWI_URI,
                            MWI_STATUS_PROJECTION, NEW_INCOMING_MSG_CONSTRAINT,
                            null, Mwi.MSG_DATE + " desc");

        if (cursor == null) {
            MmsLog.w(TAG, "addMwiNotificationInfos cursor == null");
            return;
        }

        try {
            while (cursor.moveToNext()) {
                // TODO get the description by query the table.
                int messageId = cursor.getInt(COLUMN_MWI_ID);
                String subject = cursor.getString(COLUMN_MWI_SUBJECT);
                String from = cursor.getString(COLUMN_MWI_FROM);
                long timeMillis = cursor.getLong(COLUMN_DATE);

                //get body
                String body = context.getString(R.string.subject_label);
                if (subject != null) {
                    body += subject;
                }

                MwiNotificationInfo info = getNewMessageNotificationInfo(
                        context, messageId, from, body, timeMillis);

                MmsLog.d(TAG, "addMwiNotificationInfos info = " + info);
                boolean success = sNotificationSet.add(info);
                if (success) {
                    froms.add(from);
                }
            }
        } finally {
            cursor.close();
        }
    }

    private static MwiNotificationInfo getNewMessageNotificationInfo(
            Context context,
            int id,
            String from,
            String body,
            long timeMillis) {
        String senderInfo = buildTickerMessage(
                context, from, null).toString();
        CharSequence ticker = buildTickerMessage(context, from, body);

        return new MwiNotificationInfo(id, body, ticker, timeMillis, from, from);
    }

    public static void cancelNotification(Context context, int notificationId) {
        NotificationManager nm = (NotificationManager) context.getSystemService(
                Context.NOTIFICATION_SERVICE);
        MmsLog.d(TAG, "cancelNotification notificationId = " + notificationId);
        nm.cancel(notificationId);
    }

    /**
     * updateNotification is *the* main function for building the actual notification handed to
     * the NotificationManager
     * @param context
     * @param isNew if we've got a new message, show the ticker
     * @param uniqueThreadCount
     */
    private static void updateNotification(
            Context context,
            boolean isNew,
            int uniqueFromCount) {
        // If the user has turned off notifications in settings, don't do any notifying.
        if (!NotificationPreferenceActivity.getNotificationEnabled(context)) {
            MmsLog.d(TAG, "updateNotification getNotificationEnabled is false");
            return;
        }

        // Figure out what we've got.
        int messageCount = sNotificationSet.size();

        // Check the notification count again.
        if (messageCount == 0) {
            MmsLog.w(TAG, "updateNotification.messageCount is 0.");
            return;
        }

        MwiNotificationInfo mostRecentNotification = sNotificationSet.first();

        final Notification.Builder noti = new Notification.Builder(context)
                .setWhen(mostRecentNotification.mTimeMillis);

        if (isNew) {
            noti.setTicker(mostRecentNotification.mTicker);
        }
        TaskStackBuilder taskStackBuilder = TaskStackBuilder.create(context);

        // If we have more than one unique thread, change the title (which would
        // normally be the contact who sent the message) to a generic one that
        // makes sense for multiple senders, and change the Intent to take the
        // user to the conversation list instead of the specific thread.

        final Resources res = context.getResources();
        String title = null;
        Bitmap avatar = null;
        MmsLog.d(TAG, "updateNotification uniqueFromCount = " + uniqueFromCount);
        if (uniqueFromCount > 1) {    // messages from multiple threads
            title = context.getString(R.string.voice_message_count_notification, messageCount);
        } else {    // same thread, single or multiple messages
            title = mostRecentNotification.mTitle;
        }
        MmsLog.d(TAG, "updateNotification messages from multiple threads");
        Intent mainActivityIntent = new Intent();
        mainActivityIntent.setClass(context, MwiListActivity.class);

        mainActivityIntent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK
                | Intent.FLAG_ACTIVITY_SINGLE_TOP
                | Intent.FLAG_ACTIVITY_CLEAR_TOP);

        mainActivityIntent.setType("vnd.android-dir/mwi");
        taskStackBuilder.addNextIntent(mainActivityIntent);

        // Always have to set the small icon or the notification is ignored
        // need to modify
        noti.setSmallIcon(R.drawable.stat_notify_mwi);

        NotificationManager nm = (NotificationManager)
                context.getSystemService(Context.NOTIFICATION_SERVICE);

        // Update the notification.
        noti.setContentTitle(title)
            .setContentIntent(
                    taskStackBuilder.getPendingIntent(0, PendingIntent.FLAG_UPDATE_CURRENT))
            /*.addKind(Notification.KIND_MESSAGE)*/
            .setPriority(Notification.PRIORITY_DEFAULT);     // TODO: set based on contact coming
                                                             // from a favorite.

        int defaults = 0;

        if (isNew) {
            SharedPreferences sp = PreferenceManager.getDefaultSharedPreferences(context);
            AudioManager audioManager =
                (AudioManager) context.getSystemService(Context.AUDIO_SERVICE);
            // comment if, change condition
            if (audioManager.getVibrateSetting(
                    AudioManager.VIBRATE_TYPE_NOTIFICATION) == AudioManager.VIBRATE_SETTING_ON) {
                MmsLog.d(TAG, "updateNotification getVibrateSetting VIBRATE_SETTING_ON");
                defaults |= Notification.DEFAULT_VIBRATE;
            }

            String ringtoneStr = sp.getString(NotificationPreferenceActivity.NOTIFICATION_RINGTONE,
                    null);
            MmsLog.d(TAG, "updateNotification ringtoneStr = " + ringtoneStr);
            // for brazil request, when calling still have sound
            if (FeatureOption.MTK_BRAZIL_CUSTOMIZATION_CLARO) {
                MmsLog.d(TAG, "updateNotification MTK_BRAZIL_CUSTOMIZATION_CLARO is true");
                int state = ((TelephonyManager) context
                        .getSystemService(Context.TELEPHONY_SERVICE)).getCallState();
                if (state != TelephonyManager.CALL_STATE_IDLE) {
                    noti.setSound(TextUtils.isEmpty(ringtoneStr)
                            ? null : Uri.parse(ringtoneStr), AudioManager.STREAM_MUSIC);
                }
            } else {
                noti.setSound(TextUtils.isEmpty(ringtoneStr) ? null : Uri.parse(ringtoneStr));
            }
        }

        defaults |= Notification.DEFAULT_LIGHTS;

        noti.setDefaults(defaults);

        final Notification notification;

        MmsLog.d(TAG, "updateNotification messageCount = " + messageCount);
        if (messageCount == 1) {
            // We've got a single message

            // This sets the text for the collapsed form:
            noti.setContentText(mostRecentNotification.formatBigMessage(context));

            // Show a single notification -- big style with the text of the whole message
            notification = new Notification.BigTextStyle(noti)
                .bigText(mostRecentNotification.formatBigMessage(context))
                .build();
        } else {
            // We've got multiple messages
            MmsLog.d(TAG, "updateNotification uniqueFromCount = " + uniqueFromCount);
            if (uniqueFromCount == 1) {
                // We've got multiple messages for the same thread.
                // Starting with the oldest new message, display the full text of each message.
                // Begin a line for each subsequent message.
                SpannableStringBuilder buf = new SpannableStringBuilder();
                MwiNotificationInfo infos[] =
                        sNotificationSet.toArray(new MwiNotificationInfo[sNotificationSet.size()]);
                int len = infos.length;
                for (int i = len - 1; i >= 0; i--) {
                    MwiNotificationInfo info = infos[i];
                    buf.append(info.formatBigMessage(context));

                    if (i != 0) {
                        buf.append('\n');
                    }
                }

                noti.setContentText(context.getString(R.string.voice_message_count_notification,
                        messageCount));

                // Show a single notification -- big style with the text of all the messages
                notification = new Notification.BigTextStyle(noti)
                    .bigText(buf)
                    // Forcibly show the last line, with the app's smallIcon in it, if we
                    // kicked the smallIcon out with an avatar bitmap
                    .setSummaryText((avatar == null) ? null : " ")
                    .build();
            } else {
                // Build a set of the most recent notification per threadId.
                HashSet<String> uniqueFroms = new HashSet<String>(sNotificationSet.size());
                ArrayList<MwiNotificationInfo> mostRecentNotifPerId =
                        new ArrayList<MwiNotificationInfo>();
                Iterator<MwiNotificationInfo> notifications = sNotificationSet.iterator();
                while (notifications.hasNext()) {
                    MwiNotificationInfo notificationInfo = notifications.next();
                    if (!uniqueFroms.contains(notificationInfo.mFrom)) {
                        uniqueFroms.add(notificationInfo.mFrom);
                        mostRecentNotifPerId.add(notificationInfo);
                    }
                }
                // When collapsed, show all the senders like this:
                //     Fred Flinstone, Barry Manilow, Pete...
                noti.setContentText(formatSenders(context, mostRecentNotifPerId));
                Notification.InboxStyle inboxStyle = new Notification.InboxStyle(noti);

                // We have to set the summary text to non-empty so the content text doesn't show
                // up when expanded.
                inboxStyle.setSummaryText(" ");

                // At this point we've got multiple messages in multiple threads. We only
                // want to show the most recent message per thread, which are in
                // mostRecentNotifPerThread.
                int uniqueIdMessageCount = mostRecentNotifPerId.size();
                int maxMessages = Math.min(MAX_MESSAGES_TO_SHOW, uniqueIdMessageCount);

                for (int i = 0; i < maxMessages; i++) {
                    MwiNotificationInfo info = mostRecentNotifPerId.get(i);
                    inboxStyle.addLine(info.formatInboxMessage(context));
                }
                notification = inboxStyle.build();
            }
        }
        MmsLog.d(TAG, "updateNotification notify notification = " + notification);
        nm.notify(NOTIFICATION_ID, notification);
    }

    protected static CharSequence buildTickerMessage(
            Context context, String from, String body) {
        return MessageUtils.formatMsgContent(null, body, from);
    }

}
