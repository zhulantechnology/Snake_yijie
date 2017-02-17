.class final Lj/there;
.super Lg/name;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lg/name",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final cg:Lg/name;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/name",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final dR:Lg/Tempest;

.field private final type:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Lg/Tempest;Lg/name;Ljava/lang/reflect/Type;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/Tempest;",
            "Lg/name",
            "<TT;>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Lg/name;-><init>()V

    .line 33
    iput-object p1, p0, Lj/there;->dR:Lg/Tempest;

    .line 34
    iput-object p2, p0, Lj/there;->cg:Lg/name;

    .line 35
    iput-object p3, p0, Lj/there;->type:Ljava/lang/reflect/Type;

    .line 36
    return-void
.end method


# virtual methods
.method public final Code(Ll/This;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll/This;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lj/there;->cg:Lg/name;

    invoke-virtual {v0, p1}, Lg/name;->Code(Ll/This;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final Code(Ll/darkness;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll/darkness;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    iget-object v1, p0, Lj/there;->cg:Lg/name;

    .line 53
    iget-object v0, p0, Lj/there;->type:Ljava/lang/reflect/Type;

    if-eqz p2, :cond_1

    const-class v2, Ljava/lang/Object;

    if-eq v0, v2, :cond_0

    instance-of v2, v0, Ljava/lang/reflect/TypeVariable;

    if-nez v2, :cond_0

    instance-of v2, v0, Ljava/lang/Class;

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 54
    :cond_1
    iget-object v2, p0, Lj/there;->type:Ljava/lang/reflect/Type;

    if-eq v0, v2, :cond_3

    .line 55
    iget-object v1, p0, Lj/there;->dR:Lg/Tempest;

    invoke-static {v0}, Lk/This;->S(Ljava/lang/reflect/Type;)Lk/This;

    move-result-object v0

    invoke-virtual {v1, v0}, Lg/Tempest;->Code(Lk/This;)Lg/name;

    move-result-object v0

    .line 56
    instance-of v1, v0, Lj/Though$This;

    if-eqz v1, :cond_2

    .line 58
    iget-object v1, p0, Lj/there;->cg:Lg/name;

    instance-of v1, v1, Lj/Though$This;

    if-nez v1, :cond_2

    .line 62
    iget-object v0, p0, Lj/there;->cg:Lg/name;

    .line 68
    :cond_2
    :goto_0
    invoke-virtual {v0, p1, p2}, Lg/name;->Code(Ll/darkness;Ljava/lang/Object;)V

    .line 69
    return-void

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method
