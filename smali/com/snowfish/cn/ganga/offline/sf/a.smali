.class public final Lcom/snowfish/cn/ganga/offline/sf/a;
.super Ljava/lang/Object;
.source "APayment.java"


# static fields
.field public static a:Z

.field private static b:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-boolean v0, Lcom/snowfish/cn/ganga/offline/sf/a;->a:Z

    .line 30
    new-instance v0, Lcom/snowfish/cn/ganga/offline/sf/b;

    invoke-direct {v0}, Lcom/snowfish/cn/ganga/offline/sf/b;-><init>()V

    sput-object v0, Lcom/snowfish/cn/ganga/offline/sf/a;->b:Landroid/os/Handler;

    .line 42
    return-void
.end method

.method static synthetic a()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/snowfish/cn/ganga/offline/sf/a;->b:Landroid/os/Handler;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 81
    sget-boolean v0, Lcom/snowfish/cn/ganga/offline/sf/a;->a:Z

    if-nez v0, :cond_0

    .line 82
    const-string v0, "APayment"

    const-string v1, "APayment is no run onInit 1111"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :goto_0
    return-void

    .line 85
    :cond_0
    invoke-static {p0}, Lcom/snowfish/a/a/l/AIdleServiceLoader;->getInstance(Landroid/content/Context;)Lcom/snowfish/a/a/l/AIdleServiceLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snowfish/a/a/l/AIdleServiceLoader;->getService()Lcom/snowfish/a/a/p/IAIdleService;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/snowfish/a/a/p/IAIdleService;->onExit(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 51
    new-instance v0, Lcom/snowfish/cn/ganga/offline/sf/c;

    invoke-direct {v0, p1}, Lcom/snowfish/cn/ganga/offline/sf/c;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/Context;

    const/4 v2, 0x0

    .line 77
    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Lcom/snowfish/cn/ganga/offline/sf/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 78
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/snowfish/a/a/p/IPaymentResultListener;Landroid/os/Handler;Ljava/util/Map;)V
    .locals 6

    .prologue
    .line 90
    sget-boolean v0, Lcom/snowfish/cn/ganga/offline/sf/a;->a:Z

    if-nez v0, :cond_1

    .line 91
    if-eqz p2, :cond_0

    .line 92
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/snowfish/cn/ganga/offline/sf/d;

    invoke-direct {v1, p2}, Lcom/snowfish/cn/ganga/offline/sf/d;-><init>(Lcom/snowfish/a/a/p/IPaymentResultListener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 98
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 100
    :cond_0
    const-string v0, "APayment"

    const-string v1, "APayment is no run onInit 2222"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :goto_0
    return-void

    .line 103
    :cond_1
    invoke-static {p0}, Lcom/snowfish/a/a/l/AIdleServiceLoader;->getInstance(Landroid/content/Context;)Lcom/snowfish/a/a/l/AIdleServiceLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snowfish/a/a/l/AIdleServiceLoader;->getService()Lcom/snowfish/a/a/p/IAIdleService;

    move-result-object v0

    const-wide v2, 0x123456789876543L

    invoke-interface {v0, v2, v3}, Lcom/snowfish/a/a/p/IAIdleService;->createObject(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snowfish/a/a/p/IAPayment;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/snowfish/a/a/p/IAPayment;->pay(Landroid/content/Context;Ljava/lang/String;Lcom/snowfish/a/a/p/IPaymentResultListener;Landroid/os/Handler;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 117
    sget-boolean v0, Lcom/snowfish/cn/ganga/offline/sf/a;->a:Z

    if-nez v0, :cond_0

    .line 118
    const-string v0, "APayment"

    const-string v1, "APayment is no run onInit 4444"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :goto_0
    return-void

    .line 121
    :cond_0
    invoke-static {p0}, Lcom/snowfish/a/a/l/AIdleServiceLoader;->getInstance(Landroid/content/Context;)Lcom/snowfish/a/a/l/AIdleServiceLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snowfish/a/a/l/AIdleServiceLoader;->getService()Lcom/snowfish/a/a/p/IAIdleService;

    move-result-object v0

    const-wide v2, 0x123456789876543L

    invoke-interface {v0, v2, v3}, Lcom/snowfish/a/a/p/IAIdleService;->createObject(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snowfish/a/a/p/IAPayment;

    invoke-interface {v0, p0, p1, p2}, Lcom/snowfish/a/a/p/IAPayment;->setPaid(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 108
    sget-boolean v0, Lcom/snowfish/cn/ganga/offline/sf/a;->a:Z

    if-nez v0, :cond_0

    .line 109
    const-string v0, "APayment"

    const-string v1, "APayment is no run onInit 333"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/4 v0, 0x0

    .line 112
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/snowfish/a/a/l/AIdleServiceLoader;->getInstance(Landroid/content/Context;)Lcom/snowfish/a/a/l/AIdleServiceLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snowfish/a/a/l/AIdleServiceLoader;->getService()Lcom/snowfish/a/a/p/IAIdleService;

    move-result-object v0

    const-wide v2, 0x123456789876543L

    invoke-interface {v0, v2, v3}, Lcom/snowfish/a/a/p/IAIdleService;->createObject(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snowfish/a/a/p/IAPayment;

    invoke-interface {v0, p0, p1}, Lcom/snowfish/a/a/p/IAPayment;->isPaid(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
