.class public final Lcom/snowfish/cn/ganga/offline/a/c;
.super Ljava/lang/Object;
.source "PacketWriter.java"

# interfaces
.implements Lcom/snowfish/cn/ganga/offline/basic/IPW;


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

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snowfish/cn/ganga/offline/a/c;->a:[B

    .line 36
    iput v1, p0, Lcom/snowfish/cn/ganga/offline/a/c;->b:I

    .line 37
    iput v1, p0, Lcom/snowfish/cn/ganga/offline/a/c;->c:I

    .line 38
    iput v1, p0, Lcom/snowfish/cn/ganga/offline/a/c;->d:I

    .line 39
    iput-boolean v2, p0, Lcom/snowfish/cn/ganga/offline/a/c;->e:Z

    .line 40
    iput-boolean v2, p0, Lcom/snowfish/cn/ganga/offline/a/c;->f:Z

    .line 41
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .prologue
    .line 31
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/snowfish/cn/ganga/offline/a/c;-><init>([BII)V

    .line 32
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/snowfish/cn/ganga/offline/a/c;-><init>([BII)V

    .line 28
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/snowfish/cn/ganga/offline/a/c;->a:[B

    .line 19
    iput p2, p0, Lcom/snowfish/cn/ganga/offline/a/c;->b:I

    .line 20
    iput p2, p0, Lcom/snowfish/cn/ganga/offline/a/c;->c:I

    .line 21
    iput p3, p0, Lcom/snowfish/cn/ganga/offline/a/c;->d:I

    .line 22
    iput-boolean v0, p0, Lcom/snowfish/cn/ganga/offline/a/c;->e:Z

    .line 23
    iput-boolean v0, p0, Lcom/snowfish/cn/ganga/offline/a/c;->f:Z

    .line 24
    return-void
.end method


# virtual methods
.method public final byteArray()[B
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/a/c;->a:[B

    return-object v0
.end method

.method public final ensureSize(I)V
    .locals 2

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/snowfish/cn/ganga/offline/a/c;->f:Z

    if-eqz v0, :cond_2

    if-lez p1, :cond_2

    .line 57
    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/a/c;->a:[B

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/snowfish/cn/ganga/offline/a/c;->c:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/snowfish/cn/ganga/offline/a/c;->d:I

    if-le v0, v1, :cond_2

    .line 58
    :cond_0
    iget v0, p0, Lcom/snowfish/cn/ganga/offline/a/c;->d:I

    if-nez v0, :cond_1

    .line 59
    const/16 v0, 0x400

    iput v0, p0, Lcom/snowfish/cn/ganga/offline/a/c;->d:I

    .line 61
    :cond_1
    iget v0, p0, Lcom/snowfish/cn/ganga/offline/a/c;->d:I

    if-le p1, v0, :cond_3

    .line 62
    iget v0, p0, Lcom/snowfish/cn/ganga/offline/a/c;->d:I

    add-int/2addr v0, p1

    div-int/lit8 v1, p1, 0x2

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/snowfish/cn/ganga/offline/a/c;->expand(I)V

    .line 68
    :cond_2
    :goto_0
    return-void

    .line 64
    :cond_3
    iget v0, p0, Lcom/snowfish/cn/ganga/offline/a/c;->d:I

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/snowfish/cn/ganga/offline/a/c;->expand(I)V

    goto :goto_0
.end method

.method public final expand(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 48
    new-array v0, p1, [B

    .line 49
    iget-object v1, p0, Lcom/snowfish/cn/ganga/offline/a/c;->a:[B

    if-eqz v1, :cond_0

    .line 50
    iget-object v1, p0, Lcom/snowfish/cn/ganga/offline/a/c;->a:[B

    iget v2, p0, Lcom/snowfish/cn/ganga/offline/a/c;->c:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51
    :cond_0
    iput-object v0, p0, Lcom/snowfish/cn/ganga/offline/a/c;->a:[B

    .line 52
    iput p1, p0, Lcom/snowfish/cn/ganga/offline/a/c;->d:I

    .line 53
    return-void
.end method

.method public final getLength()I
    .locals 2

    .prologue
    .line 245
    iget v0, p0, Lcom/snowfish/cn/ganga/offline/a/c;->c:I

    iget v1, p0, Lcom/snowfish/cn/ganga/offline/a/c;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final setBigEndian(Z)V
    .locals 0

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/snowfish/cn/ganga/offline/a/c;->e:Z

    .line 72
    return-void
.end method

.method public final toByteArray()[B
    .locals 6

    .prologue
    .line 222
    iget v0, p0, Lcom/snowfish/cn/ganga/offline/a/c;->c:I

    iget v1, p0, Lcom/snowfish/cn/ganga/offline/a/c;->b:I

    sub-int/2addr v0, v1

    new-array v0, v0, [B

    .line 223
    iget-object v1, p0, Lcom/snowfish/cn/ganga/offline/a/c;->a:[B

    iget v2, p0, Lcom/snowfish/cn/ganga/offline/a/c;->b:I

    const/4 v3, 0x0

    iget v4, p0, Lcom/snowfish/cn/ganga/offline/a/c;->c:I

    iget v5, p0, Lcom/snowfish/cn/ganga/offline/a/c;->b:I

    sub-int/2addr v4, v5

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 224
    return-object v0
.end method

.method public final write(Lcom/snowfish/cn/ganga/offline/basic/IPW;)V
    .locals 5

    .prologue
    .line 249
    check-cast p1, Lcom/snowfish/cn/ganga/offline/a/c;

    .line 250
    invoke-virtual {p1}, Lcom/snowfish/cn/ganga/offline/a/c;->getLength()I

    move-result v0

    .line 251
    invoke-virtual {p0, v0}, Lcom/snowfish/cn/ganga/offline/a/c;->ensureSize(I)V

    .line 252
    iget-object v1, p1, Lcom/snowfish/cn/ganga/offline/a/c;->a:[B

    iget v2, p1, Lcom/snowfish/cn/ganga/offline/a/c;->b:I

    iget-object v3, p0, Lcom/snowfish/cn/ganga/offline/a/c;->a:[B

    iget v4, p0, Lcom/snowfish/cn/ganga/offline/a/c;->c:I

    invoke-static {v1, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 253
    iget v1, p0, Lcom/snowfish/cn/ganga/offline/a/c;->c:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/snowfish/cn/ganga/offline/a/c;->c:I

    .line 254
    return-void
.end method

.method public final write([B)V
    .locals 2

    .prologue
    .line 81
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/snowfish/cn/ganga/offline/a/c;->write([BII)V

    .line 82
    return-void
.end method

.method public final write([BII)V
    .locals 2

    .prologue
    .line 75
    invoke-virtual {p0, p3}, Lcom/snowfish/cn/ganga/offline/a/c;->ensureSize(I)V

    .line 76
    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/a/c;->a:[B

    iget v1, p0, Lcom/snowfish/cn/ganga/offline/a/c;->c:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    iget v0, p0, Lcom/snowfish/cn/ganga/offline/a/c;->c:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/snowfish/cn/ganga/offline/a/c;->c:I

    .line 78
    return-void
.end method

.method public final writeBoolean(Z)V
    .locals 1

    .prologue
    .line 128
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/snowfish/cn/ganga/offline/a/c;->writeI8(I)V

    .line 129
    return-void

    .line 128
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final writeFixedUTF16Array(Ljava/lang/String;I)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 206
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 207
    if-le v0, p2, :cond_0

    move v0, p2

    .line 210
    :cond_0
    mul-int/lit8 v1, p2, 0x2

    invoke-virtual {p0, v1}, Lcom/snowfish/cn/ganga/offline/a/c;->ensureSize(I)V

    move v1, v2

    .line 213
    :goto_0
    if-lt v1, v0, :cond_1

    move v0, v1

    .line 216
    :goto_1
    if-lt v0, p2, :cond_2

    .line 219
    return-void

    .line 214
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v3}, Lcom/snowfish/cn/ganga/offline/a/c;->writeI16(I)V

    .line 213
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 217
    :cond_2
    invoke-virtual {p0, v2}, Lcom/snowfish/cn/ganga/offline/a/c;->writeI16(I)V

    .line 216
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public final writeI16(I)V
    .locals 3

    .prologue
    .line 146
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/snowfish/cn/ganga/offline/a/c;->ensureSize(I)V

    .line 147
    iget-boolean v0, p0, Lcom/snowfish/cn/ganga/offline/a/c;->e:Z

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/a/c;->a:[B

    iget v1, p0, Lcom/snowfish/cn/ganga/offline/a/c;->c:I

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 149
    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/a/c;->a:[B

    iget v1, p0, Lcom/snowfish/cn/ganga/offline/a/c;->c:I

    add-int/lit8 v1, v1, 0x1

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 154
    :goto_0
    iget v0, p0, Lcom/snowfish/cn/ganga/offline/a/c;->c:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/snowfish/cn/ganga/offline/a/c;->c:I

    .line 155
    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/a/c;->a:[B

    iget v1, p0, Lcom/snowfish/cn/ganga/offline/a/c;->c:I

    add-int/lit8 v1, v1, 0x1

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 152
    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/a/c;->a:[B

    iget v1, p0, Lcom/snowfish/cn/ganga/offline/a/c;->c:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    goto :goto_0
.end method

.method public final writeI16At(II)V
    .locals 3

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/snowfish/cn/ganga/offline/a/c;->e:Z

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/a/c;->a:[B

    iget v1, p0, Lcom/snowfish/cn/ganga/offline/a/c;->b:I

    add-int/2addr v1, p2

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 138
    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/a/c;->a:[B

    iget v1, p0, Lcom/snowfish/cn/ganga/offline/a/c;->b:I

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, 0x1

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 143
    :goto_0
    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/a/c;->a:[B

    iget v1, p0, Lcom/snowfish/cn/ganga/offline/a/c;->b:I

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, 0x1

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 141
    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/a/c;->a:[B

    iget v1, p0, Lcom/snowfish/cn/ganga/offline/a/c;->b:I

    add-int/2addr v1, p2

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    goto :goto_0
.end method

.method public final writeI32(I)V
    .locals 3

    .prologue
    .line 99
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/snowfish/cn/ganga/offline/a/c;->ensureSize(I)V

    .line 100
    iget-boolean v0, p0, Lcom/snowfish/cn/ganga/offline/a/c;->e:Z

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/a/c;->a:[B

    iget v1, p0, Lcom/snowfish/cn/ganga/offline/a/c;->c:I

    add-int/lit8 v1, v1, 0x0

    shr-int/lit8 v2, p1, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 102
    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/a/c;->a:[B

    iget v1, p0, Lcom/snowfish/cn/ganga/offline/a/c;->c:I

    add-int/lit8 v1, v1, 0x1

    shr-int/lit8 v2, p1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 103
    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/a/c;->a:[B

    iget v1, p0, Lcom/snowfish/cn/ganga/offline/a/c;->c:I

    add-int/lit8 v1, v1, 0x2

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 104
    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/a/c;->a:[B

    iget v1, p0, Lcom/snowfish/cn/ganga/offline/a/c;->c:I

    add-int/lit8 v1, v1, 0x3

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 111
    :goto_0
    iget v0, p0, Lcom/snowfish/cn/ganga/offline/a/c;->c:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/snowfish/cn/ganga/offline/a/c;->c:I

    .line 112
    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/a/c;->a:[B

    iget v1, p0, Lcom/snowfish/cn/ganga/offline/a/c;->c:I

    add-int/lit8 v1, v1, 0x3

    shr-int/lit8 v2, p1, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 107
    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/a/c;->a:[B

    iget v1, p0, Lcom/snowfish/cn/ganga/offline/a/c;->c:I

    add-int/lit8 v1, v1, 0x2

    shr-int/lit8 v2, p1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 108
    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/a/c;->a:[B

    iget v1, p0, Lcom/snowfish/cn/ganga/offline/a/c;->c:I

    add-int/lit8 v1, v1, 0x1

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 109
    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/a/c;->a:[B

    iget v1, p0, Lcom/snowfish/cn/ganga/offline/a/c;->c:I

    add-int/lit8 v1, v1, 0x0

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    goto :goto_0
.end method

.method public final writeI32At(II)V
    .locals 3

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/snowfish/cn/ganga/offline/a/c;->e:Z

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/a/c;->a:[B

    iget v1, p0, Lcom/snowfish/cn/ganga/offline/a/c;->b:I

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, 0x0

    shr-int/lit8 v2, p1, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 87
    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/a/c;->a:[B

    iget v1, p0, Lcom/snowfish/cn/ganga/offline/a/c;->b:I

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, 0x1

    shr-int/lit8 v2, p1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 88
    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/a/c;->a:[B

    iget v1, p0, Lcom/snowfish/cn/ganga/offline/a/c;->b:I

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, 0x2

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 89
    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/a/c;->a:[B

    iget v1, p0, Lcom/snowfish/cn/ganga/offline/a/c;->b:I

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, 0x3

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 96
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/a/c;->a:[B

    iget v1, p0, Lcom/snowfish/cn/ganga/offline/a/c;->b:I

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, 0x3

    shr-int/lit8 v2, p1, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 92
    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/a/c;->a:[B

    iget v1, p0, Lcom/snowfish/cn/ganga/offline/a/c;->b:I

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, 0x2

    shr-int/lit8 v2, p1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 93
    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/a/c;->a:[B

    iget v1, p0, Lcom/snowfish/cn/ganga/offline/a/c;->b:I

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, 0x1

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 94
    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/a/c;->a:[B

    iget v1, p0, Lcom/snowfish/cn/ganga/offline/a/c;->b:I

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, 0x0

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    goto :goto_0
.end method

.method public final writeI32LE(I)V
    .locals 3

    .prologue
    .line 115
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/snowfish/cn/ganga/offline/a/c;->ensureSize(I)V

    .line 116
    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/a/c;->a:[B

    iget v1, p0, Lcom/snowfish/cn/ganga/offline/a/c;->c:I

    add-int/lit8 v1, v1, 0x3

    shr-int/lit8 v2, p1, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 117
    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/a/c;->a:[B

    iget v1, p0, Lcom/snowfish/cn/ganga/offline/a/c;->c:I

    add-int/lit8 v1, v1, 0x2

    shr-int/lit8 v2, p1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 118
    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/a/c;->a:[B

    iget v1, p0, Lcom/snowfish/cn/ganga/offline/a/c;->c:I

    add-int/lit8 v1, v1, 0x1

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 119
    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/a/c;->a:[B

    iget v1, p0, Lcom/snowfish/cn/ganga/offline/a/c;->c:I

    add-int/lit8 v1, v1, 0x0

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 120
    iget v0, p0, Lcom/snowfish/cn/ganga/offline/a/c;->c:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/snowfish/cn/ganga/offline/a/c;->c:I

    .line 121
    return-void
.end method

.method public final writeI64(J)V
    .locals 3

    .prologue
    const/16 v1, 0x20

    .line 170
    iget-boolean v0, p0, Lcom/snowfish/cn/ganga/offline/a/c;->e:Z

    if-eqz v0, :cond_0

    .line 171
    shr-long v0, p1, v1

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/snowfish/cn/ganga/offline/a/c;->writeI32(I)V

    .line 172
    long-to-int v0, p1

    invoke-virtual {p0, v0}, Lcom/snowfish/cn/ganga/offline/a/c;->writeI32(I)V

    .line 177
    :goto_0
    return-void

    .line 174
    :cond_0
    long-to-int v0, p1

    invoke-virtual {p0, v0}, Lcom/snowfish/cn/ganga/offline/a/c;->writeI32(I)V

    .line 175
    shr-long v0, p1, v1

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/snowfish/cn/ganga/offline/a/c;->writeI32(I)V

    goto :goto_0
.end method

.method public final writeI8(I)V
    .locals 3

    .prologue
    .line 158
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/snowfish/cn/ganga/offline/a/c;->ensureSize(I)V

    .line 159
    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/a/c;->a:[B

    iget v1, p0, Lcom/snowfish/cn/ganga/offline/a/c;->c:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 160
    iget v0, p0, Lcom/snowfish/cn/ganga/offline/a/c;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/snowfish/cn/ganga/offline/a/c;->c:I

    .line 161
    return-void
.end method

.method public final writeTo(Ljava/io/OutputStream;)V
    .locals 4

    .prologue
    .line 257
    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/a/c;->a:[B

    iget v1, p0, Lcom/snowfish/cn/ganga/offline/a/c;->b:I

    iget v2, p0, Lcom/snowfish/cn/ganga/offline/a/c;->c:I

    iget v3, p0, Lcom/snowfish/cn/ganga/offline/a/c;->b:I

    sub-int/2addr v2, v3

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 258
    return-void
.end method

.method public final writeU16(I)V
    .locals 0

    .prologue
    .line 132
    invoke-virtual {p0, p1}, Lcom/snowfish/cn/ganga/offline/a/c;->writeI16(I)V

    .line 133
    return-void
.end method

.method public final writeU32(I)V
    .locals 0

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Lcom/snowfish/cn/ganga/offline/a/c;->writeI32(I)V

    .line 125
    return-void
.end method

.method public final writeU64(J)V
    .locals 1

    .prologue
    .line 184
    invoke-virtual {p0, p1, p2}, Lcom/snowfish/cn/ganga/offline/a/c;->writeI64(J)V

    .line 185
    return-void
.end method

.method public final writeU8(I)V
    .locals 3

    .prologue
    .line 164
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/snowfish/cn/ganga/offline/a/c;->ensureSize(I)V

    .line 165
    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/a/c;->a:[B

    iget v1, p0, Lcom/snowfish/cn/ganga/offline/a/c;->c:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 166
    iget v0, p0, Lcom/snowfish/cn/ganga/offline/a/c;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/snowfish/cn/ganga/offline/a/c;->c:I

    .line 167
    return-void
.end method

.method public final writeUTF16WithLength(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 188
    if-nez p1, :cond_0

    .line 189
    const-string p1, ""

    .line 191
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 202
    :goto_0
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/snowfish/cn/ganga/offline/a/c;->writeFixedUTF16Array(Ljava/lang/String;I)V

    .line 203
    return-void

    .line 193
    :pswitch_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/snowfish/cn/ganga/offline/a/c;->writeU8(I)V

    goto :goto_0

    .line 196
    :pswitch_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/snowfish/cn/ganga/offline/a/c;->writeU16(I)V

    goto :goto_0

    .line 199
    :pswitch_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/snowfish/cn/ganga/offline/a/c;->writeU32(I)V

    goto :goto_0

    .line 191
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public final writeUTF8WithLength(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 229
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 230
    packed-switch p2, :pswitch_data_0

    .line 241
    :goto_0
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/snowfish/cn/ganga/offline/a/c;->write([B)V

    .line 242
    return-void

    .line 232
    :pswitch_1
    array-length v1, v0

    invoke-virtual {p0, v1}, Lcom/snowfish/cn/ganga/offline/a/c;->writeU8(I)V

    goto :goto_0

    .line 235
    :pswitch_2
    array-length v1, v0

    invoke-virtual {p0, v1}, Lcom/snowfish/cn/ganga/offline/a/c;->writeU16(I)V

    goto :goto_0

    .line 238
    :pswitch_3
    array-length v1, v0

    invoke-virtual {p0, v1}, Lcom/snowfish/cn/ganga/offline/a/c;->writeU32(I)V

    goto :goto_0

    .line 230
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
