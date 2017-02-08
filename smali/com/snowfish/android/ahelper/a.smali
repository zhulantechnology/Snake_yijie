.class final Lcom/snowfish/android/ahelper/a;
.super Landroid/os/AsyncTask;
.source "APayment.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1
    return-void
.end method

.method private static varargs a([Landroid/content/Context;)Ljava/lang/Void;
    .locals 4

    .prologue
    .line 39
    :try_start_0
    sget-boolean v0, Lcom/snowfish/android/ahelper/APayment;->isInit:Z

    if-nez v0, :cond_0

    .line 40
    const/4 v0, 0x0

    aget-object v0, p0, v0

    const-string v1, "onInits"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/snowfish/android/ahelper/APayment;->putLongToSharedPreferences(Landroid/content/Context;Ljava/lang/String;J)V

    .line 42
    :cond_0
    const/4 v0, 0x0

    aget-object v0, p0, v0

    invoke-static {v0}, Lcom/snowfish/a/a/l/AIdleServiceLoader;->getInstance(Landroid/content/Context;)Lcom/snowfish/a/a/l/AIdleServiceLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snowfish/a/a/l/AIdleServiceLoader;->getService()Lcom/snowfish/a/a/p/IAIdleService;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 43
    const/4 v0, 0x0

    aget-object v0, p0, v0

    invoke-static {v0}, Lcom/snowfish/a/a/l/AIdleServiceLoader;->getInstance(Landroid/content/Context;)Lcom/snowfish/a/a/l/AIdleServiceLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snowfish/a/a/l/AIdleServiceLoader;->getService()Lcom/snowfish/a/a/p/IAIdleService;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-interface {v0, v1}, Lcom/snowfish/a/a/p/IAIdleService;->onInit(Landroid/content/Context;)V

    .line 44
    sget-boolean v0, Lcom/snowfish/android/ahelper/APayment;->isInit:Z

    if-nez v0, :cond_1

    .line 45
    const/4 v0, 0x0

    aget-object v0, p0, v0

    const-string v1, "onInite"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/snowfish/android/ahelper/APayment;->putLongToSharedPreferences(Landroid/content/Context;Ljava/lang/String;J)V

    .line 46
    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/snowfish/android/ahelper/APayment;->isInit:Z

    .line 51
    :goto_0
    const/4 v0, 0x0

    aget-object v0, p0, v0

    invoke-static {v0}, Lcom/snowfish/a/a/l/AIdleServiceLoader;->getInstance(Landroid/content/Context;)Lcom/snowfish/a/a/l/AIdleServiceLoader;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-virtual {v0, v1}, Lcom/snowfish/a/a/l/AIdleServiceLoader;->setContect(Landroid/content/Context;)V

    .line 54
    :goto_1
    const/4 v0, 0x0

    return-object v0

    .line 48
    :cond_2
    const/4 v0, 0x0

    sput-boolean v0, Lcom/snowfish/android/ahelper/APayment;->isInit:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Landroid/content/Context;

    invoke-static {p1}, Lcom/snowfish/android/ahelper/a;->a([Landroid/content/Context;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
