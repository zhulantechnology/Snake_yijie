.class public Le/be;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bl:I

.field private bm:I

.field private final bn:I

.field private final bo:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 48
    const/16 v0, 0x9c4

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1, v2}, Le/be;-><init>(IIF)V

    .line 49
    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/16 v0, 0x9c4

    iput v0, p0, Le/be;->bl:I

    .line 59
    const/4 v0, 0x1

    iput v0, p0, Le/be;->bn:I

    .line 60
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Le/be;->bo:F

    .line 61
    return-void
.end method


# virtual methods
.method public B(Le/there;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/there;
        }
    .end annotation

    .prologue
    .line 85
    iget v0, p0, Le/be;->bm:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Le/be;->bm:I

    .line 86
    iget v0, p0, Le/be;->bl:I

    int-to-float v0, v0

    iget v1, p0, Le/be;->bl:I

    int-to-float v1, v1

    iget v2, p0, Le/be;->bo:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Le/be;->bl:I

    .line 87
    invoke-virtual {p0}, Le/be;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    throw p1

    .line 90
    :cond_0
    return-void
.end method

.method public g()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Le/be;->bl:I

    return v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Le/be;->bm:I

    return v0
.end method

.method protected i()Z
    .locals 2

    .prologue
    .line 96
    iget v0, p0, Le/be;->bm:I

    iget v1, p0, Le/be;->bn:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
