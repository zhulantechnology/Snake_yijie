package com.mediatek.mms.ext;

import android.app.Activity;
import android.content.Context;
import android.view.MotionEvent;

import com.mediatek.mms.callback.ITextSizeAdjustHost;

public interface IOpFolderModeSmsViewerExt {
    /**
     * @internal
     */
    String forwardMessage(Context context, String smsBody, String nameAndNumber, int boxId);
    /**
     * @internal
     */
    void onStart(ITextSizeAdjustHost host, Activity activity);
    /**
     * @internal
     */
    boolean dispatchTouchEvent(MotionEvent ev);
}
