.class final Lj/Tempest$This;
.super Lg/name;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj/Tempest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "This"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lg/name",
        "<",
        "Ljava/util/Map",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final dF:Lg/name;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/name",
            "<TK;>;"
        }
    .end annotation
.end field

.field private final dG:Lg/name;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/name",
            "<TV;>;"
        }
    .end annotation
.end field

.field private synthetic dH:Lj/Tempest;

.field private final dx:Li/From;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/From",
            "<+",
            "Ljava/util/Map",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lj/Tempest;Lg/Tempest;Ljava/lang/reflect/Type;Lg/name;Ljava/lang/reflect/Type;Lg/name;Li/From;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/Tempest;",
            "Ljava/lang/reflect/Type;",
            "Lg/name",
            "<TK;>;",
            "Ljava/lang/reflect/Type;",
            "Lg/name",
            "<TV;>;",
            "Li/From",
            "<+",
            "Ljava/util/Map",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 152
    iput-object p1, p0, Lj/Tempest$This;->dH:Lj/Tempest;

    .line 150
    invoke-direct {p0}, Lg/name;-><init>()V

    .line 154
    new-instance v0, Lj/there;

    invoke-direct {v0, p2, p4, p3}, Lj/there;-><init>(Lg/Tempest;Lg/name;Ljava/lang/reflect/Type;)V

    .line 153
    iput-object v0, p0, Lj/Tempest$This;->dF:Lg/name;

    .line 156
    new-instance v0, Lj/there;

    invoke-direct {v0, p2, p6, p5}, Lj/there;-><init>(Lg/Tempest;Lg/name;Ljava/lang/reflect/Type;)V

    .line 155
    iput-object v0, p0, Lj/Tempest$This;->dG:Lg/name;

    .line 157
    iput-object p7, p0, Lj/Tempest$This;->dx:Li/From;

    .line 158
    return-void
.end method


# virtual methods
.method public final synthetic Code(Ll/This;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p1}, Ll/This;->P()Ll/of;

    move-result-object v1

    sget-object v0, Ll/of;->fk:Ll/of;

    if-ne v1, v0, :cond_0

    invoke-virtual {p1}, Ll/This;->nextNull()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lj/Tempest$This;->dx:Li/From;

    invoke-interface {v0}, Li/From;->H()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    sget-object v2, Ll/of;->fc:Ll/of;

    if-ne v1, v2, :cond_3

    invoke-virtual {p1}, Ll/This;->beginArray()V

    :goto_1
    invoke-virtual {p1}, Ll/This;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Ll/This;->endArray()V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ll/This;->beginArray()V

    iget-object v1, p0, Lj/Tempest$This;->dF:Lg/name;

    invoke-virtual {v1, p1}, Lg/name;->Code(Ll/This;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lj/Tempest$This;->dG:Lg/name;

    invoke-virtual {v2, p1}, Lg/name;->Code(Ll/This;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v0, Lg/II;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "duplicate key: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lg/II;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p1}, Ll/This;->endArray()V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Ll/This;->beginObject()V

    :cond_4
    invoke-virtual {p1}, Ll/This;->hasNext()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p1}, Ll/This;->endObject()V

    goto :goto_0

    :cond_5
    sget-object v1, Li/darkness;->cY:Li/darkness;

    invoke-virtual {v1, p1}, Li/darkness;->I(Ll/This;)V

    iget-object v1, p0, Lj/Tempest$This;->dF:Lg/name;

    invoke-virtual {v1, p1}, Lg/name;->Code(Ll/This;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lj/Tempest$This;->dG:Lg/name;

    invoke-virtual {v2, p1}, Lg/name;->Code(Ll/This;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    new-instance v0, Lg/II;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "duplicate key: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lg/II;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final synthetic Code(Ll/darkness;Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1
    check-cast p2, Ljava/util/Map;

    if-nez p2, :cond_0

    invoke-virtual {p1}, Ll/darkness;->ac()Ll/darkness;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lj/Tempest$This;->dH:Lj/Tempest;

    invoke-static {v0}, Lj/Tempest;->Code(Lj/Tempest;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ll/darkness;->aa()Ll/darkness;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ll/darkness;->ab()Ll/darkness;

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ll/darkness;->f(Ljava/lang/String;)Ll/darkness;

    iget-object v2, p0, Lj/Tempest$This;->dG:Lg/name;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Lg/name;->Code(Ll/darkness;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v1

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Ll/darkness;->X()Ll/darkness;

    :goto_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_5

    invoke-virtual {p1}, Ll/darkness;->Y()Ll/darkness;

    goto :goto_0

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v6, p0, Lj/Tempest$This;->dF:Lg/name;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Lg/name;->B(Ljava/lang/Object;)Lg/madness;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Lg/madness;->t()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v6}, Lg/madness;->u()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    or-int/2addr v0, v2

    move v2, v0

    goto :goto_2

    :cond_4
    const/4 v0, 0x1

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Ll/darkness;->X()Ll/darkness;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/madness;

    invoke-static {v0, p1}, Li/thing$1;->Code(Lg/madness;Ll/darkness;)V

    iget-object v0, p0, Lj/Tempest$This;->dG:Lg/name;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lg/name;->Code(Ll/darkness;Ljava/lang/Object;)V

    invoke-virtual {p1}, Ll/darkness;->Y()Ll/darkness;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Ll/darkness;->aa()Ll/darkness;

    :goto_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_7

    invoke-virtual {p1}, Ll/darkness;->ab()Ll/darkness;

    goto/16 :goto_0

    :cond_7
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/madness;

    invoke-virtual {v0}, Lg/madness;->v()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v0}, Lg/madness;->z()Lg/in;

    move-result-object v0

    invoke-virtual {v0}, Lg/in;->isNumber()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v0}, Lg/in;->o()Ljava/lang/Number;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-virtual {p1, v0}, Ll/darkness;->f(Ljava/lang/String;)Ll/darkness;

    iget-object v0, p0, Lj/Tempest$This;->dG:Lg/name;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lg/name;->Code(Ll/darkness;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_8
    invoke-virtual {v0}, Lg/in;->isBoolean()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v0}, Lg/in;->s()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_9
    invoke-virtual {v0}, Lg/in;->A()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v0}, Lg/in;->getAsString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_a
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_b
    invoke-virtual {v0}, Lg/madness;->w()Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "null"

    goto :goto_6

    :cond_c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
