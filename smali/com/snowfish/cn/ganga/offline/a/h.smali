.class public final Lcom/snowfish/cn/ganga/offline/a/h;
.super Ljava/lang/Object;
.source "SFUtils.java"


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Z

.field private static c:J

.field private static d:Z

.field private static e:Landroid/os/Handler;

.field private static f:[Lcom/snowfish/cn/ganga/offline/a/j;

.field private static g:Ljava/lang/reflect/Method;

.field private static h:Landroid/content/Context;

.field private static i:[B

.field private static j:[B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    sput-boolean v2, Lcom/snowfish/cn/ganga/offline/a/h;->b:Z

    .line 27
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/snowfish/cn/ganga/offline/a/h;->c:J

    .line 28
    sput-boolean v2, Lcom/snowfish/cn/ganga/offline/a/h;->d:Z

    .line 30
    sput-object v4, Lcom/snowfish/cn/ganga/offline/a/h;->e:Landroid/os/Handler;

    .line 194
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/snowfish/cn/ganga/offline/a/j;

    .line 195
    new-instance v1, Lcom/snowfish/cn/ganga/offline/a/j;

    invoke-direct {v1, v2}, Lcom/snowfish/cn/ganga/offline/a/j;-><init>(I)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/snowfish/cn/ganga/offline/a/j;

    invoke-direct {v1, v3}, Lcom/snowfish/cn/ganga/offline/a/j;-><init>(I)V

    aput-object v1, v0, v3

    .line 194
    sput-object v0, Lcom/snowfish/cn/ganga/offline/a/h;->f:[Lcom/snowfish/cn/ganga/offline/a/j;

    .line 356
    sput-object v4, Lcom/snowfish/cn/ganga/offline/a/h;->h:Landroid/content/Context;

    .line 492
    const/16 v0, 0x1f

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/snowfish/cn/ganga/offline/a/h;->i:[B

    .line 496
    const/16 v0, 0xd

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/snowfish/cn/ganga/offline/a/h;->j:[B

    return-void

    .line 492
    nop

    :array_0
    .array-data 1
        0x63t
        0x6ft
        0x6dt
        0x2et
        0x6dt
        0x69t
        0x2et
        0x67t
        0x61t
        0x6dt
        0x65t
        0x2et
        0x75t
        0x2et
        0x75t
        0x2et
        0x66t
        0x72t
        0x65t
        0x65t
        0x2et
        0x68t
        0x2et
        0x52t
        0x65t
        0x48t
        0x65t
        0x6ct
        0x70t
        0x65t
        0x72t
    .end array-data

    .line 496
    :array_1
    .array-data 1
        0x67t
        0x65t
        0x74t
        0x4dt
        0x65t
        0x74t
        0x61t
        0x43t
        0x6ft
        0x6et
        0x66t
        0x69t
        0x67t
    .end array-data
.end method

.method public static a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/snowfish/cn/ganga/offline/a/h;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 93
    const-string v1, ""

    .line 95
    :try_start_0
    invoke-static {p0, p1}, Lcom/snowfish/cn/ganga/offline/a/h;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 96
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v2, v3, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-object v0

    .line 98
    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 102
    :goto_1
    if-eqz v1, :cond_2

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 103
    :cond_2
    if-nez p1, :cond_3

    .line 106
    :try_start_1
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 105
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 107
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_3
    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 473
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 474
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 475
    const/16 v2, 0x80

    .line 474
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 477
    invoke-static {v0, p1}, Lcom/snowfish/cn/ganga/offline/a/h;->a(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 479
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 480
    :cond_0
    invoke-static {p1}, Lcom/snowfish/cn/ganga/offline/a/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 481
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_2

    .line 488
    :cond_1
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method private static a(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 461
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 466
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 246
    :try_start_0
    sget-object v0, Lcom/snowfish/cn/ganga/offline/a/h;->g:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 248
    const-string v0, "android.os.SystemProperties"

    .line 247
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 248
    const-string v1, "get"

    .line 249
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    .line 248
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 250
    sput-object v0, Lcom/snowfish/cn/ganga/offline/a/h;->g:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 252
    :cond_0
    sget-object v0, Lcom/snowfish/cn/ganga/offline/a/h;->g:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    .line 253
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    .line 252
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

.method public static a([B)Ljava/lang/String;
    .locals 1

    .prologue
    .line 393
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/snowfish/cn/ganga/offline/a/h;->a:Landroid/content/Context;

    .line 34
    return-void
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 388
    sput-object p0, Lcom/snowfish/cn/ganga/offline/a/h;->h:Landroid/content/Context;

    sget-object v0, Lcom/snowfish/cn/ganga/offline/a/h;->e:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/snowfish/cn/ganga/offline/a/i;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snowfish/cn/ganga/offline/a/i;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/snowfish/cn/ganga/offline/a/h;->e:Landroid/os/Handler;

    .line 389
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 390
    :goto_0
    sget-object v1, Lcom/snowfish/cn/ganga/offline/a/h;->e:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 391
    return-void

    .line 389
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static a(Z)V
    .locals 0

    .prologue
    .line 336
    sput-boolean p0, Lcom/snowfish/cn/ganga/offline/a/h;->b:Z

    .line 337
    return-void
.end method

.method private static a(I)Z
    .locals 6

    .prologue
    .line 44
    const/4 v0, 0x0

    .line 46
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 47
    const-string v2, "mounted"

    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 47
    if-eqz v1, :cond_0

    .line 48
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 49
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 50
    new-instance v2, Landroid/os/StatFs;

    invoke-direct {v2, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v4, v1

    .line 52
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v2, v1

    .line 53
    mul-long/2addr v2, v4

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    int-to-long v4, p0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 55
    const/4 v0, 0x1

    .line 61
    :cond_0
    :goto_0
    return v0

    .line 58
    :catch_0
    move-exception v1

    .line 59
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;[B)[B
    .locals 2

    .prologue
    .line 323
    :try_start_0
    invoke-static {}, Lcom/snowfish/cn/ganga/offline/sf/f;->a()Lcom/snowfish/cn/ganga/offline/sf/f;

    .line 324
    invoke-static {}, Lcom/snowfish/cn/ganga/offline/sf/f;->b()Lcom/snowfish/cn/ganga/offline/sf/SFChannelAdapterAHelper;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, p0, v1}, Lcom/snowfish/cn/ganga/offline/sf/SFChannelAdapterAHelper;->createPayAdapter(Landroid/content/Context;Ljava/lang/String;)Lcom/snowfish/cn/ganga/offline/basic/SFPayAdapter;

    move-result-object v0

    .line 325
    invoke-interface {v0, p0, p1}, Lcom/snowfish/cn/ganga/offline/basic/SFPayAdapter;->call(Landroid/content/Context;[B)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 328
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(I)I
    .locals 12

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 418
    :try_start_0
    const-string v0, "gsm.sim.state"

    const-string v5, ""

    const-string v6, "android.telephony.MSimTelephonyManager"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    sget-object v7, Lcom/snowfish/cn/ganga/offline/a/h;->a:Landroid/content/Context;

    const-string v8, "phone_msim"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "getTelephonyProperty"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-class v11, Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-virtual {v6, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    const/4 v0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v0

    const/4 v0, 0x2

    aput-object v5, v8, v0

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 419
    const-string v5, "ABSENT"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v1

    .line 433
    :goto_0
    return v0

    .line 421
    :cond_0
    const-string v1, "PIN_REQUIRED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v2

    .line 422
    goto :goto_0

    .line 423
    :cond_1
    const-string v1, "PUK_REQUIRED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v3

    .line 424
    goto :goto_0

    .line 425
    :cond_2
    const-string v1, "NETWORK_LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 426
    const/4 v0, 0x4

    goto :goto_0

    .line 427
    :cond_3
    const-string v1, "READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_4

    .line 428
    const/4 v0, 0x5

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_4
    move v0, v4

    .line 433
    goto :goto_0
.end method

.method public static b(Landroid/content/Context;I)I
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 207
    if-ne p1, v0, :cond_1

    :try_start_0
    invoke-static {}, Lcom/snowfish/cn/ganga/offline/a/h;->k()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-eqz v2, :cond_1

    .line 209
    :try_start_1
    invoke-static {p1}, Lcom/snowfish/cn/ganga/offline/a/h;->b(I)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    .line 238
    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v2

    .line 214
    :cond_1
    if-nez p1, :cond_3

    :try_start_2
    const-string v2, "gsm.sim.state"

    invoke-static {v2}, Lcom/snowfish/cn/ganga/offline/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 216
    :goto_1
    if-eqz v2, :cond_2

    .line 217
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 219
    :cond_2
    const-string v3, "ABSENT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 221
    const-string v0, "PIN_REQUIRED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 222
    const/4 v0, 0x2

    goto :goto_0

    .line 215
    :cond_3
    const-string v2, "gsm.sim.state.2"

    invoke-static {v2}, Lcom/snowfish/cn/ganga/offline/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 223
    :cond_4
    const-string v0, "PUK_REQUIRED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 224
    const/4 v0, 0x3

    goto :goto_0

    .line 225
    :cond_5
    const-string v0, "NETWORK_LOCKED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 226
    const/4 v0, 0x4

    goto :goto_0

    .line 227
    :cond_6
    const-string v0, "READY"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 228
    const/4 v0, 0x5

    goto :goto_0

    .line 231
    :cond_7
    if-nez p1, :cond_8

    .line 233
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 232
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 234
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    goto :goto_0

    :cond_8
    move v0, v1

    .line 236
    goto :goto_0

    .line 238
    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method public static b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 65
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 67
    const/16 v0, 0x12c

    invoke-static {v0}, Lcom/snowfish/cn/ganga/offline/a/h;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 69
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/snowfish/cn/ganga/offline/a/g;->b:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 77
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 79
    :cond_0
    return-object v0

    .line 71
    :cond_1
    sget-object v0, Lcom/snowfish/cn/ganga/offline/a/h;->a:Landroid/content/Context;

    .line 72
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/snowfish/cn/ganga/offline/a/g;->b:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    const/4 v2, 0x0

    .line 71
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 500
    :try_start_0
    new-instance v0, Ljava/lang/String;

    sget-object v2, Lcom/snowfish/cn/ganga/offline/a/h;->i:[B

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    .line 501
    new-instance v2, Ljava/lang/String;

    sget-object v3, Lcom/snowfish/cn/ganga/offline/a/h;->j:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    .line 502
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 503
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 504
    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 505
    if-eqz v0, :cond_0

    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 506
    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 510
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public static b(Z)V
    .locals 2

    .prologue
    .line 351
    if-eqz p0, :cond_0

    .line 352
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/snowfish/cn/ganga/offline/a/h;->c:J

    .line 353
    :cond_0
    sput-boolean p0, Lcom/snowfish/cn/ganga/offline/a/h;->d:Z

    .line 354
    return-void
.end method

.method public static c()Ljava/lang/String;
    .locals 3

    .prologue
    .line 83
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 84
    sget-object v0, Lcom/snowfish/cn/ganga/offline/a/h;->a:Landroid/content/Context;

    .line 85
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/snowfish/cn/ganga/offline/a/g;->b:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    const/4 v2, 0x0

    .line 84
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 86
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 88
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 89
    :cond_0
    return-object v0
.end method

.method private static c(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5

    .prologue
    .line 116
    const-string v1, ""

    .line 119
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    :try_start_0
    invoke-static {}, Lcom/snowfish/cn/ganga/offline/a/h;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    invoke-static {}, Lcom/snowfish/cn/ganga/offline/a/h;->l()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 128
    :goto_0
    if-eqz v1, :cond_0

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 129
    :cond_0
    if-nez p1, :cond_2

    .line 132
    :try_start_1
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 131
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 133
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 139
    :goto_1
    return-object v0

    .line 123
    :cond_1
    :try_start_2
    const-string v0, "getSubscriberId"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 122
    sget-object v4, Lcom/snowfish/cn/ganga/offline/a/h;->f:[Lcom/snowfish/cn/ganga/offline/a/j;

    aget-object v4, v4, p1

    invoke-virtual {v4, v0, v2, v3}, Lcom/snowfish/cn/ganga/offline/a/j;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-object v1, v0

    .line 125
    goto :goto_0

    :catch_0
    move-exception v0

    :cond_2
    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static d()J
    .locals 2

    .prologue
    .line 262
    :try_start_0
    sget-object v0, Lcom/snowfish/cn/ganga/offline/a/h;->a:Landroid/content/Context;

    const-string v1, "com.snowfish.appid"

    invoke-static {v0, v1}, Lcom/snowfish/cn/ganga/offline/a/h;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 263
    invoke-static {v0}, Lcom/snowfish/cn/ganga/offline/channel/c;->a(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 267
    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static e()V
    .locals 0

    .prologue
    .line 298
    return-void
.end method

.method public static f()Z
    .locals 1

    .prologue
    .line 318
    const/4 v0, 0x0

    return v0
.end method

.method public static g()Z
    .locals 1

    .prologue
    .line 332
    sget-boolean v0, Lcom/snowfish/cn/ganga/offline/a/h;->b:Z

    return v0
.end method

.method public static h()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 340
    sget-boolean v1, Lcom/snowfish/cn/ganga/offline/a/h;->d:Z

    if-nez v1, :cond_0

    .line 347
    :goto_0
    return v0

    .line 343
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/snowfish/cn/ganga/offline/a/h;->c:J

    sub-long/2addr v2, v4

    .line 344
    const-wide/16 v4, 0x2710

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 345
    invoke-static {v0}, Lcom/snowfish/cn/ganga/offline/a/h;->b(Z)V

    .line 347
    :cond_1
    sget-boolean v0, Lcom/snowfish/cn/ganga/offline/a/h;->d:Z

    goto :goto_0
.end method

.method public static i()J
    .locals 2

    .prologue
    .line 385
    sget-object v0, Lcom/snowfish/cn/ganga/offline/a/h;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/snowfish/android/ahelper/APaymentUnity;->getUserId(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic j()Landroid/content/Context;
    .locals 1

    .prologue
    .line 356
    sget-object v0, Lcom/snowfish/cn/ganga/offline/a/h;->h:Landroid/content/Context;

    return-object v0
.end method

.method private static k()Z
    .locals 9

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 399
    :try_start_0
    const-string v2, "android.telephony.MSimTelephonyManager"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 400
    sget-object v3, Lcom/snowfish/cn/ganga/offline/a/h;->a:Landroid/content/Context;

    .line 401
    const-string v4, "phone_msim"

    .line 400
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 403
    const-string v4, "getDeviceId"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 404
    const-string v5, "getSubscriberId"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 406
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    :goto_0
    return v0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method private static l()Ljava/lang/String;
    .locals 6

    .prologue
    .line 449
    :try_start_0
    const-string v0, "android.telephony.MSimTelephonyManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 450
    sget-object v1, Lcom/snowfish/cn/ganga/offline/a/h;->a:Landroid/content/Context;

    const-string v2, "phone_msim"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 451
    const-string v2, "getSubscriberId"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 452
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method
