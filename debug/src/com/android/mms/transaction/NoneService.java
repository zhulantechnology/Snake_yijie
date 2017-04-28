package com.android.mms.transaction;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.util.Log;

public class NoneService extends Service {
    private static final String TAG = "NoneService";
    @Override
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override
    public void onCreate() {
        Log.d(TAG, "onCreate");
        super.onCreate();
    }

    @Override
    public void onDestroy() {
        Log.d(TAG, "onDestroy");
        super.onDestroy();
    }


}
