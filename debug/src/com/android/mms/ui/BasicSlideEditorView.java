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
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;

import com.android.mms.MmsConfig;
import com.android.mms.R;

import com.mediatek.mms.util.DrmUtilsEx;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.Map;

/**
 * This is a basic view to show and edit a slide.
 */
public class BasicSlideEditorView extends LinearLayout implements
        SlideViewInterface {
    private static final String TAG = "BasicSlideEditorView";

    private ImageView mImageView;
    private View mAudioView;
    private TextView mAudioNameView;
    private EditText mEditText;
    private boolean mOnTextChangedListenerEnabled = true;
    private OnTextChangedListener mOnTextChangedListener;

    public BasicSlideEditorView(Context context) {
        super(context);
    }

    public BasicSlideEditorView(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    @Override
    public void onFinishInflate() {
        mImageView = (ImageView) findViewById(R.id.image);
        mAudioView = findViewById(R.id.audio);
        mAudioNameView = (TextView) findViewById(R.id.audio_name);
        mEditText = (EditText) findViewById(R.id.text_message);
        mEditText.addTextChangedListener(new TextWatcher() {
            public void beforeTextChanged(CharSequence s, int start, int count,
                    int after) {
                // TODO Auto-generated method stub
            }

            public void onTextChanged(CharSequence s, int start, int before,
                    int count) {
                if (mOnTextChangedListenerEnabled && (mOnTextChangedListener != null)) {
                    mOnTextChangedListener.onTextChanged(s.toString());
                }
            }

            public void afterTextChanged(Editable s) {
                // TODO Auto-generated method stub
            }
        });
        ScrollView scrollView = (ScrollView) findViewById(R.id.slide_editor_scroll_view);
        scrollView.setOnTouchListener(new OnTouchListener() {
            @Override
            public boolean onTouch(View v, MotionEvent event) {
                if (mOnTouchListener == null) {
                    return false;
                }
                mOnTouchListener.onTouch(v);
                return false;
            }
        });

    }

    public void startAudio() {
        // TODO Auto-generated method stub
    }

    public void startVideo() {
        // TODO Auto-generated method stub
    }

    public void setAudio(Uri audio, String name, Map<String, ?> extras) {
        mAudioView.setVisibility(View.VISIBLE);
        mAudioNameView.setText(name);
    }

    public void setImage(String name, Bitmap bitmap) {
        try {
            if (null == bitmap) {
                bitmap = BitmapFactory.decodeResource(getResources(),
                        R.drawable.ic_missing_thumbnail_picture);
            }
            mImageView.setImageBitmap(bitmap);
        } catch (java.lang.OutOfMemoryError e) {
            Log.e(TAG, "setImage: out of memory: ", e);
        }
    }

    public void setImageRegionFit(String fit) {
        // TODO Auto-generated method stub
    }

    public void setImageVisibility(boolean visible) {
        // TODO Auto-generated method stub
    }

    public void setText(String name, String text) {
        mOnTextChangedListenerEnabled = false;
        if ((text != null) && !text.equals(mEditText.getText().toString())) {
            mEditText.setText(text);
            /// M: Code analyze 002, fix bug ALPS00258808, Set selection
            /// with the editor's text's length, avoiding IndexOfBoundException @{
            mEditText.setSelection(mEditText.getText().length());
            /// @}
        }
        mOnTextChangedListenerEnabled = true;
    }

    public void setTextVisibility(boolean visible) {
        // TODO Auto-generated method stub
    }

    public void setVideo(String name, Uri video) {
        try {
            /// M: Add for DRM video
            Bitmap bitmap = null;
            if (!DrmUtilsEx.checkHasDrmContent(mContext, null, video)) {
                bitmap = VideoAttachmentView.createVideoThumbnail(mContext, video);
            }

            if (null == bitmap) {
                bitmap = BitmapFactory.decodeResource(getResources(),
                        R.drawable.ic_missing_thumbnail_video);
            }
            mImageView.setImageBitmap(bitmap);
        } catch (java.lang.OutOfMemoryError e) {
            Log.e(TAG, "setVideo: out of memory: ", e);
        }
    }

    public void setVideoThumbnail(String name, Bitmap bitmap) {
        mImageView.setImageBitmap(bitmap);
    }

    public void setVideoVisibility(boolean visible) {
        // TODO Auto-generated method stub
    }

    public void stopAudio() {
        // TODO Auto-generated method stub
    }

    public void stopVideo() {
        // TODO Auto-generated method stub
    }

    public void reset() {
        mImageView.setImageDrawable(null);
        mAudioView.setVisibility(View.GONE);
        mOnTextChangedListenerEnabled = false;
        mEditText.setText("");
        mOnTextChangedListenerEnabled = true;
    }

    public void setVisibility(boolean visible) {
        // TODO Auto-generated method stub
    }

    public void setOnTextChangedListener(OnTextChangedListener l) {
        mOnTextChangedListener = l;
    }

    public interface OnTextChangedListener {
        void onTextChanged(String s);
    }

    public void pauseAudio() {
        // TODO Auto-generated method stub

    }

    public void pauseVideo() {
        // TODO Auto-generated method stub

    }

    public void seekAudio(int seekTo) {
        // TODO Auto-generated method stub

    }

    public void seekVideo(int seekTo) {
        // TODO Auto-generated method stub

    }

    /// M: Code analyze 003, fix bug ALPS00275655, Play gif image
    /// with the matkImageView, set Image through Uri @{
    public void setImage(Uri mUri) {
        try {
            Bitmap bitmap = null;
            if (null == mUri) {
                bitmap = BitmapFactory.decodeResource(getResources(),
                        R.drawable.ic_missing_thumbnail_picture);
            } else {
                InputStream mInputStream = null;
                try {
                    mInputStream = this.getContext().getContentResolver().openInputStream(mUri);
                    if (mInputStream != null) {
                        bitmap = BitmapFactory.decodeStream(mInputStream);
                    }
                    /// M: Code analyze 004, fix bug ALPS00284522, Bitmap too large
                    /// to be uploaded into a slide @{
                    bitmap = MessageUtils.getResizedBitmap(bitmap,
                            MmsConfig.getMaxImageWidth(), MmsConfig.getMaxImageHeight());
                    /// @}
                } catch (FileNotFoundException e) {
                    bitmap = null;
                } finally {
                    if (mInputStream != null) {
                        mInputStream.close();
                    }
                }
                setImage("", bitmap);
            }
        } catch (java.lang.OutOfMemoryError e) {
            Log.e(TAG, "setImage(Uri): out of memory: ", e);
        } catch (IOException e) {
            Log.e(TAG, "setImage(Uri): IOException: ", e);
        }
    }
    /// @}
    private OnScrollTouchListener mOnTouchListener;
    public void setOnTouchListener(OnScrollTouchListener l) {
        mOnTouchListener = l;
    }
    public interface OnScrollTouchListener {
        void onTouch(View v);
    }
}
