.class public final Le/of;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final au:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Le/V",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final av:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Le/V",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final aw:Le/thing;

.field private final ax:Le/this;

.field private volatile ay:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    sget-boolean v0, Le/is;->DEBUG:Z

    sput-boolean v0, Le/of;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Le/thing;Le/this;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Le/V",
            "<*>;>;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Le/V",
            "<*>;>;",
            "Le/thing;",
            "Le/this;",
            ")V"
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Le/of;->ay:Z

    .line 63
    iput-object p1, p0, Le/of;->au:Ljava/util/concurrent/BlockingQueue;

    .line 64
    iput-object p2, p0, Le/of;->av:Ljava/util/concurrent/BlockingQueue;

    .line 65
    iput-object p3, p0, Le/of;->aw:Le/thing;

    .line 66
    iput-object p4, p0, Le/of;->ax:Le/this;

    .line 67
    return-void
.end method

.method static synthetic Code(Le/of;)Ljava/util/concurrent/BlockingQueue;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Le/of;->av:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method


# virtual methods
.method public final quit()V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Le/of;->ay:Z

    .line 75
    invoke-virtual {p0}, Le/of;->interrupt()V

    .line 76
    return-void
.end method

.method public final run()V
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 80
    sget-boolean v0, Le/of;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "start new dispatcher"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Le/is;->V(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    :cond_0
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 84
    iget-object v0, p0, Le/of;->aw:Le/thing;

    invoke-interface {v0}, Le/thing;->initialize()V

    .line 90
    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Le/of;->au:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/V;

    .line 91
    const-string v1, "cache-queue-take"

    invoke-virtual {v0, v1}, Le/V;->S(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0}, Le/V;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 95
    const-string v1, "cache-discard-canceled"

    invoke-virtual {v0, v1}, Le/V;->F(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 151
    :catch_0
    move-exception v0

    iget-boolean v0, p0, Le/of;->ay:Z

    if-eqz v0, :cond_1

    .line 152
    return-void

    .line 100
    :cond_2
    :try_start_1
    iget-object v1, p0, Le/of;->aw:Le/thing;

    invoke-virtual {v0}, Le/V;->C()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Le/thing;->C(Ljava/lang/String;)Le/thing$This;

    move-result-object v4

    .line 101
    if-nez v4, :cond_3

    .line 102
    const-string v1, "cache-miss"

    invoke-virtual {v0, v1}, Le/V;->S(Ljava/lang/String;)V

    .line 104
    iget-object v1, p0, Le/of;->av:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto :goto_0

    .line 109
    :cond_3
    iget-wide v6, v4, Le/thing$This;->ar:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v1, v6, v8

    if-gez v1, :cond_4

    move v1, v2

    :goto_1
    if-eqz v1, :cond_5

    .line 110
    const-string v1, "cache-hit-expired"

    invoke-virtual {v0, v1}, Le/V;->S(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v0, v4}, Le/V;->Code(Le/thing$This;)Le/V;

    .line 112
    iget-object v1, p0, Le/of;->av:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    move v1, v3

    .line 109
    goto :goto_1

    .line 117
    :cond_5
    const-string v1, "cache-hit"

    invoke-virtual {v0, v1}, Le/V;->S(Ljava/lang/String;)V

    .line 119
    new-instance v1, Ld/acknowledge;

    iget-object v5, v4, Le/thing$This;->data:[B

    iget-object v6, v4, Le/thing$This;->at:Ljava/util/Map;

    invoke-direct {v1, v5, v6}, Ld/acknowledge;-><init>([BLjava/util/Map;)V

    .line 118
    invoke-virtual {v0, v1}, Le/V;->Code(Ld/acknowledge;)Le/Though;

    move-result-object v5

    .line 120
    const-string v1, "cache-hit-parsed"

    invoke-virtual {v0, v1}, Le/V;->S(Ljava/lang/String;)V

    .line 122
    iget-wide v6, v4, Le/thing$This;->as:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v1, v6, v8

    if-gez v1, :cond_6

    move v1, v2

    :goto_2
    if-nez v1, :cond_7

    .line 124
    iget-object v1, p0, Le/of;->ax:Le/this;

    invoke-virtual {v1, v0, v5}, Le/this;->Code(Le/V;Le/Though;)V

    goto :goto_0

    :cond_6
    move v1, v3

    .line 122
    goto :goto_2

    .line 129
    :cond_7
    const-string v1, "cache-hit-refresh-needed"

    invoke-virtual {v0, v1}, Le/V;->S(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v0, v4}, Le/V;->Code(Le/thing$This;)Le/V;

    .line 133
    const/4 v1, 0x1

    iput-boolean v1, v5, Le/Though;->bj:Z

    .line 137
    iget-object v1, p0, Le/of;->ax:Le/this;

    new-instance v4, Le/of$1;

    invoke-direct {v4, p0, v0}, Le/of$1;-><init>(Le/of;Le/V;)V

    invoke-virtual {v1, v0, v5, v4}, Le/this;->Code(Le/V;Le/Though;Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
