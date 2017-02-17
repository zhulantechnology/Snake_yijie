.class public final Lj/Tempest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/That;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj/Tempest$This;
    }
.end annotation


# instance fields
.field private final bY:Li/thing;

.field private final dE:Z


# direct methods
.method public constructor <init>(Li/thing;Z)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Lj/Tempest;->bY:Li/thing;

    .line 112
    iput-boolean p2, p0, Lj/Tempest;->dE:Z

    .line 113
    return-void
.end method

.method static synthetic Code(Lj/Tempest;)Z
    .locals 1

    .prologue
    .line 107
    iget-boolean v0, p0, Lj/Tempest;->dE:Z

    return v0
.end method


# virtual methods
.method public final Code(Lg/Tempest;Lk/This;)Lg/name;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lg/Tempest;",
            "Lk/This",
            "<TT;>;)",
            "Lg/name",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 116
    invoke-virtual {p2}, Lk/This;->ae()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 118
    invoke-virtual {p2}, Lk/This;->getRawType()Ljava/lang/Class;

    move-result-object v1

    .line 119
    const-class v2, Ljava/util/Map;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 120
    const/4 v0, 0x0

    .line 133
    :goto_0
    return-object v0

    .line 123
    :cond_0
    invoke-static {v0}, Li/This;->I(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    .line 124
    invoke-static {v0, v1}, Li/This;->V(Ljava/lang/reflect/Type;Ljava/lang/Class;)[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 125
    aget-object v0, v1, v3

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v0, v2, :cond_1

    const-class v2, Ljava/lang/Boolean;

    if-ne v0, v2, :cond_2

    :cond_1
    sget-object v4, Lj/is;->dX:Lg/name;

    .line 126
    :goto_1
    aget-object v0, v1, v5

    invoke-static {v0}, Lk/This;->S(Ljava/lang/reflect/Type;)Lk/This;

    move-result-object v0

    invoke-virtual {p1, v0}, Lg/Tempest;->Code(Lk/This;)Lg/name;

    move-result-object v6

    .line 127
    iget-object v0, p0, Lj/Tempest;->bY:Li/thing;

    invoke-virtual {v0, p2}, Li/thing;->V(Lk/This;)Li/From;

    move-result-object v7

    .line 131
    new-instance v0, Lj/Tempest$This;

    aget-object v3, v1, v3

    .line 132
    aget-object v5, v1, v5

    move-object v1, p0

    move-object v2, p1

    .line 131
    invoke-direct/range {v0 .. v7}, Lj/Tempest$This;-><init>(Lj/Tempest;Lg/Tempest;Ljava/lang/reflect/Type;Lg/name;Ljava/lang/reflect/Type;Lg/name;Li/From;)V

    goto :goto_0

    .line 125
    :cond_2
    invoke-static {v0}, Lk/This;->S(Ljava/lang/reflect/Type;)Lk/This;

    move-result-object v0

    invoke-virtual {p1, v0}, Lg/Tempest;->Code(Lk/This;)Lg/name;

    move-result-object v4

    goto :goto_1
.end method
