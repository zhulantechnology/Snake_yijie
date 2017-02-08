.class public Lcom/snowfish/android/ahelper/APayment;
.super Ljava/lang/Object;
.source "APayment.java"


# static fields
.field public static final FORCE:Ljava/lang/String; = "force"

.field public static final IID_Payment:J = 0x123456789876543L

.field public static final TAG:Ljava/lang/String; = "APayment"

.field public static isInit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-boolean v0, Lcom/snowfish/android/ahelper/APayment;->isInit:Z

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static co(Landroid/content/Context;J)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 105
    sget-boolean v0, Lcom/snowfish/android/ahelper/APayment;->isInit:Z

    if-nez v0, :cond_0

    .line 106
    const-string v0, "APayment"

    const-string v1, "APayment is no run onInit"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const/4 v0, 0x0

    .line 109
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/snowfish/a/a/l/AIdleServiceLoader;->getInstance(Landroid/content/Context;)Lcom/snowfish/a/a/l/AIdleServiceLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snowfish/a/a/l/AIdleServiceLoader;->getService()Lcom/snowfish/a/a/p/IAIdleService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/snowfish/a/a/p/IAIdleService;->createObject(J)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public static isPaid(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 87
    sget-boolean v0, Lcom/snowfish/android/ahelper/APayment;->isInit:Z

    if-nez v0, :cond_0

    .line 88
    const-string v0, "APayment"

    const-string v1, "APayment is no run onInit"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const/4 v0, 0x0

    .line 91
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

.method public static onExit(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 60
    sget-boolean v0, Lcom/snowfish/android/ahelper/APayment;->isInit:Z

    if-nez v0, :cond_0

    .line 61
    const-string v0, "APayment"

    const-string v1, "APayment is no run onInit"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :goto_0
    return-void

    .line 64
    :cond_0
    invoke-static {p0}, Lcom/snowfish/a/a/l/AIdleServiceLoader;->getInstance(Landroid/content/Context;)Lcom/snowfish/a/a/l/AIdleServiceLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snowfish/a/a/l/AIdleServiceLoader;->getService()Lcom/snowfish/a/a/p/IAIdleService;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/snowfish/a/a/p/IAIdleService;->onExit(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static onFirstActivityCreate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 29
    invoke-static {p0}, Lcom/snowfish/a/a/l/AIdleServiceLoader;->getInstance(Landroid/content/Context;)Lcom/snowfish/a/a/l/AIdleServiceLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snowfish/a/a/l/AIdleServiceLoader;->getService()Lcom/snowfish/a/a/p/IAIdleService;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/snowfish/a/a/p/IAIdleService;->onFirstActivityCreate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 30
    return-void
.end method

.method public static onInit(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 34
    new-instance v0, Lcom/snowfish/android/ahelper/a;

    invoke-direct {v0}, Lcom/snowfish/android/ahelper/a;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/Context;

    const/4 v2, 0x0

    .line 56
    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Lcom/snowfish/android/ahelper/a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 57
    return-void
.end method

.method public static pay(Landroid/content/Context;Ljava/lang/String;Lcom/snowfish/a/a/p/IPaymentResultListener;Landroid/os/Handler;Ljava/util/Map;)V
    .locals 6

    .prologue
    .line 69
    sget-boolean v0, Lcom/snowfish/android/ahelper/APayment;->isInit:Z

    if-nez v0, :cond_1

    .line 70
    if-eqz p2, :cond_0

    .line 71
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/snowfish/android/ahelper/b;

    invoke-direct {v1, p2}, Lcom/snowfish/android/ahelper/b;-><init>(Lcom/snowfish/a/a/p/IPaymentResultListener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 77
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 79
    :cond_0
    const-string v0, "APayment"

    const-string v1, "APayment is no run onInit"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :goto_0
    return-void

    .line 82
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

.method public static putLongToSharedPreferences(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 116
    .line 117
    :try_start_0
    const-string v0, "data_s"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 118
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 119
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static setPaid(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 96
    sget-boolean v0, Lcom/snowfish/android/ahelper/APayment;->isInit:Z

    if-nez v0, :cond_0

    .line 97
    const-string v0, "APayment"

    const-string v1, "APayment is no run onInit"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :goto_0
    return-void

    .line 100
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
