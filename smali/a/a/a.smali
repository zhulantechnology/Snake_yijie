.class public abstract La/a/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Ljava/lang/String;

.field private d:Ljava/util/List;

.field private e:La/a/y;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    iput v0, p0, La/a/a;->a:I

    const/16 v0, 0x14

    iput v0, p0, La/a/a;->b:I

    iput-object p1, p0, La/a/a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(La/a/z;)V
    .locals 4

    invoke-virtual {p1}, La/a/z;->a()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, La/a/a;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/y;

    iput-object v0, p0, La/a/a;->e:La/a/y;

    invoke-virtual {p1}, La/a/z;->c()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, La/a/a;->d:Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, La/a/a;->d:Ljava/util/List;

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/w;

    iget-object v2, p0, La/a/a;->c:Ljava/lang/String;

    iget-object v3, v0, La/a/w;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, La/a/a;->d:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final a()Z
    .locals 8

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, La/a/a;->e:La/a/y;

    if-nez v2, :cond_5

    move-object v5, v3

    :goto_0
    if-nez v2, :cond_6

    move v0, v1

    :goto_1
    invoke-virtual {p0}, La/a/a;->g()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7

    :cond_0
    :goto_2
    if-eqz v3, :cond_4

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    if-nez v2, :cond_1

    new-instance v2, La/a/y;

    invoke-direct {v2}, La/a/y;-><init>()V

    :cond_1
    invoke-virtual {v2, v3}, La/a/y;->a(Ljava/lang/String;)La/a/y;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, La/a/y;->a(J)La/a/y;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, La/a/y;->a(I)La/a/y;

    new-instance v0, La/a/w;

    invoke-direct {v0}, La/a/w;-><init>()V

    iget-object v4, p0, La/a/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v4}, La/a/w;->a(Ljava/lang/String;)La/a/w;

    invoke-virtual {v0, v3}, La/a/w;->c(Ljava/lang/String;)La/a/w;

    invoke-virtual {v0, v5}, La/a/w;->b(Ljava/lang/String;)La/a/w;

    invoke-virtual {v2}, La/a/y;->c()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, La/a/w;->a(J)La/a/w;

    iget-object v3, p0, La/a/a;->d:Ljava/util/List;

    if-nez v3, :cond_2

    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, La/a/a;->d:Ljava/util/List;

    :cond_2
    iget-object v3, p0, La/a/a;->d:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, La/a/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v3, 0xa

    if-le v0, v3, :cond_3

    iget-object v0, p0, La/a/a;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_3
    iput-object v2, p0, La/a/a;->e:La/a/y;

    const/4 v1, 0x1

    :cond_4
    return v1

    :cond_5
    invoke-virtual {v2}, La/a/y;->a()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_0

    :cond_6
    invoke-virtual {v2}, La/a/y;->f()I

    move-result v0

    goto :goto_1

    :cond_7
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "0"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "unknown"

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    move-object v3, v4

    goto/16 :goto_2
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/a/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Z
    .locals 2

    iget-object v0, p0, La/a/a;->e:La/a/y;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/a;->e:La/a/y;

    invoke-virtual {v0}, La/a/y;->f()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final d()La/a/y;
    .locals 1

    iget-object v0, p0, La/a/a;->e:La/a/y;

    return-object v0
.end method

.method public final e()Ljava/util/List;
    .locals 1

    iget-object v0, p0, La/a/a;->d:Ljava/util/List;

    return-object v0
.end method

.method public final f()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, La/a/a;->d:Ljava/util/List;

    return-void
.end method

.method public abstract g()Ljava/lang/String;
.end method
