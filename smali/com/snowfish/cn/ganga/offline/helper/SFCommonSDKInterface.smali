.class public Lcom/snowfish/cn/ganga/offline/helper/SFCommonSDKInterface;
.super Ljava/lang/Object;
.source "SFCommonSDKInterface.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extend(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    invoke-static {p0, p1, p2}, Lcom/snowfish/cn/ganga/offline/channel/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserId()J
    .locals 2

    .prologue
    .line 60
    invoke-static {}, Lcom/snowfish/cn/ganga/offline/a/h;->i()J

    move-result-wide v0

    return-wide v0
.end method

.method public static isMusicEnabled(Landroid/app/Activity;)Z
    .locals 1

    .prologue
    .line 53
    invoke-static {p0}, Lcom/snowfish/cn/ganga/offline/channel/c;->d(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public static isPaid(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 34
    invoke-static {p0, p1}, Lcom/snowfish/cn/ganga/offline/channel/c;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static onDestroy(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 12
    invoke-static {p0}, Lcom/snowfish/cn/ganga/offline/channel/c;->a(Landroid/app/Activity;)V

    .line 13
    return-void
.end method

.method public static onExit(Landroid/app/Activity;Lcom/snowfish/cn/ganga/offline/helper/SFGameExitListener;)V
    .locals 0

    .prologue
    .line 17
    invoke-static {p0, p1}, Lcom/snowfish/cn/ganga/offline/channel/c;->a(Landroid/app/Activity;Lcom/snowfish/cn/ganga/offline/helper/SFGameExitListener;)V

    .line 18
    return-void
.end method

.method public static onInit(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 21
    invoke-static {p0}, Lcom/snowfish/cn/ganga/offline/a/h;->a(Landroid/content/Context;)V

    .line 22
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/snowfish/cn/ganga/offline/channel/c;->a(Landroid/app/Activity;Z)V

    .line 23
    return-void
.end method

.method public static onInit(Landroid/app/Activity;Lcom/snowfish/cn/ganga/offline/helper/SFOfflineInitListener;)V
    .locals 1

    .prologue
    .line 64
    invoke-static {p0}, Lcom/snowfish/cn/ganga/offline/a/h;->a(Landroid/content/Context;)V

    .line 65
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/snowfish/cn/ganga/offline/channel/c;->a(Landroid/app/Activity;Lcom/snowfish/cn/ganga/offline/helper/SFOfflineInitListener;Z)V

    .line 66
    return-void
.end method

.method public static onPause(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 26
    invoke-static {p0}, Lcom/snowfish/cn/ganga/offline/channel/c;->b(Landroid/app/Activity;)V

    .line 27
    return-void
.end method

.method public static onResume(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 30
    invoke-static {p0}, Lcom/snowfish/cn/ganga/offline/channel/c;->c(Landroid/app/Activity;)V

    .line 31
    return-void
.end method

.method public static pay(Landroid/app/Activity;Ljava/lang/String;Lcom/snowfish/cn/ganga/offline/helper/SFIPayResultListener;)V
    .locals 0

    .prologue
    .line 39
    invoke-static {p0, p1, p2}, Lcom/snowfish/cn/ganga/offline/channel/c;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/snowfish/cn/ganga/offline/helper/SFIPayResultListener;)V

    .line 40
    return-void
.end method

.method public static recharge(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Lcom/snowfish/cn/ganga/offline/helper/SFIPayResultListener;)V
    .locals 6

    .prologue
    .line 44
    const-string v1, ""

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/snowfish/cn/ganga/offline/channel/c;->a(Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/snowfish/cn/ganga/offline/helper/SFIPayResultListener;)V

    .line 46
    return-void
.end method

.method public static setPaid(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    invoke-static {p0, p1}, Lcom/snowfish/cn/ganga/offline/channel/c;->b(Landroid/app/Activity;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public static viewMoreGames(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 57
    invoke-static {p0}, Lcom/snowfish/cn/ganga/offline/channel/c;->e(Landroid/app/Activity;)V

    .line 58
    return-void
.end method
