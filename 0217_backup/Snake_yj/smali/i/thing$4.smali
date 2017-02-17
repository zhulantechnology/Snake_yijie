.class final Li/thing$4;
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


# instance fields
.field private final synthetic T:Ljava/lang/reflect/Type;

.field private final cK:Li/V;

.field private final synthetic cL:Ljava/lang/Class;


# direct methods
.method constructor <init>(Li/thing;Ljava/lang/Class;Ljava/lang/reflect/Type;)V
    .locals 1

    .prologue
    .line 1
    iput-object p2, p0, Li/thing$4;->cL:Ljava/lang/Class;

    iput-object p3, p0, Li/thing$4;->T:Ljava/lang/reflect/Type;

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    invoke-static {}, Li/V;->O()Li/V;

    move-result-object v0

    iput-object v0, p0, Li/thing$4;->cK:Li/V;

    return-void
.end method


# virtual methods
.method public final H()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 207
    :try_start_0
    iget-object v0, p0, Li/thing$4;->cK:Li/V;

    iget-object v1, p0, Li/thing$4;->cL:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Li/V;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 208
    return-object v0

    .line 209
    :catch_0
    move-exception v0

    .line 210
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to invoke no-args constructor for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Li/thing$4;->T:Ljava/lang/reflect/Type;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 211
    const-string v3, "Register an InstanceCreator with Gson for this type may fix this problem."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 210
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
