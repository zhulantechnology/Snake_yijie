package com.mediatek.mms.ext;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.view.MotionEvent;

import com.mediatek.mms.callback.ITextSizeAdjustHost;

public class DefaultOpFolderModeSmsViewerExt extends ContextWrapper implements
        IOpFolderModeSmsViewerExt {

    public DefaultOpFolderModeSmsViewerExt(Context base) {
        super(base);
    }

    @Override
    public String forwardMessage(Context context, String smsBody,
            String nameAndNumber, int boxId) {
        return smsBody;
    }

    @Override
    public boolean dispatchTouchEvent(MotionEvent ev) {
        return false;
    }

    @Override
    public void onStart(ITextSizeAdjustHost host, Activity activity) {

    }

}
