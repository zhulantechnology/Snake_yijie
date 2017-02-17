.class public final Lg/V;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final bX:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lg/That;",
            ">;"
        }
    .end annotation
.end field

.field private ch:Li/of;

.field private ci:Lg/ii;

.field private cj:Lg/The;

.field private final ck:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lg/i",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final cl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lg/That;",
            ">;"
        }
    .end annotation
.end field

.field private cm:I

.field private cn:I

.field private co:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    sget-object v0, Li/of;->cO:Li/of;

    iput-object v0, p0, Lg/V;->ch:Li/of;

    .line 70
    sget-object v0, Lg/ii;->cs:Lg/ii;

    iput-object v0, p0, Lg/V;->ci:Lg/ii;

    .line 71
    sget-object v0, Lg/of;->bQ:Lg/of;

    iput-object v0, p0, Lg/V;->cj:Lg/The;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lg/V;->ck:Ljava/util/Map;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/V;->bX:Ljava/util/List;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/V;->cl:Ljava/util/List;

    .line 79
    iput v1, p0, Lg/V;->cm:I

    .line 80
    iput v1, p0, Lg/V;->cn:I

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/V;->co:Z

    .line 94
    return-void
.end method


# virtual methods
.method public final Code(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lg/V;
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 448
    instance-of v0, p2, Lg/Hamlet;

    if-nez v0, :cond_4

    .line 449
    instance-of v0, p2, Lg/be;

    if-nez v0, :cond_4

    .line 450
    instance-of v0, p2, Lg/i;

    if-nez v0, :cond_4

    .line 451
    instance-of v0, p2, Lg/name;

    if-nez v0, :cond_4

    move v0, v1

    .line 448
    :goto_0
    invoke-static {v0}, Le/this;->Code(Z)V

    .line 452
    instance-of v0, p2, Lg/i;

    if-eqz v0, :cond_0

    .line 453
    iget-object v3, p0, Lg/V;->ck:Ljava/util/Map;

    move-object v0, p2

    check-cast v0, Lg/i;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    :cond_0
    instance-of v0, p2, Lg/Hamlet;

    if-nez v0, :cond_1

    instance-of v0, p2, Lg/be;

    if-eqz v0, :cond_2

    .line 456
    :cond_1
    invoke-static {p1}, Lk/This;->S(Ljava/lang/reflect/Type;)Lk/This;

    move-result-object v0

    .line 457
    iget-object v3, p0, Lg/V;->bX:Ljava/util/List;

    invoke-virtual {v0}, Lk/This;->ae()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-virtual {v0}, Lk/This;->getRawType()Ljava/lang/Class;

    move-result-object v5

    if-ne v4, v5, :cond_5

    :goto_1
    new-instance v1, Lg/a$This;

    const/4 v4, 0x0

    invoke-direct {v1, p2, v0, v2, v4}, Lg/a$This;-><init>(Ljava/lang/Object;Lk/This;ZLjava/lang/Class;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 459
    :cond_2
    instance-of v0, p2, Lg/name;

    if-eqz v0, :cond_3

    .line 460
    iget-object v0, p0, Lg/V;->bX:Ljava/util/List;

    invoke-static {p1}, Lk/This;->S(Ljava/lang/reflect/Type;)Lk/This;

    move-result-object v1

    check-cast p2, Lg/name;

    invoke-static {v1, p2}, Lj/is;->Code(Lk/This;Lg/name;)Lg/That;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 462
    :cond_3
    return-object p0

    :cond_4
    move v0, v2

    .line 451
    goto :goto_0

    :cond_5
    move v2, v1

    .line 457
    goto :goto_1
.end method

.method public final m()Lg/Tempest;
    .locals 12

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x0

    .line 539
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 540
    iget-object v0, p0, Lg/V;->bX:Ljava/util/List;

    invoke-interface {v11, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 541
    invoke-static {v11}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 542
    iget-object v0, p0, Lg/V;->cl:Ljava/util/List;

    invoke-interface {v11, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 543
    const/4 v1, 0x0

    iget v2, p0, Lg/V;->cm:I

    iget v3, p0, Lg/V;->cn:I

    if-eqz v1, :cond_1

    const-string v0, ""

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lg/This;

    invoke-direct {v0, v1}, Lg/This;-><init>(Ljava/lang/String;)V

    :goto_0
    const-class v1, Ljava/util/Date;

    invoke-static {v1}, Lk/This;->B(Ljava/lang/Class;)Lk/This;

    move-result-object v1

    invoke-static {v1, v0}, Lg/a;->Code(Lk/This;Ljava/lang/Object;)Lg/That;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v1, Ljava/sql/Timestamp;

    invoke-static {v1}, Lk/This;->B(Ljava/lang/Class;)Lk/This;

    move-result-object v1

    invoke-static {v1, v0}, Lg/a;->Code(Lk/This;Ljava/lang/Object;)Lg/That;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v1, Ljava/sql/Date;

    invoke-static {v1}, Lk/This;->B(Ljava/lang/Class;)Lk/This;

    move-result-object v1

    invoke-static {v1, v0}, Lg/a;->Code(Lk/This;Ljava/lang/Object;)Lg/That;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 545
    :cond_0
    new-instance v0, Lg/Tempest;

    iget-object v1, p0, Lg/V;->ch:Li/of;

    iget-object v2, p0, Lg/V;->cj:Lg/The;

    iget-object v3, p0, Lg/V;->ck:Ljava/util/Map;

    .line 547
    iget-boolean v7, p0, Lg/V;->co:Z

    .line 548
    iget-object v10, p0, Lg/V;->ci:Lg/ii;

    move v5, v4

    move v6, v4

    move v8, v4

    move v9, v4

    .line 545
    invoke-direct/range {v0 .. v11}, Lg/Tempest;-><init>(Li/of;Lg/The;Ljava/util/Map;ZZZZZZLg/ii;Ljava/util/List;)V

    return-object v0

    .line 543
    :cond_1
    if-eq v2, v6, :cond_0

    if-eq v3, v6, :cond_0

    new-instance v0, Lg/This;

    invoke-direct {v0, v2, v3}, Lg/This;-><init>(II)V

    goto :goto_0
.end method
