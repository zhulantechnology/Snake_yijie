.class final Li/thing$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/From;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li/thing;->V(Lk/This;)Li/From;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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

.field private final synthetic cM:Lg/i;


# direct methods
.method constructor <init>(Li/thing;Lg/i;Ljava/lang/reflect/Type;)V
    .locals 0

    .prologue
    .line 1
    iput-object p2, p0, Li/thing$5;->cM:Lg/i;

    iput-object p3, p0, Li/thing$5;->T:Ljava/lang/reflect/Type;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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
    .line 74
    iget-object v0, p0, Li/thing$5;->cM:Lg/i;

    iget-object v1, p0, Li/thing$5;->T:Ljava/lang/reflect/Type;

    invoke-interface {v0}, Lg/i;->n()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
