.class public final Le/mine;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private final aF:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Le/V",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final aG:Le/acknowledge;

.field private final aw:Le/thing;

.field private final ax:Le/this;

.field private volatile ay:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Le/acknowledge;Le/thing;Le/this;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Le/V",
            "<*>;>;",
            "Le/acknowledge;",
            "Le/thing;",
            "Le/this;",
            ")V"
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Le/mine;->ay:Z

    .line 58
    iput-object p1, p0, Le/mine;->aF:Ljava/util/concurrent/BlockingQueue;

    .line 59
    iput-object p2, p0, Le/mine;->aG:Le/acknowledge;

    .line 60
    iput-object p3, p0, Le/mine;->aw:Le/thing;

    .line 61
    iput-object p4, p0, Le/mine;->ax:Le/this;

    .line 62
    return-void
.end method


# virtual methods
.method public final quit()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Le/mine;->ay:Z

    .line 70
    invoke-virtual {p0}, Le/mine;->interrupt()V

    .line 71
    return-void
.end method

.method public final run()V
    .locals 6

    .prologue
    .line 83
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 88
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Le/mine;->aF:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/V;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 98
    :try_start_1
    const-string v1, "network-queue-take"

    invoke-virtual {v0, v1}, Le/V;->S(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v0}, Le/V;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 103
    const-string v1, "network-discard-cancelled"

    invoke-virtual {v0, v1}, Le/V;->F(Ljava/lang/String;)V
    :try_end_1
    .catch Le/there; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 134
    :catch_0
    move-exception v1

    .line 135
    invoke-static {v1}, Le/V;->V(Le/there;)Le/there;

    move-result-object v1

    iget-object v2, p0, Le/mine;->ax:Le/this;

    invoke-virtual {v2, v0, v1}, Le/this;->Code(Le/V;Le/there;)V

    goto :goto_0

    .line 91
    :catch_1
    move-exception v0

    iget-boolean v0, p0, Le/mine;->ay:Z

    if-eqz v0, :cond_0

    .line 92
    return-void

    .line 107
    :cond_1
    :try_start_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_2

    invoke-virtual {v0}, Le/V;->B()I

    move-result v1

    invoke-static {v1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 110
    :cond_2
    iget-object v1, p0, Le/mine;->aG:Le/acknowledge;

    invoke-interface {v1, v0}, Le/acknowledge;->Code(Le/V;)Ld/acknowledge;

    move-result-object v1

    .line 111
    const-string v2, "network-http-complete"

    invoke-virtual {v0, v2}, Le/V;->S(Ljava/lang/String;)V

    .line 115
    iget-boolean v2, v1, Ld/acknowledge;->ao:Z

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Le/V;->f()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 116
    const-string v1, "not-modified"

    invoke-virtual {v0, v1}, Le/V;->F(Ljava/lang/String;)V
    :try_end_2
    .catch Le/there; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 136
    :catch_2
    move-exception v1

    .line 137
    const-string v2, "Unhandled exception %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Le/is;->Code(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    iget-object v2, p0, Le/mine;->ax:Le/this;

    new-instance v3, Le/there;

    invoke-direct {v3, v1}, Le/there;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v0, v3}, Le/this;->Code(Le/V;Le/there;)V

    goto :goto_0

    .line 121
    :cond_3
    :try_start_3
    invoke-virtual {v0, v1}, Le/V;->Code(Ld/acknowledge;)Le/Though;

    move-result-object v1

    .line 122
    const-string v2, "network-parse-complete"

    invoke-virtual {v0, v2}, Le/V;->S(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v0}, Le/V;->b()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v1, Le/Though;->bh:Le/thing$This;

    if-eqz v2, :cond_4

    .line 127
    iget-object v2, p0, Le/mine;->aw:Le/thing;

    invoke-virtual {v0}, Le/V;->C()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Le/Though;->bh:Le/thing$This;

    invoke-interface {v2, v3, v4}, Le/thing;->Code(Ljava/lang/String;Le/thing$This;)V

    .line 128
    const-string v2, "network-cache-written"

    invoke-virtual {v0, v2}, Le/V;->S(Ljava/lang/String;)V

    .line 132
    :cond_4
    invoke-virtual {v0}, Le/V;->e()V

    .line 133
    iget-object v2, p0, Le/mine;->ax:Le/this;

    invoke-virtual {v2, v0, v1}, Le/this;->Code(Le/V;Le/Though;)V
    :try_end_3
    .catch Le/there; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0
.end method
