/*
 * Copyright (C) 2007-2008 Esmertec AG.
 * Copyright (C) 2007-2008 The Android Open Source Project
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * http://www.apache.org/licenses/LICENSE-2.0
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package com.mediatek.setting;

import android.app.ActionBar;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.media.Ringtone;
import android.media.RingtoneManager;
import android.net.Uri;
import android.os.Bundle;
import android.preference.CheckBoxPreference;
import android.preference.ListPreference;
import android.preference.Preference;
import android.preference.PreferenceActivity;
import android.preference.PreferenceCategory;
import android.preference.PreferenceManager;
import android.preference.PreferenceScreen;
import android.preference.RingtonePreference;
import android.telephony.SubscriptionManager;
import android.text.TextUtils;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;

import com.android.mms.MmsApp;
import com.android.mms.MmsConfig;
import com.android.mms.R;
import com.android.mms.ui.MessageUtils;
import com.android.mms.util.MmsLog;

import com.mediatek.mms.ext.IOpNotificationPreferenceActivityExt;
import com.mediatek.opmsg.util.OpMessageUtils;
import com.mediatek.setting.SimStateMonitor.SimStateListener;

import android.provider.Settings;//add BWLLYL-479 chenshu 20161120
import java.io.FileNotFoundException;
import java.io.IOException;
import android.content.res.AssetFileDescriptor;

/**
 * With this activity, users can set preferences for MMS and SMS and
 * can access and manipulate SMS messages stored on the SIM.
 */
public class NotificationPreferenceActivity extends PreferenceActivity
        implements Preference.OnPreferenceChangeListener, SimStateListener {
    private static final String TAG = "NotificationPreferenceActivity";

    private static final boolean DEBUG = false;

    public static final String NOTIFICATION_SETTINGS = "pref_key_notification_settings";

    // Symbolic names for the keys used for preference lookup
    public static final String NOTIFICATION_MUTE = "pref_key_mute";

    public static final String NOTIFICATION_VIBRATE = "pref_key_vibrate";

    public static final String POPUP_NOTIFICATION = "pref_key_popup_notification";

    public static final String NOTIFICATION_ENABLED = "pref_key_enable_notifications";

    public static final String NOTIFICATION_RINGTONE = "pref_key_ringtone";

    //Add, JWLW-1141, zhangzixiao, 20131118, Start
    public static final String NOTIFICATION_RINGTONE2 = "pref_key_ringtone2";
    //Add, JWLW-1141, zhangzixiao, 20131118, End

    public static final String AUTO_RETRIEVAL = "pref_key_mms_auto_retrieval";

    public static final String MUTE_START = "mute_start";

    public static final String DEFAULT_RINGTONE = "content://settings/system/notification_sound";

    // System ring tone path start with "content://media/internal/audio/media/".
    // If the ring tone file is added by user, like put music under storage/Notifications folder,
    // then the ring tone URI start with this.
    private static final String EXTERNAL_RINGTONE_PATH = "content://media/external/audio/media/";

    // Menu entries
    private static final int MENU_RESTORE_DEFAULTS = 1;

    private static final int PICK_RINGTONE_REQUEST_CODE = 100;

    private IOpNotificationPreferenceActivityExt mOpNotificationPreferenceActivityExt;

    private CheckBoxPreference mEnableNotificationsPref;

    private CheckBoxPreference mVibratePref;

    private CheckBoxPreference mPopupNotificationPref;

    private ListPreference mNotificaitonMute;

    private int mCurrentSimCount = 0;

    private RingtonePreference mRingtonePref;
    //Add, JWLW-1141, zhangzixiao, 20131118, Start
    private RingtonePreference mRingtone2Pref;
    //Add, JWLW-1141, zhangzixiao, 20131118, End

    @Override
    protected void onPause() {
        super.onPause();
    }

    @Override
    protected void onResume() {
        super.onResume();
        /// KK migration, for default MMS function. @{
        boolean isSmsEnabled = MmsConfig.isSmsEnabled(this);
        MmsLog.d(TAG, "onResume sms enable? " + isSmsEnabled);
        if (!isSmsEnabled) {
            finish();
            return;
        }
        /// @}
        // Since the enabled notifications pref can be changed outside of this activity,
        // we have to reload it whenever we resume.
        setEnabledNotificationsPref();
        setListPrefSummary();
        // for ALPS01836799, refresh ring tone summary.
		//Modify BWLLYL-479 chenshu 20161120 start
		//setRingtoneSummary(getMmsRingtone(this));
        if(supportDualRingtone()) {
            Uri uri0 = RingtoneManager.getActualDefaultMessageRingtoneUri(this, RingtoneManager.TYPE_MESSAGE_RINGTONE, 0);
            setRingtoneSummary(uri0 != null? uri0.toString() : null);
        } else {
            setRingtoneSummary(getMmsRingtone(this));
        }
        if(supportDualRingtone()) {
            Uri uri1 = RingtoneManager.getActualDefaultMessageRingtoneUri(this, RingtoneManager.TYPE_MESSAGE_RINGTONE, 1);
            setRingtone2Summary(uri1 != null? uri1.toString() : null);
        }
        //Modify BWLLYL-479 chenshu 20161120 end
    }

    @Override
    protected void onCreate(Bundle icicle) {
        super.onCreate(icicle);
        MmsLog.d(TAG, "onCreate");
        mOpNotificationPreferenceActivityExt = OpMessageUtils.getOpMessagePlugin()
               .getOpNotificationPreferenceActivityExt();
        ActionBar actionBar = getActionBar();
        actionBar.setTitle(getResources().getString(R.string.actionbar_notification_setting));
        actionBar.setDisplayHomeAsUpEnabled(true);
        setMessagePreferences();
        SimStateMonitor.getInstance().addListener(this);
    }

    private void setListPrefSummary() {
        SharedPreferences sp = PreferenceManager.getDefaultSharedPreferences(this);
        long muteStart = sp.getLong(MUTE_START, 0);
        int muteOrigin = Integer.parseInt(sp.getString(NOTIFICATION_MUTE, "0"));
        if (muteStart > 0 && muteOrigin > 0) {
            MmsLog.d(TAG, "thread mute timeout, reset to default.");
            int currentTime = (int) (System.currentTimeMillis() / 1000);
            if ((muteOrigin * 3600 + muteStart / 1000) <= currentTime) {
                SharedPreferences.Editor editor =
                                PreferenceManager.getDefaultSharedPreferences(
                                        getApplicationContext()).edit();
                editor.putLong(NotificationPreferenceActivity.MUTE_START, 0);
                editor.putString(NOTIFICATION_MUTE, "0");
                editor.commit();
                // Fix ALPS01088380, should call setValueIndex when preference changed.
                mNotificaitonMute.setValueIndex(0);
            }
        }
        // For notificationMute;
        String notificationMute = sp.getString(NOTIFICATION_MUTE, "0");
        mNotificaitonMute.setSummary(MessageUtils.getVisualTextName(this,
                notificationMute, R.array.pref_mute_choices,
                R.array.pref_mute_values));
    }

    private void setMessagePreferences() {
        mCurrentSimCount = SubscriptionManager.from(this).getActiveSubscriptionInfoCount();

	 //Modify, JWLW-1141, zhangzixiao, 20131118, Start
        //addPreferencesFromResource(R.xml.notificationpreferences);
	 if(supportDualRingtone()) {
	      addPreferencesFromResource(R.xml.multinotificationpreferences);
	 } else {
	      addPreferencesFromResource(R.xml.notificationpreferences);
	 }
	 //Modify, JWLW-1141, zhangzixiao, 20131118, End
        mNotificaitonMute = (ListPreference) findPreference(NOTIFICATION_MUTE);
        mNotificaitonMute.setOnPreferenceChangeListener(this);
        mEnableNotificationsPref = (CheckBoxPreference) findPreference(NOTIFICATION_ENABLED);
        mVibratePref = (CheckBoxPreference) findPreference(NOTIFICATION_VIBRATE);
        mPopupNotificationPref = (CheckBoxPreference) findPreference(POPUP_NOTIFICATION);
        mRingtonePref = (RingtonePreference) findPreference(NOTIFICATION_RINGTONE);
        mRingtonePref.setOnPreferenceChangeListener(this);
        mOpNotificationPreferenceActivityExt.setMessagePreferences(
                        NotificationPreferenceActivity.this, mCurrentSimCount,
                        (PreferenceCategory) findPreference(NOTIFICATION_SETTINGS));
        SharedPreferences sharedPreferences = PreferenceManager.getDefaultSharedPreferences(this);
        //Modify BWLLYL-479 chenshu 20161120 start
		//String soundValue = sharedPreferences.getString(NOTIFICATION_RINGTONE, null);
		String soundValue=null;
        if(supportDualRingtone()) {
            Uri uri0 = RingtoneManager.getActualDefaultMessageRingtoneUri(this, RingtoneManager.TYPE_MESSAGE_RINGTONE, 0);
            soundValue = (uri0 != null ? uri0.toString() : null);
        } else {
            soundValue = sharedPreferences.getString(NOTIFICATION_RINGTONE, null);
        }
		//Modify BWLLYL-479 chenshu 20161120 end
        setRingtoneSummary(soundValue);
	 //Add, JWLW-1141, zhangzixiao, 20140402, Start
	 if(supportDualRingtone()) {
	      mRingtone2Pref = (RingtonePreference) findPreference(NOTIFICATION_RINGTONE2);
          mRingtone2Pref.setOnPreferenceChangeListener(this);
          Uri uri1 = RingtoneManager.getActualDefaultMessageRingtoneUri(this, RingtoneManager.TYPE_MESSAGE_RINGTONE, 1);
	      setRingtone2Summary(uri1 != null ? uri1.toString() : null);
	 }
	 //Add, JWLW-1141, zhangzixiao, 20140402, End
    }
    //modify bug_id:BWLLYBN-296 liqiang 20161114 start
    private void setRingtoneSummary(String soundValue) {
        MmsLog.d(TAG, "setRingtoneSummary soundValue " + soundValue);
        if (mOpNotificationPreferenceActivityExt.setRingtoneSummary()) {
           /// for ALPS01836799, set the ring tone
           ///as DEFAULT_RINGTONE if the ring tone not exist. @{
            if (!TextUtils.isEmpty(soundValue) && soundValue.startsWith(EXTERNAL_RINGTONE_PATH)) {
                boolean isRingtoneExist = RingtoneManager.isRingtoneExist
                        (this, Uri.parse(soundValue));
                MmsLog.d(TAG, "Ring tone is exist: " + isRingtoneExist);
                if (!isRingtoneExist) {
                    restoreDefaultRingtone();
                    //modify BWLLYL-479 chenshu 20161118 start
                    //soundValue = DEFAULT_RINGTONE;
                    if(supportDualRingtone()) {
                        if (!isSmsCustomRingtoneSupport()) {
                            soundValue = DEFAULT_RINGTONE;
                        } else {
                            soundValue = Settings.System.getString(this.getContentResolver(), RingtoneManager.KEY_DEFAULT_RINGTONE0);
                        }
                        MmsLog.d(TAG, "support dual ringtone soundValue: " + soundValue != null ? soundValue : "null");
                    } else {
                        soundValue = DEFAULT_RINGTONE;
                    }
                    //modify BWLLYL-479 chenshu 20161118 end
                }
            }
            /// @}
            Uri soundUri = TextUtils.isEmpty(soundValue) ? null : Uri.parse(soundValue);
            Ringtone tone = soundUri != null ? RingtoneManager.getRingtone(this, soundUri) : null;
            mRingtonePref.setSummary(tone != null ? tone.getTitle(this)
                : getResources().getString(R.string.silent_ringtone));
        }
    }
 	//modify bug_id:BWLLYBN-296 liqiang 20161114 end

	//modify BWLLYL-479 chenshu 20161118 start
    private void setRingtone2Summary(String soundValue) {
        MmsLog.d(TAG, "setRingtoneSummary soundValue " + soundValue);
        if (mOpNotificationPreferenceActivityExt.setRingtoneSummary()) {
           /// for ALPS01836799, set the ring tone
           ///as DEFAULT_RINGTONE if the ring tone not exist. @{
            if (!TextUtils.isEmpty(soundValue) && soundValue.startsWith(EXTERNAL_RINGTONE_PATH)) {
                boolean isRingtoneExist = RingtoneManager.isRingtoneExist
                        (this, Uri.parse(soundValue));
                MmsLog.d(TAG, "Ring tone is exist: " + isRingtoneExist);
                if (!isRingtoneExist) {
                    restoreDefaultRingtone2();
                    //soundValue = DEFAULT_RINGTONE;
                    if(supportDualRingtone()) {
                        if (!isSmsCustomRingtoneSupport()) {
                            soundValue = DEFAULT_RINGTONE;
                        } else {
                            soundValue = Settings.System.getString(this.getContentResolver(), RingtoneManager.KEY_DEFAULT_RINGTONE1);
                        }
                        MmsLog.d(TAG, "support dual ringtone soundValue: " + soundValue != null ? soundValue : "null");
                    } else {
                        soundValue = DEFAULT_RINGTONE;
                    }
                }
            }
            /// @}
            Uri soundUri = TextUtils.isEmpty(soundValue) ? null : Uri.parse(soundValue);
            Ringtone tone = soundUri != null ? RingtoneManager.getRingtone(this, soundUri) : null;
            mRingtone2Pref.setSummary(tone != null ? tone.getTitle(this)
                : getResources().getString(R.string.silent_ringtone));
        }
    }
 	//modify BWLLYL-479 chenshu 20161118 end

    //add start by liqiang for determine if the ringtone file exists
    private static boolean ringtoneFileIsExist(Context context, Uri uri){
    	if(uri == null){
    		return true;
    	}
    	 boolean exist = false;
         try {
             AssetFileDescriptor fd = context.getContentResolver().openAssetFileDescriptor(uri, "r");
             if (fd == null) {
                 exist = false;
             } else {
                 fd.close();
                 exist = true;
             }
         } catch (FileNotFoundException e) {
             e.printStackTrace();
             exist = false;
         } catch (IOException e) {
             e.printStackTrace();
             exist = true;
         }
         return exist;
    }
    //add end by liqiang for determine if the ringtone file exists
    
    
    private void setEnabledNotificationsPref() {
        // The "enable notifications" setting is really stored in our own prefs. Read the
        // current value and set the checkbox to match.
        mEnableNotificationsPref.setChecked(getNotificationEnabled(this));
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        switch (item.getItemId()) {
        case MENU_RESTORE_DEFAULTS:
            restoreDefaultPreferences();
            return true;
        case android.R.id.home:
            // The user clicked on the Messaging icon in the action bar. Take them back from
            // wherever they came from
            finish();
            return true;
        default:
            break;
        }
        return false;
    }

    public boolean onCreateOptionsMenu(Menu menu) {
        super.onCreateOptionsMenu(menu);
        menu.clear();
        menu.add(0, MENU_RESTORE_DEFAULTS, 0, R.string.restore_default);
        return true;
    }

    @Override
    public boolean onPreferenceTreeClick(PreferenceScreen preferenceScreen,
            Preference preference) {
        if (preference == mEnableNotificationsPref) {
            // Update the actual "enable notifications" value that is stored in secure settings.
            enableNotifications(mEnableNotificationsPref.isChecked(), this);
        }
        return super.onPreferenceTreeClick(preferenceScreen, preference);
    }

    private void restoreDefaultPreferences() {
        SharedPreferences.Editor editor =
                        PreferenceManager.getDefaultSharedPreferences(
                                NotificationPreferenceActivity.this).edit();
        editor.putBoolean(NOTIFICATION_ENABLED, true);
        editor.putString(NOTIFICATION_MUTE, "0");
        //modify chenshu 20161117 start
        if(!supportDualRingtone()) {
        editor.putString(NOTIFICATION_RINGTONE, DEFAULT_RINGTONE);
        }
	     //Add BWLLYL-479 chenshu 20161117, Start
	     if(supportDualRingtone()) {
                if (!isSmsCustomRingtoneSupport()) {
                    RingtoneManager.setActualDefaultMessageRingtoneUri(this, RingtoneManager.TYPE_MESSAGE_RINGTONE, Uri.parse(DEFAULT_RINGTONE), 0);
                    RingtoneManager.setActualDefaultMessageRingtoneUri(this, RingtoneManager.TYPE_MESSAGE_RINGTONE, Uri.parse(DEFAULT_RINGTONE), 1);
                    MmsLog.d(TAG, "restoreDefaultRingtone---notification_sound");
                } else {
                    Uri uri = Uri.parse(Settings.System.getString(this.getContentResolver(), RingtoneManager.KEY_DEFAULT_RINGTONE0));
                    if (uri != null){
                        MmsLog.d(TAG, "restoreDefaultRingtone---uri1:"+uri);
                    } else {
                        MmsLog.d(TAG, "restoreDefaultRingtone---uri1=null");
                    }
                    Uri uri1 = Uri.parse(Settings.System.getString(this.getContentResolver(), RingtoneManager.KEY_DEFAULT_RINGTONE1));
                    if (uri1 != null){
                        MmsLog.d(TAG, "restoreDefaultRingtone---uri111:"+uri1);
                    } else {
                        MmsLog.d(TAG, "restoreDefaultRingtone---uri111=null");
                    }
                    RingtoneManager.setActualDefaultMessageRingtoneUri(this, RingtoneManager.TYPE_MESSAGE_RINGTONE, uri, 0);
                    RingtoneManager.setActualDefaultMessageRingtoneUri(this, RingtoneManager.TYPE_MESSAGE_RINGTONE, uri1, 1);
                }
	     }
	     //Add BWLLYL-479 chenshu 20161117, end
        //modify chenshu 20161117 end
        editor.putBoolean(NOTIFICATION_VIBRATE, true);
        editor.putBoolean(POPUP_NOTIFICATION, true);
        mOpNotificationPreferenceActivityExt.restoreDefaultPreferences(this, editor);
        editor.apply();
        setPreferenceScreen(null);
        setMessagePreferences();
        setListPrefSummary();
    }

    public static boolean getNotificationEnabled(Context context) {
        SharedPreferences prefs = PreferenceManager.getDefaultSharedPreferences(context);
        boolean notificationsEnabled
                = prefs.getBoolean(NotificationPreferenceActivity.NOTIFICATION_ENABLED, true);
        return notificationsEnabled;
    }

    public static void enableNotifications(boolean enabled, Context context) {
        // Store the value of notifications in SharedPreferences
        SharedPreferences.Editor editor
                = PreferenceManager.getDefaultSharedPreferences(context).edit();
        editor.putBoolean(NotificationPreferenceActivity.NOTIFICATION_ENABLED, enabled);
        editor.apply();
    }

    @Override
    public boolean onPreferenceChange(Preference preference, Object newValue) {
        final String key = preference.getKey();
        String notificationMute = (String) newValue;
        if (NOTIFICATION_MUTE.equals(key)) {
            CharSequence mMute = MessageUtils.getVisualTextName(
                    this, notificationMute, R.array.pref_mute_choices,
                    R.array.pref_mute_values);
            mNotificaitonMute.setSummary(mMute);
            MmsLog.d(TAG, "preference change: " + mMute.toString());
            if (notificationMute.equals("0")) {
                SharedPreferences sp = PreferenceManager
                        .getDefaultSharedPreferences(NotificationPreferenceActivity.this);
                SharedPreferences.Editor editor = sp.edit();
                editor.putLong(MUTE_START, 0);
                editor.commit();
            } else {
                Long muteTime = System.currentTimeMillis();
                SharedPreferences sp = PreferenceManager
                        .getDefaultSharedPreferences(NotificationPreferenceActivity.this);
                SharedPreferences.Editor editor = sp.edit();
                editor.putLong(MUTE_START, muteTime);
                editor.commit();
            }
        } else if (NOTIFICATION_RINGTONE.equals(key)) {
			//Modify BWLLYL-479 chenshu 20161120 start
			//setRingtoneSummary((String) newValue);
            if (supportDualRingtone()) {
                MmsLog.d(TAG, "ononPreferenceChange:"+(String) newValue);
                RingtoneManager.setActualDefaultMessageRingtoneUri(NotificationPreferenceActivity.this, RingtoneManager.TYPE_MESSAGE_RINGTONE, Uri.parse((String) newValue), 0);
                setRingtoneSummary((String) newValue);
            } else {
                setRingtoneSummary((String) newValue);
            }
        } else if (supportDualRingtone() && NOTIFICATION_RINGTONE2.equals(key)) {
            MmsLog.d(TAG, "ononPreferenceChange1:"+(String) newValue);
            RingtoneManager.setActualDefaultMessageRingtoneUri(NotificationPreferenceActivity.this, RingtoneManager.TYPE_MESSAGE_RINGTONE, Uri.parse((String) newValue), 1);
            setRingtone2Summary((String) newValue);
	 		//Modify BWLLYL-479 chenshu 20161120 end
        }
        return true;
    }

    @Override
    public void onConfigurationChanged(Configuration newConfig) {
        MmsLog.d(TAG, "onConfigurationChanged: newConfig = " + newConfig + ",this = " + this);
        super.onConfigurationChanged(newConfig);
        this.getListView().clearScrapViewsIfNeeded();
    }

    public static boolean isNotificationEnable() {
        SharedPreferences prefs
                = PreferenceManager.getDefaultSharedPreferences(MmsApp.getApplication());
        boolean enable = prefs.getBoolean(NotificationPreferenceActivity.NOTIFICATION_ENABLED,
                false);
        return enable;
    }

    public static boolean isPopupNotificationEnable() {
        if (!isNotificationEnable()) {
            return false;
        }
        SharedPreferences prefs
                = PreferenceManager.getDefaultSharedPreferences(MmsApp.getApplication());
        boolean enable = prefs.getBoolean(NotificationPreferenceActivity.POPUP_NOTIFICATION, true);
        return enable;
    }

    public static String getMmsRingtone(Context context) {
        SharedPreferences sharedPreferences = PreferenceManager
                .getDefaultSharedPreferences(context);
        return sharedPreferences.getString(NOTIFICATION_RINGTONE, null);
    }

    /**
     * Use to set DEFAULT_RINGTONE as ring tone.
     */
    private void restoreDefaultRingtone() {
        // Restore the value of ring tone in SharedPreferences
        if (supportDualRingtone()) {
            if (!isSmsCustomRingtoneSupport()) {
                RingtoneManager.setActualDefaultMessageRingtoneUri(this, RingtoneManager.TYPE_MESSAGE_RINGTONE, Uri.parse(DEFAULT_RINGTONE), 0);
                MmsLog.d(TAG, "restoreDefaultRingtone---notification_sound");
            } else {
                Uri uri = Uri.parse(Settings.System.getString(this.getContentResolver(), RingtoneManager.KEY_DEFAULT_RINGTONE0));
                if (uri != null){
                    MmsLog.d(TAG, "restoreDefaultRingtone---uri0:"+uri);
                } else {
                    MmsLog.d(TAG, "restoreDefaultRingtone---uri0=null");
                }
                RingtoneManager.setActualDefaultMessageRingtoneUri(this, RingtoneManager.TYPE_MESSAGE_RINGTONE, uri, 0);
            }
        } else {
            SharedPreferences.Editor editor = PreferenceManager.getDefaultSharedPreferences(this).edit();
            editor.putString(NotificationPreferenceActivity.NOTIFICATION_RINGTONE, DEFAULT_RINGTONE);
            editor.apply();
        }
    }

    private void restoreDefaultRingtone2() {
        // Restore the value of ring tone in SharedPreferences
        if (supportDualRingtone()) {
            if (!isSmsCustomRingtoneSupport()) {
                RingtoneManager.setActualDefaultMessageRingtoneUri(this, RingtoneManager.TYPE_MESSAGE_RINGTONE, Uri.parse(DEFAULT_RINGTONE), 1);
                MmsLog.d(TAG, "restoreDefaultRingtone---notification_sound");
            } else {
                Uri uri = Uri.parse(Settings.System.getString(this.getContentResolver(), RingtoneManager.KEY_DEFAULT_RINGTONE1));
                if (uri != null){
                    MmsLog.d(TAG, "restoreDefaultRingtone---uri1:"+uri);
                } else {
                    MmsLog.d(TAG, "restoreDefaultRingtone---uri1=null");
                }
                RingtoneManager.setActualDefaultMessageRingtoneUri(this, RingtoneManager.TYPE_MESSAGE_RINGTONE, uri, 1);
            }
        } else {
            SharedPreferences.Editor editor = PreferenceManager.getDefaultSharedPreferences(this).edit();
            editor.putString(NotificationPreferenceActivity.NOTIFICATION_RINGTONE2, DEFAULT_RINGTONE);
            editor.apply();
        }
    }

    @Override
    public void onSimStateChanged() {
        MmsLog.d(TAG, "onSimStateChanged");
        if (mOpNotificationPreferenceActivityExt.onSimStateChanged()) {
            setPreferenceScreen(null);
            setMessagePreferences();
            setListPrefSummary();
        }
    }

    /*@Override
    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        MmsLog.d(TAG, "onActivityResult");
        if (resultCode == Activity.RESULT_OK) {
            Uri selectedUri =
                (Uri) data.getParcelableExtra(RingtoneManager.EXTRA_RINGTONE_PICKED_URI);
            SharedPreferences sp = PreferenceManager
                    .getDefaultSharedPreferences(NotificationPreferenceActivity.this);
            SharedPreferences.Editor editor = sp.edit();
            if (selectedUri == null) {
                editor.putString(NOTIFICATION_RINGTONE, "");
                editor.commit();
                return;
            }
            MmsLog.d(TAG, "selectedUri.toString():"+selectedUri);
            editor.putString(NOTIFICATION_RINGTONE, selectedUri.toString());
            editor.commit();
        }
        mOpNotificationPreferenceActivityExt.onActivityResult(requestCode, resultCode, data);
    }*/

    @Override
    protected void onDestroy() {
        super.onDestroy();
        SimStateMonitor.getInstance().removeListener(this);
    }

    //Add, JWLW-1141, zhangzixiao, 20131118, Start
    private static boolean supportDualRingtone() {
    	return android.os.SystemProperties.getBoolean("ro.sms.dual.ringtones.support", false);
    }
    //Add, JWLW-1141, zhangzixiao, 20131118, End
	//Add DWYQLSSMY-57 chenshu 20160328 start
	private static boolean isSmsCustomRingtoneSupport() {
		return android.os.SystemProperties.getBoolean("ro.sms.custom.ringtones.support", false);
    }
	//Add DWYQLSSMY-57 chenshu 20160328 end
}
