package com.mediatek.mms.ext;

import android.app.Notification;
import android.content.Context;

public interface IOpWappushMessagingNotificationExt {
    /**
     * @internal
     */
    boolean updateNotification(Context context, Notification.Builder noti);

    /**
     * Retrun sim specific ringtone uri.
     * @param context Context
     * @param ringToneStr default ringtone uri
     * @param threadId recent wappush threadid
     * @return ringtone uri
     * @internal
     */
    String getWapPushSimRingtone(Context context, String ringToneStr, long threadId);
}
