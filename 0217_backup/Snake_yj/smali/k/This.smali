.class public final Lk/This;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private eT:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private hashCode:I

.field private type:Ljava/lang/reflect/Type;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Missing type parameter."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Li/This;->V(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lk/This;->type:Ljava/lang/reflect/Type;

    .line 63
    iget-object v0, p0, Lk/This;->type:Ljava/lang/reflect/Type;

    invoke-static {v0}, Li/This;->I(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lk/This;->eT:Ljava/lang/Class;

    .line 64
    iget-object v0, p0, Lk/This;->type:Ljava/lang/reflect/Type;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lk/This;->hashCode:I

    .line 65
    return-void
.end method

.method private constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-static {p1}, Le/this;->Z(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    invoke-static {v0}, Li/This;->V(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lk/This;->type:Ljava/lang/reflect/Type;

    .line 73
    iget-object v0, p0, Lk/This;->type:Ljava/lang/reflect/Type;

    invoke-static {v0}, Li/This;->I(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lk/This;->eT:Ljava/lang/Class;

    .line 74
    iget-object v0, p0, Lk/This;->type:Ljava/lang/reflect/Type;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lk/This;->hashCode:I

    .line 75
    return-void
.end method

.method public static B(Ljava/lang/Class;)Lk/This;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lk/This",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 303
    new-instance v0, Lk/This;

    invoke-direct {v0, p0}, Lk/This;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public static S(Ljava/lang/reflect/Type;)Lk/This;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lk/This",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 296
    new-instance v0, Lk/This;

    invoke-direct {v0, p0}, Lk/This;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0
.end method


# virtual methods
.method public final ae()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lk/This;->type:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 284
    instance-of v0, p1, Lk/This;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lk/This;->type:Ljava/lang/reflect/Type;

    check-cast p1, Lk/This;

    iget-object v1, p1, Lk/This;->type:Ljava/lang/reflect/Type;

    invoke-static {v0, v1}, Li/This;->Code(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getRawType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lk/This;->eT:Ljava/lang/Class;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 280
    iget v0, p0, Lk/This;->hashCode:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lk/This;->type:Ljava/lang/reflect/Type;

    invoke-static {v0}, Li/This;->Z(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
