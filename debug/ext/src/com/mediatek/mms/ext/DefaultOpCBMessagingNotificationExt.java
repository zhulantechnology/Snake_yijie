package com.mediatek.mms.ext;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;

public class DefaultOpCBMessagingNotificationExt implements IOpCBMessagingNotificationExt {

    private static final String TAG = "DefaultOpCBMessagingNotificationExt";
    private Context mContext;

    public DefaultOpCBMessagingNotificationExt(Context context) {
        mContext = context;
    }

    @Override
    public String getRingtoneStr(int subId, String notificationRingtone,
            SharedPreferences sp, String ringtoneStr) {
        Log.d(TAG, "Returns default Notification ringtone");
        return ringtoneStr;
    }
}
