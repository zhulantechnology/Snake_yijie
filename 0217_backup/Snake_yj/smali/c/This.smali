.class public final Lc/This;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static params:Lorg/json/JSONObject;

.field private static rApi$6fc396a8:La/thing;

.field private static requestCommand:Lcn/bmob/v3/requestmanager/thing;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method


# virtual methods
.method public final Code(Landroid/content/Context;Lcn/bmob/v3/listener/XListener;)V
    .locals 6

    .prologue
    .line 111
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lc/This;->params:Lorg/json/JSONObject;

    .line 113
    sget-object v0, Lc/This;->params:Lorg/json/JSONObject;

    invoke-static {p1}, Lcn/bmob/v3/requestmanager/thing;->V(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v4

    .line 115
    new-instance v0, La/thing;

    const/4 v2, 0x1

    const-string v3, "http://open.bmob.cn/7/timestamp"

    sget-object v5, Lc/This;->params:Lorg/json/JSONObject;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, La/thing;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/util/Map;Lorg/json/JSONObject;)V

    sput-object v0, Lc/This;->rApi$6fc396a8:La/thing;

    .line 117
    invoke-static {p1}, Lcn/bmob/v3/requestmanager/thing;->Code(Landroid/content/Context;)Lcn/bmob/v3/requestmanager/thing;

    move-result-object v0

    sget-object v1, Lc/This;->rApi$6fc396a8:La/thing;

    invoke-virtual {v0, v1}, Lcn/bmob/v3/requestmanager/thing;->Code(La/thing;)Lcn/bmob/v3/requestmanager/thing;

    move-result-object v0

    .line 119
    sput-object v0, Lc/This;->requestCommand:Lcn/bmob/v3/requestmanager/thing;

    new-instance v1, Lc/This$3;

    invoke-direct {v1, p0, p2}, Lc/This$3;-><init>(Lc/This;Lcn/bmob/v3/listener/XListener;)V

    invoke-virtual {v0, v1}, Lcn/bmob/v3/requestmanager/thing;->Code(Lcn/bmob/v3/listener/XListener;)V

    .line 133
    return-void
.end method

.method public final Code(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lcn/bmob/v3/listener/PushListener;)V
    .locals 6

    .prologue
    .line 137
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lc/This;->params:Lorg/json/JSONObject;

    .line 138
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 139
    const-string v1, "alert"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 141
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 142
    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 143
    if-eqz p3, :cond_0

    .line 144
    const-string v0, "where"

    invoke-virtual {v1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 147
    :cond_0
    sget-object v0, Lc/This;->params:Lorg/json/JSONObject;

    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :goto_0
    sget-object v0, Lc/This;->params:Lorg/json/JSONObject;

    invoke-static {p1}, Lcn/bmob/v3/requestmanager/thing;->V(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v4

    .line 154
    new-instance v0, La/thing;

    const/4 v2, 0x1

    const-string v3, "http://open.bmob.cn/7/push"

    sget-object v5, Lc/This;->params:Lorg/json/JSONObject;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, La/thing;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/util/Map;Lorg/json/JSONObject;)V

    sput-object v0, Lc/This;->rApi$6fc396a8:La/thing;

    .line 156
    invoke-static {p1}, Lcn/bmob/v3/requestmanager/thing;->Code(Landroid/content/Context;)Lcn/bmob/v3/requestmanager/thing;

    move-result-object v0

    sget-object v1, Lc/This;->rApi$6fc396a8:La/thing;

    invoke-virtual {v0, v1}, Lcn/bmob/v3/requestmanager/thing;->Code(La/thing;)Lcn/bmob/v3/requestmanager/thing;

    move-result-object v0

    .line 160
    sput-object v0, Lc/This;->requestCommand:Lcn/bmob/v3/requestmanager/thing;

    new-instance v1, Lc/This$4;

    invoke-direct {v1, p0, p4}, Lc/This$4;-><init>(Lc/This;Lcn/bmob/v3/listener/PushListener;)V

    invoke-virtual {v0, v1}, Lcn/bmob/v3/requestmanager/thing;->Code(Lcn/bmob/v3/listener/XListener;)V

    .line 182
    return-void

    .line 148
    :catch_0
    move-exception v0

    .line 149
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public final requestEmailVerify(Landroid/content/Context;Ljava/lang/String;Lcn/bmob/v3/listener/EmailVerifyListener;)V
    .locals 6

    .prologue
    .line 42
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 43
    sput-object v0, Lc/This;->params:Lorg/json/JSONObject;

    const-string v1, "data"

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "email"

    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    sget-object v0, Lc/This;->params:Lorg/json/JSONObject;

    const-string v1, "c"

    const-string v2, "_User"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :goto_0
    sget-object v0, Lc/This;->params:Lorg/json/JSONObject;

    invoke-static {p1}, Lcn/bmob/v3/requestmanager/thing;->V(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v4

    .line 50
    new-instance v0, La/thing;

    const/4 v2, 0x1

    const-string v3, "http://open.bmob.cn/7/email_verify"

    sget-object v5, Lc/This;->params:Lorg/json/JSONObject;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, La/thing;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/util/Map;Lorg/json/JSONObject;)V

    sput-object v0, Lc/This;->rApi$6fc396a8:La/thing;

    .line 52
    invoke-static {p1}, Lcn/bmob/v3/requestmanager/thing;->Code(Landroid/content/Context;)Lcn/bmob/v3/requestmanager/thing;

    move-result-object v0

    sget-object v1, Lc/This;->rApi$6fc396a8:La/thing;

    invoke-virtual {v0, v1}, Lcn/bmob/v3/requestmanager/thing;->Code(La/thing;)Lcn/bmob/v3/requestmanager/thing;

    move-result-object v0

    .line 53
    sput-object v0, Lc/This;->requestCommand:Lcn/bmob/v3/requestmanager/thing;

    new-instance v1, Lc/This$1;

    invoke-direct {v1, p0, p3}, Lc/This$1;-><init>(Lc/This;Lcn/bmob/v3/listener/EmailVerifyListener;)V

    invoke-virtual {v0, v1}, Lcn/bmob/v3/requestmanager/thing;->Code(Lcn/bmob/v3/listener/XListener;)V

    .line 67
    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 46
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public final resetPassword(Landroid/content/Context;Ljava/lang/String;Lcn/bmob/v3/listener/ResetPasswordListener;)V
    .locals 6

    .prologue
    .line 77
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 78
    sput-object v0, Lc/This;->params:Lorg/json/JSONObject;

    const-string v1, "data"

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "email"

    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    sget-object v0, Lc/This;->params:Lorg/json/JSONObject;

    invoke-static {p1}, Lcn/bmob/v3/requestmanager/thing;->V(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v4

    .line 86
    new-instance v0, La/thing;

    const/4 v2, 0x1

    const-string v3, "http://open.bmob.cn/7/reset"

    sget-object v5, Lc/This;->params:Lorg/json/JSONObject;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, La/thing;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/util/Map;Lorg/json/JSONObject;)V

    sput-object v0, Lc/This;->rApi$6fc396a8:La/thing;

    .line 88
    invoke-static {p1}, Lcn/bmob/v3/requestmanager/thing;->Code(Landroid/content/Context;)Lcn/bmob/v3/requestmanager/thing;

    move-result-object v0

    sget-object v1, Lc/This;->rApi$6fc396a8:La/thing;

    invoke-virtual {v0, v1}, Lcn/bmob/v3/requestmanager/thing;->Code(La/thing;)Lcn/bmob/v3/requestmanager/thing;

    move-result-object v0

    .line 89
    sput-object v0, Lc/This;->requestCommand:Lcn/bmob/v3/requestmanager/thing;

    new-instance v1, Lc/This$2;

    invoke-direct {v1, p0, p3}, Lc/This$2;-><init>(Lc/This;Lcn/bmob/v3/listener/ResetPasswordListener;)V

    invoke-virtual {v0, v1}, Lcn/bmob/v3/requestmanager/thing;->Code(Lcn/bmob/v3/listener/XListener;)V

    .line 103
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 81
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
