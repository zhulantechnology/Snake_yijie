.class final Li/acknowledge$This;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/acknowledge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "This"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private synthetic df:Li/acknowledge;


# direct methods
.method constructor <init>(Li/acknowledge;)V
    .locals 0

    .prologue
    .line 557
    iput-object p1, p0, Li/acknowledge$This;->df:Li/acknowledge;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Li/acknowledge$This;->df:Li/acknowledge;

    invoke-virtual {v0}, Li/acknowledge;->clear()V

    .line 589
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 571
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/acknowledge$This;->df:Li/acknowledge;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {v0, p1}, Li/acknowledge;->Code(Ljava/util/Map$Entry;)Li/acknowledge$darkness;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 563
    new-instance v0, Li/acknowledge$This$1;

    iget-object v1, p0, Li/acknowledge$This;->df:Li/acknowledge;

    invoke-direct {v0, p0, v1}, Li/acknowledge$This$1;-><init>(Li/acknowledge$This;Li/acknowledge;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 575
    instance-of v2, p1, Ljava/util/Map$Entry;

    if-nez v2, :cond_1

    .line 584
    :cond_0
    :goto_0
    return v0

    .line 579
    :cond_1
    iget-object v2, p0, Li/acknowledge$This;->df:Li/acknowledge;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {v2, p1}, Li/acknowledge;->Code(Ljava/util/Map$Entry;)Li/acknowledge$darkness;

    move-result-object v2

    .line 580
    if-eqz v2, :cond_0

    .line 583
    iget-object v0, p0, Li/acknowledge$This;->df:Li/acknowledge;

    invoke-virtual {v0, v2, v1}, Li/acknowledge;->Code(Li/acknowledge$darkness;Z)V

    move v0, v1

    .line 584
    goto :goto_0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Li/acknowledge$This;->df:Li/acknowledge;

    iget v0, v0, Li/acknowledge;->size:I

    return v0
.end method
