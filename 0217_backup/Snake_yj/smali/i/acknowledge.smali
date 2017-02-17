.class public final Li/acknowledge;
.super Ljava/util/AbstractMap;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/acknowledge$This;,
        Li/acknowledge$thing;,
        Li/acknowledge$of;,
        Li/acknowledge$darkness;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static synthetic $assertionsDisabled:Z

.field private static final cZ:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private da:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation
.end field

.field private db:Li/acknowledge$darkness;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/acknowledge$darkness",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final dc:Li/acknowledge$darkness;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/acknowledge$darkness",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private dd:Li/acknowledge$This;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/acknowledge",
            "<TK;TV;>.This;"
        }
    .end annotation
.end field

.field private de:Li/acknowledge$thing;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/acknowledge",
            "<TK;TV;>.thing;"
        }
    .end annotation
.end field

.field modCount:I

.field size:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Li/acknowledge;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Li/acknowledge;->$assertionsDisabled:Z

    .line 40
    new-instance v0, Li/mine;

    invoke-direct {v0}, Li/mine;-><init>()V

    sput-object v0, Li/acknowledge;->cZ:Ljava/util/Comparator;

    .line 44
    return-void

    .line 38
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    sget-object v0, Li/acknowledge;->cZ:Ljava/util/Comparator;

    invoke-direct {p0, v0}, Li/acknowledge;-><init>(Ljava/util/Comparator;)V

    .line 61
    return-void
.end method

.method private constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TK;>;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 48
    iput v0, p0, Li/acknowledge;->size:I

    .line 49
    iput v0, p0, Li/acknowledge;->modCount:I

    .line 52
    new-instance v0, Li/acknowledge$darkness;

    invoke-direct {v0}, Li/acknowledge$darkness;-><init>()V

    iput-object v0, p0, Li/acknowledge;->dc:Li/acknowledge$darkness;

    .line 72
    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Li/acknowledge;->da:Ljava/util/Comparator;

    .line 75
    return-void

    .line 74
    :cond_0
    sget-object p1, Li/acknowledge;->cZ:Ljava/util/Comparator;

    goto :goto_0
.end method

.method private Code(Ljava/lang/Object;Z)Li/acknowledge$darkness;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Li/acknowledge$darkness",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 122
    iget-object v5, p0, Li/acknowledge;->da:Ljava/util/Comparator;

    .line 123
    iget-object v2, p0, Li/acknowledge;->db:Li/acknowledge$darkness;

    .line 124
    const/4 v0, 0x0

    .line 126
    if-eqz v2, :cond_9

    .line 129
    sget-object v0, Li/acknowledge;->cZ:Ljava/util/Comparator;

    if-ne v5, v0, :cond_1

    move-object v0, p1

    .line 130
    check-cast v0, Ljava/lang/Comparable;

    .line 134
    :goto_0
    if-eqz v0, :cond_2

    .line 135
    iget-object v3, v2, Li/acknowledge$darkness;->key:Ljava/lang/Object;

    invoke-interface {v0, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    .line 139
    :goto_1
    if-nez v3, :cond_3

    move-object v1, v2

    .line 180
    :cond_0
    :goto_2
    return-object v1

    :cond_1
    move-object v0, v1

    .line 131
    goto :goto_0

    .line 136
    :cond_2
    iget-object v3, v2, Li/acknowledge$darkness;->key:Ljava/lang/Object;

    invoke-interface {v5, p1, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    goto :goto_1

    .line 144
    :cond_3
    if-gez v3, :cond_4

    iget-object v4, v2, Li/acknowledge$darkness;->dj:Li/acknowledge$darkness;

    .line 145
    :goto_3
    if-eqz v4, :cond_5

    move-object v2, v4

    .line 133
    goto :goto_0

    .line 144
    :cond_4
    iget-object v4, v2, Li/acknowledge$darkness;->dk:Li/acknowledge$darkness;

    goto :goto_3

    :cond_5
    move v6, v3

    move-object v3, v2

    move v2, v6

    .line 154
    :goto_4
    if-eqz p2, :cond_0

    .line 159
    iget-object v1, p0, Li/acknowledge;->dc:Li/acknowledge$darkness;

    .line 161
    if-nez v3, :cond_7

    .line 163
    sget-object v0, Li/acknowledge;->cZ:Ljava/util/Comparator;

    if-ne v5, v0, :cond_6

    instance-of v0, p1, Ljava/lang/Comparable;

    if-nez v0, :cond_6

    .line 164
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " is not Comparable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_6
    new-instance v0, Li/acknowledge$darkness;

    iget-object v2, v1, Li/acknowledge$darkness;->dl:Li/acknowledge$darkness;

    invoke-direct {v0, v3, p1, v1, v2}, Li/acknowledge$darkness;-><init>(Li/acknowledge$darkness;Ljava/lang/Object;Li/acknowledge$darkness;Li/acknowledge$darkness;)V

    .line 167
    iput-object v0, p0, Li/acknowledge;->db:Li/acknowledge$darkness;

    .line 177
    :goto_5
    iget v1, p0, Li/acknowledge;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Li/acknowledge;->size:I

    .line 178
    iget v1, p0, Li/acknowledge;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Li/acknowledge;->modCount:I

    move-object v1, v0

    .line 180
    goto :goto_2

    .line 169
    :cond_7
    new-instance v0, Li/acknowledge$darkness;

    iget-object v4, v1, Li/acknowledge$darkness;->dl:Li/acknowledge$darkness;

    invoke-direct {v0, v3, p1, v1, v4}, Li/acknowledge$darkness;-><init>(Li/acknowledge$darkness;Ljava/lang/Object;Li/acknowledge$darkness;Li/acknowledge$darkness;)V

    .line 170
    if-gez v2, :cond_8

    .line 171
    iput-object v0, v3, Li/acknowledge$darkness;->dj:Li/acknowledge$darkness;

    .line 175
    :goto_6
    const/4 v1, 0x1

    invoke-direct {p0, v3, v1}, Li/acknowledge;->V(Li/acknowledge$darkness;Z)V

    goto :goto_5

    .line 173
    :cond_8
    iput-object v0, v3, Li/acknowledge$darkness;->dk:Li/acknowledge$darkness;

    goto :goto_6

    :cond_9
    move-object v3, v2

    move v2, v0

    goto :goto_4
.end method

.method private Code(Li/acknowledge$darkness;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/acknowledge$darkness",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 374
    iget-object v0, p1, Li/acknowledge$darkness;->dj:Li/acknowledge$darkness;

    .line 375
    iget-object v3, p1, Li/acknowledge$darkness;->dk:Li/acknowledge$darkness;

    .line 376
    iget-object v4, v3, Li/acknowledge$darkness;->dj:Li/acknowledge$darkness;

    .line 377
    iget-object v5, v3, Li/acknowledge$darkness;->dk:Li/acknowledge$darkness;

    .line 380
    iput-object v4, p1, Li/acknowledge$darkness;->dk:Li/acknowledge$darkness;

    .line 381
    if-eqz v4, :cond_0

    .line 382
    iput-object p1, v4, Li/acknowledge$darkness;->di:Li/acknowledge$darkness;

    .line 385
    :cond_0
    invoke-direct {p0, p1, v3}, Li/acknowledge;->Code(Li/acknowledge$darkness;Li/acknowledge$darkness;)V

    .line 388
    iput-object p1, v3, Li/acknowledge$darkness;->dj:Li/acknowledge$darkness;

    .line 389
    iput-object v3, p1, Li/acknowledge$darkness;->di:Li/acknowledge$darkness;

    .line 392
    if-eqz v0, :cond_2

    iget v0, v0, Li/acknowledge$darkness;->height:I

    move v2, v0

    .line 393
    :goto_0
    if-eqz v4, :cond_3

    iget v0, v4, Li/acknowledge$darkness;->height:I

    .line 392
    :goto_1
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 393
    add-int/lit8 v0, v0, 0x1

    .line 392
    iput v0, p1, Li/acknowledge$darkness;->height:I

    .line 394
    iget v0, p1, Li/acknowledge$darkness;->height:I

    .line 395
    if-eqz v5, :cond_1

    iget v1, v5, Li/acknowledge$darkness;->height:I

    .line 394
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 395
    add-int/lit8 v0, v0, 0x1

    .line 394
    iput v0, v3, Li/acknowledge$darkness;->height:I

    .line 396
    return-void

    :cond_2
    move v2, v1

    .line 392
    goto :goto_0

    :cond_3
    move v0, v1

    .line 393
    goto :goto_1
.end method

.method private Code(Li/acknowledge$darkness;Li/acknowledge$darkness;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/acknowledge$darkness",
            "<TK;TV;>;",
            "Li/acknowledge$darkness",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 285
    iget-object v0, p1, Li/acknowledge$darkness;->di:Li/acknowledge$darkness;

    .line 286
    const/4 v1, 0x0

    iput-object v1, p1, Li/acknowledge$darkness;->di:Li/acknowledge$darkness;

    .line 287
    if-eqz p2, :cond_0

    .line 288
    iput-object v0, p2, Li/acknowledge$darkness;->di:Li/acknowledge$darkness;

    .line 291
    :cond_0
    if-eqz v0, :cond_3

    .line 292
    iget-object v1, v0, Li/acknowledge$darkness;->dj:Li/acknowledge$darkness;

    if-ne v1, p1, :cond_1

    .line 293
    iput-object p2, v0, Li/acknowledge$darkness;->dj:Li/acknowledge$darkness;

    .line 301
    :goto_0
    return-void

    .line 295
    :cond_1
    sget-boolean v1, Li/acknowledge;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    iget-object v1, v0, Li/acknowledge$darkness;->dk:Li/acknowledge$darkness;

    if-eq v1, p1, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 296
    :cond_2
    iput-object p2, v0, Li/acknowledge$darkness;->dk:Li/acknowledge$darkness;

    goto :goto_0

    .line 299
    :cond_3
    iput-object p2, p0, Li/acknowledge;->db:Li/acknowledge$darkness;

    goto :goto_0
.end method

.method private F(Ljava/lang/Object;)Li/acknowledge$darkness;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Li/acknowledge$darkness",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 186
    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, v1}, Li/acknowledge;->Code(Ljava/lang/Object;Z)Li/acknowledge$darkness;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 188
    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private V(Li/acknowledge$darkness;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/acknowledge$darkness",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 402
    iget-object v3, p1, Li/acknowledge$darkness;->dj:Li/acknowledge$darkness;

    .line 403
    iget-object v0, p1, Li/acknowledge$darkness;->dk:Li/acknowledge$darkness;

    .line 404
    iget-object v4, v3, Li/acknowledge$darkness;->dj:Li/acknowledge$darkness;

    .line 405
    iget-object v5, v3, Li/acknowledge$darkness;->dk:Li/acknowledge$darkness;

    .line 408
    iput-object v5, p1, Li/acknowledge$darkness;->dj:Li/acknowledge$darkness;

    .line 409
    if-eqz v5, :cond_0

    .line 410
    iput-object p1, v5, Li/acknowledge$darkness;->di:Li/acknowledge$darkness;

    .line 413
    :cond_0
    invoke-direct {p0, p1, v3}, Li/acknowledge;->Code(Li/acknowledge$darkness;Li/acknowledge$darkness;)V

    .line 416
    iput-object p1, v3, Li/acknowledge$darkness;->dk:Li/acknowledge$darkness;

    .line 417
    iput-object v3, p1, Li/acknowledge$darkness;->di:Li/acknowledge$darkness;

    .line 420
    if-eqz v0, :cond_2

    iget v0, v0, Li/acknowledge$darkness;->height:I

    move v2, v0

    .line 421
    :goto_0
    if-eqz v5, :cond_3

    iget v0, v5, Li/acknowledge$darkness;->height:I

    .line 420
    :goto_1
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 421
    add-int/lit8 v0, v0, 0x1

    .line 420
    iput v0, p1, Li/acknowledge$darkness;->height:I

    .line 422
    iget v0, p1, Li/acknowledge$darkness;->height:I

    .line 423
    if-eqz v4, :cond_1

    iget v1, v4, Li/acknowledge$darkness;->height:I

    .line 422
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 423
    add-int/lit8 v0, v0, 0x1

    .line 422
    iput v0, v3, Li/acknowledge$darkness;->height:I

    .line 424
    return-void

    :cond_2
    move v2, v1

    .line 420
    goto :goto_0

    :cond_3
    move v0, v1

    .line 421
    goto :goto_1
.end method

.method private V(Li/acknowledge$darkness;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/acknowledge$darkness",
            "<TK;TV;>;Z)V"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v1, 0x0

    .line 311
    .line 364
    :goto_0
    if-nez p1, :cond_1

    .line 368
    :cond_0
    :goto_1
    return-void

    .line 312
    :cond_1
    iget-object v3, p1, Li/acknowledge$darkness;->dj:Li/acknowledge$darkness;

    .line 313
    iget-object v4, p1, Li/acknowledge$darkness;->dk:Li/acknowledge$darkness;

    .line 314
    if-eqz v3, :cond_4

    iget v0, v3, Li/acknowledge$darkness;->height:I

    move v2, v0

    .line 315
    :goto_2
    if-eqz v4, :cond_5

    iget v0, v4, Li/acknowledge$darkness;->height:I

    .line 317
    :goto_3
    sub-int v5, v2, v0

    .line 318
    const/4 v6, -0x2

    if-ne v5, v6, :cond_a

    .line 319
    iget-object v3, v4, Li/acknowledge$darkness;->dj:Li/acknowledge$darkness;

    .line 320
    iget-object v0, v4, Li/acknowledge$darkness;->dk:Li/acknowledge$darkness;

    .line 321
    if-eqz v0, :cond_6

    iget v0, v0, Li/acknowledge$darkness;->height:I

    move v2, v0

    .line 322
    :goto_4
    if-eqz v3, :cond_7

    iget v0, v3, Li/acknowledge$darkness;->height:I

    .line 324
    :goto_5
    sub-int/2addr v0, v2

    .line 325
    if-eq v0, v7, :cond_2

    if-nez v0, :cond_8

    if-nez p2, :cond_8

    .line 326
    :cond_2
    invoke-direct {p0, p1}, Li/acknowledge;->Code(Li/acknowledge$darkness;)V

    .line 332
    :goto_6
    if-nez p2, :cond_0

    .line 364
    :cond_3
    :goto_7
    iget-object p1, p1, Li/acknowledge$darkness;->di:Li/acknowledge$darkness;

    goto :goto_0

    :cond_4
    move v2, v1

    .line 314
    goto :goto_2

    :cond_5
    move v0, v1

    .line 315
    goto :goto_3

    :cond_6
    move v2, v1

    .line 321
    goto :goto_4

    :cond_7
    move v0, v1

    .line 322
    goto :goto_5

    .line 328
    :cond_8
    sget-boolean v2, Li/acknowledge;->$assertionsDisabled:Z

    if-nez v2, :cond_9

    if-eq v0, v8, :cond_9

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 329
    :cond_9
    invoke-direct {p0, v4}, Li/acknowledge;->V(Li/acknowledge$darkness;)V

    .line 330
    invoke-direct {p0, p1}, Li/acknowledge;->Code(Li/acknowledge$darkness;)V

    goto :goto_6

    .line 336
    :cond_a
    const/4 v4, 0x2

    if-ne v5, v4, :cond_10

    .line 337
    iget-object v4, v3, Li/acknowledge$darkness;->dj:Li/acknowledge$darkness;

    .line 338
    iget-object v0, v3, Li/acknowledge$darkness;->dk:Li/acknowledge$darkness;

    .line 339
    if-eqz v0, :cond_c

    iget v0, v0, Li/acknowledge$darkness;->height:I

    move v2, v0

    .line 340
    :goto_8
    if-eqz v4, :cond_d

    iget v0, v4, Li/acknowledge$darkness;->height:I

    .line 342
    :goto_9
    sub-int/2addr v0, v2

    .line 343
    if-eq v0, v8, :cond_b

    if-nez v0, :cond_e

    if-nez p2, :cond_e

    .line 344
    :cond_b
    invoke-direct {p0, p1}, Li/acknowledge;->V(Li/acknowledge$darkness;)V

    .line 350
    :goto_a
    if-eqz p2, :cond_3

    goto :goto_1

    :cond_c
    move v2, v1

    .line 339
    goto :goto_8

    :cond_d
    move v0, v1

    .line 340
    goto :goto_9

    .line 346
    :cond_e
    sget-boolean v2, Li/acknowledge;->$assertionsDisabled:Z

    if-nez v2, :cond_f

    if-eq v0, v7, :cond_f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 347
    :cond_f
    invoke-direct {p0, v3}, Li/acknowledge;->Code(Li/acknowledge$darkness;)V

    .line 348
    invoke-direct {p0, p1}, Li/acknowledge;->V(Li/acknowledge$darkness;)V

    goto :goto_a

    .line 354
    :cond_10
    if-nez v5, :cond_11

    .line 355
    add-int/lit8 v0, v2, 0x1

    iput v0, p1, Li/acknowledge$darkness;->height:I

    .line 356
    if-eqz p2, :cond_3

    goto/16 :goto_1

    .line 361
    :cond_11
    sget-boolean v3, Li/acknowledge;->$assertionsDisabled:Z

    if-nez v3, :cond_12

    if-eq v5, v7, :cond_12

    if-eq v5, v8, :cond_12

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 362
    :cond_12
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Li/acknowledge$darkness;->height:I

    .line 363
    if-eqz p2, :cond_0

    goto :goto_7
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 625
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method final Code(Ljava/util/Map$Entry;)Li/acknowledge$darkness;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<**>;)",
            "Li/acknowledge$darkness",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 202
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Li/acknowledge;->F(Ljava/lang/Object;)Li/acknowledge$darkness;

    move-result-object v0

    .line 203
    if-eqz v0, :cond_2

    iget-object v3, v0, Li/acknowledge$darkness;->value:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eq v3, v4, :cond_1

    if-eqz v3, :cond_0

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move v3, v2

    :goto_0
    if-eqz v3, :cond_2

    .line 204
    :goto_1
    if-eqz v1, :cond_3

    :goto_2
    return-object v0

    :cond_1
    move v3, v1

    .line 203
    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    .line 204
    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method final Code(Li/acknowledge$darkness;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/acknowledge$darkness",
            "<TK;TV;>;Z)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 218
    if-eqz p2, :cond_0

    .line 219
    iget-object v0, p1, Li/acknowledge$darkness;->dl:Li/acknowledge$darkness;

    iget-object v1, p1, Li/acknowledge$darkness;->dg:Li/acknowledge$darkness;

    iput-object v1, v0, Li/acknowledge$darkness;->dg:Li/acknowledge$darkness;

    .line 220
    iget-object v0, p1, Li/acknowledge$darkness;->dg:Li/acknowledge$darkness;

    iget-object v1, p1, Li/acknowledge$darkness;->dl:Li/acknowledge$darkness;

    iput-object v1, v0, Li/acknowledge$darkness;->dl:Li/acknowledge$darkness;

    .line 223
    :cond_0
    iget-object v0, p1, Li/acknowledge$darkness;->dj:Li/acknowledge$darkness;

    .line 224
    iget-object v1, p1, Li/acknowledge$darkness;->dk:Li/acknowledge$darkness;

    .line 225
    iget-object v3, p1, Li/acknowledge$darkness;->di:Li/acknowledge$darkness;

    .line 226
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 237
    iget v3, v0, Li/acknowledge$darkness;->height:I

    iget v4, v1, Li/acknowledge$darkness;->height:I

    if-le v3, v4, :cond_2

    invoke-virtual {v0}, Li/acknowledge$darkness;->N()Li/acknowledge$darkness;

    move-result-object v0

    .line 238
    :goto_0
    invoke-virtual {p0, v0, v2}, Li/acknowledge;->Code(Li/acknowledge$darkness;Z)V

    .line 241
    iget-object v3, p1, Li/acknowledge$darkness;->dj:Li/acknowledge$darkness;

    .line 242
    if-eqz v3, :cond_6

    .line 243
    iget v1, v3, Li/acknowledge$darkness;->height:I

    .line 244
    iput-object v3, v0, Li/acknowledge$darkness;->dj:Li/acknowledge$darkness;

    .line 245
    iput-object v0, v3, Li/acknowledge$darkness;->di:Li/acknowledge$darkness;

    .line 246
    iput-object v5, p1, Li/acknowledge$darkness;->dj:Li/acknowledge$darkness;

    .line 250
    :goto_1
    iget-object v3, p1, Li/acknowledge$darkness;->dk:Li/acknowledge$darkness;

    .line 251
    if-eqz v3, :cond_1

    .line 252
    iget v2, v3, Li/acknowledge$darkness;->height:I

    .line 253
    iput-object v3, v0, Li/acknowledge$darkness;->dk:Li/acknowledge$darkness;

    .line 254
    iput-object v0, v3, Li/acknowledge$darkness;->di:Li/acknowledge$darkness;

    .line 255
    iput-object v5, p1, Li/acknowledge$darkness;->dk:Li/acknowledge$darkness;

    .line 258
    :cond_1
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Li/acknowledge$darkness;->height:I

    .line 259
    invoke-direct {p0, p1, v0}, Li/acknowledge;->Code(Li/acknowledge$darkness;Li/acknowledge$darkness;)V

    .line 274
    :goto_2
    return-void

    .line 237
    :cond_2
    invoke-virtual {v1}, Li/acknowledge$darkness;->M()Li/acknowledge$darkness;

    move-result-object v0

    goto :goto_0

    .line 261
    :cond_3
    if-eqz v0, :cond_4

    .line 262
    invoke-direct {p0, p1, v0}, Li/acknowledge;->Code(Li/acknowledge$darkness;Li/acknowledge$darkness;)V

    .line 263
    iput-object v5, p1, Li/acknowledge$darkness;->dj:Li/acknowledge$darkness;

    .line 271
    :goto_3
    invoke-direct {p0, v3, v2}, Li/acknowledge;->V(Li/acknowledge$darkness;Z)V

    .line 272
    iget v0, p0, Li/acknowledge;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Li/acknowledge;->size:I

    .line 273
    iget v0, p0, Li/acknowledge;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Li/acknowledge;->modCount:I

    goto :goto_2

    .line 264
    :cond_4
    if-eqz v1, :cond_5

    .line 265
    invoke-direct {p0, p1, v1}, Li/acknowledge;->Code(Li/acknowledge$darkness;Li/acknowledge$darkness;)V

    .line 266
    iput-object v5, p1, Li/acknowledge$darkness;->dk:Li/acknowledge$darkness;

    goto :goto_3

    .line 268
    :cond_5
    invoke-direct {p0, p1, v5}, Li/acknowledge;->Code(Li/acknowledge$darkness;Li/acknowledge$darkness;)V

    goto :goto_3

    :cond_6
    move v1, v2

    goto :goto_1
.end method

.method final D(Ljava/lang/Object;)Li/acknowledge$darkness;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Li/acknowledge$darkness",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 277
    invoke-direct {p0, p1}, Li/acknowledge;->F(Ljava/lang/Object;)Li/acknowledge$darkness;

    move-result-object v0

    .line 278
    if-eqz v0, :cond_0

    .line 279
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Li/acknowledge;->Code(Li/acknowledge$darkness;Z)V

    .line 281
    :cond_0
    return-object v0
.end method

.method public final clear()V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Li/acknowledge;->db:Li/acknowledge$darkness;

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Li/acknowledge;->size:I

    .line 103
    iget v0, p0, Li/acknowledge;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Li/acknowledge;->modCount:I

    .line 106
    iget-object v0, p0, Li/acknowledge;->dc:Li/acknowledge$darkness;

    .line 107
    iput-object v0, v0, Li/acknowledge$darkness;->dl:Li/acknowledge$darkness;

    iput-object v0, v0, Li/acknowledge$darkness;->dg:Li/acknowledge$darkness;

    .line 108
    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0, p1}, Li/acknowledge;->F(Ljava/lang/Object;)Li/acknowledge$darkness;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 430
    iget-object v0, p0, Li/acknowledge;->dd:Li/acknowledge$This;

    .line 431
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Li/acknowledge$This;

    invoke-direct {v0, p0}, Li/acknowledge$This;-><init>(Li/acknowledge;)V

    iput-object v0, p0, Li/acknowledge;->dd:Li/acknowledge$This;

    goto :goto_0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 82
    invoke-direct {p0, p1}, Li/acknowledge;->F(Ljava/lang/Object;)Li/acknowledge$darkness;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_0

    iget-object v0, v0, Li/acknowledge$darkness;->value:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 435
    iget-object v0, p0, Li/acknowledge;->de:Li/acknowledge$thing;

    .line 436
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Li/acknowledge$thing;

    invoke-direct {v0, p0}, Li/acknowledge$thing;-><init>(Li/acknowledge;)V

    iput-object v0, p0, Li/acknowledge;->de:Li/acknowledge$thing;

    goto :goto_0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 91
    if-nez p1, :cond_0

    .line 92
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Li/acknowledge;->Code(Ljava/lang/Object;Z)Li/acknowledge$darkness;

    move-result-object v0

    .line 95
    iget-object v1, v0, Li/acknowledge$darkness;->value:Ljava/lang/Object;

    .line 96
    iput-object p2, v0, Li/acknowledge$darkness;->value:Ljava/lang/Object;

    .line 97
    return-object v1
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 111
    invoke-virtual {p0, p1}, Li/acknowledge;->D(Ljava/lang/Object;)Li/acknowledge$darkness;

    move-result-object v0

    .line 112
    if-eqz v0, :cond_0

    iget-object v0, v0, Li/acknowledge$darkness;->value:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Li/acknowledge;->size:I

    return v0
.end method
