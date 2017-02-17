.class public final Lcom/snowfish/cn/ganga/offline/a/d;
.super Ljava/lang/Object;
.source "SFConfigLoader.java"


# static fields
.field private static f:Lcom/snowfish/cn/ganga/offline/a/d;


# instance fields
.field public a:Ljava/util/List;

.field public b:Lcom/snowfish/cn/ganga/offline/channel/c;

.field public c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/snowfish/cn/ganga/offline/a/d;->d:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/snowfish/cn/ganga/offline/a/d;->c:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/snowfish/cn/ganga/offline/a/d;->e:Ljava/lang/String;

    .line 29
    return-void
.end method

.method private a(Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 327
    if-eqz p1, :cond_1

    const-string v2, "46000"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "46002"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "46007"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "46020"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v2, v0

    :goto_0
    if-eqz v2, :cond_2

    .line 328
    sget v0, Lcom/snowfish/cn/ganga/offline/a/g;->k:I

    .line 337
    :goto_1
    return v0

    :cond_1
    move v2, v1

    .line 327
    goto :goto_0

    .line 331
    :cond_2
    if-eqz p1, :cond_4

    const-string v2, "46001"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "46006"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move v2, v0

    :goto_2
    if-eqz v2, :cond_5

    .line 332
    sget v0, Lcom/snowfish/cn/ganga/offline/a/g;->l:I

    goto :goto_1

    :cond_4
    move v2, v1

    .line 331
    goto :goto_2

    .line 334
    :cond_5
    if-eqz p1, :cond_7

    const-string v2, "46003"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "46005"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    :goto_3
    if-eqz v0, :cond_8

    .line 335
    sget v0, Lcom/snowfish/cn/ganga/offline/a/g;->m:I

    goto :goto_1

    :cond_7
    move v0, v1

    .line 334
    goto :goto_3

    .line 337
    :cond_8
    sget v0, Lcom/snowfish/cn/ganga/offline/a/g;->n:I

    goto :goto_1
.end method

.method public static a()Lcom/snowfish/cn/ganga/offline/a/d;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/snowfish/cn/ganga/offline/a/d;->f:Lcom/snowfish/cn/ganga/offline/a/d;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/snowfish/cn/ganga/offline/a/d;

    invoke-direct {v0}, Lcom/snowfish/cn/ganga/offline/a/d;-><init>()V

    sput-object v0, Lcom/snowfish/cn/ganga/offline/a/d;->f:Lcom/snowfish/cn/ganga/offline/a/d;

    .line 36
    :cond_0
    sget-object v0, Lcom/snowfish/cn/ganga/offline/a/d;->f:Lcom/snowfish/cn/ganga/offline/a/d;

    return-object v0
.end method

.method private a([B)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 263
    :try_start_0
    new-instance v1, Lcom/snowfish/cn/ganga/offline/channel/c;

    invoke-direct {v1}, Lcom/snowfish/cn/ganga/offline/channel/c;-><init>()V

    iput-object v1, p0, Lcom/snowfish/cn/ganga/offline/a/d;->b:Lcom/snowfish/cn/ganga/offline/channel/c;

    .line 264
    const/4 v1, 0x7

    invoke-static {p1, v1}, Lcom/snowfish/cn/ganga/offline/a/a;->a([BI)[B

    move-result-object v1

    .line 265
    new-instance v2, Lcom/snowfish/cn/ganga/offline/a/b;

    invoke-direct {v2, v1}, Lcom/snowfish/cn/ganga/offline/a/b;-><init>([B)V

    .line 266
    invoke-virtual {v2}, Lcom/snowfish/cn/ganga/offline/a/b;->readI32()I

    move-result v1

    .line 267
    sget v3, Lcom/snowfish/cn/ganga/offline/a/g;->j:I

    if-eq v1, v3, :cond_0

    .line 276
    :goto_0
    return v0

    .line 270
    :cond_0
    iget-object v1, p0, Lcom/snowfish/cn/ganga/offline/a/d;->b:Lcom/snowfish/cn/ganga/offline/channel/c;

    invoke-virtual {v2}, Lcom/snowfish/cn/ganga/offline/a/b;->readI64()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/snowfish/cn/ganga/offline/channel/c;->a:J

    .line 271
    iget-object v1, p0, Lcom/snowfish/cn/ganga/offline/a/d;->b:Lcom/snowfish/cn/ganga/offline/channel/c;

    invoke-virtual {v2}, Lcom/snowfish/cn/ganga/offline/a/b;->readI8()I

    move-result v2

    iput v2, v1, Lcom/snowfish/cn/ganga/offline/channel/c;->b:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    const/4 v0, 0x1

    goto :goto_0

    .line 276
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private b([B)Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 281
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/snowfish/cn/ganga/offline/a/d;->a:Ljava/util/List;

    .line 282
    const/4 v1, 0x7

    invoke-static {p1, v1}, Lcom/snowfish/cn/ganga/offline/a/a;->a([BI)[B

    move-result-object v1

    .line 283
    new-instance v2, Lcom/snowfish/cn/ganga/offline/a/b;

    invoke-direct {v2, v1}, Lcom/snowfish/cn/ganga/offline/a/b;-><init>([B)V

    .line 284
    invoke-virtual {v2}, Lcom/snowfish/cn/ganga/offline/a/b;->readI32()I

    move-result v1

    .line 285
    sget v3, Lcom/snowfish/cn/ganga/offline/a/g;->j:I

    if-eq v1, v3, :cond_0

    .line 303
    :goto_0
    return v0

    .line 288
    :cond_0
    invoke-virtual {v2}, Lcom/snowfish/cn/ganga/offline/a/b;->readI16()I

    move-result v3

    move v1, v0

    .line 289
    :goto_1
    if-lt v1, v3, :cond_1

    .line 299
    const/4 v0, 0x1

    goto :goto_0

    .line 290
    :cond_1
    new-instance v4, Lcom/snowfish/cn/ganga/offline/channel/b;

    invoke-direct {v4}, Lcom/snowfish/cn/ganga/offline/channel/b;-><init>()V

    .line 291
    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Lcom/snowfish/cn/ganga/offline/a/b;->readUTF8AsStringWithLength(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/snowfish/cn/ganga/offline/channel/b;->a:Ljava/lang/String;

    .line 292
    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Lcom/snowfish/cn/ganga/offline/a/b;->readUTF8AsStringWithLength(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/snowfish/cn/ganga/offline/channel/b;->b:Ljava/lang/String;

    .line 293
    invoke-virtual {v2}, Lcom/snowfish/cn/ganga/offline/a/b;->readI64()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/snowfish/cn/ganga/offline/channel/b;->c:J

    .line 294
    invoke-virtual {v2}, Lcom/snowfish/cn/ganga/offline/a/b;->readU16()I

    move-result v5

    iput v5, v4, Lcom/snowfish/cn/ganga/offline/channel/b;->d:I

    .line 295
    invoke-virtual {v2}, Lcom/snowfish/cn/ganga/offline/a/b;->readU16()I

    move-result v5

    iput v5, v4, Lcom/snowfish/cn/ganga/offline/channel/b;->e:I

    .line 296
    invoke-virtual {v2}, Lcom/snowfish/cn/ganga/offline/a/b;->readI32()I

    move-result v5

    iput v5, v4, Lcom/snowfish/cn/ganga/offline/channel/b;->f:I

    .line 297
    iget-object v5, p0, Lcom/snowfish/cn/ganga/offline/a/d;->a:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 303
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private c()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 209
    iget-object v1, p0, Lcom/snowfish/cn/ganga/offline/a/d;->a:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 210
    const/4 v0, 0x1

    .line 226
    :cond_0
    :goto_0
    return v0

    .line 212
    :cond_1
    const/4 v1, 0x0

    .line 214
    :try_start_0
    const-class v2, Lcom/snowfish/cn/ganga/offline/a/g;

    new-instance v3, Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/String;

    sget-object v5, Lcom/snowfish/cn/ganga/offline/a/g;->a:[B

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/String;

    sget-object v5, Lcom/snowfish/cn/ganga/offline/a/g;->c:[B

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 215
    new-instance v2, Lcom/snowfish/cn/ganga/offline/a/c;

    invoke-direct {v2}, Lcom/snowfish/cn/ganga/offline/a/c;-><init>()V

    .line 216
    const/16 v3, 0x800

    new-array v3, v3, [B

    .line 218
    :goto_1
    const/4 v4, 0x0

    array-length v5, v3

    invoke-virtual {v1, v3, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 219
    if-ltz v4, :cond_2

    .line 220
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Lcom/snowfish/cn/ganga/offline/a/c;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 229
    if-eqz v1, :cond_0

    .line 230
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    .line 224
    :cond_2
    :try_start_2
    invoke-virtual {v2}, Lcom/snowfish/cn/ganga/offline/a/c;->toByteArray()[B

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/snowfish/cn/ganga/offline/a/d;->b([B)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    .line 229
    if-eqz v1, :cond_0

    .line 230
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0

    .line 227
    :catchall_0
    move-exception v0

    .line 229
    if-eqz v1, :cond_3

    .line 230
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    .line 232
    :cond_3
    :goto_2
    throw v0

    :catch_3
    move-exception v1

    goto :goto_2
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x5

    const/4 v2, 0x1

    .line 40
    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/a/d;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/a/d;->d:Ljava/lang/String;

    .line 59
    :goto_0
    return-object v0

    .line 45
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/snowfish/cn/ganga/offline/a/d;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 46
    iget-object v3, p0, Lcom/snowfish/cn/ganga/offline/a/d;->a:Ljava/util/List;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_5

    :cond_1
    move-object v0, v1

    .line 47
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 48
    iget-object v0, v0, Lcom/snowfish/cn/ganga/offline/channel/b;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/snowfish/cn/ganga/offline/a/d;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/a/d;->d:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 55
    invoke-static {p1}, Lcom/snowfish/cn/ganga/offline/channel/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snowfish/cn/ganga/offline/a/d;->d:Ljava/lang/String;

    .line 59
    :cond_4
    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/a/d;->d:Ljava/lang/String;

    goto :goto_0

    .line 46
    :cond_5
    :try_start_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_6

    new-instance v0, Lcom/snowfish/cn/ganga/offline/a/e;

    invoke-direct {v0, p0}, Lcom/snowfish/cn/ganga/offline/a/e;-><init>(Lcom/snowfish/cn/ganga/offline/a/d;)V

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_6
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_7

    const/4 v0, 0x0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snowfish/cn/ganga/offline/channel/b;

    invoke-virtual {v0}, Lcom/snowfish/cn/ganga/offline/channel/b;->a()Lcom/snowfish/cn/ganga/offline/channel/b;

    move-result-object v0

    goto :goto_1

    :cond_7
    sget v0, Lcom/snowfish/cn/ganga/offline/a/g;->n:I

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/snowfish/cn/ganga/offline/a/h;->b(Landroid/content/Context;I)I

    move-result v2

    if-ne v2, v4, :cond_9

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/snowfish/cn/ganga/offline/a/h;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snowfish/cn/ganga/offline/a/d;->a(Ljava/lang/String;)I

    move-result v0

    move v2, v0

    :goto_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_a

    move-object v0, v1

    :goto_4
    if-nez v0, :cond_2

    const/4 v0, 0x0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snowfish/cn/ganga/offline/channel/b;

    invoke-virtual {v0}, Lcom/snowfish/cn/ganga/offline/channel/b;->a()Lcom/snowfish/cn/ganga/offline/channel/b;

    move-result-object v0

    goto :goto_1

    :cond_9
    const/4 v2, 0x1

    invoke-static {p1, v2}, Lcom/snowfish/cn/ganga/offline/a/h;->b(Landroid/content/Context;I)I

    move-result v2

    if-ne v2, v4, :cond_b

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/snowfish/cn/ganga/offline/a/h;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snowfish/cn/ganga/offline/a/d;->a(Ljava/lang/String;)I

    move-result v0

    move v2, v0

    goto :goto_3

    :cond_a
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snowfish/cn/ganga/offline/channel/b;

    iget v5, v0, Lcom/snowfish/cn/ganga/offline/channel/b;->e:I

    and-int/2addr v5, v2

    if-eqz v5, :cond_8

    invoke-virtual {v0}, Lcom/snowfish/cn/ganga/offline/channel/b;->a()Lcom/snowfish/cn/ganga/offline/channel/b;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_b
    move v2, v0

    goto :goto_3
.end method

.method public final b(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 96
    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/a/d;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/a/d;->e:Ljava/lang/String;

    .line 120
    :goto_0
    return-object v0

    .line 100
    :cond_0
    invoke-virtual {p0, p1}, Lcom/snowfish/cn/ganga/offline/a/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 102
    invoke-virtual {p0}, Lcom/snowfish/cn/ganga/offline/a/d;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/a/d;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/a/d;->b:Lcom/snowfish/cn/ganga/offline/channel/c;

    iget-wide v2, v0, Lcom/snowfish/cn/ganga/offline/channel/c;->a:J

    new-instance v0, Ljava/lang/String;

    sget-object v4, Lcom/snowfish/cn/ganga/offline/a/g;->f:[B

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Lcom/snowfish/cn/ganga/offline/channel/c;->a(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    .line 105
    const-class v0, Lcom/snowfish/cn/ganga/offline/sf/SFChannelAdapterAHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snowfish/cn/ganga/offline/a/d;->e:Ljava/lang/String;

    .line 116
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/a/d;->e:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 117
    iput-object v1, p0, Lcom/snowfish/cn/ganga/offline/a/d;->e:Ljava/lang/String;

    .line 120
    :cond_2
    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/a/d;->e:Ljava/lang/String;

    goto :goto_0

    .line 107
    :cond_3
    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/a/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snowfish/cn/ganga/offline/channel/b;

    .line 108
    iget-object v3, p0, Lcom/snowfish/cn/ganga/offline/a/d;->b:Lcom/snowfish/cn/ganga/offline/channel/c;

    iget-wide v4, v3, Lcom/snowfish/cn/ganga/offline/channel/c;->a:J

    iget-wide v6, v0, Lcom/snowfish/cn/ganga/offline/channel/b;->c:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    .line 109
    iget-object v0, v0, Lcom/snowfish/cn/ganga/offline/channel/b;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/snowfish/cn/ganga/offline/a/d;->e:Ljava/lang/String;

    goto :goto_1
.end method

.method public final b()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 237
    const/4 v2, 0x0

    .line 238
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/snowfish/cn/ganga/offline/a/h;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/String;

    sget-object v5, Lcom/snowfish/cn/ganga/offline/a/g;->d:[B

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 257
    :cond_0
    :goto_0
    return v0

    .line 244
    :cond_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v2, v2

    new-array v2, v2, [B

    .line 246
    invoke-virtual {v1, v2}, Ljava/io/FileInputStream;->read([B)I

    .line 247
    invoke-direct {p0, v2}, Lcom/snowfish/cn/ganga/offline/a/d;->a([B)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    .line 252
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_0

    .line 253
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 254
    :catch_2
    move-exception v1

    goto :goto_0

    .line 250
    :catchall_0
    move-exception v0

    .line 252
    :goto_2
    if-eqz v2, :cond_2

    .line 253
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    .line 256
    :cond_2
    :goto_3
    throw v0

    :catch_3
    move-exception v1

    goto :goto_3

    .line 250
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_2

    :catch_4
    move-exception v2

    goto :goto_1
.end method

.method public final c(Landroid/content/Context;)Z
    .locals 6

    .prologue
    .line 125
    :try_start_0
    invoke-virtual {p0}, Lcom/snowfish/cn/ganga/offline/a/d;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/a/d;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/a/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 136
    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 126
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 127
    iget-object v1, p0, Lcom/snowfish/cn/ganga/offline/a/d;->b:Lcom/snowfish/cn/ganga/offline/channel/c;

    iget-wide v2, v1, Lcom/snowfish/cn/ganga/offline/channel/c;->a:J

    .line 128
    new-instance v1, Ljava/lang/String;

    sget-object v4, Lcom/snowfish/cn/ganga/offline/a/g;->f:[B

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Lcom/snowfish/cn/ganga/offline/channel/c;->a(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 127
    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 129
    const/4 v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method
