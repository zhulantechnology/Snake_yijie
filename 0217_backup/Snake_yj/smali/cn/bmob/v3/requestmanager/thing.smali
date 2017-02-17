.class public Lcn/bmob/v3/requestmanager/thing;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static P:Lcn/bmob/v3/requestmanager/thing;


# instance fields
.field private N:La/thing;

.field private O:Le/i;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcn/bmob/v3/requestmanager/thing;->mContext:Landroid/content/Context;

    .line 41
    iget-object v0, p0, Lcn/bmob/v3/requestmanager/thing;->O:Le/i;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p1, v0}, Le/Though;->Code(Landroid/content/Context;Lf/acknowledge;)Le/i;

    move-result-object v0

    iput-object v0, p0, Lcn/bmob/v3/requestmanager/thing;->O:Le/i;

    :cond_0
    iget-object v0, p0, Lcn/bmob/v3/requestmanager/thing;->O:Le/i;

    iput-object v0, p0, Lcn/bmob/v3/requestmanager/thing;->O:Le/i;

    .line 42
    return-void
.end method

.method public static B(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 166
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v0}, Lcn/bmob/v3/requestmanager/thing;->Code(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 167
    :goto_0
    invoke-static {}, Lcn/bmob/v3/requestmanager/thing;->V()Ljava/lang/String;

    move-result-object v4

    .line 168
    invoke-static {p0}, Lcn/bmob/v3/requestmanager/thing;->C(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 169
    const-string v0, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {p0, v0}, Lcn/bmob/v3/requestmanager/thing;->Code(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 170
    :goto_1
    const-string v2, "android.permission.BLUETOOTH"

    invoke-static {p0, v2}, Lcn/bmob/v3/requestmanager/thing;->Code(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 172
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 173
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 172
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 176
    const/4 v0, 0x0

    .line 178
    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 182
    :goto_3
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2}, Ljava/security/MessageDigest;->update([BII)V

    .line 184
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    .line 186
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    move v1, v3

    .line 187
    :goto_4
    array-length v2, v4

    if-lt v1, v2, :cond_3

    .line 196
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 198
    return-object v0

    .line 166
    :cond_0
    const-string v0, ""

    move-object v1, v0

    goto :goto_0

    .line 169
    :cond_1
    const-string v0, ""

    goto :goto_1

    .line 170
    :cond_2
    const-string v2, ""

    goto :goto_2

    .line 179
    :catch_0
    move-exception v1

    .line 180
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_3

    .line 188
    :cond_3
    aget-byte v2, v4, v1

    and-int/lit16 v2, v2, 0xff

    .line 191
    const/16 v3, 0xf

    if-gt v2, v3, :cond_4

    .line 192
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "0"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 194
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 187
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_4
.end method

.method private static C(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 253
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 252
    return-object v0
.end method

.method public static declared-synchronized Code(Landroid/content/Context;)Lcn/bmob/v3/requestmanager/thing;
    .locals 2

    .prologue
    .line 48
    const-class v1, Lcn/bmob/v3/requestmanager/thing;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/bmob/v3/requestmanager/thing;->P:Lcn/bmob/v3/requestmanager/thing;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcn/bmob/v3/requestmanager/thing;

    invoke-direct {v0, p0}, Lcn/bmob/v3/requestmanager/thing;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/bmob/v3/requestmanager/thing;->P:Lcn/bmob/v3/requestmanager/thing;

    .line 52
    :cond_0
    sget-object v0, Lcn/bmob/v3/requestmanager/thing;->P:Lcn/bmob/v3/requestmanager/thing;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic Code(Lcn/bmob/v3/requestmanager/thing;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 184
    iget-object v0, p0, Lcn/bmob/v3/requestmanager/thing;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/bmob/v3/requestmanager/thing;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/bmob/v3/requestmanager/thing;->N:La/thing;

    iget-object v2, v2, La/thing;->params:Lorg/json/JSONObject;

    invoke-static {v1, v2}, Ld/This;->Code(Landroid/content/Context;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ld/acknowledge;->Z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ld/This;->Code(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static Code(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 296
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 298
    const/4 v0, 0x0

    .line 300
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 301
    const/16 v4, 0x1000

    .line 300
    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 302
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 309
    if-eqz v0, :cond_0

    move v1, v2

    .line 310
    :goto_1
    array-length v4, v0

    if-lt v1, v4, :cond_2

    .line 315
    :cond_0
    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 316
    const/4 v2, 0x1

    .line 318
    :cond_1
    return v2

    .line 303
    :catch_0
    move-exception v1

    .line 305
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 311
    :cond_2
    aget-object v4, v0, v1

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static I(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 83
    const-string v1, "0"

    .line 85
    const-string v0, "0"

    .line 87
    invoke-static {p0}, Ld/I;->D(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 88
    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    .line 87
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 88
    if-nez v2, :cond_0

    .line 89
    invoke-static {p0}, Ld/I;->D(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 90
    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    .line 89
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 90
    if-eqz v2, :cond_1

    .line 91
    :cond_0
    new-instance v0, Ld/thing;

    invoke-direct {v0, p0}, Ld/thing;-><init>(Landroid/content/Context;)V

    .line 93
    invoke-virtual {v0}, Ld/thing;->Z()Ljava/lang/String;

    move-result-object v1

    .line 95
    invoke-virtual {v0}, Ld/thing;->I()Ljava/lang/String;

    move-result-object v0

    .line 98
    :cond_1
    new-instance v2, Lb/This;

    invoke-direct {v2, p0}, Lb/This;-><init>(Landroid/content/Context;)V

    const-string v3, "appkey"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lb/This;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 100
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 101
    const-string v3, "appkey is null"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ld/of;->Code(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 104
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 105
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 106
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 112
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "android_id"

    .line 111
    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 114
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 115
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Ld/I;->encode([B)Ljava/lang/String;

    move-result-object v0

    .line 122
    return-object v0
.end method

.method private static V()Ljava/lang/String;
    .locals 2

    .prologue
    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "35"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 234
    sget-object v1, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 235
    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 236
    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->HOST:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 237
    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 238
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 239
    sget-object v1, Landroid/os/Build;->TAGS:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 240
    sget-object v1, Landroid/os/Build;->USER:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 231
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static V(Landroid/content/Context;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 34
    const-string v1, "X-Bmob-App-Key"

    new-instance v2, Lb/This;

    invoke-direct {v2, p0}, Lb/This;-><init>(Landroid/content/Context;)V

    const-string v3, "appkey"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lb/This;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string v1, "charset"

    const-string v2, "utf-8"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string v1, "Content-Type"

    const-string v2, "application/json"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string v1, "Accept-Encoding"

    const-string v2, "gzip"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    return-object v0
.end method

.method public static Z(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 127
    invoke-static {}, Lcn/bmob/v3/requestmanager/thing;->V()Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-static {p0}, Lcn/bmob/v3/requestmanager/thing;->C(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 130
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 133
    const/4 v0, 0x0

    .line 135
    :try_start_0
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 139
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v1, v3}, Ljava/security/MessageDigest;->update([BII)V

    .line 141
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 143
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    move v5, v1

    move-object v1, v0

    move v0, v5

    .line 144
    :goto_1
    array-length v3, v2

    if-lt v0, v3, :cond_0

    .line 153
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 155
    return-object v0

    .line 136
    :catch_0
    move-exception v2

    .line 137
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    .line 145
    :cond_0
    aget-byte v3, v2, v0

    and-int/lit16 v3, v3, 0xff

    .line 148
    const/16 v4, 0xf

    if-gt v3, v4, :cond_1

    .line 149
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "0"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 151
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public final Code(La/thing;)Lcn/bmob/v3/requestmanager/thing;
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcn/bmob/v3/requestmanager/thing;->N:La/thing;

    .line 68
    return-object p0
.end method

.method public final Code(Lcn/bmob/v3/listener/XListener;)V
    .locals 5

    .prologue
    .line 78
    iget-object v0, p0, Lcn/bmob/v3/requestmanager/thing;->O:Le/i;

    new-instance v1, Lcn/bmob/v3/requestmanager/This;

    iget-object v2, p0, Lcn/bmob/v3/requestmanager/thing;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/bmob/v3/requestmanager/thing;->N:La/thing;

    new-instance v3, Lcn/bmob/v3/requestmanager/thing$1;

    invoke-direct {v3, p0, p1}, Lcn/bmob/v3/requestmanager/thing$1;-><init>(Lcn/bmob/v3/requestmanager/thing;Lcn/bmob/v3/listener/XListener;)V

    .line 95
    new-instance v4, Lcn/bmob/v3/requestmanager/thing$2;

    invoke-direct {v4, p0, p1}, Lcn/bmob/v3/requestmanager/thing$2;-><init>(Lcn/bmob/v3/requestmanager/thing;Lcn/bmob/v3/listener/XListener;)V

    invoke-direct {v1, v2, v3, v4}, Lcn/bmob/v3/requestmanager/This;-><init>(La/thing;Le/Though$thing;Le/Though$This;)V

    .line 78
    invoke-virtual {v0, v1}, Le/i;->I(Le/V;)Le/V;

    .line 103
    return-void
.end method

.method public final Code(Ljava/lang/reflect/Type;Lcn/bmob/v3/listener/FindListener;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Lcn/bmob/v3/listener/FindListener",
            "<TT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 113
    new-instance v0, Lcn/bmob/v3/requestmanager/thing$3;

    invoke-direct {v0, p0, p3, p1, p2}, Lcn/bmob/v3/requestmanager/thing$3;-><init>(Lcn/bmob/v3/requestmanager/thing;ZLjava/lang/reflect/Type;Lcn/bmob/v3/listener/FindListener;)V

    invoke-virtual {p0, v0}, Lcn/bmob/v3/requestmanager/thing;->Code(Lcn/bmob/v3/listener/XListener;)V

    .line 148
    return-void
.end method

.method public final Code(Ljava/lang/reflect/Type;Lcn/bmob/v3/listener/GetListener;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Lcn/bmob/v3/listener/GetListener",
            "<TT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 158
    new-instance v0, Lcn/bmob/v3/requestmanager/thing$4;

    invoke-direct {v0, p0, p3, p1, p2}, Lcn/bmob/v3/requestmanager/thing$4;-><init>(Lcn/bmob/v3/requestmanager/thing;ZLjava/lang/reflect/Type;Lcn/bmob/v3/listener/GetListener;)V

    invoke-virtual {p0, v0}, Lcn/bmob/v3/requestmanager/thing;->Code(Lcn/bmob/v3/listener/XListener;)V

    .line 177
    return-void
.end method

.method public final Code(Ljava/lang/reflect/Type;Lcn/bmob/v3/listener/FindListener;J)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Lcn/bmob/v3/listener/FindListener",
            "<TT;>;J)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 197
    iget-object v0, p0, Lcn/bmob/v3/requestmanager/thing;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/bmob/v3/requestmanager/thing;->N:La/thing;

    iget-object v2, v2, La/thing;->params:Lorg/json/JSONObject;

    invoke-static {v0, v2}, Ld/This;->Code(Landroid/content/Context;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 198
    iget-object v2, p0, Lcn/bmob/v3/requestmanager/thing;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, p3, p4}, Ld/This;->Code(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/Object;

    move-result-object v0

    .line 199
    if-nez v0, :cond_0

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, v0}, Lcn/bmob/v3/listener/FindListener;->onSuccess(Ljava/util/List;)V

    .line 216
    :goto_0
    return v1

    .line 204
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 205
    new-instance v3, Lg/V;

    invoke-direct {v3}, Lg/V;-><init>()V

    invoke-virtual {v3}, Lg/V;->m()Lg/Tempest;

    move-result-object v3

    .line 207
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v4, Ljava/util/List;

    invoke-virtual {v3, v0, v4}, Lg/Tempest;->V(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 208
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lt v1, v4, :cond_1

    .line 215
    invoke-interface {p2, v2}, Lcn/bmob/v3/listener/FindListener;->onSuccess(Ljava/util/List;)V

    .line 216
    const/4 v1, 0x1

    goto :goto_0

    .line 210
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lg/Tempest;->C(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 212
    invoke-virtual {v3, v4, p1}, Lg/Tempest;->Code(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v4

    .line 213
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public final Code(Ljava/lang/reflect/Type;Lcn/bmob/v3/listener/GetListener;J)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Lcn/bmob/v3/listener/GetListener",
            "<TT;>;J)Z"
        }
    .end annotation

    .prologue
    .line 228
    iget-object v0, p0, Lcn/bmob/v3/requestmanager/thing;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/bmob/v3/requestmanager/thing;->N:La/thing;

    iget-object v1, v1, La/thing;->params:Lorg/json/JSONObject;

    invoke-static {v0, v1}, Ld/This;->Code(Landroid/content/Context;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 229
    iget-object v1, p0, Lcn/bmob/v3/requestmanager/thing;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, p3, p4}, Ld/This;->Code(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/Object;

    move-result-object v0

    .line 230
    if-nez v0, :cond_0

    .line 231
    const-string v0, "No cache data."

    invoke-interface {p2, v0}, Lcn/bmob/v3/listener/GetListener;->onFailure(Ljava/lang/String;)V

    .line 232
    const/4 v0, 0x0

    .line 237
    :goto_0
    return v0

    .line 234
    :cond_0
    new-instance v1, Lg/V;

    invoke-direct {v1}, Lg/V;-><init>()V

    invoke-virtual {v1}, Lg/V;->m()Lg/Tempest;

    move-result-object v1

    .line 235
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, p1}, Lg/Tempest;->Code(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 236
    invoke-interface {p2, v0}, Lcn/bmob/v3/listener/GetListener;->onSuccess(Ljava/lang/Object;)V

    .line 237
    const/4 v0, 0x1

    goto :goto_0
.end method
