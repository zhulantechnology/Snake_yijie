.class final La/a/v$c;
.super La/a/ca;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, La/a/ca;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, La/a/v$c;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(La/a/bq;La/a/ax;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/ba;
        }
    .end annotation

    check-cast p2, La/a/v;

    check-cast p1, La/a/bw;

    iget-object v0, p2, La/a/v;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, La/a/bw;->a(Ljava/lang/String;)V

    iget-object v0, p2, La/a/v;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, La/a/bw;->a(I)V

    iget-object v0, p2, La/a/v;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, La/a/bw;->a(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/ah;

    invoke-virtual {v0, p1}, La/a/ah;->b(La/a/bq;)V

    goto :goto_0

    :cond_0
    iget-wide v0, p2, La/a/v;->e:J

    invoke-virtual {p1, v0, v1}, La/a/bw;->a(J)V

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    invoke-virtual {p2}, La/a/v;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_1
    invoke-virtual {p2}, La/a/v;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_2
    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, La/a/bw;->a(Ljava/util/BitSet;I)V

    invoke-virtual {p2}, La/a/v;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-wide v0, p2, La/a/v;->c:J

    invoke-virtual {p1, v0, v1}, La/a/bw;->a(J)V

    :cond_3
    invoke-virtual {p2}, La/a/v;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p2, La/a/v;->d:I

    invoke-virtual {p1, v0}, La/a/bw;->a(I)V

    :cond_4
    return-void
.end method

.method public final synthetic b(La/a/bq;La/a/ax;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/ba;
        }
    .end annotation

    const/4 v1, 0x0

    check-cast p2, La/a/v;

    check-cast p1, La/a/bw;

    invoke-virtual {p1}, La/a/bw;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, La/a/v;->a:Ljava/lang/String;

    invoke-static {}, La/a/v;->a()V

    new-instance v2, La/a/bp;

    const/16 v0, 0xb

    const/16 v3, 0xc

    invoke-virtual {p1}, La/a/bw;->m()I

    move-result v4

    invoke-direct {v2, v0, v3, v4}, La/a/bp;-><init>(BBI)V

    new-instance v0, Ljava/util/HashMap;

    iget v3, v2, La/a/bp;->c:I

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p2, La/a/v;->b:Ljava/util/Map;

    move v0, v1

    :goto_0
    iget v3, v2, La/a/bp;->c:I

    if-ge v0, v3, :cond_0

    invoke-virtual {p1}, La/a/bw;->p()Ljava/lang/String;

    move-result-object v3

    new-instance v4, La/a/ah;

    invoke-direct {v4}, La/a/ah;-><init>()V

    invoke-virtual {v4, p1}, La/a/ah;->a(La/a/bq;)V

    iget-object v5, p2, La/a/v;->b:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, La/a/v;->b()V

    invoke-virtual {p1}, La/a/bw;->n()J

    move-result-wide v2

    iput-wide v2, p2, La/a/v;->e:J

    invoke-virtual {p2}, La/a/v;->h()V

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, La/a/bw;->b(I)Ljava/util/BitSet;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, La/a/bw;->n()J

    move-result-wide v2

    iput-wide v2, p2, La/a/v;->c:J

    invoke-virtual {p2}, La/a/v;->d()V

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, La/a/bw;->m()I

    move-result v0

    iput v0, p2, La/a/v;->d:I

    invoke-virtual {p2}, La/a/v;->f()V

    :cond_2
    return-void
.end method
