.class final Lg/a;
.super Lg/name;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/a$This;
    }
.end annotation

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
.field private cg:Lg/name;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/name",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final cu:Lg/Hamlet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/Hamlet",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final cv:Lg/be;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/be",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final cw:Lg/Tempest;

.field private final cx:Lk/This;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/This",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final cy:Lg/That;


# direct methods
.method synthetic constructor <init>(Lg/Hamlet;Lg/be;Lg/Tempest;Lk/This;Lg/That;)V
    .locals 7

    .prologue
    .line 41
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lg/a;-><init>(Lg/Hamlet;Lg/be;Lg/Tempest;Lk/This;Lg/That;B)V

    return-void
.end method

.method private constructor <init>(Lg/Hamlet;Lg/be;Lg/Tempest;Lk/This;Lg/That;B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/Hamlet",
            "<TT;>;",
            "Lg/be",
            "<TT;>;",
            "Lg/Tempest;",
            "Lk/This",
            "<TT;>;",
            "Lg/That;",
            "B)V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0}, Lg/name;-><init>()V

    .line 43
    iput-object p1, p0, Lg/a;->cu:Lg/Hamlet;

    .line 44
    iput-object p2, p0, Lg/a;->cv:Lg/be;

    .line 45
    iput-object p3, p0, Lg/a;->cw:Lg/Tempest;

    .line 46
    iput-object p4, p0, Lg/a;->cx:Lk/This;

    .line 47
    iput-object p5, p0, Lg/a;->cy:Lg/That;

    .line 48
    return-void
.end method

.method public static Code(Lk/This;Ljava/lang/Object;)Lg/That;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/This",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lg/That;"
        }
    .end annotation

    .prologue
    .line 85
    new-instance v0, Lg/a$This;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, p0, v1, v2}, Lg/a$This;-><init>(Ljava/lang/Object;Lk/This;ZLjava/lang/Class;)V

    return-object v0
.end method

.method private E()Lg/name;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lg/name",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lg/a;->cg:Lg/name;

    .line 76
    if-eqz v0, :cond_0

    .line 77
    :goto_0
    return-object v0

    .line 78
    :cond_0
    iget-object v0, p0, Lg/a;->cw:Lg/Tempest;

    iget-object v1, p0, Lg/a;->cy:Lg/That;

    iget-object v2, p0, Lg/a;->cx:Lk/This;

    invoke-virtual {v0, v1, v2}, Lg/Tempest;->Code(Lg/That;Lk/This;)Lg/name;

    move-result-object v0

    iput-object v0, p0, Lg/a;->cg:Lg/name;

    goto :goto_0
.end method


# virtual methods
.method public final Code(Ll/This;)Ljava/lang/Object;
    .locals 4
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
    .line 51
    iget-object v0, p0, Lg/a;->cv:Lg/be;

    if-nez v0, :cond_0

    .line 52
    invoke-direct {p0}, Lg/a;->E()Lg/name;

    move-result-object v0

    invoke-virtual {v0, p1}, Lg/name;->Code(Ll/This;)Ljava/lang/Object;

    move-result-object v0

    .line 58
    :goto_0
    return-object v0

    .line 54
    :cond_0
    invoke-static {p1}, Li/thing$1;->V(Ll/This;)Lg/madness;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lg/madness;->w()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 56
    const/4 v0, 0x0

    goto :goto_0

    .line 58
    :cond_1
    iget-object v1, p0, Lg/a;->cv:Lg/be;

    iget-object v2, p0, Lg/a;->cx:Lk/This;

    invoke-virtual {v2}, Lk/This;->ae()Ljava/lang/reflect/Type;

    move-result-object v2

    iget-object v3, p0, Lg/a;->cw:Lg/Tempest;

    iget-object v3, v3, Lg/Tempest;->cd:Lg/this;

    invoke-interface {v1, v0, v2, v3}, Lg/be;->Code(Lg/madness;Ljava/lang/reflect/Type;Lg/this;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
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
    .line 62
    iget-object v0, p0, Lg/a;->cu:Lg/Hamlet;

    if-nez v0, :cond_0

    .line 63
    invoke-direct {p0}, Lg/a;->E()Lg/name;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lg/name;->Code(Ll/darkness;Ljava/lang/Object;)V

    .line 72
    :goto_0
    return-void

    .line 66
    :cond_0
    if-nez p2, :cond_1

    .line 67
    invoke-virtual {p1}, Ll/darkness;->ac()Ll/darkness;

    goto :goto_0

    .line 70
    :cond_1
    iget-object v0, p0, Lg/a;->cu:Lg/Hamlet;

    iget-object v1, p0, Lg/a;->cx:Lk/This;

    invoke-virtual {v1}, Lk/This;->ae()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lg/a;->cw:Lg/Tempest;

    iget-object v2, v2, Lg/Tempest;->ce:Lg/t;

    invoke-interface {v0, p2, v1, v2}, Lg/Hamlet;->Code(Ljava/lang/Object;Ljava/lang/reflect/Type;Lg/t;)Lg/madness;

    move-result-object v0

    .line 71
    invoke-static {v0, p1}, Li/thing$1;->Code(Lg/madness;Ll/darkness;)V

    goto :goto_0
.end method
