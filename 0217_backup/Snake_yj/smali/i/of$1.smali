.class final Li/of$1;
.super Lg/name;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li/of;->Code(Lg/Tempest;Lk/This;)Lg/name;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg/name",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private synthetic cT:Li/of;

.field private final synthetic cU:Z

.field private final synthetic cV:Z

.field private final synthetic cW:Lg/Tempest;

.field private final synthetic cX:Lk/This;

.field private cg:Lg/name;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/name",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Li/of;ZZLg/Tempest;Lk/This;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Li/of$1;->cT:Li/of;

    iput-boolean p2, p0, Li/of$1;->cU:Z

    iput-boolean p3, p0, Li/of$1;->cV:Z

    iput-object p4, p0, Li/of$1;->cW:Lg/Tempest;

    iput-object p5, p0, Li/of$1;->cX:Lk/This;

    .line 120
    invoke-direct {p0}, Lg/name;-><init>()V

    return-void
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
    .line 141
    iget-object v0, p0, Li/of$1;->cg:Lg/name;

    .line 142
    if-eqz v0, :cond_0

    .line 143
    :goto_0
    return-object v0

    .line 144
    :cond_0
    iget-object v0, p0, Li/of$1;->cW:Lg/Tempest;

    iget-object v1, p0, Li/of$1;->cT:Li/of;

    iget-object v2, p0, Li/of$1;->cX:Lk/This;

    invoke-virtual {v0, v1, v2}, Lg/Tempest;->Code(Lg/That;Lk/This;)Lg/name;

    move-result-object v0

    iput-object v0, p0, Li/of$1;->cg:Lg/name;

    goto :goto_0
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
    .line 125
    iget-boolean v0, p0, Li/of$1;->cU:Z

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p1}, Ll/This;->skipValue()V

    .line 127
    const/4 v0, 0x0

    .line 129
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Li/of$1;->E()Lg/name;

    move-result-object v0

    invoke-virtual {v0, p1}, Lg/name;->Code(Ll/This;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
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
    .line 133
    iget-boolean v0, p0, Li/of$1;->cV:Z

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p1}, Ll/darkness;->ac()Ll/darkness;

    .line 138
    :goto_0
    return-void

    .line 137
    :cond_0
    invoke-direct {p0}, Li/of$1;->E()Lg/name;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lg/name;->Code(Ll/darkness;Ljava/lang/Object;)V

    goto :goto_0
.end method
