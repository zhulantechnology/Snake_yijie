.class final Lj/is$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/That;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj/is;->V(Ljava/lang/Class;Lg/name;)Lg/That;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic eL:Lg/name;

.field private final synthetic val$clazz:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/Class;Lg/name;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lj/is$6;->val$clazz:Ljava/lang/Class;

    iput-object p2, p0, Lj/is$6;->eL:Lg/name;

    .line 822
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final Code(Lg/Tempest;Lk/This;)Lg/name;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lg/Tempest;",
            "Lk/This",
            "<TT;>;)",
            "Lg/name",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 825
    iget-object v0, p0, Lj/is$6;->val$clazz:Ljava/lang/Class;

    invoke-virtual {p2}, Lk/This;->getRawType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj/is$6;->eL:Lg/name;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 828
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Factory[typeHierarchy="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lj/is$6;->val$clazz:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",adapter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lj/is$6;->eL:Lg/name;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
