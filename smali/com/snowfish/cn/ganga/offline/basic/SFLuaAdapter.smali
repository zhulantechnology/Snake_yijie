.class public Lcom/snowfish/cn/ganga/offline/basic/SFLuaAdapter;
.super Ljava/lang/Object;
.source "SFLuaAdapter.java"


# static fields
.field private static final RESULTE_STR:Ljava/lang/String; = "result"

.field private static final TAG:Ljava/lang/String; = "sfwarning"

.field private static mActionCallback:Lcom/snowfish/cn/ganga/offline/basic/SFActionCallback;

.field private static mActivity:Landroid/app/Activity;

.field private static mInitResponse:Ljava/lang/String;

.field private static mLuaExtenCallBackFunc:I

.field private static mLuaInitCallbackFunc:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 23
    sput v1, Lcom/snowfish/cn/ganga/offline/basic/SFLuaAdapter;->mLuaExtenCallBackFunc:I

    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/snowfish/cn/ganga/offline/basic/SFLuaAdapter;->mInitResponse:Ljava/lang/String;

    .line 25
    sput v1, Lcom/snowfish/cn/ganga/offline/basic/SFLuaAdapter;->mLuaInitCallbackFunc:I

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    sput-object p0, Lcom/snowfish/cn/ganga/offline/basic/SFLuaAdapter;->mInitResponse:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1()I
    .locals 1

    .prologue
    .line 25
    sget v0, Lcom/snowfish/cn/ganga/offline/basic/SFLuaAdapter;->mLuaInitCallbackFunc:I

    return v0
.end method

.method static synthetic access$2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/snowfish/cn/ganga/offline/basic/SFLuaAdapter;->mInitResponse:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 217
    invoke-static {p0, p1}, Lcom/snowfish/cn/ganga/offline/basic/SFLuaAdapter;->callCocos2dxLuaJavaBridgeCallLuaFunctionWithString(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$4(I)V
    .locals 0

    .prologue
    .line 207
    invoke-static {p0}, Lcom/snowfish/cn/ganga/offline/basic/SFLuaAdapter;->callCocos2dxLuaJavaBridgeReleaseLuaFunction(I)V

    return-void
.end method

.method private static callCocos2dxLuaJavaBridgeCallLuaFunctionWithString(ILjava/lang/String;)V
    .locals 5

    .prologue
    .line 219
    :try_start_0
    sget-object v0, Lcom/snowfish/cn/ganga/offline/basic/SFLuaAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sget-object v1, Lcom/snowfish/cn/ganga/offline/a/g;->E:[B

    invoke-static {v1}, Lcom/snowfish/cn/ganga/offline/basic/SFUtilsInterface;->bts([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 220
    sget-object v1, Lcom/snowfish/cn/ganga/offline/a/g;->G:[B

    invoke-static {v1}, Lcom/snowfish/cn/ganga/offline/basic/SFUtilsInterface;->bts([B)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 221
    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :goto_0
    return-void

    .line 223
    :catch_0
    move-exception v0

    const-string v0, "sfwarning"

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/snowfish/cn/ganga/offline/a/g;->E:[B

    invoke-static {v2}, Lcom/snowfish/cn/ganga/offline/basic/SFUtilsInterface;->bts([B)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static callCocos2dxLuaJavaBridgeReleaseLuaFunction(I)V
    .locals 5

    .prologue
    .line 209
    :try_start_0
    sget-object v0, Lcom/snowfish/cn/ganga/offline/basic/SFLuaAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sget-object v1, Lcom/snowfish/cn/ganga/offline/a/g;->E:[B

    invoke-static {v1}, Lcom/snowfish/cn/ganga/offline/basic/SFUtilsInterface;->bts([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 210
    sget-object v1, Lcom/snowfish/cn/ganga/offline/a/g;->F:[B

    invoke-static {v1}, Lcom/snowfish/cn/ganga/offline/basic/SFUtilsInterface;->bts([B)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 211
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :goto_0
    return-void

    .line 213
    :catch_0
    move-exception v0

    const-string v0, "sfwarning"

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/snowfish/cn/ganga/offline/a/g;->E:[B

    invoke-static {v2}, Lcom/snowfish/cn/ganga/offline/basic/SFUtilsInterface;->bts([B)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static extend(Ljava/lang/String;II)Ljava/lang/String;
    .locals 4

    .prologue
    .line 163
    sget v0, Lcom/snowfish/cn/ganga/offline/basic/SFLuaAdapter;->mLuaExtenCallBackFunc:I

    invoke-static {v0}, Lcom/snowfish/cn/ganga/offline/basic/SFLuaAdapter;->removeLuaFunc(I)V

    .line 164
    sput p2, Lcom/snowfish/cn/ganga/offline/basic/SFLuaAdapter;->mLuaExtenCallBackFunc:I

    .line 165
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 166
    const/4 v0, 0x0

    :goto_0
    if-lt v0, p1, :cond_0

    .line 170
    sget-object v0, Lcom/snowfish/cn/ganga/offline/basic/SFLuaAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p0, v1}, Lcom/snowfish/cn/ganga/offline/helper/SFCommonSDKInterface;->extend(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 167
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "callback"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/snowfish/cn/ganga/offline/basic/SFLuaAdapter$SFLuaExpandListener;

    invoke-direct {v3, v0, p2}, Lcom/snowfish/cn/ganga/offline/basic/SFLuaAdapter$SFLuaExpandListener;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getUserId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/snowfish/cn/ganga/offline/helper/SFCommonSDKInterface;->getUserId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/app/Activity;Lcom/snowfish/cn/ganga/offline/basic/SFActionCallback;)V
    .locals 1

    .prologue
    .line 31
    sput-object p0, Lcom/snowfish/cn/ganga/offline/basic/SFLuaAdapter;->mActivity:Landroid/app/Activity;

    .line 32
    sput-object p1, Lcom/snowfish/cn/ganga/offline/basic/SFLuaAdapter;->mActionCallback:Lcom/snowfish/cn/ganga/offline/basic/SFActionCallback;

    .line 33
    new-instance v0, Lcom/snowfish/cn/ganga/offline/basic/SFLuaAdapter$1;

    invoke-direct {v0}, Lcom/snowfish/cn/ganga/offline/basic/SFLuaAdapter$1;-><init>()V

    invoke-static {p0, v0}, Lcom/snowfish/cn/ganga/offline/helper/SFCommonSDKInterface;->onInit(Landroid/app/Activity;Lcom/snowfish/cn/ganga/offline/helper/SFOfflineInitListener;)V

    .line 51
    return-void
.end method

.method public static isMusicEnabled()Z
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lcom/snowfish/cn/ganga/offline/basic/SFLuaAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/snowfish/cn/ganga/offline/helper/SFCommonSDKInterface;->isMusicEnabled(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public static isPaid(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/snowfish/cn/ganga/offline/basic/SFLuaAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p0}, Lcom/snowfish/cn/ganga/offline/helper/SFCommonSDKInterface;->isPaid(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static onExit(I)V
    .locals 2

    .prologue
    .line 147
    sget-object v0, Lcom/snowfish/cn/ganga/offline/basic/SFLuaAdapter;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/snowfish/cn/ganga/offline/basic/SFLuaAdapter$4;

    invoke-direct {v1, p0}, Lcom/snowfish/cn/ganga/offline/basic/SFLuaAdapter$4;-><init>(I)V

    invoke-static {v0, v1}, Lcom/snowfish/cn/ganga/offline/helper/SFCommonSDKInterface;->onExit(Landroid/app/Activity;Lcom/snowfish/cn/ganga/offline/helper/SFGameExitListener;)V

    .line 161
    return-void
.end method

.method public static onInit(I)V
    .locals 3

    .prologue
    .line 138
    sget v0, Lcom/snowfish/cn/ganga/offline/basic/SFLuaAdapter;->mLuaInitCallbackFunc:I

    invoke-static {v0}, Lcom/snowfish/cn/ganga/offline/basic/SFLuaAdapter;->removeLuaFunc(I)V

    .line 140
    sput p0, Lcom/snowfish/cn/ganga/offline/basic/SFLuaAdapter;->mLuaInitCallbackFunc:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/snowfish/cn/ganga/offline/basic/SFLuaAdapter;->mInitResponse:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 141
    sget v0, Lcom/snowfish/cn/ganga/offline/basic/SFLuaAdapter;->mLuaInitCallbackFunc:I

    sget-object v1, Lcom/snowfish/cn/ganga/offline/basic/SFLuaAdapter;->mInitResponse:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/snowfish/cn/ganga/offline/basic/SFLuaAdapter;->runGLThreadCallBack(ILjava/lang/String;Z)V

    .line 142
    const/4 v0, 0x0

    sput-object v0, Lcom/snowfish/cn/ganga/offline/basic/SFLuaAdapter;->mInitResponse:Ljava/lang/String;

    .line 144
    :cond_0
    return-void
.end method

.method public static pay(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 58
    sget-object v0, Lcom/snowfish/cn/ganga/offline/basic/SFLuaAdapter;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/snowfish/cn/ganga/offline/basic/SFLuaAdapter$2;

    invoke-direct {v1, p1}, Lcom/snowfish/cn/ganga/offline/basic/SFLuaAdapter$2;-><init>(I)V

    invoke-static {v0, p0, v1}, Lcom/snowfish/cn/ganga/offline/helper/SFCommonSDKInterface;->pay(Landroid/app/Activity;Ljava/lang/String;Lcom/snowfish/cn/ganga/offline/helper/SFIPayResultListener;)V

    .line 87
    return-void
.end method

.method public static recharge(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 90
    sget-object v0, Lcom/snowfish/cn/ganga/offline/basic/SFLuaAdapter;->mActivity:Landroid/app/Activity;

    .line 91
    new-instance v1, Lcom/snowfish/cn/ganga/offline/basic/SFLuaAdapter$3;

    invoke-direct {v1, p3}, Lcom/snowfish/cn/ganga/offline/basic/SFLuaAdapter$3;-><init>(I)V

    .line 90
    invoke-static {v0, p0, p1, p2, v1}, Lcom/snowfish/cn/ganga/offline/helper/SFCommonSDKInterface;->recharge(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Lcom/snowfish/cn/ganga/offline/helper/SFIPayResultListener;)V

    .line 120
    return-void
.end method

.method private static removeLuaFunc(I)V
    .locals 1

    .prologue
    .line 203
    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    .line 204
    invoke-static {p0}, Lcom/snowfish/cn/ganga/offline/basic/SFLuaAdapter;->callCocos2dxLuaJavaBridgeReleaseLuaFunction(I)V

    .line 205
    :cond_0
    return-void
.end method

.method public static runGLThreadCallBack(ILjava/lang/String;Z)V
    .locals 2

    .prologue
    .line 228
    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    .line 229
    sget-object v0, Lcom/snowfish/cn/ganga/offline/basic/SFLuaAdapter;->mActionCallback:Lcom/snowfish/cn/ganga/offline/basic/SFActionCallback;

    if-eqz v0, :cond_0

    .line 230
    sget-object v0, Lcom/snowfish/cn/ganga/offline/basic/SFLuaAdapter;->mActionCallback:Lcom/snowfish/cn/ganga/offline/basic/SFActionCallback;

    new-instance v1, Lcom/snowfish/cn/ganga/offline/basic/SFLuaAdapter$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/snowfish/cn/ganga/offline/basic/SFLuaAdapter$5;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v0, v1}, Lcom/snowfish/cn/ganga/offline/basic/SFActionCallback;->callback(Ljava/lang/Runnable;)V

    .line 242
    :cond_0
    return-void
.end method

.method public static setPaid(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 123
    sget-object v0, Lcom/snowfish/cn/ganga/offline/basic/SFLuaAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p0}, Lcom/snowfish/cn/ganga/offline/helper/SFCommonSDKInterface;->setPaid(Landroid/app/Activity;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public static viewMoreGames()V
    .locals 1

    .prologue
    .line 131
    sget-object v0, Lcom/snowfish/cn/ganga/offline/basic/SFLuaAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/snowfish/cn/ganga/offline/helper/SFCommonSDKInterface;->viewMoreGames(Landroid/app/Activity;)V

    .line 132
    return-void
.end method
