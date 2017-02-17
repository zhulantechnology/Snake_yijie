.class final Li/acknowledge$This$1;
.super Li/acknowledge$of;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li/acknowledge$This;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li/acknowledge",
        "<TK;TV;>.of<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Li/acknowledge$This;Li/acknowledge;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0, p2}, Li/acknowledge$of;-><init>(Li/acknowledge;)V

    return-void
.end method


# virtual methods
.method public final synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Li/acknowledge$This$1;->K()Li/acknowledge$darkness;

    move-result-object v0

    return-object v0
.end method
