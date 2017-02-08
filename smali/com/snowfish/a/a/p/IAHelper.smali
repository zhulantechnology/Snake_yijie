.class public Lcom/snowfish/a/a/p/IAHelper;
.super Ljava/lang/Object;
.source "IAHelper.java"


# static fields
.field private static a:[B

.field private static b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 6
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x33

    aput-byte v2, v0, v1

    sput-object v0, Lcom/snowfish/a/a/p/IAHelper;->a:[B

    .line 9
    const/16 v0, 0x19

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/snowfish/a/a/p/IAHelper;->b:[B

    .line 10
    return-void

    .line 9
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
        0x73t
        0x2et
        0x41t
        0x42t
        0x47t
        0x53t
        0x76t
        0x63t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSrv()Ljava/lang/String;
    .locals 2

    .prologue
    .line 17
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/snowfish/a/a/p/IAHelper;->b:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static getTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 13
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/snowfish/a/a/p/IAHelper;->a:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method
