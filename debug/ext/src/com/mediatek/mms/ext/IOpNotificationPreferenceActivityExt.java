package com.mediatek.mms.ext;

import android.app.Activity;
import android.content.Intent;
import android.content.SharedPreferences;
import android.preference.Preference;
import android.preference.PreferenceActivity;
import android.preference.PreferenceCategory;
import android.preference.PreferenceScreen;

public interface IOpNotificationPreferenceActivityExt {

    /**
     * @internal
     */
    void onCreate(PreferenceActivity activity);

    /**
     * @internal
     */
    void setMessagePreferences(final Activity hostActivity,  int simCount, PreferenceCategory pC);

    /**
     * @internal
     */
    void restoreDefaultPreferences(Activity hostActivity, SharedPreferences.Editor editor);

    /**
     * @internal
     */
    void onPreferenceTreeClick(PreferenceScreen preferenceScreen, Preference preference);

    /**
     * @internal
     */
    void setMultiCardPreference();

    /**
     * @internal
     */
    boolean addSmsInputModePreference(Preference.OnPreferenceChangeListener listener);

    /**
     * @internal
     */
    boolean onPreferenceChange(Preference preference, Object arg1);

    /**
     * @internal
     */
    String getKey(int simCount, String defaultKey);

    /**
     * @internal
     */
    boolean onSimStateChanged();

    /**
     * @internal
     */
    void onActivityResult(int requestCode, int resultCode, Intent data);

    /**
     * @internal
     */
    boolean setRingtoneSummary();
}

