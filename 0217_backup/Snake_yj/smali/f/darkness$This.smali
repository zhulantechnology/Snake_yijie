.class final Lf/darkness$This;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/darkness;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "This"
.end annotation


# instance fields
.field public ap:Ljava/lang/String;

.field public aq:J

.field public ar:J

.field public as:J

.field public at:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public key:Ljava/lang/String;

.field public size:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Le/thing$This;)V
    .locals 2

    .prologue
    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 363
    iput-object p1, p0, Lf/darkness$This;->key:Ljava/lang/String;

    .line 364
    iget-object v0, p2, Le/thing$This;->data:[B

    array-length v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lf/darkness$This;->size:J

    .line 365
    iget-object v0, p2, Le/thing$This;->ap:Ljava/lang/String;

    iput-object v0, p0, Lf/darkness$This;->ap:Ljava/lang/String;

    .line 366
    iget-wide v0, p2, Le/thing$This;->aq:J

    iput-wide v0, p0, Lf/darkness$This;->aq:J

    .line 367
    iget-wide v0, p2, Le/thing$This;->ar:J

    iput-wide v0, p0, Lf/darkness$This;->ar:J

    .line 368
    iget-wide v0, p2, Le/thing$This;->as:J

    iput-wide v0, p0, Lf/darkness$This;->as:J

    .line 369
    iget-object v0, p2, Le/thing$This;->at:Ljava/util/Map;

    iput-object v0, p0, Lf/darkness$This;->at:Ljava/util/Map;

    .line 370
    return-void
.end method

.method public static B(Ljava/io/InputStream;)Lf/darkness$This;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 378
    new-instance v0, Lf/darkness$This;

    invoke-direct {v0}, Lf/darkness$This;-><init>()V

    .line 379
    invoke-static {p0}, Lf/darkness;->readInt(Ljava/io/InputStream;)I

    move-result v1

    .line 380
    const v2, 0x20120504

    if-eq v1, v2, :cond_0

    .line 382
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 384
    :cond_0
    invoke-static {p0}, Lf/darkness;->I(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lf/darkness$This;->key:Ljava/lang/String;

    .line 385
    invoke-static {p0}, Lf/darkness;->I(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lf/darkness$This;->ap:Ljava/lang/String;

    .line 386
    iget-object v1, v0, Lf/darkness$This;->ap:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 387
    const/4 v1, 0x0

    iput-object v1, v0, Lf/darkness$This;->ap:Ljava/lang/String;

    .line 389
    :cond_1
    invoke-static {p0}, Lf/darkness;->V(Ljava/io/InputStream;)J

    move-result-wide v2

    iput-wide v2, v0, Lf/darkness$This;->aq:J

    .line 390
    invoke-static {p0}, Lf/darkness;->V(Ljava/io/InputStream;)J

    move-result-wide v2

    iput-wide v2, v0, Lf/darkness$This;->ar:J

    .line 391
    invoke-static {p0}, Lf/darkness;->V(Ljava/io/InputStream;)J

    move-result-wide v2

    iput-wide v2, v0, Lf/darkness$This;->as:J

    .line 392
    invoke-static {p0}, Lf/darkness;->Z(Ljava/io/InputStream;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lf/darkness$This;->at:Ljava/util/Map;

    .line 393
    return-object v0
.end method


# virtual methods
.method public final Code(Ljava/io/OutputStream;)Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 416
    const v2, 0x20120504

    :try_start_0
    invoke-static {p1, v2}, Lf/darkness;->Code(Ljava/io/OutputStream;I)V

    .line 417
    iget-object v2, p0, Lf/darkness$This;->key:Ljava/lang/String;

    invoke-static {p1, v2}, Lf/darkness;->Code(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 418
    iget-object v2, p0, Lf/darkness$This;->ap:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, ""

    :goto_0
    invoke-static {p1, v2}, Lf/darkness;->Code(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 419
    iget-wide v2, p0, Lf/darkness$This;->aq:J

    invoke-static {p1, v2, v3}, Lf/darkness;->Code(Ljava/io/OutputStream;J)V

    .line 420
    iget-wide v2, p0, Lf/darkness$This;->ar:J

    invoke-static {p1, v2, v3}, Lf/darkness;->Code(Ljava/io/OutputStream;J)V

    .line 421
    iget-wide v2, p0, Lf/darkness$This;->as:J

    invoke-static {p1, v2, v3}, Lf/darkness;->Code(Ljava/io/OutputStream;J)V

    .line 422
    iget-object v2, p0, Lf/darkness$This;->at:Ljava/util/Map;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    invoke-static {p1, v3}, Lf/darkness;->Code(Ljava/io/OutputStream;I)V

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 423
    :goto_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    move v2, v4

    .line 427
    :goto_3
    return v2

    .line 418
    :cond_0
    iget-object v2, p0, Lf/darkness$This;->ap:Ljava/lang/String;

    goto :goto_0

    .line 422
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/util/Map$Entry;

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p1, v2}, Lf/darkness;->Code(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p1, v2}, Lf/darkness;->Code(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 425
    :catch_0
    move-exception v2

    .line 426
    const-string v3, "%s"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Le/is;->I(Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v5

    .line 427
    goto :goto_3

    .line 422
    :cond_2
    const/4 v2, 0x0

    :try_start_1
    invoke-static {p1, v2}, Lf/darkness;->Code(Ljava/io/OutputStream;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
