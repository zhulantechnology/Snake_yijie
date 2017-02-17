.class final Li/acknowledge$thing$1;
.super Li/acknowledge$of;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li/acknowledge$thing;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li/acknowledge",
        "<TK;TV;>.of<TK;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Li/acknowledge$thing;Li/acknowledge;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0, p2}, Li/acknowledge$of;-><init>(Li/acknowledge;)V

    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 600
    invoke-virtual {p0}, Li/acknowledge$thing$1;->K()Li/acknowledge$darkness;

    move-result-object v0

    iget-object v0, v0, Li/acknowledge$darkness;->key:Ljava/lang/Object;

    return-object v0
.end method
