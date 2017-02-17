.class public Lcn/bmob/v3/AsyncCustomEndpoints;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static params:Lorg/json/JSONObject;

.field private static rApi$6fc396a8:La/thing;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callEndpoint(Landroid/content/Context;Ljava/lang/String;Lcn/bmob/v3/listener/CloudCodeListener;)V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcn/bmob/v3/AsyncCustomEndpoints;->callEndpoint(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lcn/bmob/v3/listener/CloudCodeListener;)V

    .line 31
    return-void
.end method

.method public callEndpoint(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lcn/bmob/v3/listener/CloudCodeListener;)V
    .locals 6

    .prologue
    .line 35
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 36
    sput-object v0, Lcn/bmob/v3/AsyncCustomEndpoints;->params:Lorg/json/JSONObject;

    const-string v1, "_e"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    if-eqz p3, :cond_0

    .line 38
    invoke-virtual {p3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 39
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_1

    .line 48
    :cond_0
    :goto_1
    sget-object v0, Lcn/bmob/v3/AsyncCustomEndpoints;->params:Lorg/json/JSONObject;

    invoke-static {p1}, Lcn/bmob/v3/requestmanager/thing;->V(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v4

    .line 50
    const-string v0, "a"

    new-instance v1, Ljava/lang/String;

    invoke-static {p1}, Lcn/bmob/v3/requestmanager/thing;->I(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ld/I;->decode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    new-instance v0, La/thing;

    const/4 v2, 0x1

    const-string v3, "http://cloud.codenow.cn/1/endpoint"

    sget-object v5, Lcn/bmob/v3/AsyncCustomEndpoints;->params:Lorg/json/JSONObject;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, La/thing;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/util/Map;Lorg/json/JSONObject;)V

    sput-object v0, Lcn/bmob/v3/AsyncCustomEndpoints;->rApi$6fc396a8:La/thing;

    .line 69
    invoke-static {p1}, Lcn/bmob/v3/requestmanager/thing;->Code(Landroid/content/Context;)Lcn/bmob/v3/requestmanager/thing;

    move-result-object v0

    sget-object v1, Lcn/bmob/v3/AsyncCustomEndpoints;->rApi$6fc396a8:La/thing;

    invoke-virtual {v0, v1}, Lcn/bmob/v3/requestmanager/thing;->Code(La/thing;)Lcn/bmob/v3/requestmanager/thing;

    move-result-object v0

    .line 70
    new-instance v1, Lcn/bmob/v3/AsyncCustomEndpoints$1;

    invoke-direct {v1, p0, p4}, Lcn/bmob/v3/AsyncCustomEndpoints$1;-><init>(Lcn/bmob/v3/AsyncCustomEndpoints;Lcn/bmob/v3/listener/CloudCodeListener;)V

    invoke-virtual {v0, v1}, Lcn/bmob/v3/requestmanager/thing;->Code(Lcn/bmob/v3/listener/XListener;)V

    .line 84
    return-void

    .line 40
    :cond_1
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 41
    sget-object v2, Lcn/bmob/v3/AsyncCustomEndpoints;->params:Lorg/json/JSONObject;

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method
