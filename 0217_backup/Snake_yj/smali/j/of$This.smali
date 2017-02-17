.class final Lj/of$This;
.super Lg/name;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj/of;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "This"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lg/name",
        "<",
        "Ljava/util/Collection",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field private final dw:Lg/name;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/name",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final dx:Li/From;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/From",
            "<+",
            "Ljava/util/Collection",
            "<TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg/Tempest;Ljava/lang/reflect/Type;Lg/name;Li/From;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/Tempest;",
            "Ljava/lang/reflect/Type;",
            "Lg/name",
            "<TE;>;",
            "Li/From",
            "<+",
            "Ljava/util/Collection",
            "<TE;>;>;)V"
        }
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0}, Lg/name;-><init>()V

    .line 68
    new-instance v0, Lj/there;

    invoke-direct {v0, p1, p3, p2}, Lj/there;-><init>(Lg/Tempest;Lg/name;Ljava/lang/reflect/Type;)V

    .line 67
    iput-object v0, p0, Lj/of$This;->dw:Lg/name;

    .line 69
    iput-object p4, p0, Lj/of$This;->dx:Li/From;

    .line 70
    return-void
.end method


# virtual methods
.method public final synthetic Code(Ll/This;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p1}, Ll/This;->P()Ll/of;

    move-result-object v0

    sget-object v1, Ll/of;->fk:Ll/of;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Ll/This;->nextNull()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lj/of$This;->dx:Li/From;

    invoke-interface {v0}, Li/From;->H()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p1}, Ll/This;->beginArray()V

    :goto_1
    invoke-virtual {p1}, Ll/This;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Ll/This;->endArray()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lj/of$This;->dw:Lg/name;

    invoke-virtual {v1, p1}, Lg/name;->Code(Ll/This;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public final synthetic Code(Ll/darkness;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1
    check-cast p2, Ljava/util/Collection;

    if-nez p2, :cond_0

    invoke-virtual {p1}, Ll/darkness;->ac()Ll/darkness;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ll/darkness;->X()Ll/darkness;

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ll/darkness;->Y()Ll/darkness;

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Object;

    iget-object v2, p0, Lj/of$This;->dw:Lg/name;

    invoke-virtual {v2, p1, v0}, Lg/name;->Code(Ll/darkness;Ljava/lang/Object;)V

    goto :goto_1
.end method
