package com.mediatek.mms.ipmessage;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;


public interface IIpEmptyServiceExt {

    /**
     * @internal
     */
    public void onCreate(Service service);

    /**
     * @internal
     */
    public int onStartCommand(Intent intent, int flags, int startId);

    /**
     * @internal
     */
    public void onDestroy();

    /**
     * @internal
     */
    public IBinder onBind(Intent intent);

    /**
     * @internal
     */
    public void onLowMemory();

    /**
     * @internal
     */
    public void onRebind(Intent intent);

    /**
     * @internal
     */
    public boolean onUnbind(Intent intent);
}
