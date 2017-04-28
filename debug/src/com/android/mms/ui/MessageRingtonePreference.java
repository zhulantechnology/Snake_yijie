/*
* addFile chenshu  20161120
*/
package com.android.mms.ui;


import android.content.Context;
import android.net.Uri;
import android.preference.RingtonePreference;
import android.util.AttributeSet;
import android.util.Log;
import android.media.RingtoneManager;
import android.content.Intent;
import com.mediatek.setting.NotificationPreferenceActivity;
import android.provider.Settings;
import java.io.InputStream;
import java.io.FileNotFoundException;
import java.io.IOException;

public class MessageRingtonePreference extends RingtonePreference {
	private static final String TAG = "MessageRingtonePreference";
    private Context mContext;
    private static final String EXTERNAL_RINGTONE_PATH = "content://media/external/audio/media/";
	public MessageRingtonePreference(Context context, AttributeSet attrs) {
		super(context, attrs);
        mContext = context;
	}

       @Override
       protected void onPrepareRingtonePickerIntent(Intent ringtonePickerIntent) {
            super.onPrepareRingtonePickerIntent(ringtonePickerIntent);
		    ringtonePickerIntent.putExtra(RingtoneManager.EXTRA_RINGTONE_EXISTING_URI,
                onRestoreRingtone());
            ringtonePickerIntent.putExtra(RingtoneManager.EXTRA_RINGTONE_SHOW_DEFAULT, false);
            ringtonePickerIntent.putExtra(RingtoneManager.EXTRA_RINGTONE_SHOW_SILENT, true);
            ringtonePickerIntent.putExtra(RingtoneManager.EXTRA_RINGTONE_TYPE, RingtoneManager.TYPE_NOTIFICATION);
            ringtonePickerIntent.putExtra(RingtoneManager.EXTRA_RINGTONE_TITLE, getTitle());
            Log.e(TAG, "onPrepareRingtonePickerIntent:getTitle():"+getTitle());
            ringtonePickerIntent.putExtra(RingtoneManager.EXTRA_RINGTONE_SHOW_MORE_RINGTONES, true);
       }

	@Override
	protected void onSaveRingtone(Uri ringtoneUri) {
		super.onSaveRingtone(ringtoneUri);
        Log.e(TAG, "onSaveRingtone");
		if(supportDualRingtone()) {
            int simId = getSimId();
			Log.e(TAG, "onSaveRingtone : uri="+ringtoneUri+",subId="+simId);
            if (!(simId<0 || simId>1)) {
                RingtoneManager.setActualDefaultMessageRingtoneUri(mContext, RingtoneManager.TYPE_MESSAGE_RINGTONE, ringtoneUri, simId);
            }
		}
	}

	@Override
	protected Uri onRestoreRingtone() {
        Uri uri = super.onRestoreRingtone();
        if (supportDualRingtone()) {
            int simId = getSimId();
            uri=RingtoneManager.getActualDefaultMessageRingtoneUri(mContext, RingtoneManager.TYPE_MESSAGE_RINGTONE,simId);
            if (uri!=null) {
               Log.e(TAG, "MessageRingtonePreference---onRestoreRingtone : before uri="+uri);
                   if (!isSmsCustomRingtoneSupport()) {
                       if (uri.toString().equals("content://settings/system/notification_sound")){
                            uri=RingtoneManager.getActualDefaultRingtoneUri(mContext, 2);
                            Log.e(TAG, "MessageRingtonePreference---content://settings/system/notification_sound");
                       }
                   } else {
                       if (uri.toString().startsWith(EXTERNAL_RINGTONE_PATH)) {
                            Log.e(TAG, "onRestoreRingtone : EXTERNAL_RINGTONE_PATH");
                            InputStream inputStream = null;
                            boolean invalidRingtone = true;
                            try {
                                inputStream = mContext.getContentResolver().openInputStream(uri);
                            } catch (FileNotFoundException ex) {
                            } finally {
                                if (inputStream != null) {
                                    invalidRingtone = false;
                                    try {
                                        inputStream.close();
                                    } catch (IOException ex) {
                                    }
                                }
                            }
                            if (invalidRingtone) {
                                    Log.d(TAG, "checkRingtone, invalidRingtone");
                                    if (simId==0) {
                    					    uri = Uri.parse(Settings.System.getString(mContext.getContentResolver(), RingtoneManager.KEY_DEFAULT_RINGTONE0));
                                    } else if (simId==1){
                                            uri = Uri.parse(Settings.System.getString(mContext.getContentResolver(), RingtoneManager.KEY_DEFAULT_RINGTONE1));
                                    } else {
                                            uri = Uri.parse(Settings.System.getString(mContext.getContentResolver(), RingtoneManager.KEY_DEFAULT_RINGTONE0));
                                    }
                            }
                            if (uri!=null) {
                                Log.e(TAG, "onRestoreRingtone : uri=result:"+uri);
                            }
                      }
                }
            } else {
                Log.e(TAG, "MessageRingtonePreference---onRestoreRingtone : uri=null");
            }
        } else {
            if (uri != null) {
                Log.e(TAG, "onRestoreRingtone : uri="+uri);
                if (uri.toString().equals("content://settings/system/notification_sound")){
                    uri=RingtoneManager.getActualDefaultRingtoneUri(mContext, getRingtoneType());
                }
            }
        }
		return uri;
	}

	private int getSimId() {
		if(supportDualRingtone()) {
		    if(NotificationPreferenceActivity.NOTIFICATION_RINGTONE2.equals(getKey())) {
                Log.v(TAG, "return 1");
				return 1;
		    } else {
                Log.v(TAG, "return 0");
				return 0;
		    }
		}
		return 0;
	}

    /*public boolean onActivityResults(int requestCode, int resultCode, Intent data) {
       Log.v(TAG, "onActivityResult--MessageRingtonePreference: ");
       if (data != null) {
           Uri uri = data.getParcelableExtra(RingtoneManager.EXTRA_RINGTONE_PICKED_URI);
           Log.v(TAG, "onActivityResult messageNotificationRingtone: "+uri);
           if (callChangeListener(uri != null ? uri.toString() : "")) {
               onSaveRingtone(uri);
           }
       }else{
    	   Uri uri = RingtoneManager.getActualDefaultMessageRingtoneUri(mContext, RingtoneManager.TYPE_MESSAGE_RINGTONE, getSimId());
           onSaveRingtone(uri);
       }

       return true;
    }*/

    private static boolean supportDualRingtone() {
        return android.os.SystemProperties.getBoolean("ro.sms.dual.ringtones.support", false);
    }

	private static boolean isSmsCustomRingtoneSupport() {
		return android.os.SystemProperties.getBoolean("ro.sms.custom.ringtones.support", false);
    }

}
