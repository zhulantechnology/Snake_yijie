package com.mediatek.mms.ext;

import android.app.Notification.Builder;
import android.content.Context;
import android.content.ContextWrapper;

public class DefaultOpWappushMessagingNotificationExt extends ContextWrapper
        implements IOpWappushMessagingNotificationExt {

    public DefaultOpWappushMessagingNotificationExt(Context base) {
        super(base);
    }

    @Override
    public boolean updateNotification(Context context, Builder noti) {
        return false;
    }

    /**
     * Retrun sim specific ringtone uri.
     * @param context Context
     * @param ringToneStr default ringtone uri
     * @param threadId recent wappush threadid
     * @return ringToneStr ringtone uri
     */
    @Override
    public String getWapPushSimRingtone(Context context, String ringToneStr, long threadId) {
        return ringToneStr;
    }
}
