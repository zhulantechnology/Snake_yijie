.class final Lcn/bmob/v3/BmobObject$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/bmob/v3/listener/XListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/bmob/v3/BmobObject;->insertObject(Landroid/content/Context;Lcn/bmob/v3/listener/InsertListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic B:Lcn/bmob/v3/listener/InsertListener;

.field private synthetic D:Lcn/bmob/v3/BmobObject;


# direct methods
.method constructor <init>(Lcn/bmob/v3/BmobObject;Lcn/bmob/v3/listener/InsertListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/bmob/v3/BmobObject$1;->D:Lcn/bmob/v3/BmobObject;

    iput-object p2, p0, Lcn/bmob/v3/BmobObject$1;->B:Lcn/bmob/v3/listener/InsertListener;

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcn/bmob/v3/BmobObject$1;->B:Lcn/bmob/v3/listener/InsertListener;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcn/bmob/v3/BmobObject$1;->B:Lcn/bmob/v3/listener/InsertListener;

    invoke-interface {v0, p1}, Lcn/bmob/v3/listener/InsertListener;->onFailure(Ljava/lang/String;)V

    .line 179
    :cond_0
    return-void
.end method

.method public final onSuccess(Lg/madness;)V
    .locals 3

    .prologue
    .line 166
    iget-object v0, p0, Lcn/bmob/v3/BmobObject$1;->D:Lcn/bmob/v3/BmobObject;

    invoke-virtual {p1}, Lg/madness;->x()Lg/is;

    move-result-object v1

    const-string v2, "objectId"

    invoke-virtual {v1, v2}, Lg/is;->c(Ljava/lang/String;)Lg/madness;

    move-result-object v1

    invoke-virtual {v1}, Lg/madness;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/bmob/v3/BmobObject;->setObjectId(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcn/bmob/v3/BmobObject$1;->D:Lcn/bmob/v3/BmobObject;

    invoke-virtual {p1}, Lg/madness;->x()Lg/is;

    move-result-object v1

    const-string v2, "createdAt"

    invoke-virtual {v1, v2}, Lg/is;->c(Ljava/lang/String;)Lg/madness;

    move-result-object v1

    invoke-virtual {v1}, Lg/madness;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/bmob/v3/BmobObject;->setCreatedAt(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcn/bmob/v3/BmobObject$1;->B:Lcn/bmob/v3/listener/InsertListener;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcn/bmob/v3/BmobObject$1;->B:Lcn/bmob/v3/listener/InsertListener;

    invoke-interface {v0}, Lcn/bmob/v3/listener/InsertListener;->onSuccess()V

    .line 171
    :cond_0
    return-void
.end method
