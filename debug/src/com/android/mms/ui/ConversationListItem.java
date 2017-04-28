/*
* Copyright (C) 2014 MediaTek Inc.
* Modification based on code covered by the mentioned copyright
* and/or permission notice(s).
*/
/*
 * Copyright (C) 2008 Esmertec AG.
 * Copyright (C) 2008 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.android.mms.ui;

import android.content.Context;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Handler;
import android.provider.Telephony;
import android.provider.Telephony.Mms;
import android.telephony.SubscriptionInfo;
import android.telephony.SubscriptionManager;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.Checkable;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.QuickContactBadge;
import android.widget.RelativeLayout;
import android.widget.TextView;

import com.android.contacts.common.ContactPhotoManager;
import com.android.contacts.common.ContactPhotoManager.DefaultImageRequest;
import com.android.mms.MmsApp;
import com.android.mms.data.Contact;
import com.android.mms.data.Conversation;
import com.android.mms.R;
import com.android.mms.util.FeatureOption;
import com.android.mms.util.MmsLog;

import com.mediatek.cb.cbmsg.CbMessage;
import com.mediatek.ipmsg.util.IpMessageUtils;
import com.mediatek.mms.ext.IOpConversationListItemExt;
import com.mediatek.mms.ipmessage.IIpConversationListItemExt;
import com.mediatek.opmsg.util.OpMessageUtils;

import java.util.List;

/**
 * This class manages the view for given conversation.
 */
public class ConversationListItem extends RelativeLayout implements Contact.UpdateListener,
            Checkable {
    private static final String TAG = "ConversationListItem";
    private static final boolean DEBUG = false;

    private TextView mSubjectView;
    private TextView mFromView;
    private TextView mDateView;
    private View mAttachmentView;
    private ImageView mErrorIndicator;
    /// M:
    private QuickContactBadge mAvatarView;
    private ImageView mSelectIcon;
    private ImageView mEncrypted; //add JWLWKK-1209 zhangzixiao 20140728
    private static Drawable sDefaultContactImage;
    private static Drawable sDefaultSelectedImage;

    // For posting UI update Runnables from other threads:
    private Handler mHandler = new Handler();

    private Conversation mConversation;

    public static final StyleSpan STYLE_BOLD = new StyleSpan(Typeface.BOLD);

    private Context mContext;
    /// M: add for new common feature.
    private View mMuteView;
    private TextView mUnreadView;
	//Add DSYYLM-50 chenshu 20160223 start
	private TextView mNewUnreadView;
	//Add DSYYLM-50 chenshu 20160223 end
    private static final int MAX_UNREAD_MESSAGES_COUNT = 999;
    private static final String MAX_UNREAD_MESSAGES_STRING = "999+";
    private static final int MAX_READ_MESSAGES_COUNT = 9999;
    private static final String MAX_READ_MESSAGES_STRING = "9999+";

    // M: add for op
    private IOpConversationListItemExt mOpConversationListItemExt = null;

    /// M: New feature for rcse, adding IntegrationMode. @{
    private ImageView mFullIntegrationModeView;
    /// @}

    //add for ipmessage
    public IIpConversationListItemExt mIpConvListItem;

    public ConversationListItem(Context context) {
        super(context);
        mContext = context;
        mOpConversationListItemExt = OpMessageUtils.getOpMessagePlugin()
                .getOpConversationListItemExt();
    }

    public ConversationListItem(Context context, AttributeSet attrs) {
        super(context, attrs);
        mContext = context;
        if (sDefaultContactImage == null) {
            sDefaultContactImage =
                context.getResources().getDrawable(R.drawable.ic_default_contact);
        }
        if (sDefaultSelectedImage == null) {
            sDefaultSelectedImage =
                context.getResources().getDrawable(R.drawable.ic_selected_item);
        }
        mOpConversationListItemExt = OpMessageUtils.getOpMessagePlugin()
                .getOpConversationListItemExt();
    }

    @Override
    protected void onFinishInflate() {
        super.onFinishInflate();
        mFromView = (TextView) findViewById(R.id.from);
        mSubjectView = (TextView) findViewById(R.id.subject);
        mDateView = (TextView) findViewById(R.id.date);
        mAttachmentView = findViewById(R.id.attachment);
        mErrorIndicator = (ImageView) findViewById(R.id.error);
        mAvatarView = (QuickContactBadge) findViewById(R.id.avatar);
        mAvatarView.setOverlay(null);
        mSelectIcon = (ImageView) findViewById(R.id.selectIcon);
        /// M: add for ipmessage
        mMuteView = findViewById(R.id.mute);

		//Add DSYYLM-50 chenshu 20160223 start
		boolean isEnbaleNewUI= getResources().getBoolean(R.bool.enable_mms_cs_ui);
		if(isEnbaleNewUI){
			mNewUnreadView = (TextView) findViewById(R.id.sms_inforamtion);
		}
		//Add DSYYLM-50 chenshu 20160223 end

        mUnreadView = (TextView) findViewById(R.id.unread);
        /// M: New feature for rcse, adding IntegrationMode. @{
        mFullIntegrationModeView = (ImageView) findViewById(R.id.fullintegrationmode);

        mIpConvListItem = IpMessageUtils.getIpMessagePlugin(mContext).getIpConversationListItem();
        mIpConvListItem.onIpSyncView(mContext, mFullIntegrationModeView, mAvatarView);
        /// @}
        // add for op
        mOpConversationListItemExt.onFinishInflate(mSubjectView);
		//add JWLWKK-1209 zhangzixiao 20140728 start
		if(EncryptionActivity.supportEncryptedMessage()) {
		    mEncrypted = (ImageView) findViewById(R.id.encrypted);
		    mEncrypted.setOnClickListener(new View.OnClickListener() {
		    	@Override
		    	public void onClick(View v) {
			    if(mConversation != null) {
			   	mConversation.switchEncryption();
			    }
		    	}
		    });
		}
		//add JWLWKK-1209 zhangzixiao 20140728 end
    }

    public Conversation getConversation() {
        return mConversation;
    }

    /**
     * Only used for header binding.
     */
    public void bind(String title, String explain) {
        mFromView.setText(title);
        mSubjectView.setText(explain);
    }

    private CharSequence formatMessage() {
        final int color = android.R.styleable.Theme_textColorSecondary;
        /// M: Code analyze 029, For new feature ALPS00111828, add CellBroadcast feature . @{
        String from = null;
        if (mConversation.getType() == Telephony.Threads.CELL_BROADCAST_THREAD) {
            from = formatCbMessage();
        } else {
            if (mConversation.getRecipients() != null
                    && mConversation.getRecipients().size() > 0) {
                Contact contact = mConversation.getRecipients().get(0);
                from = mIpConvListItem.onIpFormatMessage(contact.getIpContact(mContext),
                        mConversation.getThreadId(), contact.getNumber(),
                        mConversation.getRecipients().formatNames(", "));
            } else {
                from = mIpConvListItem.onIpFormatMessage(null,
                        mConversation.getThreadId(), null, null);
            }

            if (TextUtils.isEmpty(from)) {
                from = mConversation.getRecipients().formatNames(", ");
            }
        }

        if (TextUtils.isEmpty(from)) {
            from = mContext.getString(android.R.string.unknownName);
        }
        /// @}

        SpannableStringBuilder buf = new SpannableStringBuilder(from);
		 //add DWYQFSQ-204 chengguangshuai 20160802 start
		if (mConversation.hasDraft()&&MmsApp.getApplication().getResources().getBoolean(R.bool.default_enable_draft)) {
			int size = buf.length();
			buf.append("," + mContext.getResources().getString(R.string.has_draft));
			buf.setSpan(new ForegroundColorSpan(
                    mContext.getResources().getColor(R.drawable.text_color_red)),
                    size +1, buf.length(), Spannable.SPAN_INCLUSIVE_EXCLUSIVE);
		}
		//add DWYQFSQ-204 chengguangshuai 20160802 end
        /// M:
        int before = buf.length();
        if (!mConversation.hasUnreadMessages()) {
            MmsLog.d(TAG, "formatMessage(): Thread " + mConversation.getThreadId() +
                    " has no unread message.");
            int count = mConversation.getMessageCount();
            /// M: add for op
            count = mOpConversationListItemExt.formatMessage(
                        (ImageView) findViewById(R.id.sim_type_conv),
                        mConversation.mOpConversationExt, count);
            if (count > 1) {
                if (count > MAX_READ_MESSAGES_COUNT) {
                    buf.append("  " + MAX_READ_MESSAGES_STRING);
                } else {
                    buf.append("  " + count);
                }
                buf.setSpan(new ForegroundColorSpan(
                        mContext.getResources().getColor(R.color.message_count_color)),
                        before, buf.length(), Spannable.SPAN_INCLUSIVE_EXCLUSIVE);
            }
        }
/** M: Remove Google default code
        if (mConversation.hasDraft()) {
           // buf.append(mContext.getResources().getString(R.string.draft_separator));
            int before = buf.length();
            int size;
            buf.append(",  " + mContext.getResources().getString(R.string.has_draft));
            size = android.R.style.TextAppearance_Small;
            buf.setSpan(new TextAppearanceSpan(mContext, size, color), before + 1,
                    buf.length(), Spannable.SPAN_INCLUSIVE_EXCLUSIVE);
            buf.setSpan(new ForegroundColorSpan(
                    mContext.getResources().getColor(R.drawable.text_color_red)),
                    before + 1, buf.length(), Spannable.SPAN_INCLUSIVE_EXCLUSIVE);
        }

 */
        // Unread messages are shown in bold
        if (mConversation.hasUnreadMessages()) {
            buf.setSpan(STYLE_BOLD, 0, buf.length(),
                    Spannable.SPAN_INCLUSIVE_EXCLUSIVE);
        }

        return buf;
    }

    private void updateAvatarView() {
        Drawable avatarDrawable;
        ConversationList conversationList = (ConversationList) ConversationList.getContext();
        if (conversationList.isActionMode() && mConversation.isChecked()) {
            mSelectIcon.setVisibility(View.VISIBLE);
            mAvatarView.setVisibility(View.GONE);
            mSelectIcon.setImageDrawable(sDefaultSelectedImage);
        } else {
            if (mIpConvListItem.updateIpAvatarView(mConversation.getIpConv(mContext), mAvatarView,
                    mSelectIcon)) {
                return;
            }
            Uri photoUri = null;
            if (mConversation.getRecipients().size() == 1) {
                final Contact contact = mConversation.getRecipients().get(0);
                photoUri = contact.getPhotoUri();
                boolean isJoynNumber = mIpConvListItem.updateIpAvatarView(
                        contact.getIpContact(mContext),
                        contact.getNumber(), mAvatarView, contact.getUri());
                avatarDrawable = contact.getAvatar(mContext,
                        sDefaultContactImage, mConversation.getThreadId());

                /// M: fix bug ALPS00400483, clear all data of mAvatarView firstly. @{
                mAvatarView.assignContactUri(null);
                /// @}
                /// M: Code analyze 030, For new feature ALPS00241750, Add email address
                /// to email part in contact . @{
                String number = contact.getNumber();
                // add for joyn converged inbox mode
                if (isJoynNumber) {
                    number = number.substring(4);
                }
                if (Mms.isEmailAddress(number)) {
                    mAvatarView.assignContactFromEmail(number, true);
                } else {
                    if (contact.existsInDatabase()) {
                        mAvatarView.assignContactUri(contact.getUri());
                    } else {
                        mAvatarView.assignContactFromPhone(number, true);
                    }
                    /// @}
                }
            } else {
                // TODO get a multiple recipients asset (or do something else)
                avatarDrawable = sDefaultContactImage;
                mAvatarView.assignContactUri(null);
            }
            ImageView headerView;
            if (conversationList.isActionMode()) {
                mSelectIcon.setVisibility(View.VISIBLE);
                mAvatarView.setVisibility(View.GONE);
                headerView = mSelectIcon;
            } else {
                mSelectIcon.setVisibility(View.GONE);
                mAvatarView.setVisibility(View.VISIBLE);
                headerView = mAvatarView;
            }
            if (avatarDrawable != sDefaultContactImage) {
                ContactPhotoManager contactPhotoManager =
                    ContactPhotoManager.getInstance(mContext);
                final DefaultImageRequest request = new DefaultImageRequest(null, null,
                        ContactPhotoManager.TYPE_DEFAULT, true /* isCircular */);
                contactPhotoManager.loadDirectoryPhoto(headerView, photoUri,
                        false /* darkTheme */, true /* isCircular */, request);
            } else {
                headerView.setImageDrawable(avatarDrawable);
            }
        }
    }

    private void updateFromView() {
        mFromView.setText(formatMessage());
        updateAvatarView();
    }

    private Runnable mUpdateFromViewRunnable = new Runnable() {
        public void run() {
            updateFromView();
        }
    };

    public void onUpdate(Contact updated) {
        //if (Log.isLoggable(LogTag.CONTACT, Log.DEBUG)) {
        Log.i(TAG, "onUpdate: " + this + " contact: " + updated);
        //}
        /// M: fix blank screen issue. if there are 1000 threads, 1 recipient each thread,
        /// and 8 list items in each screen, onUpdate() will be called 8000 times.
        /// mUpdateFromViewRunnable run in UI thread will blocking the other things.
        /// remove blocked mUpdateFromViewRunnable.
        mHandler.removeCallbacks(mUpdateFromViewRunnable);
        mHandler.post(mUpdateFromViewRunnable);
    }

    public final void bind(Context context, final Conversation conversation) {
        //if (DEBUG) Log.v(TAG, "bind()");
        mConversation = conversation;
        /// M: change for op @{
        if (!mOpConversationListItemExt.bind(mContext, mDateView, mUnreadView,
                (ImageView) findViewById(R.id.sim_type_conv), mConversation.mOpConversationExt,
                conversation.hasDraft(), (LinearLayout) findViewById(R.id.iconlist))) {
            /// M: update read view

			////Add DSYYLM-50 chenshu 20160223 start
            /*if (mConversation.hasUnreadMessages()) {
                int unreadCount = mConversation.getUnreadMessageCount();
                String unreadString = null;
                if (unreadCount > MAX_UNREAD_MESSAGES_COUNT) {
                    unreadString = MAX_UNREAD_MESSAGES_STRING;
                } else {
                    unreadString = "" + unreadCount;
                }
                mUnreadView.setText(unreadString);
                mUnreadView.setVisibility(View.VISIBLE);
            } else {
                mUnreadView.setVisibility(View.GONE);
            }*/
			boolean isEnbaleNewUI= getResources().getBoolean(R.bool.enable_mms_cs_ui);
			if(isEnbaleNewUI){
				if (mConversation.hasUnreadMessages()) {
		            int unreadCount = mConversation.getUnreadMessageCount();
		            String unreadString = null;
		            if (unreadCount > MAX_UNREAD_MESSAGES_COUNT) {
		                unreadString = MAX_UNREAD_MESSAGES_STRING;
		            } else {
		                unreadString = "" + unreadCount;
		            }
		            mNewUnreadView.setText(unreadString);
		            mNewUnreadView.setVisibility(View.VISIBLE);
		        } else {
		            mNewUnreadView.setVisibility(View.GONE);
		        }
			} else {
				if (mConversation.hasUnreadMessages()) {
		            int unreadCount = mConversation.getUnreadMessageCount();
		            String unreadString = null;
		            if (unreadCount > MAX_UNREAD_MESSAGES_COUNT) {
		                unreadString = MAX_UNREAD_MESSAGES_STRING;
		            } else {
		                unreadString = "" + unreadCount;
		            }
		            mUnreadView.setText(unreadString);
		            mUnreadView.setVisibility(View.VISIBLE);
		        } else {
		            mUnreadView.setVisibility(View.GONE);
		        }
			}
			//Add DSYYLM-50 chenshu 20160223 end

            /// M: Code analyze 031, For bug ALPS00235723, The crolling performance of message . @{
            // Date
            mDateView.setVisibility(VISIBLE);
            String dateStr = MessageUtils.formatTimeStampStringExtend(
                    context, conversation.getDate());
            mDateView.setText(dateStr);
        }
        /// @}

        mConversation = conversation;

        updateBackground(conversation);
	//add JWLWKK-1209 zhangzixiao 20140728 start
	if(EncryptionActivity.supportEncryptedMessage()) {
	    if (mConversation.mEncrypted == 1) {
	    	mEncrypted.setImageResource(R.drawable.listmode_encrypted);
	    } else {
	    	mEncrypted.setImageResource(R.drawable.listmode_un_encrypted);
	    }
	    if(EncryptionActivity.encryptionEnabled()) {
		mEncrypted.setVisibility(View.VISIBLE);
	    } else {
		mEncrypted.setVisibility(View.GONE);
	    }
	}
	//add JWLWKK-1209 zhangzixiao 20140728 end

//        LayoutParams attachmentLayout = (LayoutParams)mAttachmentView.getLayoutParams();
        boolean hasError = conversation.hasError();
        // When there's an error icon, the attachment icon is left of the error icon.
        // When there is not an error icon, the attachment icon is left of the date text.
        // As far as I know, there's no way to specify that relationship in xml.
        /// M @{
        // if (hasError) {
        //     attachmentLayout.addRule(RelativeLayout.LEFT_OF, R.id.error);
        // } else {
        //     attachmentLayout.addRule(RelativeLayout.LEFT_OF, R.id.date);
        // }
        /// @}

        boolean hasAttachment = conversation.hasAttachment();
        mAttachmentView.setVisibility(hasAttachment ? VISIBLE : GONE);

        // set mSubjectView text before mIpConvListItem.onIpBind()
        if (mConversation.hasUnreadMessages()) {
            String subject = conversation.getSnippet();
            SpannableStringBuilder buf = new SpannableStringBuilder(subject);
            buf.setSpan(STYLE_BOLD, 0, buf.length(),
                    Spannable.SPAN_INCLUSIVE_EXCLUSIVE);
            //add bug id:jllb-4895 chenshu start
            //mSubjectView.setText(buf);
            if(EncryptionActivity.supportEncryptedMessage()) {
                if (mConversation.mEncrypted == 1 && EncryptionActivity.encryptionEnabled()) {
	    		    mSubjectView.setText("******");
	 		    } else {
                    mSubjectView.setText(buf);
                }
            } else {
                mSubjectView.setText(buf);
            }
            //add bug id:jllb-4895 chenshu end
        } else {
            //add bug id:jllb-4895 chenshu start
            //mSubjectView.setText(conversation.getSnippet());
            if(EncryptionActivity.supportEncryptedMessage()) {
                if (mConversation.mEncrypted == 1 && EncryptionActivity.encryptionEnabled()) {
	    		    mSubjectView.setText("******");
	 		    } else {
                    mSubjectView.setText(conversation.getSnippet());
                }
            } else {
                mSubjectView.setText(conversation.getSnippet());
            }
            //add bug id:jllb-4895 chenshu end
        }

        // From.
        mFromView.setVisibility(VISIBLE);
        if (!mIpConvListItem.onIpBind(mConversation.getIpConv(mContext),
                ((ConversationList) ConversationList.getContext()).isActionMode(),
                conversation.isChecked(), mConversation.getType(), this,
                mFromView, mSubjectView, mDateView)) {
            mFromView.setText(formatMessage());
            updateAvatarView();
            /// M:
            mMuteView.setVisibility(View.GONE);
            if (conversation.isMute()) {
                mMuteView.setVisibility(View.VISIBLE);
            }

        /// M: this local variable has never been used. delete google default code.
        // Register for updates in changes of any of the contacts in this conversation.
        // ContactList contacts = conversation.getRecipients();

            if (DEBUG) {
                Log.v(TAG, "bind: contacts.addListeners " + this);
            }
            Contact.addListener(this);
        }
        /// M: Code analyze 031, For bug ALPS00235723, The crolling performance of message .
        mSubjectView.setVisibility(VISIBLE);
 //       LayoutParams subjectLayout = (LayoutParams)mSubjectView.getLayoutParams();
 //       // We have to make the subject left of whatever optional items are shown on the right.
 //       subjectLayout.addRule(RelativeLayout.LEFT_OF, hasAttachment ? R.id.attachment :
  //          (hasError ? R.id.error : R.id.date));

        // Transmission error indicator.
        /// M: Code analyze 032, For new feature ALPS00347707, add for wap push error icon . @{
        if (FeatureOption.MTK_WAPPUSH_SUPPORT && hasError) {
            if (conversation.getType() == Telephony.Threads.WAPPUSH_THREAD) {
                mErrorIndicator.setImageResource(R.drawable.alert_wappush_si_expired);
            } else {
				//Add DSYYLM-50 chenshu 20160223 start
                //mErrorIndicator.setImageResource(R.drawable.ic_list_alert_sms_failed);
				if(context.getResources().getBoolean(R.bool.enable_mms_cs_ui)){
					mErrorIndicator.setImageResource(R.drawable.ic_error);
				} else {
					mErrorIndicator.setImageResource(R.drawable.ic_list_alert_sms_failed);
				}
				//Add DSYYLM-50 chenshu 20160223 end
            }
        }
        /// @}
        mErrorIndicator.setVisibility(hasError ? VISIBLE : GONE);
        //Add, JWYYL-384, DaiHongyi, 20141217, Start
        View draftIcon = findViewById(R.id.draft);
        if (draftIcon != null) {
            if (mConversation.hasDraft()) {
                draftIcon.setVisibility(View.VISIBLE);
            } else {
                draftIcon.setVisibility(View.GONE);
            }
        }
        //Add, JWYYL-384, DaiHongyi, 20141217, End
    }

    private void updateBackground(Conversation conversation) {
        int backgroundId;
        /// M: fix bug ALPS00998351, solute the issue "All of the threads still
        /// highlight after you back to all thread view". @{
        ConversationList conversationList = (ConversationList) ConversationList.getContext();
        /// @}
        if (conversationList.isActionMode() && conversation.isChecked()) {
            backgroundId = R.drawable.conversation_item_background_unread;
        } else if (conversation.hasUnreadMessages()) {
            backgroundId = R.drawable.conversation_item_background_unread;
        } else {
            backgroundId = R.drawable.conversation_item_background_unread;
        }
        Drawable background = mContext.getResources().getDrawable(backgroundId);
        setBackgroundDrawable(background);
    }

    public final void unbind() {
        if (DEBUG) {
            Log.v(TAG, "unbind: contacts.removeListeners " + this);
        }
        // Unregister contact update callbacks.
        Contact.removeListener(this);
        mIpConvListItem.onIpUnbind();
        mOpConversationListItemExt.unbind();
    }
    public void setChecked(boolean checked) {
        mConversation.setIsChecked(checked);
        updateBackground(mConversation);
        updateAvatarView();
    }

    public boolean isChecked() {
        return mConversation.isChecked();
    }

    public void toggle() {
        mConversation.setIsChecked(!mConversation.isChecked());
    }

    /// M: Code analyze 031, For bug ALPS00235723, The crolling performance of message . @{
    public void bindDefault(Conversation conversation) {
        MmsLog.d(TAG, "bindDefault().");
        if (conversation  != null) {
            updateBackground(conversation);
        }
		//Modify DSYYLM-50 chenshu 20160223 start
		boolean isEnableNewUI=getResources().getBoolean(R.bool.enable_mms_cs_ui);
		if(isEnableNewUI){
			mNewUnreadView.setVisibility(GONE);
		}
		//Modify DSYYLM-50 chenshu 20160223 start
        mAttachmentView.setVisibility(GONE);
        mDateView.setVisibility(View.GONE);
        mFromView.setText(R.string.refreshing);
        mSubjectView.setVisibility(GONE);
        mUnreadView.setVisibility(View.GONE);
        mErrorIndicator.setVisibility(GONE);
        mAvatarView.setImageDrawable(sDefaultContactImage);
        /// M:
        mMuteView.setVisibility(View.GONE);
        mOpConversationListItemExt.bindDefault((ImageView) findViewById(R.id.sim_type_conv));
    }
    /// @}

    /// M: Make sure listeners are removed so that ConversationList instance can be released @{
    @Override
    protected void onDetachedFromWindow() {
        Log.i(TAG, "onDetachedFromWindow!!!");
        super.onDetachedFromWindow();
        Contact.removeListener(this);
        mIpConvListItem.onIpDetachedFromWindow();
    }
    /// @}

    private String formatCbMessage() {
        int channelId = 0;
        String from = null;
        if (mConversation.getRecipients().size() == 0) {
            return null;
        }
        MmsLog.d(TAG, "recipients = " + mConversation.getRecipients().formatNames(", "));
        String number = mConversation.getRecipients().get(0).getNumber();
        if (!TextUtils.isEmpty(number)) {
            try {
                channelId = Integer.parseInt(number);
            } catch (NumberFormatException e) {
                MmsLog.e(TAG, "format number error!");
            }
        }

        String name = "";
        List<SubscriptionInfo> subInfoList
                = SubscriptionManager.from(mContext).getActiveSubscriptionInfoList();
        int subCount = (subInfoList != null && !subInfoList.isEmpty()) ? subInfoList.size() : 0;
        for (int i = 0; i < subCount; i++) {
            name = CbMessage.getCBChannelName(subInfoList.get(i).getSubscriptionId(), channelId);
            if (!name.equals(mContext.getString(R.string.cb_default_channel_name))) {
                break;
            }
        }

        if (TextUtils.isEmpty(name)) {
            name = MmsApp.getApplication().getApplicationContext()
                    .getString(R.string.cb_default_channel_name);
        }
        try {
            from = name + "(" + channelId + ")";
        } catch (NumberFormatException e) {
            MmsLog.e(TAG, "format recipient number error!");
        }
        return from;
    }
}
