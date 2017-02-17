.class final Lf/darkness$thing;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/darkness;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "thing"
.end annotation


# instance fields
.field private bG:I


# direct methods
.method synthetic constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 436
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lf/darkness$thing;-><init>(Ljava/io/InputStream;B)V

    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;B)V
    .locals 1

    .prologue
    .line 437
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 434
    const/4 v0, 0x0

    iput v0, p0, Lf/darkness$thing;->bG:I

    .line 438
    return-void
.end method

.method static synthetic Code(Lf/darkness$thing;)I
    .locals 1

    .prologue
    .line 434
    iget v0, p0, Lf/darkness$thing;->bG:I

    return v0
.end method


# virtual methods
.method public final read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 442
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    .line 443
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 444
    iget v1, p0, Lf/darkness$thing;->bG:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lf/darkness$thing;->bG:I

    .line 446
    :cond_0
    return v0
.end method

.method public final read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 451
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    .line 452
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 453
    iget v1, p0, Lf/darkness$thing;->bG:I

    add-int/2addr v1, v0

    iput v1, p0, Lf/darkness$thing;->bG:I

    .line 455
    :cond_0
    return v0
.end method
