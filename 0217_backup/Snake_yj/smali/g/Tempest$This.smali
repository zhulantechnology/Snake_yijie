.class final Lg/Tempest$This;
.super Lg/name;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/Tempest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "This"
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


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 871
    invoke-direct {p0}, Lg/name;-><init>()V

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
    .line 882
    iget-object v0, p0, Lg/Tempest$This;->cg:Lg/name;

    if-nez v0, :cond_0

    .line 883
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 885
    :cond_0
    iget-object v0, p0, Lg/Tempest$This;->cg:Lg/name;

    invoke-virtual {v0, p1}, Lg/name;->Code(Ll/This;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final Code(Lg/name;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/name",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 875
    iget-object v0, p0, Lg/Tempest$This;->cg:Lg/name;

    if-eqz v0, :cond_0

    .line 876
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 878
    :cond_0
    iput-object p1, p0, Lg/Tempest$This;->cg:Lg/name;

    .line 879
    return-void
.end method

.method public final Code(Ll/darkness;Ljava/lang/Object;)V
    .locals 1
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
    .line 889
    iget-object v0, p0, Lg/Tempest$This;->cg:Lg/name;

    if-nez v0, :cond_0

    .line 890
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 892
    :cond_0
    iget-object v0, p0, Lg/Tempest$This;->cg:Lg/name;

    invoke-virtual {v0, p1, p2}, Lg/name;->Code(Ll/darkness;Ljava/lang/Object;)V

    .line 893
    return-void
.end method
