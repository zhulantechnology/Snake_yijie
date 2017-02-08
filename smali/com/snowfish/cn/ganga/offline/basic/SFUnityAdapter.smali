.class public Lcom/snowfish/cn/ganga/offline/basic/SFUnityAdapter;
.super Ljava/lang/Object;
.source "SFUnityAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extend(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 97
    .line 100
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 101
    const-string v0, "callbackmap"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 103
    const-string v0, "callbackcount"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 104
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 105
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v3, :cond_1

    .line 117
    check-cast p0, Landroid/app/Activity;

    invoke-static {p0, p1, v4}, Lcom/snowfish/cn/ganga/offline/channel/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 118
    const-string v2, "extendcallback"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 119
    const-string v2, "extendcallback"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 120
    const-string v2, ""

    invoke-static {v0, v2}, Lcom/snowfish/cn/ganga/offline/basic/SFUnityAdapter;->toExtendString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 121
    invoke-static {p2, v1, v0}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :cond_0
    :goto_1
    return-void

    .line 106
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "callback"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v6, v0, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 107
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 108
    new-instance v7, Lcom/snowfish/cn/ganga/offline/basic/SFUnityAdapter$2;

    invoke-direct {v7, p2, v6}, Lcom/snowfish/cn/ganga/offline/basic/SFUnityAdapter$2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-interface {v4, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 124
    :catch_0
    move-exception v0

    .line 126
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getUserId()J
    .locals 5

    .prologue
    .line 149
    invoke-static {}, Lcom/snowfish/cn/ganga/offline/a/h;->i()J

    move-result-wide v0

    .line 150
    const-string v2, "ganga"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    return-wide v0
.end method

.method public static isMusicEnabled(Landroid/app/Activity;)Z
    .locals 1

    .prologue
    .line 142
    invoke-static {p0}, Lcom/snowfish/cn/ganga/offline/channel/c;->d(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public static isPaid(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 81
    invoke-static {p0, p1}, Lcom/snowfish/cn/ganga/offline/channel/c;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static onDestroy(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 24
    invoke-static {p0}, Lcom/snowfish/cn/ganga/offline/channel/c;->a(Landroid/app/Activity;)V

    .line 25
    return-void
.end method

.method public static onExit(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 28
    invoke-static {p0}, Lcom/snowfish/cn/ganga/offline/channel/c;->a(Landroid/app/Activity;)V

    .line 29
    return-void
.end method

.method public static onExitWithUI(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 33
    invoke-static {}, Lcom/snowfish/cn/ganga/offline/channel/o;->a()Lcom/snowfish/cn/ganga/offline/channel/o;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/snowfish/cn/ganga/offline/channel/o;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public static onInit(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 38
    invoke-static {p0}, Lcom/snowfish/cn/ganga/offline/a/h;->a(Landroid/content/Context;)V

    .line 39
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/snowfish/cn/ganga/offline/channel/c;->a(Landroid/app/Activity;Z)V

    .line 40
    return-void
.end method

.method public static onInit(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 43
    invoke-static {p0}, Lcom/snowfish/cn/ganga/offline/a/h;->a(Landroid/content/Context;)V

    .line 46
    new-instance v0, Lcom/snowfish/cn/ganga/offline/basic/SFUnityAdapter$1;

    invoke-direct {v0, p1, p2}, Lcom/snowfish/cn/ganga/offline/basic/SFUnityAdapter$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const/4 v1, 0x1

    .line 46
    invoke-static {p0, v0, v1}, Lcom/snowfish/cn/ganga/offline/channel/c;->a(Landroid/app/Activity;Lcom/snowfish/cn/ganga/offline/helper/SFOfflineInitListener;Z)V

    .line 57
    return-void
.end method

.method public static onPause(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 73
    invoke-static {p0}, Lcom/snowfish/cn/ganga/offline/channel/c;->b(Landroid/app/Activity;)V

    .line 74
    return-void
.end method

.method public static onResume(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 77
    invoke-static {p0}, Lcom/snowfish/cn/ganga/offline/channel/c;->c(Landroid/app/Activity;)V

    .line 78
    return-void
.end method

.method public static pay(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 85
    invoke-static {}, Lcom/snowfish/cn/ganga/offline/channel/o;->a()Lcom/snowfish/cn/ganga/offline/channel/o;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/snowfish/cn/ganga/offline/channel/o;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public static recharge(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 89
    invoke-static {}, Lcom/snowfish/cn/ganga/offline/channel/o;->a()Lcom/snowfish/cn/ganga/offline/channel/o;

    move-result-object v0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/snowfish/cn/ganga/offline/channel/o;->a(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public static setPaid(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 93
    invoke-static {p0, p1}, Lcom/snowfish/cn/ganga/offline/channel/c;->b(Landroid/app/Activity;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public static toExtendString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 131
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 133
    :try_start_0
    const-string v0, "result"

    invoke-virtual {v1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 134
    const-string v0, "customParams"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static toMsgString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 62
    :try_start_0
    const-string v0, "tag"

    invoke-virtual {v1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    const-string v0, "value"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    const-string v0, "customParams"

    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static viewMoreGames(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 146
    invoke-static {p0}, Lcom/snowfish/cn/ganga/offline/channel/c;->e(Landroid/app/Activity;)V

    .line 147
    return-void
.end method
