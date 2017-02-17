.class public Le/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final aG:Le/acknowledge;

.field private final aw:Le/thing;

.field private final ax:Le/this;

.field private ba:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final bb:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Queue",
            "<",
            "Le/V",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field private final bc:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Le/V",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final bd:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Le/V",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final be:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Le/V",
            "<*>;>;"
        }
    .end annotation
.end field

.field private bf:[Le/mine;

.field private bg:Le/of;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Le/thing;Le/acknowledge;)V
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0}, Le/i;-><init>(Le/thing;Le/acknowledge;I)V

    .line 125
    return-void
.end method

.method private constructor <init>(Le/thing;Le/acknowledge;I)V
    .locals 4

    .prologue
    .line 113
    const/4 v0, 0x4

    .line 114
    new-instance v1, Le/this;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, v2}, Le/this;-><init>(Landroid/os/Handler;)V

    invoke-direct {p0, p1, p2, v0, v1}, Le/i;-><init>(Le/thing;Le/acknowledge;ILe/this;)V

    .line 115
    return-void
.end method

.method private constructor <init>(Le/thing;Le/acknowledge;ILe/this;)V
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Le/i;->ba:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Le/i;->bb:Ljava/util/Map;

    .line 61
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Le/i;->bc:Ljava/util/Set;

    .line 65
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Le/i;->bd:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 69
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Le/i;->be:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 99
    iput-object p1, p0, Le/i;->aw:Le/thing;

    .line 100
    iput-object p2, p0, Le/i;->aG:Le/acknowledge;

    .line 101
    new-array v0, p3, [Le/mine;

    iput-object v0, p0, Le/i;->bf:[Le/mine;

    .line 102
    iput-object p4, p0, Le/i;->ax:Le/this;

    .line 103
    return-void
.end method

.method public static Code(Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 124
    const-string v0, "Content-Type"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 125
    if-eqz v0, :cond_0

    .line 126
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move v0, v1

    .line 127
    :goto_0
    array-length v3, v2

    if-lt v0, v3, :cond_1

    .line 137
    :cond_0
    const-string v0, "ISO-8859-1"

    :goto_1
    return-object v0

    .line 128
    :cond_1
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 129
    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 130
    const/4 v4, 0x0

    aget-object v4, v3, v4

    const-string v5, "charset"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 131
    aget-object v0, v3, v1

    goto :goto_1

    .line 127
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static D(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 112
    :try_start_0
    invoke-static {p0}, Lorg/apache/http/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Lorg/apache/http/impl/cookie/DateParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 115
    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static V(Ld/acknowledge;)Le/thing$This;
    .locals 15

    .prologue
    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 44
    iget-object v14, p0, Ld/acknowledge;->an:Ljava/util/Map;

    .line 52
    const-string v0, "Date"

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 56
    if-eqz v0, :cond_a

    .line 57
    invoke-static {v0}, Le/i;->D(Ljava/lang/String;)J

    move-result-wide v0

    move-wide v2, v0

    .line 60
    :goto_0
    const-string v0, "Cache-Control"

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 61
    if-eqz v0, :cond_9

    .line 62
    const/4 v1, 0x1

    .line 63
    const-string v7, ","

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    move v0, v6

    move-wide v6, v4

    .line 64
    :goto_1
    array-length v9, v8

    if-lt v0, v9, :cond_1

    move-wide v8, v6

    move v6, v1

    .line 79
    :goto_2
    const-string v0, "Expires"

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 80
    if-eqz v0, :cond_8

    .line 81
    invoke-static {v0}, Le/i;->D(Ljava/lang/String;)J

    move-result-wide v0

    move-wide v10, v0

    .line 84
    :goto_3
    const-string v0, "ETag"

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 88
    if-eqz v6, :cond_7

    .line 89
    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, v8

    add-long/2addr v4, v12

    .line 95
    :cond_0
    :goto_4
    new-instance v1, Le/thing$This;

    invoke-direct {v1}, Le/thing$This;-><init>()V

    .line 96
    iget-object v6, p0, Ld/acknowledge;->data:[B

    iput-object v6, v1, Le/thing$This;->data:[B

    .line 97
    iput-object v0, v1, Le/thing$This;->ap:Ljava/lang/String;

    .line 98
    iput-wide v4, v1, Le/thing$This;->as:J

    .line 99
    iget-wide v4, v1, Le/thing$This;->as:J

    iput-wide v4, v1, Le/thing$This;->ar:J

    .line 100
    iput-wide v2, v1, Le/thing$This;->aq:J

    .line 101
    iput-object v14, v1, Le/thing$This;->at:Ljava/util/Map;

    move-object v0, v1

    .line 103
    :goto_5
    return-object v0

    .line 65
    :cond_1
    aget-object v9, v8, v0

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 66
    const-string v10, "no-cache"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "no-store"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 67
    :cond_2
    const/4 v0, 0x0

    goto :goto_5

    .line 68
    :cond_3
    const-string v10, "max-age="

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 70
    const/16 v10, 0x8

    :try_start_0
    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    .line 64
    :cond_4
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 73
    :cond_5
    const-string v10, "must-revalidate"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    const-string v10, "proxy-revalidate"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    :cond_6
    move-wide v6, v4

    .line 74
    goto :goto_6

    .line 90
    :cond_7
    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    cmp-long v1, v10, v2

    if-ltz v1, :cond_0

    .line 92
    sub-long v4, v10, v2

    add-long/2addr v4, v12

    goto :goto_4

    .line 73
    :catch_0
    move-exception v9

    goto :goto_6

    :cond_8
    move-wide v10, v4

    goto :goto_3

    :cond_9
    move-wide v8, v4

    goto/16 :goto_2

    :cond_a
    move-wide v2, v4

    goto/16 :goto_0
.end method


# virtual methods
.method public final I(Le/V;)Le/V;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Le/V",
            "<TT;>;)",
            "Le/V",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 218
    invoke-virtual {p1, p0}, Le/V;->Code(Le/i;)Le/V;

    .line 219
    iget-object v1, p0, Le/i;->bc:Ljava/util/Set;

    monitor-enter v1

    .line 220
    :try_start_0
    iget-object v0, p0, Le/i;->bc:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 219
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    iget-object v0, p0, Le/i;->ba:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    invoke-virtual {p1, v0}, Le/V;->Code(I)Le/V;

    .line 225
    const-string v0, "add-to-queue"

    invoke-virtual {p1, v0}, Le/V;->S(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p1}, Le/V;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    iget-object v0, p0, Le/i;->be:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 253
    :goto_0
    return-object p1

    .line 219
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 234
    :cond_0
    iget-object v1, p0, Le/i;->bb:Ljava/util/Map;

    monitor-enter v1

    .line 235
    :try_start_1
    invoke-virtual {p1}, Le/V;->C()Ljava/lang/String;

    move-result-object v2

    .line 236
    iget-object v0, p0, Le/i;->bb:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 238
    iget-object v0, p0, Le/i;->bb:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    .line 239
    if-nez v0, :cond_1

    .line 240
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 242
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 243
    iget-object v3, p0, Le/i;->bb:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    sget-boolean v0, Le/is;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 245
    const-string v0, "Request for cacheKey=%s is in flight, putting on hold."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v0, v3}, Le/is;->V(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 253
    :cond_2
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 234
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 250
    :cond_3
    :try_start_2
    iget-object v0, p0, Le/i;->bb:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    iget-object v0, p0, Le/i;->bd:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1
.end method

.method final Z(Le/V;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/V",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 266
    iget-object v1, p0, Le/i;->bc:Ljava/util/Set;

    monitor-enter v1

    .line 267
    :try_start_0
    iget-object v0, p0, Le/i;->bc:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 266
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    invoke-virtual {p1}, Le/V;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 271
    iget-object v1, p0, Le/i;->bb:Ljava/util/Map;

    monitor-enter v1

    .line 272
    :try_start_1
    invoke-virtual {p1}, Le/V;->C()Ljava/lang/String;

    move-result-object v2

    .line 273
    iget-object v0, p0, Le/i;->bb:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    .line 274
    if-eqz v0, :cond_1

    .line 275
    sget-boolean v3, Le/is;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 276
    const-string v3, "Releasing %d waiting requests for cacheKey=%s."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 277
    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    .line 276
    invoke-static {v3, v4}, Le/is;->V(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 281
    :cond_0
    iget-object v2, p0, Le/i;->bd:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/PriorityBlockingQueue;->addAll(Ljava/util/Collection;)Z

    .line 271
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 285
    :cond_2
    return-void

    .line 266
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 271
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final start()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 131
    iget-object v0, p0, Le/i;->bg:Le/of;

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/i;->bg:Le/of;

    invoke-virtual {v0}, Le/of;->quit()V

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Le/i;->bf:[Le/mine;

    array-length v2, v2

    if-lt v0, v2, :cond_1

    .line 133
    new-instance v0, Le/of;

    iget-object v2, p0, Le/i;->bd:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, p0, Le/i;->be:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v4, p0, Le/i;->aw:Le/thing;

    iget-object v5, p0, Le/i;->ax:Le/this;

    invoke-direct {v0, v2, v3, v4, v5}, Le/of;-><init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Le/thing;Le/this;)V

    iput-object v0, p0, Le/i;->bg:Le/of;

    .line 134
    iget-object v0, p0, Le/i;->bg:Le/of;

    invoke-virtual {v0}, Le/of;->start()V

    .line 137
    :goto_1
    iget-object v0, p0, Le/i;->bf:[Le/mine;

    array-length v0, v0

    if-lt v1, v0, :cond_3

    .line 143
    return-void

    .line 131
    :cond_1
    iget-object v2, p0, Le/i;->bf:[Le/mine;

    aget-object v2, v2, v0

    if-eqz v2, :cond_2

    iget-object v2, p0, Le/i;->bf:[Le/mine;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Le/mine;->quit()V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 138
    :cond_3
    new-instance v0, Le/mine;

    iget-object v2, p0, Le/i;->be:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, p0, Le/i;->aG:Le/acknowledge;

    .line 139
    iget-object v4, p0, Le/i;->aw:Le/thing;

    iget-object v5, p0, Le/i;->ax:Le/this;

    .line 138
    invoke-direct {v0, v2, v3, v4, v5}, Le/mine;-><init>(Ljava/util/concurrent/BlockingQueue;Le/acknowledge;Le/thing;Le/this;)V

    .line 140
    iget-object v2, p0, Le/i;->bf:[Le/mine;

    aput-object v0, v2, v1

    .line 141
    invoke-virtual {v0}, Le/mine;->start()V

    .line 137
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
