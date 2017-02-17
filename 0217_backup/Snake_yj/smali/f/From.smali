.class public Lf/From;
.super Lf/The;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf/The",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(ILjava/lang/String;Lorg/json/JSONObject;Le/Though$thing;Le/Though$This;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Le/Though$thing",
            "<",
            "Lorg/json/JSONObject;",
            ">;",
            "Le/Though$This;",
            ")V"
        }
    .end annotation

    .prologue
    .line 47
    if-nez p3, :cond_0

    const/4 v3, 0x0

    :goto_0
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    .line 48
    invoke-direct/range {v0 .. v5}, Lf/The;-><init>(ILjava/lang/String;Ljava/lang/String;Le/Though$thing;Le/Though$This;)V

    .line 49
    return-void

    .line 47
    :cond_0
    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method


# virtual methods
.method protected Code(Ld/acknowledge;)Le/Though;
    .locals 3
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
    .line 67
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Ld/acknowledge;->data:[B

    iget-object v2, p1, Ld/acknowledge;->an:Ljava/util/Map;

    invoke-static {v2}, Le/i;->Code(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 68
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-static {p1}, Le/i;->V(Ld/acknowledge;)Le/thing$This;

    move-result-object v0

    .line 68
    invoke-static {v1, v0}, Le/Though;->Code(Ljava/lang/Object;Le/thing$This;)Le/Though;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 73
    :goto_0
    return-object v0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    new-instance v1, Le/Tempest;

    invoke-direct {v1, v0}, Le/Tempest;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Le/Though;->Z(Le/there;)Le/Though;

    move-result-object v0

    goto :goto_0

    .line 72
    :catch_1
    move-exception v0

    .line 73
    new-instance v1, Le/Tempest;

    invoke-direct {v1, v0}, Le/Tempest;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Le/Though;->Z(Le/there;)Le/Though;

    move-result-object v0

    goto :goto_0
.end method
