.class final Lcom/snowfish/a/a/l/b;
.super Ljava/lang/Object;
.source "ABGSvcConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private synthetic a:Lcom/snowfish/a/a/l/a;


# direct methods
.method constructor <init>(Lcom/snowfish/a/a/l/a;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/snowfish/a/a/l/b;->a:Lcom/snowfish/a/a/l/a;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .prologue
    .line 34
    :try_start_0
    iget-object v0, p0, Lcom/snowfish/a/a/l/b;->a:Lcom/snowfish/a/a/l/a;

    invoke-static {p2}, Lcom/snowfish/a/a/s/IABGSvc$Stub;->asInterface(Landroid/os/IBinder;)Lcom/snowfish/a/a/s/IABGSvc;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snowfish/a/a/l/a;->a(Lcom/snowfish/a/a/l/a;Lcom/snowfish/a/a/s/IABGSvc;)V

    .line 35
    iget-object v0, p0, Lcom/snowfish/a/a/l/b;->a:Lcom/snowfish/a/a/l/a;

    invoke-static {v0}, Lcom/snowfish/a/a/l/a;->a(Lcom/snowfish/a/a/l/a;)Lcom/snowfish/a/a/l/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/snowfish/a/a/l/b;->a:Lcom/snowfish/a/a/l/a;

    invoke-static {v0}, Lcom/snowfish/a/a/l/a;->a(Lcom/snowfish/a/a/l/a;)Lcom/snowfish/a/a/l/c;

    iget-object v0, p0, Lcom/snowfish/a/a/l/b;->a:Lcom/snowfish/a/a/l/a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/snowfish/a/a/l/b;->a:Lcom/snowfish/a/a/l/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/snowfish/a/a/l/a;->a(Lcom/snowfish/a/a/l/a;Lcom/snowfish/a/a/s/IABGSvc;)V

    .line 44
    return-void
.end method
