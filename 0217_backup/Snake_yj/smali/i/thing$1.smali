.class public Li/thing$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/From;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li/thing;->V(Lk/This;)Li/From;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Li/From",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final synthetic T:Ljava/lang/reflect/Type;

.field private final synthetic cJ:Lg/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Li/thing;Lg/i;Ljava/lang/reflect/Type;)V
    .locals 0

    .prologue
    .line 1
    iput-object p2, p0, Li/thing$1;->cJ:Lg/i;

    iput-object p3, p0, Li/thing$1;->T:Ljava/lang/reflect/Type;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Code(Ljava/lang/Appendable;)Ljava/io/Writer;
    .locals 1

    .prologue
    .line 72
    instance-of v0, p0, Ljava/io/Writer;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/io/Writer;

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Li/Tempest;

    invoke-direct {v0, p0}, Li/Tempest;-><init>(Ljava/lang/Appendable;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public static Code(Lg/madness;Ll/darkness;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    sget-object v0, Lj/is;->eH:Lg/name;

    invoke-virtual {v0, p1, p0}, Lg/name;->Code(Ll/darkness;Ljava/lang/Object;)V

    .line 69
    return-void
.end method

.method public static V(Ll/This;)Lg/madness;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lg/method;
        }
    .end annotation

    .prologue
    .line 40
    const/4 v1, 0x1

    .line 42
    :try_start_0
    invoke-virtual {p0}, Ll/This;->P()Ll/of;

    .line 43
    const/4 v1, 0x0

    .line 44
    sget-object v0, Lj/is;->eH:Lg/name;

    invoke-virtual {v0, p0}, Lg/name;->Code(Ll/This;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/madness;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ll/I; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3

    .line 51
    :goto_0
    return-object v0

    .line 45
    :catch_0
    move-exception v0

    .line 50
    if-eqz v1, :cond_0

    .line 51
    sget-object v0, Lg/there;->cp:Lg/there;

    goto :goto_0

    .line 54
    :cond_0
    new-instance v1, Lg/II;

    invoke-direct {v1, v0}, Lg/II;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 55
    :catch_1
    move-exception v0

    .line 56
    new-instance v1, Lg/II;

    invoke-direct {v1, v0}, Lg/II;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 57
    :catch_2
    move-exception v0

    .line 58
    new-instance v1, Lg/yet;

    invoke-direct {v1, v0}, Lg/yet;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 59
    :catch_3
    move-exception v0

    .line 60
    new-instance v1, Lg/II;

    invoke-direct {v1, v0}, Lg/II;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final H()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Li/thing$1;->cJ:Lg/i;

    iget-object v1, p0, Li/thing$1;->T:Ljava/lang/reflect/Type;

    invoke-interface {v0}, Lg/i;->n()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
