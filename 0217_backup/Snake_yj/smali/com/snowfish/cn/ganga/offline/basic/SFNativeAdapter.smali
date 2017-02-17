.class public Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter;
.super Ljava/lang/Object;
.source "SFNativeAdapter.java"


# static fields
.field private static mActivity:Landroid/app/Activity;

.field private static mSFActionCallback:Lcom/snowfish/cn/ganga/offline/basic/SFActionCallback;

.field private static mSFIPayResultListener:Lcom/snowfish/cn/ganga/offline/helper/SFIPayResultListener;

.field private static sfGameExitListener:Lcom/snowfish/cn/ganga/offline/helper/SFGameExitListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18
    sput-object v1, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter;->mActivity:Landroid/app/Activity;

    .line 19
    new-instance v0, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$1;

    invoke-direct {v0}, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$1;-><init>()V

    sput-object v0, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter;->sfGameExitListener:Lcom/snowfish/cn/ganga/offline/helper/SFGameExitListener;

    .line 34
    sput-object v1, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter;->mSFActionCallback:Lcom/snowfish/cn/ganga/offline/basic/SFActionCallback;

    .line 36
    new-instance v0, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$2;

    invoke-direct {v0}, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$2;-><init>()V

    sput-object v0, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter;->mSFIPayResultListener:Lcom/snowfish/cn/ganga/offline/helper/SFIPayResultListener;

    .line 74
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Lcom/snowfish/cn/ganga/offline/basic/SFActionCallback;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter;->mSFActionCallback:Lcom/snowfish/cn/ganga/offline/basic/SFActionCallback;

    return-object v0
.end method

.method public static extend(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5

    .prologue
    .line 199
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 200
    const/4 v0, 0x0

    :goto_0
    if-lt v0, p1, :cond_0

    .line 217
    sget-object v0, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p0, v1}, Lcom/snowfish/cn/ganga/offline/helper/SFCommonSDKInterface;->extend(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 201
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "callback"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v3, v0, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 202
    add-int/lit8 v3, v0, 0x1

    .line 203
    new-instance v4, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$8;

    invoke-direct {v4, v3}, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$8;-><init>(I)V

    .line 215
    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getUserId()J
    .locals 2

    .prologue
    .line 195
    invoke-static {}, Lcom/snowfish/cn/ganga/offline/helper/SFCommonSDKInterface;->getUserId()J

    move-result-wide v0

    return-wide v0
.end method

.method public static init(Landroid/app/Activity;Lcom/snowfish/cn/ganga/offline/basic/SFActionCallback;)V
    .locals 1

    .prologue
    .line 125
    sput-object p0, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter;->mActivity:Landroid/app/Activity;

    .line 127
    sput-object p1, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter;->mSFActionCallback:Lcom/snowfish/cn/ganga/offline/basic/SFActionCallback;

    new-instance v0, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$6;

    invoke-direct {v0}, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$6;-><init>()V

    invoke-interface {p1, v0}, Lcom/snowfish/cn/ganga/offline/basic/SFActionCallback;->callback(Ljava/lang/Runnable;)V

    .line 135
    new-instance v0, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$7;

    invoke-direct {v0}, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$7;-><init>()V

    invoke-static {p0, v0}, Lcom/snowfish/android/ahelper/APaymentCodeManager;->setCodeListener(Landroid/content/Context;Lcom/snowfish/android/ahelper/APaymentCodeListener;)V

    .line 147
    return-void
.end method

.method public static native initNative()V
.end method

.method public static init_listener(Landroid/app/Activity;Lcom/snowfish/cn/ganga/offline/basic/SFActionCallback;)V
    .locals 2

    .prologue
    .line 94
    sput-object p0, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter;->mActivity:Landroid/app/Activity;

    .line 95
    sput-object p1, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter;->mSFActionCallback:Lcom/snowfish/cn/ganga/offline/basic/SFActionCallback;

    .line 96
    sget-object v0, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter;->onInit_listener(Landroid/app/Activity;)V

    .line 97
    sget-object v0, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter;->mSFActionCallback:Lcom/snowfish/cn/ganga/offline/basic/SFActionCallback;

    new-instance v1, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$4;

    invoke-direct {v1}, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$4;-><init>()V

    invoke-interface {v0, v1}, Lcom/snowfish/cn/ganga/offline/basic/SFActionCallback;->callback(Ljava/lang/Runnable;)V

    .line 104
    new-instance v0, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$5;

    invoke-direct {v0}, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$5;-><init>()V

    invoke-static {p0, v0}, Lcom/snowfish/android/ahelper/APaymentCodeManager;->setCodeListener(Landroid/content/Context;Lcom/snowfish/android/ahelper/APaymentCodeListener;)V

    .line 123
    return-void
.end method

.method public static isMusicEnabled()Z
    .locals 1

    .prologue
    .line 187
    sget-object v0, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/snowfish/cn/ganga/offline/helper/SFCommonSDKInterface;->isMusicEnabled(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public static isPaid(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 169
    sget-object v0, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p0}, Lcom/snowfish/cn/ganga/offline/helper/SFCommonSDKInterface;->isPaid(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static native onCanceled(Ljava/lang/String;)V
.end method

.method public static native onCodeCallback(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public static onDestroy()V
    .locals 1

    .prologue
    .line 149
    sget-object v0, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/snowfish/cn/ganga/offline/helper/SFCommonSDKInterface;->onDestroy(Landroid/app/Activity;)V

    .line 150
    return-void
.end method

.method public static onExit()V
    .locals 2

    .prologue
    .line 153
    sget-object v0, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter;->mActivity:Landroid/app/Activity;

    sget-object v1, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter;->sfGameExitListener:Lcom/snowfish/cn/ganga/offline/helper/SFGameExitListener;

    invoke-static {v0, v1}, Lcom/snowfish/cn/ganga/offline/helper/SFCommonSDKInterface;->onExit(Landroid/app/Activity;Lcom/snowfish/cn/ganga/offline/helper/SFGameExitListener;)V

    .line 154
    return-void
.end method

.method public static native onExtendResponse(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public static native onFailed(Ljava/lang/String;)V
.end method

.method public static native onGameExit(Z)V
.end method

.method public static onInit()V
    .locals 1

    .prologue
    .line 157
    sget-object v0, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/snowfish/cn/ganga/offline/helper/SFCommonSDKInterface;->onInit(Landroid/app/Activity;)V

    .line 158
    return-void
.end method

.method public static native onInitResponse(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static onInit_listener(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 78
    new-instance v0, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$3;

    invoke-direct {v0}, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$3;-><init>()V

    invoke-static {p0, v0}, Lcom/snowfish/cn/ganga/offline/helper/SFCommonSDKInterface;->onInit(Landroid/app/Activity;Lcom/snowfish/cn/ganga/offline/helper/SFOfflineInitListener;)V

    .line 90
    return-void
.end method

.method public static onPause()V
    .locals 1

    .prologue
    .line 161
    sget-object v0, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/snowfish/cn/ganga/offline/helper/SFCommonSDKInterface;->onPause(Landroid/app/Activity;)V

    .line 162
    return-void
.end method

.method public static onResume()V
    .locals 1

    .prologue
    .line 165
    sget-object v0, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/snowfish/cn/ganga/offline/helper/SFCommonSDKInterface;->onResume(Landroid/app/Activity;)V

    .line 166
    return-void
.end method

.method public static native onSuccess(Ljava/lang/String;)V
.end method

.method public static pay(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 173
    sget-object v0, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter;->mActivity:Landroid/app/Activity;

    sget-object v1, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter;->mSFIPayResultListener:Lcom/snowfish/cn/ganga/offline/helper/SFIPayResultListener;

    invoke-static {v0, p0, v1}, Lcom/snowfish/cn/ganga/offline/helper/SFCommonSDKInterface;->pay(Landroid/app/Activity;Ljava/lang/String;Lcom/snowfish/cn/ganga/offline/helper/SFIPayResultListener;)V

    .line 174
    return-void
.end method

.method public static recharge(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 178
    sget-object v0, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter;->mActivity:Landroid/app/Activity;

    .line 179
    sget-object v1, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter;->mSFIPayResultListener:Lcom/snowfish/cn/ganga/offline/helper/SFIPayResultListener;

    .line 178
    invoke-static {v0, p0, p1, p2, v1}, Lcom/snowfish/cn/ganga/offline/helper/SFCommonSDKInterface;->recharge(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Lcom/snowfish/cn/ganga/offline/helper/SFIPayResultListener;)V

    .line 180
    return-void
.end method

.method public static setPaid(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 183
    sget-object v0, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p0}, Lcom/snowfish/cn/ganga/offline/helper/SFCommonSDKInterface;->setPaid(Landroid/app/Activity;Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method public static viewMoreGames()V
    .locals 1

    .prologue
    .line 191
    sget-object v0, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/snowfish/cn/ganga/offline/helper/SFCommonSDKInterface;->viewMoreGames(Landroid/app/Activity;)V

    .line 192
    return-void
.end method
