.class public Lcom/snowfish/android/ahelper/APaymentMP;
.super Ljava/lang/Object;
.source "APaymentMP.java"


# static fields
.field public static final IID_PAYMENT_MY:J = 0x123456789876553L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getObject(Landroid/content/Context;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 14
    invoke-static {p0}, Lcom/snowfish/a/a/l/AIdleServiceLoader;->getInstance(Landroid/content/Context;)Lcom/snowfish/a/a/l/AIdleServiceLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snowfish/a/a/l/AIdleServiceLoader;->getService()Lcom/snowfish/a/a/p/IAIdleService;

    move-result-object v0

    .line 15
    const-wide v2, 0x123456789876553L

    invoke-interface {v0, v2, v3}, Lcom/snowfish/a/a/p/IAIdleService;->createObject(J)Ljava/lang/Object;

    move-result-object v0

    .line 14
    return-object v0
.end method

.method public static isPaid(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 51
    const-wide v2, 0x123456789876553L

    :try_start_0
    invoke-static {p0, v2, v3}, Lcom/snowfish/android/ahelper/APayment;->co(Landroid/content/Context;J)Ljava/lang/Object;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 53
    const-string v3, "isPaid"

    .line 54
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    .line 52
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 55
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 57
    :goto_0
    return v0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method public static pay(Landroid/content/Context;Ljava/lang/String;Lcom/snowfish/a/a/p/IPaymentResultListener;Landroid/os/Handler;)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 21
    const-wide v2, 0x123456789876553L

    :try_start_0
    invoke-static {p0, v2, v3}, Lcom/snowfish/android/ahelper/APayment;->co(Landroid/content/Context;J)Ljava/lang/Object;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 23
    const-string v3, "pay"

    .line 24
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    .line 25
    const-class v6, Lcom/snowfish/a/a/p/IPaymentResultListener;

    aput-object v6, v4, v5

    const/4 v5, 0x4

    .line 26
    const-class v6, Landroid/os/Handler;

    aput-object v6, v4, v5

    .line 22
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 27
    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    const-string v5, "100"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    const/4 v4, 0x3

    aput-object p2, v3, v4

    const/4 v4, 0x4

    aput-object p3, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 29
    :goto_0
    return v0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method public static pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/snowfish/a/a/p/IPaymentResultListener;Landroid/os/Handler;)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 36
    const-wide v2, 0x123456789876553L

    :try_start_0
    invoke-static {p0, v2, v3}, Lcom/snowfish/android/ahelper/APayment;->co(Landroid/content/Context;J)Ljava/lang/Object;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 38
    const-string v3, "pay"

    .line 39
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    .line 40
    const-class v6, Lcom/snowfish/a/a/p/IPaymentResultListener;

    aput-object v6, v4, v5

    const/4 v5, 0x4

    .line 41
    const-class v6, Landroid/os/Handler;

    aput-object v6, v4, v5

    .line 37
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 42
    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    .line 43
    aput-object p2, v3, v4

    const/4 v4, 0x3

    aput-object p3, v3, v4

    const/4 v4, 0x4

    aput-object p4, v3, v4

    .line 42
    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 45
    :goto_0
    return v0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method
