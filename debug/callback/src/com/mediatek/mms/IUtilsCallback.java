/* Copyright Statement:
 *
 * This software/firmware and related documentation ("MediaTek Software") are
 * protected under relevant copyright laws. The information contained herein
 * is confidential and proprietary to MediaTek Inc. and/or its licensors.
 * Without the prior written permission of MediaTek inc. and/or its licensors,
 * any reproduction, modification, use or disclosure of MediaTek Software,
 * and information contained herein, in whole or in part, shall be strictly prohibited.
 *
 * MediaTek Inc. (C) 2012. All rights reserved.
 *
 * BY OPENING THIS FILE, RECEIVER HEREBY UNEQUIVOCALLY ACKNOWLEDGES AND AGREES
 * THAT THE SOFTWARE/FIRMWARE AND ITS DOCUMENTATIONS ("MEDIATEK SOFTWARE")
 * RECEIVED FROM MEDIATEK AND/OR ITS REPRESENTATIVES ARE PROVIDED TO RECEIVER ON
 * AN "AS-IS" BASIS ONLY. MEDIATEK EXPRESSLY DISCLAIMS ANY AND ALL WARRANTIES,
 * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE IMPLIED WARRANTIES OF
 * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE OR NONINFRINGEMENT.
 * NEITHER DOES MEDIATEK PROVIDE ANY WARRANTY WHATSOEVER WITH RESPECT TO THE
 * SOFTWARE OF ANY THIRD PARTY WHICH MAY BE USED BY, INCORPORATED IN, OR
 * SUPPLIED WITH THE MEDIATEK SOFTWARE, AND RECEIVER AGREES TO LOOK ONLY TO SUCH
 * THIRD PARTY FOR ANY WARRANTY CLAIM RELATING THERETO. RECEIVER EXPRESSLY ACKNOWLEDGES
 * THAT IT IS RECEIVER'S SOLE RESPONSIBILITY TO OBTAIN FROM ANY THIRD PARTY ALL PROPER LICENSES
 * CONTAINED IN MEDIATEK SOFTWARE. MEDIATEK SHALL ALSO NOT BE RESPONSIBLE FOR ANY MEDIATEK
 * SOFTWARE RELEASES MADE TO RECEIVER'S SPECIFICATION OR TO CONFORM TO A PARTICULAR
 * STANDARD OR OPEN FORUM. RECEIVER'S SOLE AND EXCLUSIVE REMEDY AND MEDIATEK'S ENTIRE AND
 * CUMULATIVE LIABILITY WITH RESPECT TO THE MEDIATEK SOFTWARE RELEASED HEREUNDER WILL BE,
 * AT MEDIATEK'S OPTION, TO REVISE OR REPLACE THE MEDIATEK SOFTWARE AT ISSUE,
 * OR REFUND ANY SOFTWARE LICENSE FEES OR SERVICE CHARGE PAID BY RECEIVER TO
 * MEDIATEK FOR SUCH MEDIATEK SOFTWARE AT ISSUE.
 *
 * The following software/firmware and/or related documentation ("MediaTek Software")
 * have been modified by MediaTek Inc. All revisions are subject to any receiver's
 * applicable license agreements with MediaTek Inc.
 */

package com.mediatek.mms.callback;


import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.net.Uri;

public interface IUtilsCallback {

    /**
     * callback blockingUpdateNewMessageIndicator
     * @param context: context
     * @param newMsgThreadId: newMsgThreadId
     * @param isStatusMessage: isStatusMessage
     * @param statusMessageUri: statusMessageUri
     */
    public void blockingIpUpdateNewMessageIndicator(Context context, long newMsgThreadId,
            boolean isStatusMessage, Uri statusMessageUri);

    public int getNotificationResourceId();

    /**
     * callback isPopupNotificationEnable
     */
    public boolean isIpPopupNotificationEnable();

    /**
     * callback notifyWidgetDatasetChanged
     * @param context: context
     */
    public void notifyIpWidgetDatasetChanged(Context context);

    /**
     * callback isHome
     * @param context: context
     * @return is home
     */
    public boolean isIpHome(Context context);

    /**
     * get DialogModeActivity intent
     * @param context: context
     * @return intent
     */
    public Intent getDialogModeIntent(Context context);

//    /**
//     * getContactNumbersByContactIds
//     * @param contactsIds: contactsIds
//     * @return list of numbers
//     */
//    public List<String> getContactNumbersByContactIds(long[] contactsIds);

    /**
     *
     * @param context
     * @param defaultValue
     * @param number
     * @return
     */
    public Drawable getContactDrawalbeFromNumber(Context context,
            Drawable defaultValue, String number, boolean needRequery);

    /**
     *
     * @param context
     * @param location
     * @param messageSize
     * @param subId
     * @param threadId
     * @return
     */
    public boolean sendMms(Context context,
            Uri location, long messageSize, int subId, long threadId);

    public String formatIpTimeStampString(Context context, long when, boolean fullFormat);
}














