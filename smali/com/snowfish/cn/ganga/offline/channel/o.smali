.class public final Lcom/snowfish/cn/ganga/offline/channel/o;
.super Lcom/snowfish/cn/ganga/offline/helper/SFIPayResultListener;
.source "SFUnityPayDelegate.java"


# static fields
.field private static c:Lcom/snowfish/cn/ganga/offline/channel/o;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/snowfish/cn/ganga/offline/helper/SFIPayResultListener;-><init>()V

    return-void
.end method

.method public static a()Lcom/snowfish/cn/ganga/offline/channel/o;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/snowfish/cn/ganga/offline/channel/o;->c:Lcom/snowfish/cn/ganga/offline/channel/o;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/snowfish/cn/ganga/offline/channel/o;

    invoke-direct {v0}, Lcom/snowfish/cn/ganga/offline/channel/o;-><init>()V

    sput-object v0, Lcom/snowfish/cn/ganga/offline/channel/o;->c:Lcom/snowfish/cn/ganga/offline/channel/o;

    .line 26
    :cond_0
    sget-object v0, Lcom/snowfish/cn/ganga/offline/channel/o;->c:Lcom/snowfish/cn/ganga/offline/channel/o;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 93
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 95
    :try_start_0
    const-string v0, "result"

    invoke-virtual {v1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    const-string v0, "customParams"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 58
    iput-object p5, p0, Lcom/snowfish/cn/ganga/offline/channel/o;->a:Ljava/lang/String;

    .line 59
    iput-object p6, p0, Lcom/snowfish/cn/ganga/offline/channel/o;->b:Ljava/lang/String;

    .line 60
    const-string v1, ""

    move-object v0, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lcom/snowfish/cn/ganga/offline/channel/c;->a(Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/snowfish/cn/ganga/offline/helper/SFIPayResultListener;)V

    .line 61
    return-void
.end method

.method public final a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 38
    iput-object p2, p0, Lcom/snowfish/cn/ganga/offline/channel/o;->a:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcom/snowfish/cn/ganga/offline/channel/o;->b:Ljava/lang/String;

    .line 41
    new-instance v0, Lcom/snowfish/cn/ganga/offline/channel/p;

    invoke-direct {v0, p0, p2, p3}, Lcom/snowfish/cn/ganga/offline/channel/p;-><init>(Lcom/snowfish/cn/ganga/offline/channel/o;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/snowfish/cn/ganga/offline/channel/c;->a(Landroid/app/Activity;Lcom/snowfish/cn/ganga/offline/helper/SFGameExitListener;)V

    .line 54
    return-void
.end method

.method public final a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    iput-object p3, p0, Lcom/snowfish/cn/ganga/offline/channel/o;->a:Ljava/lang/String;

    .line 32
    iput-object p4, p0, Lcom/snowfish/cn/ganga/offline/channel/o;->b:Ljava/lang/String;

    .line 33
    invoke-static {p1, p2, p0}, Lcom/snowfish/cn/ganga/offline/channel/c;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/snowfish/cn/ganga/offline/helper/SFIPayResultListener;)V

    .line 34
    return-void
.end method

.method public final onCanceled(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/snowfish/cn/ganga/offline/basic/SFUtilsInterface;->sp(Z)V

    .line 66
    const-string v0, "2"

    invoke-static {v0, p1}, Lcom/snowfish/cn/ganga/offline/channel/o;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/snowfish/cn/ganga/offline/channel/o;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/snowfish/cn/ganga/offline/channel/o;->b:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public final onFailed(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/snowfish/cn/ganga/offline/basic/SFUtilsInterface;->sp(Z)V

    .line 73
    const-string v0, "1"

    invoke-static {v0, p1}, Lcom/snowfish/cn/ganga/offline/channel/o;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/snowfish/cn/ganga/offline/channel/o;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/snowfish/cn/ganga/offline/channel/o;->b:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public final onSuccess(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/snowfish/cn/ganga/offline/basic/SFUtilsInterface;->sp(Z)V

    .line 81
    const-string v0, "0"

    invoke-static {v0, p1}, Lcom/snowfish/cn/ganga/offline/channel/o;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/snowfish/cn/ganga/offline/channel/o;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/snowfish/cn/ganga/offline/channel/o;->b:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return-void
.end method
