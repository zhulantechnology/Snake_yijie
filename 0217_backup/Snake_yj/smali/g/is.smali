.class public final Lg/is;
.super Lg/madness;
.source "SourceFile"


# instance fields
.field private final cq:Li/acknowledge;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/acknowledge",
            "<",
            "Ljava/lang/String;",
            "Lg/madness;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lg/madness;-><init>()V

    .line 34
    new-instance v0, Li/acknowledge;

    invoke-direct {v0}, Li/acknowledge;-><init>()V

    iput-object v0, p0, Lg/is;->cq:Li/acknowledge;

    .line 32
    return-void
.end method


# virtual methods
.method public final Code(Ljava/lang/String;Lg/madness;)V
    .locals 1

    .prologue
    .line 54
    if-nez p2, :cond_0

    .line 55
    sget-object p2, Lg/there;->cp:Lg/there;

    .line 57
    :cond_0
    iget-object v0, p0, Lg/is;->cq:Li/acknowledge;

    invoke-virtual {v0, p1, p2}, Li/acknowledge;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-void
.end method

.method public final c(Ljava/lang/String;)Lg/madness;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lg/is;->cq:Li/acknowledge;

    invoke-virtual {v0, p1}, Li/acknowledge;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/madness;

    return-object v0
.end method

.method public final d(Ljava/lang/String;)Lg/Though;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lg/is;->cq:Li/acknowledge;

    invoke-virtual {v0, p1}, Li/acknowledge;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/Though;

    return-object v0
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lg/madness;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lg/is;->cq:Li/acknowledge;

    invoke-virtual {v0}, Li/acknowledge;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 187
    if-eq p1, p0, :cond_1

    instance-of v0, p1, Lg/is;

    if-eqz v0, :cond_0

    .line 188
    check-cast p1, Lg/is;

    iget-object v0, p1, Lg/is;->cq:Li/acknowledge;

    iget-object v1, p0, Lg/is;->cq:Li/acknowledge;

    invoke-virtual {v0, v1}, Li/acknowledge;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 187
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final has(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lg/is;->cq:Li/acknowledge;

    invoke-virtual {v0, p1}, Li/acknowledge;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lg/is;->cq:Li/acknowledge;

    invoke-virtual {v0}, Li/acknowledge;->hashCode()I

    move-result v0

    return v0
.end method
