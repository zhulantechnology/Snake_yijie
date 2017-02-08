.class public final Lcom/snowfish/a/a/l/j;
.super Ljava/lang/Object;
.source "PacketWriter.java"


# instance fields
.field private a:[B

.field private b:I

.field private c:I

.field private d:I

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snowfish/a/a/l/j;->a:[B

    .line 33
    iput v1, p0, Lcom/snowfish/a/a/l/j;->b:I

    .line 34
    iput v1, p0, Lcom/snowfish/a/a/l/j;->c:I

    .line 35
    iput v1, p0, Lcom/snowfish/a/a/l/j;->d:I

    .line 36
    iput-boolean v2, p0, Lcom/snowfish/a/a/l/j;->e:Z

    .line 37
    iput-boolean v2, p0, Lcom/snowfish/a/a/l/j;->f:Z

    .line 38
    return-void
.end method

.method private b(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 45
    new-array v0, p1, [B

    .line 46
    iget-object v1, p0, Lcom/snowfish/a/a/l/j;->a:[B

    if-eqz v1, :cond_0

    .line 47
    iget-object v1, p0, Lcom/snowfish/a/a/l/j;->a:[B

    iget v2, p0, Lcom/snowfish/a/a/l/j;->c:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48
    :cond_0
    iput-object v0, p0, Lcom/snowfish/a/a/l/j;->a:[B

    .line 49
    iput p1, p0, Lcom/snowfish/a/a/l/j;->d:I

    .line 50
    return-void
.end method

.method private c(I)V
    .locals 2

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/snowfish/a/a/l/j;->f:Z

    if-eqz v0, :cond_2

    if-lez p1, :cond_2

    .line 54
    iget-object v0, p0, Lcom/snowfish/a/a/l/j;->a:[B

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/snowfish/a/a/l/j;->c:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/snowfish/a/a/l/j;->d:I

    if-le v0, v1, :cond_2

    .line 55
    :cond_0
    iget v0, p0, Lcom/snowfish/a/a/l/j;->d:I

    if-nez v0, :cond_1

    .line 56
    const/16 v0, 0x400

    iput v0, p0, Lcom/snowfish/a/a/l/j;->d:I

    .line 58
    :cond_1
    iget v0, p0, Lcom/snowfish/a/a/l/j;->d:I

    if-le p1, v0, :cond_3

    .line 59
    iget v0, p0, Lcom/snowfish/a/a/l/j;->d:I

    add-int/2addr v0, p1

    div-int/lit8 v1, p1, 0x2

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/snowfish/a/a/l/j;->b(I)V

    .line 65
    :cond_2
    :goto_0
    return-void

    .line 61
    :cond_3
    iget v0, p0, Lcom/snowfish/a/a/l/j;->d:I

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lcom/snowfish/a/a/l/j;->b(I)V

    goto :goto_0
.end method

.method private d(I)V
    .locals 3

    .prologue
    .line 96
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/snowfish/a/a/l/j;->c(I)V

    .line 97
    iget-boolean v0, p0, Lcom/snowfish/a/a/l/j;->e:Z

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/snowfish/a/a/l/j;->a:[B

    iget v1, p0, Lcom/snowfish/a/a/l/j;->c:I

    add-int/lit8 v1, v1, 0x0

    shr-int/lit8 v2, p1, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 99
    iget-object v0, p0, Lcom/snowfish/a/a/l/j;->a:[B

    iget v1, p0, Lcom/snowfish/a/a/l/j;->c:I

    add-int/lit8 v1, v1, 0x1

    shr-int/lit8 v2, p1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 100
    iget-object v0, p0, Lcom/snowfish/a/a/l/j;->a:[B

    iget v1, p0, Lcom/snowfish/a/a/l/j;->c:I

    add-int/lit8 v1, v1, 0x2

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 101
    iget-object v0, p0, Lcom/snowfish/a/a/l/j;->a:[B

    iget v1, p0, Lcom/snowfish/a/a/l/j;->c:I

    add-int/lit8 v1, v1, 0x3

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 108
    :goto_0
    iget v0, p0, Lcom/snowfish/a/a/l/j;->c:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/snowfish/a/a/l/j;->c:I

    .line 109
    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/snowfish/a/a/l/j;->a:[B

    iget v1, p0, Lcom/snowfish/a/a/l/j;->c:I

    add-int/lit8 v1, v1, 0x3

    shr-int/lit8 v2, p1, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 104
    iget-object v0, p0, Lcom/snowfish/a/a/l/j;->a:[B

    iget v1, p0, Lcom/snowfish/a/a/l/j;->c:I

    add-int/lit8 v1, v1, 0x2

    shr-int/lit8 v2, p1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 105
    iget-object v0, p0, Lcom/snowfish/a/a/l/j;->a:[B

    iget v1, p0, Lcom/snowfish/a/a/l/j;->c:I

    add-int/lit8 v1, v1, 0x1

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 106
    iget-object v0, p0, Lcom/snowfish/a/a/l/j;->a:[B

    iget v1, p0, Lcom/snowfish/a/a/l/j;->c:I

    add-int/lit8 v1, v1, 0x0

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    .prologue
    .line 143
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/snowfish/a/a/l/j;->c(I)V

    .line 144
    iget-boolean v0, p0, Lcom/snowfish/a/a/l/j;->e:Z

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/snowfish/a/a/l/j;->a:[B

    iget v1, p0, Lcom/snowfish/a/a/l/j;->c:I

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 146
    iget-object v0, p0, Lcom/snowfish/a/a/l/j;->a:[B

    iget v1, p0, Lcom/snowfish/a/a/l/j;->c:I

    add-int/lit8 v1, v1, 0x1

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 151
    :goto_0
    iget v0, p0, Lcom/snowfish/a/a/l/j;->c:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/snowfish/a/a/l/j;->c:I

    .line 152
    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/snowfish/a/a/l/j;->a:[B

    iget v1, p0, Lcom/snowfish/a/a/l/j;->c:I

    add-int/lit8 v1, v1, 0x1

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 149
    iget-object v0, p0, Lcom/snowfish/a/a/l/j;->a:[B

    iget v1, p0, Lcom/snowfish/a/a/l/j;->c:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    goto :goto_0
.end method

.method public final a(J)V
    .locals 3

    .prologue
    const/16 v1, 0x20

    .line 181
    iget-boolean v0, p0, Lcom/snowfish/a/a/l/j;->e:Z

    if-eqz v0, :cond_0

    shr-long v0, p1, v1

    long-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/snowfish/a/a/l/j;->d(I)V

    long-to-int v0, p1

    invoke-direct {p0, v0}, Lcom/snowfish/a/a/l/j;->d(I)V

    .line 182
    :goto_0
    return-void

    .line 181
    :cond_0
    long-to-int v0, p1

    invoke-direct {p0, v0}, Lcom/snowfish/a/a/l/j;->d(I)V

    shr-long v0, p1, v1

    long-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/snowfish/a/a/l/j;->d(I)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 226
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 227
    packed-switch p2, :pswitch_data_0

    .line 238
    :goto_0
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/snowfish/a/a/l/j;->a([B)V

    .line 239
    return-void

    .line 229
    :pswitch_1
    array-length v1, v0

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/snowfish/a/a/l/j;->c(I)V

    iget-object v2, p0, Lcom/snowfish/a/a/l/j;->a:[B

    iget v3, p0, Lcom/snowfish/a/a/l/j;->c:I

    int-to-byte v1, v1

    aput-byte v1, v2, v3

    iget v1, p0, Lcom/snowfish/a/a/l/j;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/snowfish/a/a/l/j;->c:I

    goto :goto_0

    .line 232
    :pswitch_2
    array-length v1, v0

    invoke-virtual {p0, v1}, Lcom/snowfish/a/a/l/j;->a(I)V

    goto :goto_0

    .line 235
    :pswitch_3
    array-length v1, v0

    invoke-direct {p0, v1}, Lcom/snowfish/a/a/l/j;->d(I)V

    goto :goto_0

    .line 227
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public final a([B)V
    .locals 4

    .prologue
    .line 78
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, v1}, Lcom/snowfish/a/a/l/j;->c(I)V

    iget-object v2, p0, Lcom/snowfish/a/a/l/j;->a:[B

    iget v3, p0, Lcom/snowfish/a/a/l/j;->c:I

    invoke-static {p1, v0, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/snowfish/a/a/l/j;->c:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/snowfish/a/a/l/j;->c:I

    .line 79
    return-void
.end method

.method public final a()[B
    .locals 6

    .prologue
    .line 219
    iget v0, p0, Lcom/snowfish/a/a/l/j;->c:I

    iget v1, p0, Lcom/snowfish/a/a/l/j;->b:I

    sub-int/2addr v0, v1

    new-array v0, v0, [B

    .line 220
    iget-object v1, p0, Lcom/snowfish/a/a/l/j;->a:[B

    iget v2, p0, Lcom/snowfish/a/a/l/j;->b:I

    const/4 v3, 0x0

    iget v4, p0, Lcom/snowfish/a/a/l/j;->c:I

    iget v5, p0, Lcom/snowfish/a/a/l/j;->b:I

    sub-int/2addr v4, v5

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 221
    return-object v0
.end method
