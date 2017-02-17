.class public Lcn/bmob/v3/BmobQuery;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/bmob/v3/BmobQuery$CachePolicy;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static synthetic n:[I

.field private static params:Lorg/json/JSONObject;

.field private static rApi$6fc396a8:La/thing;

.field private static requestCommand:Lcn/bmob/v3/requestmanager/thing;


# instance fields
.field private e:Lorg/json/JSONObject;

.field private f:Lorg/json/JSONObject;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/Integer;

.field private i:Ljava/lang/Integer;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Lcn/bmob/v3/BmobQuery$CachePolicy;

.field private m:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcn/bmob/v3/BmobQuery;->e:Lorg/json/JSONObject;

    .line 42
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcn/bmob/v3/BmobQuery;->f:Lorg/json/JSONObject;

    .line 55
    sget-object v0, Lcn/bmob/v3/BmobQuery$CachePolicy;->IGNORE_CACHE:Lcn/bmob/v3/BmobQuery$CachePolicy;

    iput-object v0, p0, Lcn/bmob/v3/BmobQuery;->l:Lcn/bmob/v3/BmobQuery$CachePolicy;

    .line 56
    const-wide/32 v0, 0x112a880

    iput-wide v0, p0, Lcn/bmob/v3/BmobQuery;->m:J

    .line 58
    return-void
.end method

.method private Code(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 415
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 416
    instance-of v0, p3, Lcn/bmob/v3/BmobUser;

    if-eqz v0, :cond_0

    .line 417
    check-cast p3, Lcn/bmob/v3/BmobUser;

    .line 418
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 419
    const-string v1, "__type"

    const-string v2, "Pointer"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 420
    const-string v1, "objectId"

    invoke-virtual {p3}, Lcn/bmob/v3/BmobUser;->getObjectId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 421
    const-string v1, "className"

    const-string v2, "_User"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 422
    iget-object v1, p0, Lcn/bmob/v3/BmobQuery;->e:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 466
    :goto_0
    return-void

    .line 423
    :cond_0
    instance-of v0, p3, Lcn/bmob/v3/BmobObject;

    if-eqz v0, :cond_1

    .line 424
    check-cast p3, Lcn/bmob/v3/BmobObject;

    .line 425
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 426
    const-string v1, "__type"

    const-string v2, "Pointer"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 427
    const-string v1, "objectId"

    invoke-virtual {p3}, Lcn/bmob/v3/BmobObject;->getObjectId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 428
    const-string v1, "className"

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 429
    iget-object v1, p0, Lcn/bmob/v3/BmobQuery;->e:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 463
    :catch_0
    move-exception v0

    .line 464
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 431
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcn/bmob/v3/BmobQuery;->e:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 434
    :cond_2
    instance-of v0, p3, Lcn/bmob/v3/datatype/BmobGeoPoint;

    if-eqz v0, :cond_4

    .line 441
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {p3}, Ld/thing;->I(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object p3, v0

    .line 459
    :cond_3
    :goto_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 460
    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 461
    iget-object v1, p0, Lcn/bmob/v3/BmobQuery;->e:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 442
    :cond_4
    instance-of v0, p3, Lcn/bmob/v3/BmobUser;

    if-eqz v0, :cond_5

    .line 443
    check-cast p3, Lcn/bmob/v3/BmobUser;

    .line 444
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 445
    const-string v1, "__type"

    const-string v2, "Pointer"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 446
    const-string v1, "objectId"

    invoke-virtual {p3}, Lcn/bmob/v3/BmobUser;->getObjectId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 447
    const-string v1, "className"

    const-string v2, "_User"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object p3, v0

    .line 449
    goto :goto_1

    :cond_5
    instance-of v0, p3, Lcn/bmob/v3/BmobObject;

    if-eqz v0, :cond_6

    .line 450
    check-cast p3, Lcn/bmob/v3/BmobObject;

    .line 451
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 452
    const-string v1, "__type"

    const-string v2, "Pointer"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 453
    const-string v1, "objectId"

    invoke-virtual {p3}, Lcn/bmob/v3/BmobObject;->getObjectId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 454
    const-string v1, "className"

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object p3, v0

    .line 456
    goto :goto_1

    :cond_6
    instance-of v0, p3, Lcn/bmob/v3/datatype/BmobDate;

    if-eqz v0, :cond_3

    .line 457
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {p3}, Ld/thing;->I(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-object p3, v0

    goto :goto_1
.end method

.method private static synthetic Code()[I
    .locals 3

    .prologue
    .line 36
    sget-object v0, Lcn/bmob/v3/BmobQuery;->n:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcn/bmob/v3/BmobQuery$CachePolicy;->values()[Lcn/bmob/v3/BmobQuery$CachePolicy;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcn/bmob/v3/BmobQuery$CachePolicy;->CACHE_ELSE_NETWORK:Lcn/bmob/v3/BmobQuery$CachePolicy;

    invoke-virtual {v1}, Lcn/bmob/v3/BmobQuery$CachePolicy;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lcn/bmob/v3/BmobQuery$CachePolicy;->CACHE_ONLY:Lcn/bmob/v3/BmobQuery$CachePolicy;

    invoke-virtual {v1}, Lcn/bmob/v3/BmobQuery$CachePolicy;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lcn/bmob/v3/BmobQuery$CachePolicy;->CACHE_THEN_NETWORK:Lcn/bmob/v3/BmobQuery$CachePolicy;

    invoke-virtual {v1}, Lcn/bmob/v3/BmobQuery$CachePolicy;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lcn/bmob/v3/BmobQuery$CachePolicy;->IGNORE_CACHE:Lcn/bmob/v3/BmobQuery$CachePolicy;

    invoke-virtual {v1}, Lcn/bmob/v3/BmobQuery$CachePolicy;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lcn/bmob/v3/BmobQuery$CachePolicy;->NETWORK_ONLY:Lcn/bmob/v3/BmobQuery$CachePolicy;

    invoke-virtual {v1}, Lcn/bmob/v3/BmobQuery$CachePolicy;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lcn/bmob/v3/BmobQuery;->n:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method public static clearAllCachedResults(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 724
    invoke-static {p0}, Ld/This;->F(Landroid/content/Context;)V

    .line 725
    return-void
.end method


# virtual methods
.method public addQueryKeys(Ljava/lang/String;)Lcn/bmob/v3/BmobQuery;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcn/bmob/v3/BmobQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 355
    iput-object p1, p0, Lcn/bmob/v3/BmobQuery;->g:Ljava/lang/String;

    .line 356
    return-object p0
.end method

.method public addWhereContainedIn(Ljava/lang/String;Ljava/util/Collection;)Lcn/bmob/v3/BmobQuery;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcn/bmob/v3/BmobQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 138
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 139
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 143
    const-string v1, "$in"

    invoke-direct {p0, p1, v1, v0}, Lcn/bmob/v3/BmobQuery;->Code(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 144
    return-object p0

    .line 140
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 141
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0
.end method

.method public addWhereContains(Ljava/lang/String;Ljava/lang/String;)Lcn/bmob/v3/BmobQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcn/bmob/v3/BmobQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 181
    invoke-static {p2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    invoke-virtual {p0, p1, v0}, Lcn/bmob/v3/BmobQuery;->addWhereMatches(Ljava/lang/String;Ljava/lang/String;)Lcn/bmob/v3/BmobQuery;

    .line 183
    return-object p0
.end method

.method public addWhereDoesNotMatchQuery(Ljava/lang/String;Ljava/lang/String;Lcn/bmob/v3/BmobQuery;)Lcn/bmob/v3/BmobQuery;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/bmob/v3/BmobQuery",
            "<TE;>;)",
            "Lcn/bmob/v3/BmobQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 338
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 339
    const-string v1, "where"

    iget-object v2, p3, Lcn/bmob/v3/BmobQuery;->e:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 340
    const-string v1, "className"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 342
    const-string v1, "$notInQuery"

    invoke-direct {p0, p1, v1, v0}, Lcn/bmob/v3/BmobQuery;->Code(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    :goto_0
    return-object p0

    .line 343
    :catch_0
    move-exception v0

    .line 344
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public addWhereEndsWith(Ljava/lang/String;Ljava/lang/String;)Lcn/bmob/v3/BmobQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcn/bmob/v3/BmobQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 206
    invoke-virtual {p0, p1, v0}, Lcn/bmob/v3/BmobQuery;->addWhereMatches(Ljava/lang/String;Ljava/lang/String;)Lcn/bmob/v3/BmobQuery;

    .line 207
    return-object p0
.end method

.method public addWhereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcn/bmob/v3/BmobQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcn/bmob/v3/BmobQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcn/bmob/v3/BmobQuery;->Code(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 116
    return-object p0
.end method

.method public addWhereExists(Ljava/lang/String;Ljava/lang/Object;)Lcn/bmob/v3/BmobQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcn/bmob/v3/BmobQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 301
    const-string v0, "$exists"

    invoke-direct {p0, p1, v0, p2}, Lcn/bmob/v3/BmobQuery;->Code(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 302
    return-object p0
.end method

.method public addWhereGreaterThan(Ljava/lang/String;Ljava/lang/Object;)Lcn/bmob/v3/BmobQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcn/bmob/v3/BmobQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 93
    const-string v0, "$gt"

    invoke-direct {p0, p1, v0, p2}, Lcn/bmob/v3/BmobQuery;->Code(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 94
    return-object p0
.end method

.method public addWhereGreaterThanOrEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcn/bmob/v3/BmobQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcn/bmob/v3/BmobQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 104
    const-string v0, "$gte"

    invoke-direct {p0, p1, v0, p2}, Lcn/bmob/v3/BmobQuery;->Code(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 105
    return-object p0
.end method

.method public addWhereLessThan(Ljava/lang/String;Ljava/lang/Object;)Lcn/bmob/v3/BmobQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcn/bmob/v3/BmobQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 71
    const-string v0, "$lt"

    invoke-direct {p0, p1, v0, p2}, Lcn/bmob/v3/BmobQuery;->Code(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 72
    return-object p0
.end method

.method public addWhereLessThanOrEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcn/bmob/v3/BmobQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcn/bmob/v3/BmobQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 82
    const-string v0, "$lte"

    invoke-direct {p0, p1, v0, p2}, Lcn/bmob/v3/BmobQuery;->Code(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    return-object p0
.end method

.method public addWhereMatches(Ljava/lang/String;Ljava/lang/String;)Lcn/bmob/v3/BmobQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcn/bmob/v3/BmobQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 170
    const-string v0, "$regex"

    invoke-direct {p0, p1, v0, p2}, Lcn/bmob/v3/BmobQuery;->Code(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 171
    return-object p0
.end method

.method public addWhereMatchesQuery(Ljava/lang/String;Ljava/lang/String;Lcn/bmob/v3/BmobQuery;)Lcn/bmob/v3/BmobQuery;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/bmob/v3/BmobQuery",
            "<TE;>;)",
            "Lcn/bmob/v3/BmobQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 325
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 326
    const-string v1, "where"

    iget-object v2, p3, Lcn/bmob/v3/BmobQuery;->e:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 327
    const-string v1, "className"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 329
    const-string v1, "$inQuery"

    invoke-direct {p0, p1, v1, v0}, Lcn/bmob/v3/BmobQuery;->Code(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    :goto_0
    return-object p0

    .line 330
    :catch_0
    move-exception v0

    .line 331
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public addWhereNear(Ljava/lang/String;Lcn/bmob/v3/datatype/BmobGeoPoint;)Lcn/bmob/v3/BmobQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/bmob/v3/datatype/BmobGeoPoint;",
            ")",
            "Lcn/bmob/v3/BmobQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 218
    const-string v0, "$nearSphere"

    invoke-direct {p0, p1, v0, p2}, Lcn/bmob/v3/BmobQuery;->Code(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 219
    return-object p0
.end method

.method public addWhereNotContainedIn(Ljava/lang/String;Ljava/util/Collection;)Lcn/bmob/v3/BmobQuery;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcn/bmob/v3/BmobQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 154
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 155
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 159
    const-string v1, "$nin"

    invoke-direct {p0, p1, v1, v0}, Lcn/bmob/v3/BmobQuery;->Code(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 160
    return-object p0

    .line 156
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 157
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0
.end method

.method public addWhereNotEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcn/bmob/v3/BmobQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcn/bmob/v3/BmobQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 126
    const-string v0, "$ne"

    invoke-direct {p0, p1, v0, p2}, Lcn/bmob/v3/BmobQuery;->Code(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 127
    return-object p0
.end method

.method public addWhereRelatedTo(Ljava/lang/String;Lcn/bmob/v3/datatype/BmobPointer;)Lcn/bmob/v3/BmobQuery;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/bmob/v3/datatype/BmobPointer;",
            ")",
            "Lcn/bmob/v3/BmobQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 311
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 313
    :try_start_0
    const-string v0, "key"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 314
    const-string v0, "object"

    new-instance v2, Lorg/json/JSONObject;

    invoke-static {p2}, Ld/thing;->I(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    :goto_0
    const-string v0, "$relatedTo"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Lcn/bmob/v3/BmobQuery;->Code(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 320
    return-object p0

    .line 315
    :catch_0
    move-exception v0

    .line 316
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public addWhereStartsWith(Ljava/lang/String;Ljava/lang/String;)Lcn/bmob/v3/BmobQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcn/bmob/v3/BmobQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "^"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 194
    invoke-virtual {p0, p1, v0}, Lcn/bmob/v3/BmobQuery;->addWhereMatches(Ljava/lang/String;Ljava/lang/String;)Lcn/bmob/v3/BmobQuery;

    .line 195
    return-object p0
.end method

.method public addWhereWithinGeoBox(Ljava/lang/String;Lcn/bmob/v3/datatype/BmobGeoPoint;Lcn/bmob/v3/datatype/BmobGeoPoint;)Lcn/bmob/v3/BmobQuery;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/bmob/v3/datatype/BmobGeoPoint;",
            "Lcn/bmob/v3/datatype/BmobGeoPoint;",
            ")",
            "Lcn/bmob/v3/BmobQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 279
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 280
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 282
    :try_start_0
    invoke-virtual {p2}, Lcn/bmob/v3/datatype/BmobGeoPoint;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    .line 283
    invoke-virtual {p2}, Lcn/bmob/v3/datatype/BmobGeoPoint;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    .line 285
    invoke-virtual {p3}, Lcn/bmob/v3/datatype/BmobGeoPoint;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    .line 286
    invoke-virtual {p3}, Lcn/bmob/v3/datatype/BmobGeoPoint;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 292
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 295
    const-string v2, "$box"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    const-string v0, "$within"

    invoke-direct {p0, p1, v0, v1}, Lcn/bmob/v3/BmobQuery;->Code(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 297
    return-object p0

    .line 287
    :catch_0
    move-exception v0

    .line 288
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public addWhereWithinKilometers(Ljava/lang/String;Lcn/bmob/v3/datatype/BmobGeoPoint;D)Lcn/bmob/v3/BmobQuery;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/bmob/v3/datatype/BmobGeoPoint;",
            "D)",
            "Lcn/bmob/v3/BmobQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 247
    .line 248
    sget-wide v0, Lcn/bmob/v3/datatype/BmobGeoPoint;->EARTH_MEAN_RADIUS_KM:D

    div-double v0, p3, v0

    .line 247
    invoke-virtual {p0, p1, p2, v0, v1}, Lcn/bmob/v3/BmobQuery;->addWhereWithinRadians(Ljava/lang/String;Lcn/bmob/v3/datatype/BmobGeoPoint;D)Lcn/bmob/v3/BmobQuery;

    .line 251
    return-object p0
.end method

.method public addWhereWithinMiles(Ljava/lang/String;Lcn/bmob/v3/datatype/BmobGeoPoint;D)Lcn/bmob/v3/BmobQuery;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/bmob/v3/datatype/BmobGeoPoint;",
            "D)",
            "Lcn/bmob/v3/BmobQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 231
    .line 232
    sget-wide v0, Lcn/bmob/v3/datatype/BmobGeoPoint;->EARTH_MEAN_RADIUS_MILE:D

    div-double v0, p3, v0

    .line 231
    invoke-virtual {p0, p1, p2, v0, v1}, Lcn/bmob/v3/BmobQuery;->addWhereWithinRadians(Ljava/lang/String;Lcn/bmob/v3/datatype/BmobGeoPoint;D)Lcn/bmob/v3/BmobQuery;

    .line 235
    return-object p0
.end method

.method public addWhereWithinRadians(Ljava/lang/String;Lcn/bmob/v3/datatype/BmobGeoPoint;D)Lcn/bmob/v3/BmobQuery;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/bmob/v3/datatype/BmobGeoPoint;",
            "D)",
            "Lcn/bmob/v3/BmobQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 263
    const-string v0, "$maxDistance"

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 264
    sget-wide v4, Lcn/bmob/v3/datatype/BmobGeoPoint;->EARTH_MEAN_RADIUS_KM:D

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 263
    invoke-direct {p0, p1, v0, v1}, Lcn/bmob/v3/BmobQuery;->Code(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 265
    const-string v0, "$nearSphere"

    invoke-direct {p0, p1, v0, p2}, Lcn/bmob/v3/BmobQuery;->Code(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 267
    return-object p0
.end method

.method public clearCachedResult(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 717
    sget-object v0, Lcn/bmob/v3/BmobQuery;->params:Lorg/json/JSONObject;

    invoke-static {p1, v0}, Ld/This;->Code(Landroid/content/Context;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ld/This;->V(Landroid/content/Context;Ljava/lang/String;)V

    .line 718
    return-void
.end method

.method public count(Landroid/content/Context;Ljava/lang/Class;Lcn/bmob/v3/listener/CountListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcn/bmob/v3/listener/CountListener;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 631
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcn/bmob/v3/BmobQuery;->params:Lorg/json/JSONObject;

    .line 632
    const-class v0, Lcn/bmob/v3/BmobUser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 633
    const-class v0, Lcn/bmob/v3/BmobUser;

    invoke-virtual {p2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 634
    :cond_0
    sget-object v0, Lcn/bmob/v3/BmobQuery;->params:Lorg/json/JSONObject;

    const-string v1, "c"

    const-string v3, "_User"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 639
    :goto_0
    iget-object v0, p0, Lcn/bmob/v3/BmobQuery;->e:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 641
    iget-object v0, p0, Lcn/bmob/v3/BmobQuery;->f:Lorg/json/JSONObject;

    const-string v1, "where"

    iget-object v3, p0, Lcn/bmob/v3/BmobQuery;->e:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 643
    :cond_1
    iget-object v0, p0, Lcn/bmob/v3/BmobQuery;->f:Lorg/json/JSONObject;

    const-string v1, "limit"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 644
    iget-object v0, p0, Lcn/bmob/v3/BmobQuery;->f:Lorg/json/JSONObject;

    const-string v1, "count"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 646
    sget-object v0, Lcn/bmob/v3/BmobQuery;->params:Lorg/json/JSONObject;

    const-string v1, "data"

    iget-object v3, p0, Lcn/bmob/v3/BmobQuery;->f:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 651
    :goto_1
    sget-object v0, Lcn/bmob/v3/BmobQuery;->params:Lorg/json/JSONObject;

    invoke-static {p1}, Lcn/bmob/v3/requestmanager/thing;->V(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v4

    .line 652
    new-instance v0, La/thing;

    const-string v3, "http://open.bmob.cn/7/find"

    sget-object v5, Lcn/bmob/v3/BmobQuery;->params:Lorg/json/JSONObject;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, La/thing;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/util/Map;Lorg/json/JSONObject;)V

    sput-object v0, Lcn/bmob/v3/BmobQuery;->rApi$6fc396a8:La/thing;

    .line 654
    invoke-static {p1}, Lcn/bmob/v3/requestmanager/thing;->Code(Landroid/content/Context;)Lcn/bmob/v3/requestmanager/thing;

    move-result-object v0

    sget-object v1, Lcn/bmob/v3/BmobQuery;->rApi$6fc396a8:La/thing;

    invoke-virtual {v0, v1}, Lcn/bmob/v3/requestmanager/thing;->Code(La/thing;)Lcn/bmob/v3/requestmanager/thing;

    move-result-object v0

    .line 656
    sput-object v0, Lcn/bmob/v3/BmobQuery;->requestCommand:Lcn/bmob/v3/requestmanager/thing;

    new-instance v1, Lcn/bmob/v3/BmobQuery$1;

    invoke-direct {v1, p0, p3}, Lcn/bmob/v3/BmobQuery$1;-><init>(Lcn/bmob/v3/BmobQuery;Lcn/bmob/v3/listener/CountListener;)V

    invoke-virtual {v0, v1}, Lcn/bmob/v3/requestmanager/thing;->Code(Lcn/bmob/v3/listener/XListener;)V

    .line 670
    return-void

    .line 636
    :cond_2
    :try_start_1
    sget-object v0, Lcn/bmob/v3/BmobQuery;->params:Lorg/json/JSONObject;

    const-string v1, "c"

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 647
    :catch_0
    move-exception v0

    .line 648
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public findObjects(Landroid/content/Context;Lcn/bmob/v3/listener/FindListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcn/bmob/v3/listener/FindListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 554
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v0, v0, v7

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v0, v0, v7

    move-object v6, v0

    check-cast v6, Ljava/lang/Class;

    .line 557
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcn/bmob/v3/BmobQuery;->params:Lorg/json/JSONObject;

    .line 558
    const-class v0, Lcn/bmob/v3/BmobUser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 559
    const-class v0, Lcn/bmob/v3/BmobUser;

    invoke-virtual {v6}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 560
    :cond_0
    sget-object v0, Lcn/bmob/v3/BmobQuery;->params:Lorg/json/JSONObject;

    const-string v1, "c"

    const-string v3, "_User"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 567
    :goto_0
    iget-object v0, p0, Lcn/bmob/v3/BmobQuery;->e:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 569
    iget-object v0, p0, Lcn/bmob/v3/BmobQuery;->f:Lorg/json/JSONObject;

    const-string v1, "where"

    iget-object v3, p0, Lcn/bmob/v3/BmobQuery;->e:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 571
    :cond_1
    iget-object v0, p0, Lcn/bmob/v3/BmobQuery;->f:Lorg/json/JSONObject;

    const-string v1, "keys"

    iget-object v3, p0, Lcn/bmob/v3/BmobQuery;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 572
    iget-object v0, p0, Lcn/bmob/v3/BmobQuery;->f:Lorg/json/JSONObject;

    const-string v1, "skip"

    iget-object v3, p0, Lcn/bmob/v3/BmobQuery;->i:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 573
    iget-object v0, p0, Lcn/bmob/v3/BmobQuery;->f:Lorg/json/JSONObject;

    const-string v1, "limit"

    iget-object v3, p0, Lcn/bmob/v3/BmobQuery;->h:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 574
    iget-object v0, p0, Lcn/bmob/v3/BmobQuery;->f:Lorg/json/JSONObject;

    const-string v1, "order"

    iget-object v3, p0, Lcn/bmob/v3/BmobQuery;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 575
    iget-object v0, p0, Lcn/bmob/v3/BmobQuery;->f:Lorg/json/JSONObject;

    const-string v1, "include"

    iget-object v3, p0, Lcn/bmob/v3/BmobQuery;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 578
    sget-object v0, Lcn/bmob/v3/BmobQuery;->params:Lorg/json/JSONObject;

    const-string v1, "data"

    iget-object v3, p0, Lcn/bmob/v3/BmobQuery;->f:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 583
    :goto_1
    sget-object v0, Lcn/bmob/v3/BmobQuery;->params:Lorg/json/JSONObject;

    invoke-static {p1}, Lcn/bmob/v3/requestmanager/thing;->V(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v4

    .line 584
    new-instance v0, La/thing;

    const-string v3, "http://open.bmob.cn/7/find"

    sget-object v5, Lcn/bmob/v3/BmobQuery;->params:Lorg/json/JSONObject;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, La/thing;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/util/Map;Lorg/json/JSONObject;)V

    sput-object v0, Lcn/bmob/v3/BmobQuery;->rApi$6fc396a8:La/thing;

    .line 586
    invoke-static {p1}, Lcn/bmob/v3/requestmanager/thing;->Code(Landroid/content/Context;)Lcn/bmob/v3/requestmanager/thing;

    move-result-object v0

    sget-object v1, Lcn/bmob/v3/BmobQuery;->rApi$6fc396a8:La/thing;

    invoke-virtual {v0, v1}, Lcn/bmob/v3/requestmanager/thing;->Code(La/thing;)Lcn/bmob/v3/requestmanager/thing;

    move-result-object v0

    sput-object v0, Lcn/bmob/v3/BmobQuery;->requestCommand:Lcn/bmob/v3/requestmanager/thing;

    .line 590
    iget-object v0, p0, Lcn/bmob/v3/BmobQuery;->l:Lcn/bmob/v3/BmobQuery$CachePolicy;

    invoke-static {}, Lcn/bmob/v3/BmobQuery;->Code()[I

    move-result-object v1

    invoke-virtual {v0}, Lcn/bmob/v3/BmobQuery$CachePolicy;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 592
    :cond_2
    :goto_2
    return-void

    .line 561
    :cond_3
    :try_start_1
    const-class v0, Lcn/bmob/v3/BmobInstallation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 562
    sget-object v0, Lcn/bmob/v3/BmobQuery;->params:Lorg/json/JSONObject;

    const-string v1, "c"

    const-string v3, "_Installation"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 579
    :catch_0
    move-exception v0

    .line 580
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 564
    :cond_4
    :try_start_2
    sget-object v0, Lcn/bmob/v3/BmobQuery;->params:Lorg/json/JSONObject;

    const-string v1, "c"

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 590
    :pswitch_0
    sget-object v0, Lcn/bmob/v3/BmobQuery;->requestCommand:Lcn/bmob/v3/requestmanager/thing;

    iget-wide v4, p0, Lcn/bmob/v3/BmobQuery;->m:J

    invoke-virtual {v0, v6, p2, v4, v5}, Lcn/bmob/v3/requestmanager/thing;->Code(Ljava/lang/reflect/Type;Lcn/bmob/v3/listener/FindListener;J)Z

    move-result v0

    if-nez v0, :cond_2

    :goto_3
    :pswitch_1
    sget-object v0, Lcn/bmob/v3/BmobQuery;->requestCommand:Lcn/bmob/v3/requestmanager/thing;

    invoke-virtual {v0, v6, p2, v2}, Lcn/bmob/v3/requestmanager/thing;->Code(Ljava/lang/reflect/Type;Lcn/bmob/v3/listener/FindListener;Z)V

    goto :goto_2

    :pswitch_2
    sget-object v0, Lcn/bmob/v3/BmobQuery;->requestCommand:Lcn/bmob/v3/requestmanager/thing;

    iget-wide v2, p0, Lcn/bmob/v3/BmobQuery;->m:J

    invoke-virtual {v0, v6, p2, v2, v3}, Lcn/bmob/v3/requestmanager/thing;->Code(Ljava/lang/reflect/Type;Lcn/bmob/v3/listener/FindListener;J)Z

    goto :goto_2

    :pswitch_3
    sget-object v0, Lcn/bmob/v3/BmobQuery;->requestCommand:Lcn/bmob/v3/requestmanager/thing;

    iget-wide v4, p0, Lcn/bmob/v3/BmobQuery;->m:J

    invoke-virtual {v0, v6, p2, v4, v5}, Lcn/bmob/v3/requestmanager/thing;->Code(Ljava/lang/reflect/Type;Lcn/bmob/v3/listener/FindListener;J)Z

    goto :goto_3

    :pswitch_4
    sget-object v0, Lcn/bmob/v3/BmobQuery;->requestCommand:Lcn/bmob/v3/requestmanager/thing;

    invoke-virtual {v0, v6, p2, v7}, Lcn/bmob/v3/requestmanager/thing;->Code(Ljava/lang/reflect/Type;Lcn/bmob/v3/listener/FindListener;Z)V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public getCachePolicy()Lcn/bmob/v3/BmobQuery$CachePolicy;
    .locals 1

    .prologue
    .line 685
    iget-object v0, p0, Lcn/bmob/v3/BmobQuery;->l:Lcn/bmob/v3/BmobQuery$CachePolicy;

    return-object v0
.end method

.method public getLimit()I
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcn/bmob/v3/BmobQuery;->h:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getMaxCacheAge()J
    .locals 2

    .prologue
    .line 701
    iget-wide v0, p0, Lcn/bmob/v3/BmobQuery;->m:J

    return-wide v0
.end method

.method public getObject(Landroid/content/Context;Ljava/lang/String;Lcn/bmob/v3/listener/GetListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcn/bmob/v3/listener/GetListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 597
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 598
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 599
    const-string v0, "objectId is null."

    invoke-interface {p3, v0}, Lcn/bmob/v3/listener/GetListener;->onFailure(Ljava/lang/String;)V

    .line 600
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 627
    :cond_0
    :goto_0
    return-void

    .line 605
    :cond_1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v0, v0, v7

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v0, v0, v7

    move-object v6, v0

    check-cast v6, Ljava/lang/Class;

    .line 607
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcn/bmob/v3/BmobQuery;->params:Lorg/json/JSONObject;

    .line 608
    const-class v0, Lcn/bmob/v3/BmobUser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 609
    const-class v0, Lcn/bmob/v3/BmobUser;

    invoke-virtual {v6}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 610
    :cond_2
    sget-object v0, Lcn/bmob/v3/BmobQuery;->params:Lorg/json/JSONObject;

    const-string v1, "c"

    const-string v3, "_User"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 614
    :goto_1
    sget-object v0, Lcn/bmob/v3/BmobQuery;->params:Lorg/json/JSONObject;

    const-string v1, "objectId"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 619
    :goto_2
    sget-object v0, Lcn/bmob/v3/BmobQuery;->params:Lorg/json/JSONObject;

    invoke-static {p1}, Lcn/bmob/v3/requestmanager/thing;->V(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v4

    .line 620
    new-instance v0, La/thing;

    const-string v3, "http://open.bmob.cn/7/find"

    sget-object v5, Lcn/bmob/v3/BmobQuery;->params:Lorg/json/JSONObject;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, La/thing;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/util/Map;Lorg/json/JSONObject;)V

    sput-object v0, Lcn/bmob/v3/BmobQuery;->rApi$6fc396a8:La/thing;

    .line 622
    invoke-static {p1}, Lcn/bmob/v3/requestmanager/thing;->Code(Landroid/content/Context;)Lcn/bmob/v3/requestmanager/thing;

    move-result-object v0

    sget-object v1, Lcn/bmob/v3/BmobQuery;->rApi$6fc396a8:La/thing;

    invoke-virtual {v0, v1}, Lcn/bmob/v3/requestmanager/thing;->Code(La/thing;)Lcn/bmob/v3/requestmanager/thing;

    move-result-object v0

    sput-object v0, Lcn/bmob/v3/BmobQuery;->requestCommand:Lcn/bmob/v3/requestmanager/thing;

    .line 626
    iget-object v0, p0, Lcn/bmob/v3/BmobQuery;->l:Lcn/bmob/v3/BmobQuery$CachePolicy;

    invoke-static {}, Lcn/bmob/v3/BmobQuery;->Code()[I

    move-result-object v1

    invoke-virtual {v0}, Lcn/bmob/v3/BmobQuery$CachePolicy;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object v0, Lcn/bmob/v3/BmobQuery;->requestCommand:Lcn/bmob/v3/requestmanager/thing;

    invoke-virtual {v0, v6, p3, v7}, Lcn/bmob/v3/requestmanager/thing;->Code(Ljava/lang/reflect/Type;Lcn/bmob/v3/listener/GetListener;Z)V

    goto :goto_0

    .line 612
    :cond_3
    :try_start_1
    sget-object v0, Lcn/bmob/v3/BmobQuery;->params:Lorg/json/JSONObject;

    const-string v1, "c"

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 615
    :catch_0
    move-exception v0

    .line 616
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 626
    :pswitch_1
    sget-object v0, Lcn/bmob/v3/BmobQuery;->requestCommand:Lcn/bmob/v3/requestmanager/thing;

    iget-wide v4, p0, Lcn/bmob/v3/BmobQuery;->m:J

    invoke-virtual {v0, v6, p3, v4, v5}, Lcn/bmob/v3/requestmanager/thing;->Code(Ljava/lang/reflect/Type;Lcn/bmob/v3/listener/GetListener;J)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_3
    :pswitch_2
    sget-object v0, Lcn/bmob/v3/BmobQuery;->requestCommand:Lcn/bmob/v3/requestmanager/thing;

    invoke-virtual {v0, v6, p3, v2}, Lcn/bmob/v3/requestmanager/thing;->Code(Ljava/lang/reflect/Type;Lcn/bmob/v3/listener/GetListener;Z)V

    goto/16 :goto_0

    :pswitch_3
    sget-object v0, Lcn/bmob/v3/BmobQuery;->requestCommand:Lcn/bmob/v3/requestmanager/thing;

    iget-wide v2, p0, Lcn/bmob/v3/BmobQuery;->m:J

    invoke-virtual {v0, v6, p3, v2, v3}, Lcn/bmob/v3/requestmanager/thing;->Code(Ljava/lang/reflect/Type;Lcn/bmob/v3/listener/GetListener;J)Z

    goto/16 :goto_0

    :pswitch_4
    sget-object v0, Lcn/bmob/v3/BmobQuery;->requestCommand:Lcn/bmob/v3/requestmanager/thing;

    iget-wide v4, p0, Lcn/bmob/v3/BmobQuery;->m:J

    invoke-virtual {v0, v6, p3, v4, v5}, Lcn/bmob/v3/requestmanager/thing;->Code(Ljava/lang/reflect/Type;Lcn/bmob/v3/listener/GetListener;J)Z

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public getSkip()I
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcn/bmob/v3/BmobQuery;->i:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method protected getWhere()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcn/bmob/v3/BmobQuery;->e:Lorg/json/JSONObject;

    return-object v0
.end method

.method public hasCachedResult(Landroid/content/Context;)Z
    .locals 4

    .prologue
    .line 709
    sget-object v0, Lcn/bmob/v3/BmobQuery;->params:Lorg/json/JSONObject;

    invoke-static {p1, v0}, Ld/This;->Code(Landroid/content/Context;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iget-wide v2, p0, Lcn/bmob/v3/BmobQuery;->m:J

    invoke-static {p1, v0, v2, v3}, Ld/This;->V(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 710
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public include(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 403
    iput-object p1, p0, Lcn/bmob/v3/BmobQuery;->k:Ljava/lang/String;

    .line 404
    return-void
.end method

.method public or(Ljava/util/List;)Lcn/bmob/v3/BmobQuery;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/bmob/v3/BmobQuery",
            "<TT;>;>;)",
            "Lcn/bmob/v3/BmobQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 543
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 544
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 547
    const-string v0, "$or"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Lcn/bmob/v3/BmobQuery;->Code(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 548
    return-object p0

    .line 544
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/bmob/v3/BmobQuery;

    .line 545
    iget-object v0, v0, Lcn/bmob/v3/BmobQuery;->e:Lorg/json/JSONObject;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0
.end method

.method public order(Ljava/lang/String;)Lcn/bmob/v3/BmobQuery;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcn/bmob/v3/BmobQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 394
    iput-object p1, p0, Lcn/bmob/v3/BmobQuery;->j:Ljava/lang/String;

    .line 395
    return-object p0
.end method

.method public setCachePolicy(Lcn/bmob/v3/BmobQuery$CachePolicy;)V
    .locals 0

    .prologue
    .line 678
    iput-object p1, p0, Lcn/bmob/v3/BmobQuery;->l:Lcn/bmob/v3/BmobQuery$CachePolicy;

    .line 679
    return-void
.end method

.method public setLimit(I)V
    .locals 1

    .prologue
    .line 364
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/bmob/v3/BmobQuery;->h:Ljava/lang/Integer;

    .line 365
    return-void
.end method

.method public setMaxCacheAge(J)V
    .locals 1

    .prologue
    .line 693
    iput-wide p1, p0, Lcn/bmob/v3/BmobQuery;->m:J

    .line 694
    return-void
.end method

.method public setSkip(I)V
    .locals 1

    .prologue
    .line 378
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/bmob/v3/BmobQuery;->i:Ljava/lang/Integer;

    .line 379
    return-void
.end method
