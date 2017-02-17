.class public final Lj/of;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/That;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj/of$This;
    }
.end annotation


# instance fields
.field private final bY:Li/thing;


# direct methods
.method public constructor <init>(Li/thing;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lj/of;->bY:Li/thing;

    .line 41
    return-void
.end method


# virtual methods
.method public final Code(Lg/Tempest;Lk/This;)Lg/name;
    .locals 4
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
    .line 44
    invoke-virtual {p2}, Lk/This;->ae()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 46
    invoke-virtual {p2}, Lk/This;->getRawType()Ljava/lang/Class;

    move-result-object v1

    .line 47
    const-class v2, Ljava/util/Collection;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 48
    const/4 v0, 0x0

    .line 57
    :goto_0
    return-object v0

    .line 51
    :cond_0
    invoke-static {v0, v1}, Li/This;->Code(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 52
    invoke-static {v1}, Lk/This;->S(Ljava/lang/reflect/Type;)Lk/This;

    move-result-object v0

    invoke-virtual {p1, v0}, Lg/Tempest;->Code(Lk/This;)Lg/name;

    move-result-object v2

    .line 53
    iget-object v0, p0, Lj/of;->bY:Li/thing;

    invoke-virtual {v0, p2}, Li/thing;->V(Lk/This;)Li/From;

    move-result-object v3

    .line 56
    new-instance v0, Lj/of$This;

    invoke-direct {v0, p1, v1, v2, v3}, Lj/of$This;-><init>(Lg/Tempest;Ljava/lang/reflect/Type;Lg/name;Li/From;)V

    goto :goto_0
.end method
