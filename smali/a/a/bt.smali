.class public final La/a/bt;
.super Ljava/lang/Object;


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7fffffff

    sput v0, La/a/bt;->a:I

    return-void
.end method

.method public static a(La/a/bq;B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/ba;
        }
    .end annotation

    sget v0, La/a/bt;->a:I

    invoke-static {p0, p1, v0}, La/a/bt;->a(La/a/bq;BI)V

    return-void
.end method

.method private static a(La/a/bq;BI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/ba;
        }
    .end annotation

    const/4 v0, 0x0

    if-gtz p2, :cond_0

    new-instance v0, La/a/ba;

    const-string v1, "Maximum skip depth exceeded"

    invoke-direct {v0, v1}, La/a/ba;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    packed-switch p1, :pswitch_data_0

    :cond_1
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p0}, La/a/bq;->j()Z

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, La/a/bq;->k()B

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, La/a/bq;->l()S

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, La/a/bq;->m()I

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, La/a/bq;->n()J

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0}, La/a/bq;->o()D

    goto :goto_0

    :pswitch_7
    invoke-virtual {p0}, La/a/bq;->q()Ljava/nio/ByteBuffer;

    goto :goto_0

    :pswitch_8
    invoke-virtual {p0}, La/a/bq;->d()La/a/bv;

    :goto_1
    invoke-virtual {p0}, La/a/bq;->f()La/a/bn;

    move-result-object v0

    iget-byte v1, v0, La/a/bn;->b:B

    if-eqz v1, :cond_2

    iget-byte v0, v0, La/a/bn;->b:B

    add-int/lit8 v1, p2, -0x1

    invoke-static {p0, v0, v1}, La/a/bt;->a(La/a/bq;BI)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, La/a/bq;->e()V

    goto :goto_0

    :pswitch_9
    invoke-virtual {p0}, La/a/bq;->g()La/a/bp;

    move-result-object v1

    :goto_2
    iget v2, v1, La/a/bp;->c:I

    if-ge v0, v2, :cond_1

    iget-byte v2, v1, La/a/bp;->a:B

    add-int/lit8 v3, p2, -0x1

    invoke-static {p0, v2, v3}, La/a/bt;->a(La/a/bq;BI)V

    iget-byte v2, v1, La/a/bp;->b:B

    add-int/lit8 v3, p2, -0x1

    invoke-static {p0, v2, v3}, La/a/bt;->a(La/a/bq;BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :pswitch_a
    invoke-virtual {p0}, La/a/bq;->i()La/a/bu;

    move-result-object v1

    :goto_3
    iget v2, v1, La/a/bu;->b:I

    if-ge v0, v2, :cond_1

    iget-byte v2, v1, La/a/bu;->a:B

    add-int/lit8 v3, p2, -0x1

    invoke-static {p0, v2, v3}, La/a/bt;->a(La/a/bq;BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :pswitch_b
    invoke-virtual {p0}, La/a/bq;->h()La/a/bo;

    move-result-object v1

    :goto_4
    iget v2, v1, La/a/bo;->b:I

    if-ge v0, v2, :cond_1

    iget-byte v2, v1, La/a/bo;->a:B

    add-int/lit8 v3, p2, -0x1

    invoke-static {p0, v2, v3}, La/a/bt;->a(La/a/bq;BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
