.class public Lcom/snowfish/android/ahelper/APaymentLogin;
.super Ljava/lang/Object;
.source "APaymentLogin.java"


# static fields
.field public static final IID_APAYMENT_LOGIN:J = 0x123456789876551L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static login(Landroid/content/Context;)J
    .locals 4

    .prologue
    .line 17
    const-wide v0, 0x123456789876551L

    :try_start_0
    invoke-static {p0, v0, v1}, Lcom/snowfish/android/ahelper/APayment;->co(Landroid/content/Context;J)Ljava/lang/Object;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "login"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 20
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 22
    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static onFirstActivityCreate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 12
    invoke-static {p0, p1, p2}, Lcom/snowfish/android/ahelper/APayment;->onFirstActivityCreate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 13
    return-void
.end method
