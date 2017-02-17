.class public final Ld/darkness;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private ai:Landroid/content/Context;

.field private aj:Lcn/bmob/v3/listener/XListener;

.field private ak:Lcn/bmob/v3/listener/UploadFileListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/bmob/v3/listener/XListener;)V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Ld/darkness;->ai:Landroid/content/Context;

    .line 86
    iput-object p1, p0, Ld/darkness;->ai:Landroid/content/Context;

    .line 87
    iput-object p2, p0, Ld/darkness;->aj:Lcn/bmob/v3/listener/XListener;

    .line 89
    return-void
.end method

.method private varargs Code([Ljava/lang/Object;)Ljava/lang/String;
    .locals 14

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 126
    aget-object v0, p1, v2

    check-cast v0, Ljava/lang/String;

    .line 128
    aget-object v1, p1, v1

    check-cast v1, Lcn/bmob/v3/listener/UploadFileListener;

    iput-object v1, p0, Ld/darkness;->ak:Lcn/bmob/v3/listener/UploadFileListener;

    .line 130
    const-string v3, "\r\n"

    .line 131
    const-string v4, "--"

    .line 132
    const-string v5, "******"

    .line 134
    :try_start_0
    new-instance v1, Ljava/net/URL;

    const-string v6, "http://file.bmob.cn/7/upload"

    invoke-direct {v1, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 135
    check-cast v1, Ljava/net/HttpURLConnection;

    .line 137
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 138
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 139
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 140
    const-string v6, "POST"

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 141
    const/16 v6, 0x1770

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 142
    const-string v6, "Connection"

    const-string v7, "Keep-Alive"

    invoke-virtual {v1, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v6, "Charset"

    const-string v7, "UTF-8"

    invoke-virtual {v1, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v6, "Content-Type"

    .line 145
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "multipart/form-data;boundary="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 144
    invoke-virtual {v1, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v6, "a"

    iget-object v7, p0, Ld/darkness;->ai:Landroid/content/Context;

    invoke-static {v7}, Lcn/bmob/v3/requestmanager/thing;->I(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    new-instance v6, Ljava/io/DataOutputStream;

    .line 149
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    .line 148
    invoke-direct {v6, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 150
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 152
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Content-Disposition: form-data; name=\"file\"; filename=\""

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 153
    const-string v8, "/"

    invoke-virtual {v0, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 154
    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 152
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v6, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 158
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v7}, Ljava/io/FileInputStream;->available()I

    move-result v0

    int-to-long v8, v0

    .line 160
    const/16 v0, 0x2000

    new-array v10, v0, [B

    move v0, v2

    .line 163
    :goto_0
    invoke-virtual {v7, v10}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    const/4 v11, -0x1

    if-ne v2, v11, :cond_0

    .line 171
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 172
    invoke-virtual {v6, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->flush()V

    .line 176
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 177
    new-instance v0, Ljava/io/InputStreamReader;

    const-string v2, "utf-8"

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 178
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 180
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 181
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V

    .line 182
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 188
    :goto_1
    return-object v0

    .line 164
    :cond_0
    const/4 v11, 0x0

    invoke-virtual {v6, v10, v11, v2}, Ljava/io/DataOutputStream;->write([BII)V

    .line 166
    add-int/2addr v0, v2

    .line 167
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v11, 0x0

    int-to-float v12, v0

    long-to-float v13, v8

    div-float/2addr v12, v13

    const/high16 v13, 0x42c80000    # 100.0f

    mul-float/2addr v12, v13

    float-to-int v12, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v2, v11

    invoke-virtual {p0, v2}, Ld/darkness;->publishProgress([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 185
    :catch_0
    move-exception v0

    .line 186
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 188
    const-string v0, "0"

    goto :goto_1
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Object;

    invoke-direct {p0, p1}, Ld/darkness;->Code([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final onCancelled()V
    .locals 0

    .prologue
    .line 113
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 114
    return-void
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld/darkness;->aj:Lcn/bmob/v3/listener/XListener;

    invoke-interface {v0, p1}, Lcn/bmob/v3/listener/XListener;->onFailure(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lg/Tempest;

    invoke-direct {v0}, Lg/Tempest;-><init>()V

    const-class v1, Lg/madness;

    invoke-virtual {v0, p1, v1}, Lg/Tempest;->V(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/madness;

    iget-object v1, p0, Ld/darkness;->aj:Lcn/bmob/v3/listener/XListener;

    invoke-interface {v1, v0}, Lcn/bmob/v3/listener/XListener;->onSuccess(Lg/madness;)V

    goto :goto_0
.end method

.method protected final onPreExecute()V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method protected final varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    iget-object v0, p0, Ld/darkness;->ak:Lcn/bmob/v3/listener/UploadFileListener;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-interface {v0, v1}, Lcn/bmob/v3/listener/UploadFileListener;->onProgress(Ljava/lang/Integer;)V

    return-void
.end method
