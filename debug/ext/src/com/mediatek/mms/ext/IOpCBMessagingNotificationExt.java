package com.mediatek.mms.ext;

import android.content.SharedPreferences;

public interface IOpCBMessagingNotificationExt {

    /**
     * @internal
     */
    String getRingtoneStr(int subId, String notificationRingtone,
            SharedPreferences sp, String ringtoneStr);

}
