package com.mediatek.mms.ext;

import android.app.Activity;
import android.content.Intent;
import android.content.SharedPreferences;
import android.preference.Preference;
import android.preference.PreferenceActivity;
import android.preference.PreferenceCategory;
import android.preference.PreferenceScreen;

public class DefaultOpNotificationPreferenceActivityExt implements
                            IOpNotificationPreferenceActivityExt {

    @Override
    public void setMessagePreferences(final Activity hostActivity,  int simCount,
                                    PreferenceCategory pC) {
    }

    @Override
    public String getKey(int simCount, String defaultKey) {
        return defaultKey;
    }

    @Override
    public void restoreDefaultPreferences(Activity hostActivity, SharedPreferences.Editor editor) {
    }

    @Override
    public void onPreferenceTreeClick(PreferenceScreen preferenceScreen, Preference preference) {
    }

    @Override
    public void onCreate(PreferenceActivity activity) {
    }

    @Override
    public void setMultiCardPreference() {
    }

    @Override
    public boolean addSmsInputModePreference(Preference.OnPreferenceChangeListener listener) {
        return false;
    }

    @Override
    public boolean onPreferenceChange(Preference preference, Object arg1) {
        return false;
    }

    @Override
    public boolean onSimStateChanged() {
        return false;
    }

    @Override
    public void onActivityResult(int requestCode, int resultCode, Intent data) {
    }

    @Override
    public boolean setRingtoneSummary() {
        return true;
    }
}
