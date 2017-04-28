package com.mediatek.mms.ext;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.database.Cursor;

public class DefaultOpDeliveryReportExt extends ContextWrapper implements IOpDeliveryReportExt {

    public DefaultOpDeliveryReportExt(Context context) {
        super(context);
    }

    @Override
    public Cursor getSmsReportItems(Intent intent, String[] projection, String selection) {
        return null;
    }
}
