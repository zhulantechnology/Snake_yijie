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

package com.mediatek.mms.model;

import android.content.Context;
import android.net.Uri;

import com.google.android.mms.MmsException;

public class FileModel extends FileAttachmentModel {
    private static final String TAG = "FILE";

    public FileModel() {}
    public FileModel(Context context, Uri uri) throws MmsException {
        super(context, uri, "application/Ocet-stream");
    }

    public FileModel(Context context, String contentType,
            String src, Uri uri) throws MmsException {
        super(context, contentType, src, uri);
    }

    public FileModel(Context context, String contentType,
            String fileName, byte[] data) throws MmsException {
            super(context, contentType, fileName, data);
    }
}
