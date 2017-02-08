.class public Lcom/snowfish/android/ahelper/APayLastError;
.super Ljava/lang/Object;
.source "APayLastError.java"


# static fields
.field public static final IID_LASTERROR:J = 0x123456789876547L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLastError(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 18
    :try_start_0
    invoke-static {p0}, Lcom/snowfish/android/ahelper/APayLastError;->getObject(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getLastError"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 21
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    :goto_0
    return-object v0

    .line 22
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 23
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getLastErrorCode(Landroid/content/Context;)I
    .locals 4

    .prologue
    .line 30
    :try_start_0
    invoke-static {p0}, Lcom/snowfish/android/ahelper/APayLastError;->getObject(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getLastErrorCode"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 33
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 35
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getObject(Landroid/content/Context;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 12
    invoke-static {p0}, Lcom/snowfish/a/a/l/AIdleServiceLoader;->getInstance(Landroid/content/Context;)Lcom/snowfish/a/a/l/AIdleServiceLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snowfish/a/a/l/AIdleServiceLoader;->getService()Lcom/snowfish/a/a/p/IAIdleService;

    move-result-object v0

    .line 13
    const-wide v2, 0x123456789876547L

    invoke-interface {v0, v2, v3}, Lcom/snowfish/a/a/p/IAIdleService;->createObject(J)Ljava/lang/Object;

    move-result-object v0

    .line 12
    return-object v0
.end method
