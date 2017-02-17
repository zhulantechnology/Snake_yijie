.class public abstract Le/V;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/V$This;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Le/V",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field private O:Le/i;

.field private final aH:Le/is$This;

.field private final aI:I

.field private final aJ:Ljava/lang/String;

.field private final aK:I

.field private final aL:Le/Though$This;

.field private aM:Ljava/lang/Integer;

.field private aN:Z

.field private aO:Z

.field private aP:Z

.field private aQ:J

.field private aR:Le/be;

.field private aS:Le/thing$This;


# direct methods
.method public constructor <init>(ILjava/lang/String;Le/Though$This;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    sget-boolean v0, Le/is$This;->bp:Z

    if-eqz v0, :cond_0

    new-instance v0, Le/is$This;

    invoke-direct {v0}, Le/is$This;-><init>()V

    :goto_0
    iput-object v0, p0, Le/V;->aH:Le/is$This;

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Le/V;->aN:Z

    .line 88
    iput-boolean v2, p0, Le/V;->aO:Z

    .line 91
    iput-boolean v2, p0, Le/V;->aP:Z

    .line 94
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Le/V;->aQ:J

    .line 107
    iput-object v1, p0, Le/V;->aS:Le/thing$This;

    .line 132
    iput p1, p0, Le/V;->aI:I

    .line 133
    iput-object p2, p0, Le/V;->aJ:Ljava/lang/String;

    .line 134
    iput-object p3, p0, Le/V;->aL:Le/Though$This;

    .line 135
    new-instance v0, Le/be;

    invoke-direct {v0}, Le/be;-><init>()V

    iput-object v0, p0, Le/V;->aR:Le/be;

    .line 137
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    :goto_1
    iput v0, p0, Le/V;->aK:I

    .line 138
    return-void

    :cond_0
    move-object v0, v1

    .line 61
    goto :goto_0

    .line 137
    :cond_1
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1
.end method

.method private static Code(Ljava/util/Map;Ljava/lang/String;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")[B"
        }
    .end annotation

    .prologue
    .line 428
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 430
    :try_start_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 436
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    return-object v1

    .line 430
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/Map$Entry;

    move-object v2, v0

    .line 431
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    const/16 v1, 0x3d

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 433
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    const/16 v1, 0x26

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 437
    :catch_0
    move-exception v1

    .line 438
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Encoding not supported: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method static synthetic V(Le/V;)Le/is$This;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Le/V;->aH:Le/is$This;

    return-object v0
.end method

.method protected static V(Le/there;)Le/there;
    .locals 0

    .prologue
    .line 527
    return-object p0
.end method


# virtual methods
.method public final B()I
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Le/V;->aK:I

    return v0
.end method

.method public final C()Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Le/V;->aJ:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract Code(Ld/acknowledge;)Le/Though;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/acknowledge;",
            ")",
            "Le/Though",
            "<TT;>;"
        }
    .end annotation
.end method

.method public final Code(I)Le/V;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Le/V",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 246
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Le/V;->aM:Ljava/lang/Integer;

    .line 247
    return-object p0
.end method

.method public final Code(Le/i;)Le/V;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/i;",
            ")",
            "Le/V",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 236
    iput-object p1, p0, Le/V;->O:Le/i;

    .line 237
    return-object p0
.end method

.method public final Code(Le/thing$This;)Le/V;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/thing$This;",
            ")",
            "Le/V",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 281
    iput-object p1, p0, Le/V;->aS:Le/thing$This;

    .line 282
    return-object p0
.end method

.method protected abstract Code(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public D()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/This;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 372
    .line 373
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 374
    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Le/V;->Code(Ljava/util/Map;Ljava/lang/String;)[B

    move-result-object v0

    .line 376
    :cond_0
    return-object v0
.end method

.method public F()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 356
    invoke-virtual {p0}, Le/V;->L()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final F(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 200
    iget-object v0, p0, Le/V;->O:Le/i;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Le/V;->O:Le/i;

    invoke-virtual {v0, p0}, Le/i;->Z(Le/V;)V

    .line 203
    :cond_0
    sget-boolean v0, Le/is$This;->bp:Z

    if-eqz v0, :cond_3

    .line 204
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 205
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 208
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 209
    new-instance v3, Le/V$1;

    invoke-direct {v3, p0, p1, v0, v1}, Le/V$1;-><init>(Le/V;Ljava/lang/String;J)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 227
    :cond_1
    :goto_0
    return-void

    .line 219
    :cond_2
    iget-object v2, p0, Le/V;->aH:Le/is$This;

    invoke-virtual {v2, p1, v0, v1}, Le/is$This;->Code(Ljava/lang/String;J)V

    .line 220
    iget-object v0, p0, Le/V;->aH:Le/is$This;

    invoke-virtual {p0}, Le/V;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/is$This;->F(Ljava/lang/String;)V

    goto :goto_0

    .line 222
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Le/V;->aQ:J

    sub-long/2addr v0, v2

    .line 223
    const-wide/16 v2, 0xbb8

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    .line 224
    const-string v2, "%d ms: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-virtual {p0}, Le/V;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Le/is;->I(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final I(Le/there;)V
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Le/V;->aL:Le/Though$This;

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Le/V;->aL:Le/Though$This;

    invoke-interface {v0, p1}, Le/Though$This;->Code(Le/there;)V

    .line 549
    :cond_0
    return-void
.end method

.method public L()Ljava/lang/String;
    .locals 2

    .prologue
    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "application/x-www-form-urlencoded; charset="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final S()Le/thing$This;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Le/V;->aS:Le/thing$This;

    return-object v0
.end method

.method public final S(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 187
    sget-boolean v0, Le/is$This;->bp:Z

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p0, Le/V;->aH:Le/is$This;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v0, p1, v2, v3}, Le/is$This;->Code(Ljava/lang/String;J)V

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    iget-wide v0, p0, Le/V;->aQ:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 190
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Le/V;->aQ:J

    goto :goto_0
.end method

.method public a()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/This;
        }
    .end annotation

    .prologue
    .line 417
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 456
    iget-boolean v0, p0, Le/V;->aN:Z

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Le/V;->aR:Le/be;

    invoke-virtual {v0}, Le/be;->g()I

    move-result v0

    return v0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 1
    check-cast p1, Le/V;

    sget-object v0, Le/V$This;->aX:Le/V$This;

    sget-object v1, Le/V$This;->aX:Le/V$This;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Le/V;->aM:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p1, Le/V;->aM:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v1}, Le/V$This;->ordinal()I

    move-result v1

    invoke-virtual {v0}, Le/V$This;->ordinal()I

    move-result v0

    sub-int v0, v1, v0

    goto :goto_0
.end method

.method public final d()Le/be;
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Le/V;->aR:Le/be;

    return-object v0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 498
    const/4 v0, 0x1

    iput-boolean v0, p0, Le/V;->aP:Z

    .line 499
    return-void
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 505
    iget-boolean v0, p0, Le/V;->aP:Z

    return v0
.end method

.method public getHeaders()Ljava/util/Map;
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
    .line 313
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getMethod()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Le/V;->aI:I

    return v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Le/V;->aJ:Ljava/lang/String;

    return-object v0
.end method

.method public final isCanceled()Z
    .locals 1

    .prologue
    .line 303
    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 569
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Le/V;->aK:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 570
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[ ] "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Le/V;->aJ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 571
    sget-object v1, Le/V$This;->aX:Le/V$This;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/V;->aM:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 570
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
