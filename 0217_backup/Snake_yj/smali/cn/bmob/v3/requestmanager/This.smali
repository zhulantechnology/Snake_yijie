.class public final Lcn/bmob/v3/requestmanager/This;
.super Lf/From;
.source "SourceFile"


# instance fields
.field private K:La/thing;

.field private M:Le/Though$thing;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/Though$thing",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(La/thing;Le/Though$thing;Le/Though$This;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/thing;",
            "Le/Though$thing",
            "<",
            "Lorg/json/JSONObject;",
            ">;",
            "Le/Though$This;",
            ")V"
        }
    .end annotation

    .prologue
    .line 121
    iget v1, p1, La/thing;->method:I

    iget-object v2, p1, La/thing;->url:Ljava/lang/String;

    iget-object v3, p1, La/thing;->params:Lorg/json/JSONObject;

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lf/From;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Le/Though$thing;Le/Though$This;)V

    .line 122
    iput-object p1, p0, Lcn/bmob/v3/requestmanager/This;->K:La/thing;

    .line 123
    iput-object p2, p0, Lcn/bmob/v3/requestmanager/This;->M:Le/Though$thing;

    .line 127
    return-void
.end method


# virtual methods
.method protected final Code(Ld/acknowledge;)Le/Though;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/acknowledge;",
            ")",
            "Le/Though",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    :try_start_0
    iget-object v0, p1, Ld/acknowledge;->data:[B

    invoke-static {v0}, Ld/acknowledge;->I([B)Ljava/lang/String;

    move-result-object v0

    .line 136
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 137
    invoke-static {p1}, Le/i;->V(Ld/acknowledge;)Le/thing$This;

    move-result-object v0

    .line 135
    invoke-static {v1, v0}, Le/Though;->Code(Ljava/lang/Object;Le/thing$This;)Le/Though;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 140
    :goto_0
    return-object v0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    new-instance v1, Le/Tempest;

    invoke-direct {v1, v0}, Le/Tempest;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Le/Though;->Z(Le/there;)Le/Though;

    move-result-object v0

    goto :goto_0
.end method

.method protected final synthetic Code(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1
    check-cast p1, Lorg/json/JSONObject;

    iget-object v0, p0, Lcn/bmob/v3/requestmanager/This;->M:Le/Though$thing;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/bmob/v3/requestmanager/This;->M:Le/Though$thing;

    invoke-interface {v0, p1}, Le/Though$thing;->V(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "BmobRequest"

    const-string v1, "complete json object request without ui response."

    invoke-static {v0, v1}, Ld/of;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/This;
        }
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lcn/bmob/v3/requestmanager/This;->K:La/thing;

    iget-object v0, v0, La/thing;->w:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/bmob/v3/requestmanager/This;->K:La/thing;

    iget-object v0, v0, La/thing;->w:Ljava/util/Map;

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lf/From;->getHeaders()Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method
