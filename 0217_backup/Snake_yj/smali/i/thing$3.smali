.class final Li/thing$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/From;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/thing;
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


# direct methods
.method constructor <init>(Li/thing;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final H()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 191
    new-instance v0, Li/acknowledge;

    invoke-direct {v0}, Li/acknowledge;-><init>()V

    return-object v0
.end method
