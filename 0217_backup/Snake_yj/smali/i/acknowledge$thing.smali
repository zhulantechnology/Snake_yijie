.class final Li/acknowledge$thing;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/acknowledge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "thing"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<TK;>;"
    }
.end annotation


# instance fields
.field private synthetic df:Li/acknowledge;


# direct methods
.method constructor <init>(Li/acknowledge;)V
    .locals 0

    .prologue
    .line 592
    iput-object p1, p0, Li/acknowledge$thing;->df:Li/acknowledge;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Li/acknowledge$thing;->df:Li/acknowledge;

    invoke-virtual {v0}, Li/acknowledge;->clear()V

    .line 615
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Li/acknowledge$thing;->df:Li/acknowledge;

    invoke-virtual {v0, p1}, Li/acknowledge;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 598
    new-instance v0, Li/acknowledge$thing$1;

    iget-object v1, p0, Li/acknowledge$thing;->df:Li/acknowledge;

    invoke-direct {v0, p0, v1}, Li/acknowledge$thing$1;-><init>(Li/acknowledge$thing;Li/acknowledge;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 610
    iget-object v0, p0, Li/acknowledge$thing;->df:Li/acknowledge;

    invoke-virtual {v0, p1}, Li/acknowledge;->D(Ljava/lang/Object;)Li/acknowledge$darkness;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Li/acknowledge$thing;->df:Li/acknowledge;

    iget v0, v0, Li/acknowledge;->size:I

    return v0
.end method
