.class final Li/acknowledge$darkness;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/acknowledge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "darkness"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field dg:Li/acknowledge$darkness;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/acknowledge$darkness",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field di:Li/acknowledge$darkness;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/acknowledge$darkness",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field dj:Li/acknowledge$darkness;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/acknowledge$darkness",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field dk:Li/acknowledge$darkness;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/acknowledge$darkness",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field dl:Li/acknowledge$darkness;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/acknowledge$darkness",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field height:I

.field final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 451
    const/4 v0, 0x0

    iput-object v0, p0, Li/acknowledge$darkness;->key:Ljava/lang/Object;

    .line 452
    iput-object p0, p0, Li/acknowledge$darkness;->dl:Li/acknowledge$darkness;

    iput-object p0, p0, Li/acknowledge$darkness;->dg:Li/acknowledge$darkness;

    .line 453
    return-void
.end method

.method constructor <init>(Li/acknowledge$darkness;Ljava/lang/Object;Li/acknowledge$darkness;Li/acknowledge$darkness;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/acknowledge$darkness",
            "<TK;TV;>;TK;",
            "Li/acknowledge$darkness",
            "<TK;TV;>;",
            "Li/acknowledge$darkness",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 457
    iput-object p1, p0, Li/acknowledge$darkness;->di:Li/acknowledge$darkness;

    .line 458
    iput-object p2, p0, Li/acknowledge$darkness;->key:Ljava/lang/Object;

    .line 459
    const/4 v0, 0x1

    iput v0, p0, Li/acknowledge$darkness;->height:I

    .line 460
    iput-object p3, p0, Li/acknowledge$darkness;->dg:Li/acknowledge$darkness;

    .line 461
    iput-object p4, p0, Li/acknowledge$darkness;->dl:Li/acknowledge$darkness;

    .line 462
    iput-object p0, p4, Li/acknowledge$darkness;->dg:Li/acknowledge$darkness;

    .line 463
    iput-object p0, p3, Li/acknowledge$darkness;->dl:Li/acknowledge$darkness;

    .line 464
    return-void
.end method


# virtual methods
.method public final M()Li/acknowledge$darkness;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/acknowledge$darkness",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 503
    .line 504
    iget-object v0, p0, Li/acknowledge$darkness;->dj:Li/acknowledge$darkness;

    .line 505
    :goto_0
    if-nez v0, :cond_0

    .line 509
    return-object p0

    .line 507
    :cond_0
    iget-object v1, v0, Li/acknowledge$darkness;->dj:Li/acknowledge$darkness;

    move-object p0, v0

    move-object v0, v1

    goto :goto_0
.end method

.method public final N()Li/acknowledge$darkness;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/acknowledge$darkness",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 516
    .line 517
    iget-object v0, p0, Li/acknowledge$darkness;->dk:Li/acknowledge$darkness;

    .line 518
    :goto_0
    if-nez v0, :cond_0

    .line 522
    return-object p0

    .line 520
    :cond_0
    iget-object v1, v0, Li/acknowledge$darkness;->dk:Li/acknowledge$darkness;

    move-object p0, v0

    move-object v0, v1

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 482
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_0

    .line 483
    check-cast p1, Ljava/util/Map$Entry;

    .line 484
    iget-object v1, p0, Li/acknowledge$darkness;->key:Ljava/lang/Object;

    if-nez v1, :cond_1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 485
    :goto_0
    iget-object v1, p0, Li/acknowledge$darkness;->value:Ljava/lang/Object;

    if-nez v1, :cond_2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 484
    :goto_1
    const/4 v0, 0x1

    .line 487
    :cond_0
    return v0

    .line 484
    :cond_1
    iget-object v1, p0, Li/acknowledge$darkness;->key:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 485
    :cond_2
    iget-object v1, p0, Li/acknowledge$darkness;->value:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 467
    iget-object v0, p0, Li/acknowledge$darkness;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 471
    iget-object v0, p0, Li/acknowledge$darkness;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 491
    iget-object v0, p0, Li/acknowledge$darkness;->key:Ljava/lang/Object;

    if-nez v0, :cond_0

    move v0, v1

    .line 492
    :goto_0
    iget-object v2, p0, Li/acknowledge$darkness;->value:Ljava/lang/Object;

    if-nez v2, :cond_1

    .line 491
    :goto_1
    xor-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Li/acknowledge$darkness;->key:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    .line 492
    :cond_1
    iget-object v1, p0, Li/acknowledge$darkness;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 475
    iget-object v0, p0, Li/acknowledge$darkness;->value:Ljava/lang/Object;

    .line 476
    iput-object p1, p0, Li/acknowledge$darkness;->value:Ljava/lang/Object;

    .line 477
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Li/acknowledge$darkness;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Li/acknowledge$darkness;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
