.class final Ld/thing$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/Hamlet;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/thing;->I(Ljava/lang/Object;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lg/Hamlet",
        "<",
        "Lcn/bmob/v3/BmobACL;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public final synthetic Code(Ljava/lang/Object;Ljava/lang/reflect/Type;Lg/t;)Lg/madness;
    .locals 2

    .prologue
    .line 1
    check-cast p1, Lcn/bmob/v3/BmobACL;

    new-instance v0, Lg/Tempest;

    invoke-direct {v0}, Lg/Tempest;-><init>()V

    invoke-virtual {p1}, Lcn/bmob/v3/BmobACL;->getAcl()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg/Tempest;->B(Ljava/lang/Object;)Lg/madness;

    move-result-object v0

    return-object v0
.end method
