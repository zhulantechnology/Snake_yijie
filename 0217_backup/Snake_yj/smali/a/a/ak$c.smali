.class final La/a/ak$c;
.super La/a/ca;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/ak;
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

    invoke-direct {p0}, La/a/ak$c;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(La/a/bq;La/a/ax;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/ba;
        }
    .end annotation

    check-cast p2, La/a/ak;

    check-cast p1, La/a/bw;

    iget v0, p2, La/a/ak;->a:I

    invoke-virtual {p1, v0}, La/a/bw;->a(I)V

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    invoke-virtual {p2}, La/a/ak;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_0
    invoke-virtual {p2}, La/a/ak;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_1
    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, La/a/bw;->a(Ljava/util/BitSet;I)V

    invoke-virtual {p2}, La/a/ak;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p2, La/a/ak;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, La/a/bw;->a(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p2}, La/a/ak;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p2, La/a/ak;->c:La/a/aa;

    invoke-virtual {v0, p1}, La/a/aa;->b(La/a/bq;)V

    :cond_3
    return-void
.end method

.method public final synthetic b(La/a/bq;La/a/ax;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/ba;
        }
    .end annotation

    check-cast p2, La/a/ak;

    check-cast p1, La/a/bw;

    invoke-virtual {p1}, La/a/bw;->m()I

    move-result v0

    iput v0, p2, La/a/ak;->a:I

    invoke-virtual {p2}, La/a/ak;->b()V

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, La/a/bw;->b(I)Ljava/util/BitSet;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, La/a/bw;->p()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, La/a/ak;->b:Ljava/lang/String;

    invoke-static {}, La/a/ak;->e()V

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, La/a/aa;

    invoke-direct {v0}, La/a/aa;-><init>()V

    iput-object v0, p2, La/a/ak;->c:La/a/aa;

    iget-object v0, p2, La/a/ak;->c:La/a/aa;

    invoke-virtual {v0, p1}, La/a/aa;->a(La/a/bq;)V

    invoke-static {}, La/a/ak;->h()V

    :cond_1
    return-void
.end method
