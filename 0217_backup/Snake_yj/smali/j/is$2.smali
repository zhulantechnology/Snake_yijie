.class final Lj/is$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/That;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj/is;->Code(Lk/This;Lg/name;)Lg/That;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic cX:Lk/This;

.field private final synthetic eL:Lg/name;


# direct methods
.method constructor <init>(Lk/This;Lg/name;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lj/is$2;->cX:Lk/This;

    iput-object p2, p0, Lj/is$2;->eL:Lg/name;

    .line 769
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final Code(Lg/Tempest;Lk/This;)Lg/name;
    .locals 1
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
    .line 772
    iget-object v0, p0, Lj/is$2;->cX:Lk/This;

    invoke-virtual {p2, v0}, Lk/This;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj/is$2;->eL:Lg/name;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
