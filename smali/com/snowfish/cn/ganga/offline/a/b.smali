.class public final Lcom/snowfish/cn/ganga/offline/a/b;
.super Ljava/lang/Object;
.source "PacketReader.java"

# interfaces
.implements Lcom/snowfish/cn/ganga/offline/basic/IPR;


# instance fields
.field private a:[B

.field private b:I

.field private c:I

.field private d:I

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/snowfish/cn/ganga/offline/basic/IPR;I)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    check-cast p1, Lcom/snowfish/cn/ganga/offline/a/b;

    .line 20
    iget-object v0, p1, Lcom/snowfish/cn/ganga/offline/a/b;->a:[B

    iput-object v0, p0, Lcom/snowfish/cn/ganga/offline/a/b;->a:[B

    .line 21
    iget v0, p1, Lcom/snowfish/cn/ganga/offline/a/b;->b:I

    iput v0, p0, Lcom/snowfish/cn/ganga/offline/a/b;->b:I

    .line 22
    iget v0, p1, Lcom/snowfish/cn/ganga/offline/a/b;->c:I

    iput v0, p0, Lcom/snowfish/cn/ganga/offline/a/b;->c:I

    .line 23
    iget v0, p1, Lcom/snowfish/cn/ganga/offline/a/b;->c:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/snowfish/cn/ganga/offline/a/b;->d:I

    .line 24
    iget-boolean v0, p1, Lcom/snowfish/cn/ganga/offline/a/b;->e:Z

    iput-boolean v0, p0, Lcom/snowfish/cn/ganga/offline/a/b;->e:Z

    .line 25
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .prologue
    .line 40
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/snowfish/cn/ganga/offline/a/b;-><init>([BII)V

    .line 41
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/snowfish/cn/ganga/offline/a/b;-><init>([BII)V

    .line 37
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/snowfish/cn/ganga/offline/a/b;->a:[B

    .line 29
    iput p2, p0, Lcom/snowfish/cn/ganga/offline/a/b;->b:I

    .line 30
    iput p2, p0, Lcom/snowfish/cn/ganga/offline/a/b;->c:I

    .line 31
    add-int v0, p3, p2

    iput v0, p0, Lcom/snowfish/cn/ganga/offline/a/b;->d:I

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snowfish/cn/ganga/offline/a/b;->e:Z

    .line 33
    return-void
.end method


# virtual methods
.method public final byteArray()[B
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/a/b;->a:[B

    return-object v0
.end method

.method public final getPos()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/snowfish/cn/ganga/offline/a/b;->c:I

    return v0
.end method

.method public final isBad()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/snowfish/cn/ganga/offline/a/b;->e:Z

    return v0
.end method

.method public final read([BI)V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/snowfish/cn/ganga/offline/a/b;->read([BII)V

    .line 65
    return-void
.end method

.method public final read([BII)V
    .locals 2

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/snowfish/cn/ganga/offline/a/b;->e:Z

    if-eqz v0, :cond_0

    .line 76
    :goto_0
    return-void

    .line 70
    :cond_0
    iget v0, p0, Lcom/snowfish/cn/ganga/offline/a/b;->c:I

    add-int/2addr v0, p3

    iget v1, p0, Lcom/snowfish/cn/ganga/offline/a/b;->d:I

    if-le v0, v1, :cond_1

    .line 71
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/snowfish/cn/ganga/offline/a/b;->setBad(Z)V

    goto :goto_0

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/a/b;->a:[B

    iget v1, p0, Lcom/snowfish/cn/ganga/offline/a/b;->c:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 75
    iget v0, p0, Lcom/snowfish/cn/ganga/offline/a/b;->c:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/snowfish/cn/ganga/offline/a/b;->c:I

    goto :goto_0
.end method

.method public final readBoolean()Z
    .locals 1

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/snowfish/cn/ganga/offline/a/b;->readI8()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final readI16()I
    .locals 3

    .prologue
    .line 148
    iget v0, p0, Lcom/snowfish/cn/ganga/offline/a/b;->c:I

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/snowfish/cn/ganga/offline/a/b;->d:I

    if-le v0, v1, :cond_0

    .line 149
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/snowfish/cn/ganga/offline/a/b;->setBad(Z)V

    .line 150
    const/4 v0, 0x0

    .line 153
    :goto_0
    return v0

    .line 152
    :cond_0
    iget v0, p0, Lcom/snowfish/cn/ganga/offline/a/b;->c:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/snowfish/cn/ganga/offline/a/b;->c:I

    .line 153
    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/a/b;->a:[B

    iget v1, p0, Lcom/snowfish/cn/ganga/offline/a/b;->c:I

    add-int/lit8 v1, v1, -0x2

    aget-byte v0, v0, v1

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/snowfish/cn/ganga/offline/a/b;->a:[B

    iget v2, p0, Lcom/snowfish/cn/ganga/offline/a/b;->c:I

    add-int/lit8 v2, v2, -0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method public final readI16LE()I
    .locals 3

    .prologue
    .line 194
    iget v0, p0, Lcom/snowfish/cn/ganga/offline/a/b;->c:I

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/snowfish/cn/ganga/offline/a/b;->d:I

    if-le v0, v1, :cond_0

    .line 195
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/snowfish/cn/ganga/offline/a/b;->setBad(Z)V

    .line 196
    const/4 v0, 0x0

    .line 199
    :goto_0
    return v0

    .line 198
    :cond_0
    iget v0, p0, Lcom/snowfish/cn/ganga/offline/a/b;->c:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/snowfish/cn/ganga/offline/a/b;->c:I

    .line 199
    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/a/b;->a:[B

    iget v1, p0, Lcom/snowfish/cn/ganga/offline/a/b;->c:I

    add-int/lit8 v1, v1, -0x1

    aget-byte v0, v0, v1

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/snowfish/cn/ganga/offline/a/b;->a:[B

    iget v2, p0, Lcom/snowfish/cn/ganga/offline/a/b;->c:I

    add-int/lit8 v2, v2, -0x2

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method public final readI32()I
    .locals 3

    .prologue
    .line 135
    iget v0, p0, Lcom/snowfish/cn/ganga/offline/a/b;->c:I

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcom/snowfish/cn/ganga/offline/a/b;->d:I

    if-le v0, v1, :cond_0

    .line 136
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/snowfish/cn/ganga/offline/a/b;->setBad(Z)V

    .line 137
    const/4 v0, 0x0

    .line 140
    :goto_0
    return v0

    .line 139
    :cond_0
    iget v0, p0, Lcom/snowfish/cn/ganga/offline/a/b;->c:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/snowfish/cn/ganga/offline/a/b;->c:I

    .line 140
    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/a/b;->a:[B

    iget v1, p0, Lcom/snowfish/cn/ganga/offline/a/b;->c:I

    add-int/lit8 v1, v1, -0x4

    aget-byte v0, v0, v1

    shl-int/lit8 v0, v0, 0x18

    iget-object v1, p0, Lcom/snowfish/cn/ganga/offline/a/b;->a:[B

    iget v2, p0, Lcom/snowfish/cn/ganga/offline/a/b;->c:I

    add-int/lit8 v2, v2, -0x3

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/snowfish/cn/ganga/offline/a/b;->a:[B

    iget v2, p0, Lcom/snowfish/cn/ganga/offline/a/b;->c:I

    add-int/lit8 v2, v2, -0x2

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/snowfish/cn/ganga/offline/a/b;->a:[B

    iget v2, p0, Lcom/snowfish/cn/ganga/offline/a/b;->c:I

    add-int/lit8 v2, v2, -0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method public final readI32LE()I
    .locals 3

    .prologue
    .line 185
    iget v0, p0, Lcom/snowfish/cn/ganga/offline/a/b;->c:I

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcom/snowfish/cn/ganga/offline/a/b;->d:I

    if-le v0, v1, :cond_0

    .line 186
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/snowfish/cn/ganga/offline/a/b;->setBad(Z)V

    .line 187
    const/4 v0, 0x0

    .line 190
    :goto_0
    return v0

    .line 189
    :cond_0
    iget v0, p0, Lcom/snowfish/cn/ganga/offline/a/b;->c:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/snowfish/cn/ganga/offline/a/b;->c:I

    .line 190
    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/a/b;->a:[B

    iget v1, p0, Lcom/snowfish/cn/ganga/offline/a/b;->c:I

    add-int/lit8 v1, v1, -0x1

    aget-byte v0, v0, v1

    shl-int/lit8 v0, v0, 0x18

    iget-object v1, p0, Lcom/snowfish/cn/ganga/offline/a/b;->a:[B

    iget v2, p0, Lcom/snowfish/cn/ganga/offline/a/b;->c:I

    add-int/lit8 v2, v2, -0x2

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/snowfish/cn/ganga/offline/a/b;->a:[B

    iget v2, p0, Lcom/snowfish/cn/ganga/offline/a/b;->c:I

    add-int/lit8 v2, v2, -0x3

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/snowfish/cn/ganga/offline/a/b;->a:[B

    iget v2, p0, Lcom/snowfish/cn/ganga/offline/a/b;->c:I

    add-int/lit8 v2, v2, -0x4

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method public final readI64()J
    .locals 6

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/snowfish/cn/ganga/offline/a/b;->readI32()I

    move-result v0

    .line 130
    invoke-virtual {p0}, Lcom/snowfish/cn/ganga/offline/a/b;->readI32()I

    move-result v1

    .line 131
    int-to-long v2, v0

    const/16 v0, 0x20

    shl-long/2addr v2, v0

    int-to-long v0, v1

    const-wide v4, 0xffffffffL

    and-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public final readI64LE()J
    .locals 2

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/snowfish/cn/ganga/offline/a/b;->readU64LE()J

    move-result-wide v0

    return-wide v0
.end method

.method public final readI8()I
    .locals 2

    .prologue
    .line 120
    iget v0, p0, Lcom/snowfish/cn/ganga/offline/a/b;->c:I

    iget v1, p0, Lcom/snowfish/cn/ganga/offline/a/b;->d:I

    if-lt v0, v1, :cond_0

    .line 121
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/snowfish/cn/ganga/offline/a/b;->setBad(Z)V

    .line 122
    const/4 v0, 0x0

    .line 125
    :goto_0
    return v0

    .line 124
    :cond_0
    iget v0, p0, Lcom/snowfish/cn/ganga/offline/a/b;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/snowfish/cn/ganga/offline/a/b;->c:I

    .line 125
    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/a/b;->a:[B

    iget v1, p0, Lcom/snowfish/cn/ganga/offline/a/b;->c:I

    add-int/lit8 v1, v1, -0x1

    aget-byte v0, v0, v1

    goto :goto_0
.end method

.method public final readU16()I
    .locals 3

    .prologue
    .line 94
    iget v0, p0, Lcom/snowfish/cn/ganga/offline/a/b;->c:I

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/snowfish/cn/ganga/offline/a/b;->d:I

    if-le v0, v1, :cond_0

    .line 95
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/snowfish/cn/ganga/offline/a/b;->setBad(Z)V

    .line 96
    const/4 v0, 0x0

    .line 99
    :goto_0
    return v0

    .line 98
    :cond_0
    iget v0, p0, Lcom/snowfish/cn/ganga/offline/a/b;->c:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/snowfish/cn/ganga/offline/a/b;->c:I

    .line 99
    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/a/b;->a:[B

    iget v1, p0, Lcom/snowfish/cn/ganga/offline/a/b;->c:I

    add-int/lit8 v1, v1, -0x2

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/snowfish/cn/ganga/offline/a/b;->a:[B

    iget v2, p0, Lcom/snowfish/cn/ganga/offline/a/b;->c:I

    add-int/lit8 v2, v2, -0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method public final readU16LE()I
    .locals 3

    .prologue
    .line 172
    iget v0, p0, Lcom/snowfish/cn/ganga/offline/a/b;->c:I

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/snowfish/cn/ganga/offline/a/b;->d:I

    if-le v0, v1, :cond_0

    .line 173
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/snowfish/cn/ganga/offline/a/b;->setBad(Z)V

    .line 174
    const/4 v0, 0x0

    .line 177
    :goto_0
    return v0

    .line 176
    :cond_0
    iget v0, p0, Lcom/snowfish/cn/ganga/offline/a/b;->c:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/snowfish/cn/ganga/offline/a/b;->c:I

    .line 177
    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/a/b;->a:[B

    iget v1, p0, Lcom/snowfish/cn/ganga/offline/a/b;->c:I

    add-int/lit8 v1, v1, -0x1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/snowfish/cn/ganga/offline/a/b;->a:[B

    iget v2, p0, Lcom/snowfish/cn/ganga/offline/a/b;->c:I

    add-int/lit8 v2, v2, -0x2

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method public final readU32()J
    .locals 4

    .prologue
    .line 85
    iget v0, p0, Lcom/snowfish/cn/ganga/offline/a/b;->c:I

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcom/snowfish/cn/ganga/offline/a/b;->d:I

    if-le v0, v1, :cond_0

    .line 86
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/snowfish/cn/ganga/offline/a/b;->setBad(Z)V

    .line 87
    const-wide/16 v0, 0x0

    .line 90
    :goto_0
    return-wide v0

    .line 89
    :cond_0
    iget v0, p0, Lcom/snowfish/cn/ganga/offline/a/b;->c:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/snowfish/cn/ganga/offline/a/b;->c:I

    .line 90
    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/a/b;->a:[B

    iget v1, p0, Lcom/snowfish/cn/ganga/offline/a/b;->c:I

    add-int/lit8 v1, v1, -0x4

    aget-byte v0, v0, v1

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    const/16 v2, 0x18

    shl-long/2addr v0, v2

    iget-object v2, p0, Lcom/snowfish/cn/ganga/offline/a/b;->a:[B

    iget v3, p0, Lcom/snowfish/cn/ganga/offline/a/b;->c:I

    add-int/lit8 v3, v3, -0x3

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    int-to-long v2, v2

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/snowfish/cn/ganga/offline/a/b;->a:[B

    iget v3, p0, Lcom/snowfish/cn/ganga/offline/a/b;->c:I

    add-int/lit8 v3, v3, -0x2

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    int-to-long v2, v2

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/snowfish/cn/ganga/offline/a/b;->a:[B

    iget v3, p0, Lcom/snowfish/cn/ganga/offline/a/b;->c:I

    add-int/lit8 v3, v3, -0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    or-long/2addr v0, v2

    goto :goto_0
.end method

.method public final readU32LE()J
    .locals 3

    .prologue
    .line 163
    iget v0, p0, Lcom/snowfish/cn/ganga/offline/a/b;->c:I

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcom/snowfish/cn/ganga/offline/a/b;->d:I

    if-le v0, v1, :cond_0

    .line 164
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/snowfish/cn/ganga/offline/a/b;->setBad(Z)V

    .line 165
    const-wide/16 v0, 0x0

    .line 168
    :goto_0
    return-wide v0

    .line 167
    :cond_0
    iget v0, p0, Lcom/snowfish/cn/ganga/offline/a/b;->c:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/snowfish/cn/ganga/offline/a/b;->c:I

    .line 168
    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/a/b;->a:[B

    iget v1, p0, Lcom/snowfish/cn/ganga/offline/a/b;->c:I

    add-int/lit8 v1, v1, -0x1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    iget-object v1, p0, Lcom/snowfish/cn/ganga/offline/a/b;->a:[B

    iget v2, p0, Lcom/snowfish/cn/ganga/offline/a/b;->c:I

    add-int/lit8 v2, v2, -0x2

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/snowfish/cn/ganga/offline/a/b;->a:[B

    iget v2, p0, Lcom/snowfish/cn/ganga/offline/a/b;->c:I

    add-int/lit8 v2, v2, -0x3

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/snowfish/cn/ganga/offline/a/b;->a:[B

    iget v2, p0, Lcom/snowfish/cn/ganga/offline/a/b;->c:I

    add-int/lit8 v2, v2, -0x4

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-long v0, v0

    goto :goto_0
.end method

.method public final readU64()J
    .locals 6

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/snowfish/cn/ganga/offline/a/b;->readI32()I

    move-result v0

    .line 80
    invoke-virtual {p0}, Lcom/snowfish/cn/ganga/offline/a/b;->readI32()I

    move-result v1

    .line 81
    int-to-long v2, v0

    const/16 v0, 0x20

    shl-long/2addr v2, v0

    int-to-long v0, v1

    const-wide v4, 0xffffffffL

    and-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public final readU64LE()J
    .locals 5

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/snowfish/cn/ganga/offline/a/b;->readU32LE()J

    move-result-wide v0

    .line 158
    invoke-virtual {p0}, Lcom/snowfish/cn/ganga/offline/a/b;->readU32LE()J

    move-result-wide v2

    .line 159
    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public final readU8()I
    .locals 2

    .prologue
    .line 103
    iget v0, p0, Lcom/snowfish/cn/ganga/offline/a/b;->c:I

    iget v1, p0, Lcom/snowfish/cn/ganga/offline/a/b;->d:I

    if-lt v0, v1, :cond_0

    .line 104
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/snowfish/cn/ganga/offline/a/b;->setBad(Z)V

    .line 105
    const/4 v0, 0x0

    .line 108
    :goto_0
    return v0

    .line 107
    :cond_0
    iget v0, p0, Lcom/snowfish/cn/ganga/offline/a/b;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/snowfish/cn/ganga/offline/a/b;->c:I

    .line 108
    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/a/b;->a:[B

    iget v1, p0, Lcom/snowfish/cn/ganga/offline/a/b;->c:I

    add-int/lit8 v1, v1, -0x1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public final readUTF16AsString(II)Ljava/lang/String;
    .locals 3

    .prologue
    .line 235
    if-gtz p2, :cond_0

    .line 236
    const-string v0, ""

    .line 262
    :goto_0
    return-object v0

    .line 238
    :cond_0
    if-nez p1, :cond_1

    .line 239
    mul-int/lit8 v0, p2, 0x2

    invoke-virtual {p0, v0}, Lcom/snowfish/cn/ganga/offline/a/b;->skip(I)V

    .line 240
    const-string v0, ""

    goto :goto_0

    .line 244
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 246
    iget v0, p0, Lcom/snowfish/cn/ganga/offline/a/b;->c:I

    mul-int/lit8 v2, p2, 0x2

    add-int/2addr v0, v2

    iget v2, p0, Lcom/snowfish/cn/ganga/offline/a/b;->d:I

    if-le v0, v2, :cond_2

    .line 247
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/snowfish/cn/ganga/offline/a/b;->setBad(Z)V

    .line 248
    const-string v0, ""

    goto :goto_0

    .line 251
    :cond_2
    if-lez p1, :cond_5

    if-gt p1, p2, :cond_5

    .line 255
    :goto_1
    const/4 v0, 0x0

    :goto_2
    if-lt v0, p1, :cond_4

    .line 259
    if-le p2, p1, :cond_3

    .line 260
    sub-int v0, p2, p1

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/snowfish/cn/ganga/offline/a/b;->skip(I)V

    .line 262
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 256
    :cond_4
    invoke-virtual {p0}, Lcom/snowfish/cn/ganga/offline/a/b;->readU16()I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 255
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    move p1, p2

    goto :goto_1
.end method

.method public final readUTF16AsStringWithByteLength(II)Ljava/lang/String;
    .locals 1

    .prologue
    .line 306
    packed-switch p2, :pswitch_data_0

    .line 317
    :pswitch_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/snowfish/cn/ganga/offline/a/b;->setBad(Z)V

    .line 318
    const-string v0, ""

    .line 320
    :goto_0
    return-object v0

    .line 308
    :pswitch_1
    invoke-virtual {p0}, Lcom/snowfish/cn/ganga/offline/a/b;->readU8()I

    move-result v0

    .line 320
    :goto_1
    shr-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/snowfish/cn/ganga/offline/a/b;->readUTF16AsString(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 311
    :pswitch_2
    invoke-virtual {p0}, Lcom/snowfish/cn/ganga/offline/a/b;->readU16()I

    move-result v0

    goto :goto_1

    .line 314
    :pswitch_3
    invoke-virtual {p0}, Lcom/snowfish/cn/ganga/offline/a/b;->readI32()I

    move-result v0

    goto :goto_1

    .line 306
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public final readUTF16AsStringWithLength(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 343
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/snowfish/cn/ganga/offline/a/b;->readUTF16AsStringWithLength(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final readUTF16AsStringWithLength(II)Ljava/lang/String;
    .locals 1

    .prologue
    .line 325
    packed-switch p2, :pswitch_data_0

    .line 336
    :pswitch_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/snowfish/cn/ganga/offline/a/b;->setBad(Z)V

    .line 337
    const-string v0, ""

    .line 339
    :goto_0
    return-object v0

    .line 327
    :pswitch_1
    invoke-virtual {p0}, Lcom/snowfish/cn/ganga/offline/a/b;->readU8()I

    move-result v0

    .line 339
    :goto_1
    invoke-virtual {p0, p1, v0}, Lcom/snowfish/cn/ganga/offline/a/b;->readUTF16AsString(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 330
    :pswitch_2
    invoke-virtual {p0}, Lcom/snowfish/cn/ganga/offline/a/b;->readU16()I

    move-result v0

    goto :goto_1

    .line 333
    :pswitch_3
    invoke-virtual {p0}, Lcom/snowfish/cn/ganga/offline/a/b;->readI32()I

    move-result v0

    goto :goto_1

    .line 325
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public final readUTF8AsString(II)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 203
    if-gtz p2, :cond_0

    .line 204
    const-string v0, ""

    .line 230
    :goto_0
    return-object v0

    .line 206
    :cond_0
    if-nez p1, :cond_1

    .line 207
    invoke-virtual {p0, p2}, Lcom/snowfish/cn/ganga/offline/a/b;->skip(I)V

    .line 208
    const-string v0, ""

    goto :goto_0

    .line 213
    :cond_1
    iget v0, p0, Lcom/snowfish/cn/ganga/offline/a/b;->c:I

    add-int/2addr v0, p2

    iget v1, p0, Lcom/snowfish/cn/ganga/offline/a/b;->d:I

    if-le v0, v1, :cond_2

    .line 214
    invoke-virtual {p0, v3}, Lcom/snowfish/cn/ganga/offline/a/b;->setBad(Z)V

    .line 215
    const-string v0, ""

    goto :goto_0

    .line 218
    :cond_2
    if-lez p1, :cond_3

    if-gt p1, p2, :cond_3

    .line 224
    :goto_1
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/snowfish/cn/ganga/offline/a/b;->a:[B

    iget v2, p0, Lcom/snowfish/cn/ganga/offline/a/b;->c:I

    invoke-direct {v0, v1, v2, p1}, Ljava/lang/String;-><init>([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :goto_2
    iget v1, p0, Lcom/snowfish/cn/ganga/offline/a/b;->c:I

    add-int/2addr v1, p2

    iput v1, p0, Lcom/snowfish/cn/ganga/offline/a/b;->c:I

    goto :goto_0

    .line 226
    :catch_0
    move-exception v0

    invoke-virtual {p0, v3}, Lcom/snowfish/cn/ganga/offline/a/b;->setBad(Z)V

    .line 227
    const-string v0, ""

    goto :goto_2

    :cond_3
    move p1, p2

    goto :goto_1
.end method

.method public final readUTF8AsStringWithLength(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 366
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/snowfish/cn/ganga/offline/a/b;->readUTF8AsStringWithLength(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final readUTF8AsStringWithLength(II)Ljava/lang/String;
    .locals 1

    .prologue
    .line 348
    packed-switch p2, :pswitch_data_0

    .line 359
    :pswitch_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/snowfish/cn/ganga/offline/a/b;->setBad(Z)V

    .line 360
    const-string v0, ""

    .line 362
    :goto_0
    return-object v0

    .line 350
    :pswitch_1
    invoke-virtual {p0}, Lcom/snowfish/cn/ganga/offline/a/b;->readU8()I

    move-result v0

    .line 362
    :goto_1
    invoke-virtual {p0, p1, v0}, Lcom/snowfish/cn/ganga/offline/a/b;->readUTF8AsString(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 353
    :pswitch_2
    invoke-virtual {p0}, Lcom/snowfish/cn/ganga/offline/a/b;->readU16()I

    move-result v0

    goto :goto_1

    .line 356
    :pswitch_3
    invoke-virtual {p0}, Lcom/snowfish/cn/ganga/offline/a/b;->readI32()I

    move-result v0

    goto :goto_1

    .line 348
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public final remain()I
    .locals 2

    .prologue
    .line 52
    iget v0, p0, Lcom/snowfish/cn/ganga/offline/a/b;->d:I

    iget v1, p0, Lcom/snowfish/cn/ganga/offline/a/b;->c:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final seek(II)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 370
    packed-switch p2, :pswitch_data_0

    .line 394
    invoke-virtual {p0, v2}, Lcom/snowfish/cn/ganga/offline/a/b;->setBad(Z)V

    .line 397
    :cond_0
    :goto_0
    return-void

    .line 372
    :pswitch_0
    iget v0, p0, Lcom/snowfish/cn/ganga/offline/a/b;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/snowfish/cn/ganga/offline/a/b;->c:I

    .line 374
    iget v0, p0, Lcom/snowfish/cn/ganga/offline/a/b;->c:I

    iget v1, p0, Lcom/snowfish/cn/ganga/offline/a/b;->d:I

    if-le v0, v1, :cond_0

    .line 375
    invoke-virtual {p0, v2}, Lcom/snowfish/cn/ganga/offline/a/b;->setBad(Z)V

    goto :goto_0

    .line 380
    :pswitch_1
    iget v0, p0, Lcom/snowfish/cn/ganga/offline/a/b;->c:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/snowfish/cn/ganga/offline/a/b;->c:I

    .line 382
    iget v0, p0, Lcom/snowfish/cn/ganga/offline/a/b;->c:I

    iget v1, p0, Lcom/snowfish/cn/ganga/offline/a/b;->d:I

    if-le v0, v1, :cond_0

    .line 383
    invoke-virtual {p0, v2}, Lcom/snowfish/cn/ganga/offline/a/b;->setBad(Z)V

    goto :goto_0

    .line 387
    :pswitch_2
    iget v0, p0, Lcom/snowfish/cn/ganga/offline/a/b;->d:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/snowfish/cn/ganga/offline/a/b;->c:I

    .line 389
    iget v0, p0, Lcom/snowfish/cn/ganga/offline/a/b;->c:I

    iget v1, p0, Lcom/snowfish/cn/ganga/offline/a/b;->b:I

    if-ge v0, v1, :cond_0

    .line 390
    invoke-virtual {p0, v2}, Lcom/snowfish/cn/ganga/offline/a/b;->setBad(Z)V

    goto :goto_0

    .line 370
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final setBad(Z)V
    .locals 0

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/snowfish/cn/ganga/offline/a/b;->e:Z

    .line 57
    return-void
.end method

.method public final skip(I)V
    .locals 2

    .prologue
    .line 112
    iget v0, p0, Lcom/snowfish/cn/ganga/offline/a/b;->c:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/snowfish/cn/ganga/offline/a/b;->d:I

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/snowfish/cn/ganga/offline/a/b;->c:I

    add-int/2addr v0, p1

    if-gez v0, :cond_1

    .line 113
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/snowfish/cn/ganga/offline/a/b;->setBad(Z)V

    .line 117
    :goto_0
    return-void

    .line 116
    :cond_1
    iget v0, p0, Lcom/snowfish/cn/ganga/offline/a/b;->c:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/snowfish/cn/ganga/offline/a/b;->c:I

    goto :goto_0
.end method

.method public final skipWithByteLength(I)V
    .locals 1

    .prologue
    .line 268
    packed-switch p1, :pswitch_data_0

    .line 279
    :pswitch_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/snowfish/cn/ganga/offline/a/b;->setBad(Z)V

    .line 283
    :goto_0
    return-void

    .line 270
    :pswitch_1
    invoke-virtual {p0}, Lcom/snowfish/cn/ganga/offline/a/b;->readU8()I

    move-result v0

    .line 282
    :goto_1
    invoke-virtual {p0, v0}, Lcom/snowfish/cn/ganga/offline/a/b;->skip(I)V

    goto :goto_0

    .line 273
    :pswitch_2
    invoke-virtual {p0}, Lcom/snowfish/cn/ganga/offline/a/b;->readU16()I

    move-result v0

    goto :goto_1

    .line 276
    :pswitch_3
    invoke-virtual {p0}, Lcom/snowfish/cn/ganga/offline/a/b;->readI32()I

    move-result v0

    goto :goto_1

    .line 268
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public final skipWithUTF16Length(I)V
    .locals 1

    .prologue
    .line 287
    packed-switch p1, :pswitch_data_0

    .line 298
    :pswitch_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/snowfish/cn/ganga/offline/a/b;->setBad(Z)V

    .line 302
    :goto_0
    return-void

    .line 289
    :pswitch_1
    invoke-virtual {p0}, Lcom/snowfish/cn/ganga/offline/a/b;->readU8()I

    move-result v0

    .line 301
    :goto_1
    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/snowfish/cn/ganga/offline/a/b;->skip(I)V

    goto :goto_0

    .line 292
    :pswitch_2
    invoke-virtual {p0}, Lcom/snowfish/cn/ganga/offline/a/b;->readU16()I

    move-result v0

    goto :goto_1

    .line 295
    :pswitch_3
    invoke-virtual {p0}, Lcom/snowfish/cn/ganga/offline/a/b;->readI32()I

    move-result v0

    goto :goto_1

    .line 287
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
