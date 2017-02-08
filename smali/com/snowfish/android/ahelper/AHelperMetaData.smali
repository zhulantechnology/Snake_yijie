.class public Lcom/snowfish/android/ahelper/AHelperMetaData;
.super Ljava/lang/Object;
.source "AHelperMetaData.java"


# static fields
.field private static a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/snowfish/android/ahelper/AHelperMetaData;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAModuleValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 38
    const-wide v0, 0x123456789876549L

    :try_start_0
    invoke-static {p0, v0, v1}, Lcom/snowfish/android/ahelper/APayment;->co(Landroid/content/Context;J)Ljava/lang/Object;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getAModuleValue"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 40
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, p2

    goto :goto_0
.end method

.method public static getData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 21
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 22
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    .line 23
    const-string v1, "AHelperMetaData getData  input parameter invalid"

    .line 22
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_1
    sget-object v0, Lcom/snowfish/android/ahelper/AHelperMetaData;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static setData(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 13
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    .line 15
    const-string v1, "AHelperMetaData setData  input parameter invalid"

    .line 14
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_1
    sget-object v0, Lcom/snowfish/android/ahelper/AHelperMetaData;->a:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    return-void
.end method

.method public static setYJSubChannel(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 29
    if-eqz p0, :cond_0

    const-string v0, "YJ_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 30
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    .line 31
    const-string v1, "input subChannel String format must such as YJ_YJCPCODE_**"

    .line 30
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_1
    const-string v0, "YJ_SUB_CHANNEL"

    invoke-static {v0, p0}, Lcom/snowfish/android/ahelper/AHelperMetaData;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 34
    return-void
.end method
