.class public final Lf/I;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/acknowledge;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/I$This;
    }
.end annotation


# instance fields
.field private bH:Lorg/apache/http/client/HttpClient;


# direct methods
.method public constructor <init>(Lorg/apache/http/client/HttpClient;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lf/I;->bH:Lorg/apache/http/client/HttpClient;

    .line 57
    return-void
.end method

.method private static Code(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Le/V;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;",
            "Le/V",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/This;
        }
    .end annotation

    .prologue
    .line 148
    invoke-virtual {p1}, Le/V;->a()[B

    move-result-object v0

    .line 149
    if-eqz v0, :cond_0

    .line 150
    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v1, v0}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 151
    invoke-virtual {p0, v1}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 153
    :cond_0
    return-void
.end method

.method private static Code(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    return-void

    .line 60
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 61
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final Code(Le/V;Ljava/util/Map;)Lorg/apache/http/HttpResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/V",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Le/This;
        }
    .end annotation

    .prologue
    .line 77
    invoke-virtual {p1}, Le/V;->getMethod()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown request method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {p1}, Le/V;->D()[B

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {p1}, Le/V;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    const-string v2, "Content-Type"

    invoke-virtual {p1}, Le/V;->F()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v2, v1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v0, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 78
    :goto_0
    invoke-static {v0, p2}, Lf/I;->Code(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/util/Map;)V

    .line 79
    invoke-virtual {p1}, Le/V;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lf/I;->Code(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/util/Map;)V

    .line 80
    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    .line 82
    invoke-virtual {p1}, Le/V;->c()I

    move-result v2

    .line 85
    const/16 v3, 0x1388

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 86
    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 87
    iget-object v1, p0, Lf/I;->bH:Lorg/apache/http/client/HttpClient;

    invoke-interface {v1, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0

    .line 77
    :cond_0
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {p1}, Le/V;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {p1}, Le/V;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lorg/apache/http/client/methods/HttpDelete;

    invoke-virtual {p1}, Le/V;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {p1}, Le/V;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    const-string v1, "Content-Type"

    invoke-virtual {p1}, Le/V;->L()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lf/I;->Code(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Le/V;)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Lorg/apache/http/client/methods/HttpPut;

    invoke-virtual {p1}, Le/V;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    const-string v1, "Content-Type"

    invoke-virtual {p1}, Le/V;->L()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPut;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lf/I;->Code(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Le/V;)V

    goto :goto_0

    :pswitch_5
    new-instance v0, Lorg/apache/http/client/methods/HttpHead;

    invoke-virtual {p1}, Le/V;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpHead;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_6
    new-instance v0, Lorg/apache/http/client/methods/HttpOptions;

    invoke-virtual {p1}, Le/V;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpOptions;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_7
    new-instance v0, Lorg/apache/http/client/methods/HttpTrace;

    invoke-virtual {p1}, Le/V;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpTrace;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_8
    new-instance v0, Lf/I$This;

    invoke-virtual {p1}, Le/V;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lf/I$This;-><init>(Ljava/lang/String;)V

    const-string v1, "Content-Type"

    invoke-virtual {p1}, Le/V;->L()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lf/I$This;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lf/I;->Code(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Le/V;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
