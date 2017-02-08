.class final Lcom/snowfish/cn/ganga/offline/sf/c;
.super Landroid/os/AsyncTask;
.source "APayment.java"


# instance fields
.field private final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/snowfish/cn/ganga/offline/sf/c;->a:Ljava/lang/String;

    .line 51
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1
    check-cast p1, [Landroid/content/Context;

    aget-object v0, p1, v2

    invoke-static {v0}, Lcom/snowfish/a/a/l/AIdleServiceLoader;->getInstance(Landroid/content/Context;)Lcom/snowfish/a/a/l/AIdleServiceLoader;

    move-result-object v0

    aget-object v1, p1, v2

    invoke-virtual {v0, v1}, Lcom/snowfish/a/a/l/AIdleServiceLoader;->setContect(Landroid/content/Context;)V

    aget-object v0, p1, v2

    invoke-static {v0}, Lcom/snowfish/a/a/l/AIdleServiceLoader;->getInstance(Landroid/content/Context;)Lcom/snowfish/a/a/l/AIdleServiceLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snowfish/a/a/l/AIdleServiceLoader;->getService()Lcom/snowfish/a/a/p/IAIdleService;

    move-result-object v0

    if-eqz v0, :cond_1

    aget-object v0, p1, v2

    invoke-static {v0}, Lcom/snowfish/a/a/l/AIdleServiceLoader;->getInstance(Landroid/content/Context;)Lcom/snowfish/a/a/l/AIdleServiceLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snowfish/a/a/l/AIdleServiceLoader;->getService()Lcom/snowfish/a/a/p/IAIdleService;

    move-result-object v0

    aget-object v1, p1, v2

    invoke-interface {v0, v1}, Lcom/snowfish/a/a/p/IAIdleService;->onInit(Landroid/content/Context;)V

    invoke-static {}, Lcom/snowfish/cn/ganga/offline/sf/SFInitListenerFactory;->getInitListener()Lcom/snowfish/cn/ganga/offline/helper/SFOfflineInitListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/sf/c;->a:Ljava/lang/String;

    const-string v1, "SFOtherAdapter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput v2, v0, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/snowfish/cn/ganga/offline/sf/a;->a()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    sput-boolean v3, Lcom/snowfish/cn/ganga/offline/sf/a;->a:Z

    sput-boolean v3, Lcom/snowfish/android/ahelper/APayment;->isInit:Z

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    invoke-static {}, Lcom/snowfish/cn/ganga/offline/sf/SFInitListenerFactory;->getInitListener()Lcom/snowfish/cn/ganga/offline/helper/SFOfflineInitListener;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput v3, v0, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/snowfish/cn/ganga/offline/sf/a;->a()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    sput-boolean v2, Lcom/snowfish/cn/ganga/offline/sf/a;->a:Z

    sput-boolean v2, Lcom/snowfish/android/ahelper/APayment;->isInit:Z

    goto :goto_0
.end method
