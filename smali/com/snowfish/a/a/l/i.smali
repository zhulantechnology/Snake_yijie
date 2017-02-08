.class public final Lcom/snowfish/a/a/l/i;
.super Ljava/lang/Object;
.source "PacketReader.java"


# instance fields
.field public a:[B

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>([B)V
    .locals 2

    .prologue
    .line 36
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/snowfish/a/a/l/i;-><init>([BII)V

    .line 37
    return-void
.end method

.method private constructor <init>([BII)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/snowfish/a/a/l/i;->a:[B

    .line 25
    iput p2, p0, Lcom/snowfish/a/a/l/i;->b:I

    .line 27
    add-int v0, p3, p2

    iput v0, p0, Lcom/snowfish/a/a/l/i;->c:I

    .line 28
    return-void
.end method
