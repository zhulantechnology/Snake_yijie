.class public final Lcom/snowfish/a/a/l/e;
.super Ljava/lang/Object;
.source "ABGSvcLoader.java"


# static fields
.field private static a:Lcom/snowfish/a/a/l/e;

.field private static final c:[B


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/16 v0, 0x13

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/snowfish/a/a/l/e;->c:[B

    return-void

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
        0x53t
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/snowfish/a/a/l/e;->b:Landroid/content/Context;

    .line 17
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/snowfish/a/a/l/e;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/snowfish/a/a/l/e;->a:Lcom/snowfish/a/a/l/e;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/snowfish/a/a/l/e;

    invoke-direct {v0, p0}, Lcom/snowfish/a/a/l/e;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/snowfish/a/a/l/e;->a:Lcom/snowfish/a/a/l/e;

    .line 24
    :cond_0
    sget-object v0, Lcom/snowfish/a/a/l/e;->a:Lcom/snowfish/a/a/l/e;

    return-object v0
.end method

.method public static a([B)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/snowfish/a/a/p/IABGSvc;
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/snowfish/a/a/l/e;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/snowfish/a/a/l/h;->a(Landroid/content/Context;)Lcom/snowfish/a/a/l/h;

    move-result-object v0

    sget-object v1, Lcom/snowfish/a/a/l/e;->c:[B

    invoke-static {v1}, Lcom/snowfish/a/a/l/e;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snowfish/a/a/l/h;->b(Ljava/lang/String;)Lcom/snowfish/a/a/p/IReloadable;

    move-result-object v0

    check-cast v0, Lcom/snowfish/a/a/p/IABGSvc;

    return-object v0
.end method
