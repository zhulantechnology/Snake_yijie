.class final Lcn/bmob/v3/BmobUser$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/bmob/v3/listener/XListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/bmob/v3/BmobUser;->login(Landroid/content/Context;Lcn/bmob/v3/listener/InsertListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic F:Landroid/content/Context;

.field private final synthetic L:Lcn/bmob/v3/listener/InsertListener;

.field private synthetic t:Lcn/bmob/v3/BmobUser;


# direct methods
.method constructor <init>(Lcn/bmob/v3/BmobUser;Landroid/content/Context;Lcn/bmob/v3/listener/InsertListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/bmob/v3/BmobUser$2;->t:Lcn/bmob/v3/BmobUser;

    iput-object p2, p0, Lcn/bmob/v3/BmobUser$2;->F:Landroid/content/Context;

    iput-object p3, p0, Lcn/bmob/v3/BmobUser$2;->L:Lcn/bmob/v3/listener/InsertListener;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcn/bmob/v3/BmobUser$2;->L:Lcn/bmob/v3/listener/InsertListener;

    invoke-interface {v0, p1}, Lcn/bmob/v3/listener/InsertListener;->onFailure(Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public final onSuccess(Lg/madness;)V
    .locals 4

    .prologue
    .line 125
    iget-object v0, p0, Lcn/bmob/v3/BmobUser$2;->t:Lcn/bmob/v3/BmobUser;

    invoke-virtual {p1}, Lg/madness;->x()Lg/is;

    move-result-object v1

    const-string v2, "objectId"

    invoke-virtual {v1, v2}, Lg/is;->c(Ljava/lang/String;)Lg/madness;

    move-result-object v1

    invoke-virtual {v1}, Lg/madness;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/bmob/v3/BmobUser;->setObjectId(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcn/bmob/v3/BmobUser$2;->t:Lcn/bmob/v3/BmobUser;

    invoke-virtual {p1}, Lg/madness;->x()Lg/is;

    move-result-object v1

    const-string v2, "createdAt"

    invoke-virtual {v1, v2}, Lg/is;->c(Ljava/lang/String;)Lg/madness;

    move-result-object v1

    invoke-virtual {v1}, Lg/madness;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/bmob/v3/BmobUser;->setCreatedAt(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcn/bmob/v3/BmobUser$2;->t:Lcn/bmob/v3/BmobUser;

    invoke-virtual {p1}, Lg/madness;->x()Lg/is;

    move-result-object v1

    const-string v2, "updatedAt"

    invoke-virtual {v1, v2}, Lg/is;->c(Ljava/lang/String;)Lg/madness;

    move-result-object v1

    invoke-virtual {v1}, Lg/madness;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/bmob/v3/BmobUser;->setUpdatedAt(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcn/bmob/v3/BmobUser$2;->t:Lcn/bmob/v3/BmobUser;

    invoke-virtual {p1}, Lg/madness;->x()Lg/is;

    move-result-object v1

    const-string v2, "sessionToken"

    invoke-virtual {v1, v2}, Lg/is;->c(Ljava/lang/String;)Lg/madness;

    move-result-object v1

    invoke-virtual {v1}, Lg/madness;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/bmob/v3/BmobUser;->setSessionToken(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p1}, Lg/madness;->x()Lg/is;

    move-result-object v0

    const-string v1, "emailVerified"

    invoke-virtual {v0, v1}, Lg/is;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcn/bmob/v3/BmobUser$2;->t:Lcn/bmob/v3/BmobUser;

    invoke-virtual {p1}, Lg/madness;->x()Lg/is;

    move-result-object v1

    const-string v2, "emailVerified"

    invoke-virtual {v1, v2}, Lg/is;->c(Ljava/lang/String;)Lg/madness;

    move-result-object v1

    invoke-virtual {v1}, Lg/madness;->s()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/bmob/v3/BmobUser;->setEmailVerified(Ljava/lang/Boolean;)V

    .line 134
    :cond_0
    new-instance v0, Lb/This;

    iget-object v1, p0, Lcn/bmob/v3/BmobUser$2;->F:Landroid/content/Context;

    invoke-direct {v0, v1}, Lb/This;-><init>(Landroid/content/Context;)V

    const-string v1, "sessionToken"

    invoke-virtual {p1}, Lg/madness;->x()Lg/is;

    move-result-object v2

    const-string v3, "sessionToken"

    invoke-virtual {v2, v3}, Lg/is;->c(Ljava/lang/String;)Lg/madness;

    move-result-object v2

    invoke-virtual {v2}, Lg/madness;->getAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lb/This;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    new-instance v0, Lb/This;

    iget-object v1, p0, Lcn/bmob/v3/BmobUser$2;->F:Landroid/content/Context;

    invoke-direct {v0, v1}, Lb/This;-><init>(Landroid/content/Context;)V

    const-string v1, "user"

    invoke-virtual {p1}, Lg/madness;->x()Lg/is;

    move-result-object v2

    invoke-virtual {v2}, Lg/is;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lb/This;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcn/bmob/v3/BmobUser$2;->L:Lcn/bmob/v3/listener/InsertListener;

    invoke-interface {v0}, Lcn/bmob/v3/listener/InsertListener;->onSuccess()V

    .line 138
    return-void
.end method
