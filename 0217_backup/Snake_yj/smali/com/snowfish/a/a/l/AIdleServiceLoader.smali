.class public Lcom/snowfish/a/a/l/AIdleServiceLoader;
.super Ljava/lang/Object;
.source "AIdleServiceLoader.java"


# static fields
.field private static a:Lcom/snowfish/a/a/l/AIdleServiceLoader;

.field private static final c:[B

.field private static d:[B


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x13

    .line 21
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/snowfish/a/a/l/AIdleServiceLoader;->c:[B

    .line 23
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/snowfish/a/a/l/AIdleServiceLoader;->d:[B

    .line 24
    return-void

    .line 21
    nop

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
        0x41t
        0x49t
    .end array-data

    .line 23
    :array_1
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
        0x41t
        0x43t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/snowfish/a/a/l/AIdleServiceLoader;->b:Landroid/content/Context;

    .line 28
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/snowfish/a/a/l/AIdleServiceLoader;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/snowfish/a/a/l/AIdleServiceLoader;->a:Lcom/snowfish/a/a/l/AIdleServiceLoader;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/snowfish/a/a/l/AIdleServiceLoader;

    invoke-direct {v0, p0}, Lcom/snowfish/a/a/l/AIdleServiceLoader;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/snowfish/a/a/l/AIdleServiceLoader;->a:Lcom/snowfish/a/a/l/AIdleServiceLoader;

    .line 34
    :cond_0
    sget-object v0, Lcom/snowfish/a/a/l/AIdleServiceLoader;->a:Lcom/snowfish/a/a/l/AIdleServiceLoader;

    return-object v0
.end method


# virtual methods
.method public getHookService()Lcom/snowfish/a/a/p/IAHookService;
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/snowfish/a/a/l/AIdleServiceLoader;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/snowfish/a/a/l/h;->a(Landroid/content/Context;)Lcom/snowfish/a/a/l/h;

    move-result-object v0

    .line 44
    sget-object v1, Lcom/snowfish/a/a/l/AIdleServiceLoader;->d:[B

    invoke-static {v1}, Lcom/snowfish/a/a/l/e;->a([B)Ljava/lang/String;

    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Lcom/snowfish/a/a/l/h;->b(Ljava/lang/String;)Lcom/snowfish/a/a/p/IReloadable;

    move-result-object v0

    check-cast v0, Lcom/snowfish/a/a/p/IAHookService;

    return-object v0
.end method

.method public getService()Lcom/snowfish/a/a/p/IAIdleService;
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/snowfish/a/a/l/AIdleServiceLoader;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/snowfish/a/a/l/h;->a(Landroid/content/Context;)Lcom/snowfish/a/a/l/h;

    move-result-object v0

    .line 39
    sget-object v1, Lcom/snowfish/a/a/l/AIdleServiceLoader;->c:[B

    invoke-static {v1}, Lcom/snowfish/a/a/l/e;->a([B)Ljava/lang/String;

    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Lcom/snowfish/a/a/l/h;->b(Ljava/lang/String;)Lcom/snowfish/a/a/p/IReloadable;

    move-result-object v0

    check-cast v0, Lcom/snowfish/a/a/p/IAIdleService;

    return-object v0
.end method

.method public setContect(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 48
    if-eqz p1, :cond_0

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/snowfish/a/a/l/AIdleServiceLoader;->b:Landroid/content/Context;

    .line 50
    invoke-static {p1}, Lcom/snowfish/a/a/l/d;->a(Landroid/content/Context;)V

    .line 52
    :cond_0
    return-void
.end method
