.class public final Lcom/snowfish/a/a/l/a;
.super Ljava/lang/Object;
.source "ABGSvcConnection.java"


# static fields
.field public static final a:[B


# instance fields
.field private b:Lcom/snowfish/a/a/s/IABGSvc;

.field private c:Z

.field private d:Landroid/content/Context;

.field private e:Lcom/snowfish/a/a/l/c;

.field private f:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/16 v0, 0x19

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/snowfish/a/a/l/a;->a:[B

    return-void

    :array_0
    .array-data 1
        0x63t
        0x6ft
        0x6dt
        0x2et
        0x73t
        0x6et
        0x6ft
        0x77t
        0x66t
        0x69t
        0x73t
        0x68t
        0x2et
        0x61t
        0x2et
        0x61t
        0x2et
        0x73t
        0x2et
        0x41t
        0x42t
        0x47t
        0x53t
        0x76t
        0x63t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/snowfish/a/a/l/c;)V
    .locals 4

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snowfish/a/a/l/a;->b:Lcom/snowfish/a/a/s/IABGSvc;

    .line 31
    new-instance v0, Lcom/snowfish/a/a/l/b;

    invoke-direct {v0, p0}, Lcom/snowfish/a/a/l/b;-><init>(Lcom/snowfish/a/a/l/a;)V

    iput-object v0, p0, Lcom/snowfish/a/a/l/a;->f:Landroid/content/ServiceConnection;

    .line 26
    iput-object p1, p0, Lcom/snowfish/a/a/l/a;->d:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/snowfish/a/a/l/a;->e:Lcom/snowfish/a/a/l/c;

    .line 28
    invoke-direct {p0}, Lcom/snowfish/a/a/l/a;->a()V

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/snowfish/a/a/l/a;->c:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/snowfish/a/a/l/a;->d:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/snowfish/a/a/p/IAHelper;->getSrv()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/snowfish/a/a/l/a;->f:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    :goto_0
    return-void

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/snowfish/a/a/l/a;->d:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/snowfish/a/a/l/a;->a:[B

    invoke-static {v2}, Lcom/snowfish/a/a/l/e;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/snowfish/a/a/l/a;->f:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 29
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/snowfish/a/a/l/a;)Lcom/snowfish/a/a/l/c;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/snowfish/a/a/l/a;->e:Lcom/snowfish/a/a/l/c;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 62
    monitor-enter p0

    .line 63
    :try_start_0
    iget-boolean v0, p0, Lcom/snowfish/a/a/l/a;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snowfish/a/a/l/a;->b:Lcom/snowfish/a/a/s/IABGSvc;

    if-nez v0, :cond_1

    .line 64
    :cond_0
    monitor-exit p0

    .line 71
    :goto_0
    return-void

    .line 65
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snowfish/a/a/l/a;->c:Z

    .line 62
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    :try_start_1
    iget-object v0, p0, Lcom/snowfish/a/a/l/a;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/snowfish/a/a/l/a;->f:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    goto :goto_0

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/snowfish/a/a/l/a;Lcom/snowfish/a/a/s/IABGSvc;)V
    .locals 0

    .prologue
    .line 13
    iput-object p1, p0, Lcom/snowfish/a/a/l/a;->b:Lcom/snowfish/a/a/s/IABGSvc;

    return-void
.end method
