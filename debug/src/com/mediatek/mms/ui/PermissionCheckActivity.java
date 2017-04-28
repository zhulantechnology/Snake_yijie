package com.mediatek.mms.ui;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.PermissionDialog;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.os.Bundle;
import android.util.Log;
import android.widget.Toast;

import com.android.mms.MmsApp;
import com.android.mms.R;
import com.android.mms.util.DraftCache;

import com.mediatek.mms.util.PermissionCheckUtil;

public class PermissionCheckActivity extends Activity {
    private static final String TAG = "PermissionCheckActivity";
    private static final int REQUIRED_PERMISSIONS_REQUEST_CODE = 1;
    private boolean mIsRequestingPermission = false;

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Log.d(TAG, " onCreate");
        final String[] missingArray
                = getIntent().getStringArrayExtra(PermissionCheckUtil.MISSING_PERMISSIONS);
        PermissionCheckUtil.setPermissionActivityCount(true);
        requestPermissions(missingArray, REQUIRED_PERMISSIONS_REQUEST_CODE);
    }

    @Override
    public void onRequestPermissionsResult(int requestCode, String[] permissions,
                int[] grantResults) {
        //finish();
    	Log.d("shubin", "onrequestpermisison");
        if (grantResults == null || grantResults.length <= 0) {
            return;
        }
        if(requestCode == REQUIRED_PERMISSIONS_REQUEST_CODE){
        	PermissionCheckUtil.setPermissionActivityCount(false);
        	Log.d(TAG, " onRequestPermissionsResult Activity Count: "
        			+ PermissionCheckUtil.sPermissionsActivityStarted);
        	Log.i("shubin", "into onrequestPermission");
        	if (onRequestPermissionsResult(//M by shubin for runtime permission
        			this, requestCode, permissions, grantResults, true)) {
        		if (DraftCache.getInstance() == null) {
        			MmsApp.getApplication().onRequestPermissionsResult();
        		}
        		try {
        			Intent previousActivityIntent
        			= (Intent) getIntent().getExtras().get(
        					PermissionCheckUtil.PREVIOUS_ACTIVITY_INTENT);
        			startActivity(previousActivityIntent);
        		} catch (SecurityException e) {
        			Log.e(TAG, " SecurityException happened: " + e);
        			Resources res = getResources();
        			String mediaType = res.getString(R.string.type_common_file);
        			String message = res.getString(R.string.error_add_attachment, mediaType);
        			//Modify DWYQA-276 chenshu 20160505 start never show error
        			//Toast.makeText(this, message, Toast.LENGTH_SHORT).show();
        			//Modify DWYQA-276 chenshu 20160505 end
        		}
        	}
        }
    }
    //A by shubin for runtime permissions start {
    public boolean onRequestPermissionsResult(
            Activity activity, int requestCode, String[] permissions,
            int[] grantResults, boolean needFinish) {
        for (int i = 0; i < permissions.length; i++) {
            if (!PermissionCheckUtil.hasPermission(activity, permissions[i])) {
                // Show toast
                if (PermissionCheckUtil.isRequiredPermission(permissions[i])
                        || PermissionCheckUtil.isNeverGrantedPermission(activity, permissions[i])) {
                    //showNoPermissionsToast(activity);
                    if(!shouldShowRequestPermissionRationale(permissions[i])){
                        showGotoSettingsDialog();//M by shubin for runtime permission
                        return false;
                    }
                }
                if (needFinish) {
                	Log.i("shubin", "activity finish");
                    activity.finish();
                }
                Log.d(TAG, "onRequestPermissionsResult return false");
                return false;
            }
        }
        return true;
    }
    private PermissionDialog dialog = null;
    private void showGotoSettingsDialog(){
        PermissionDialog permissionDialog =  new PermissionDialog(this) {
 			
            @Override
            public void goToPermissionActivity() {
                // TODO Auto-generated method stub
                PermissionCheckActivity.this.getPackageManager().startManagePermissionsActivity(getAppPackageName());
                finish();
 	        }
 			
            @Override
            public void cancelDialog() {
                // TODO Auto-generated method stub
 	            finish();
            }
        };
        permissionDialog.setCancelable(false);
        permissionDialog.show();
        permissionDialog.setMessage(android.R.string.dialog_message);
        permissionDialog.setSettingsButton(android.R.string.goto_setting);
        permissionDialog.setCancelButton(android.R.string.cancel);
        dialog = permissionDialog; 
        
    }
    private String getAppPackageName(){
        PackageInfo info;  
	    try {  
	        info = this.getPackageManager().getPackageInfo(this.getPackageName(), 0);  
	        return info.packageName;
	    } catch (NameNotFoundException e) {  
	        e.printStackTrace();  
	    }
	    return null;
    }
    //A by shubin for runtime permissions end }
}
