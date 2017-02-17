.class final Lcn/bmob/v3/BmobUser$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/bmob/v3/listener/XListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/bmob/v3/BmobUser;->updateObject(Landroid/content/Context;Lcn/bmob/v3/listener/UpdateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic a:Lcn/bmob/v3/listener/UpdateListener;

.field private synthetic t:Lcn/bmob/v3/BmobUser;


# direct methods
.method constructor <init>(Lcn/bmob/v3/BmobUser;Lcn/bmob/v3/listener/UpdateListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/bmob/v3/BmobUser$3;->t:Lcn/bmob/v3/BmobUser;

    iput-object p2, p0, Lcn/bmob/v3/BmobUser$3;->a:Lcn/bmob/v3/listener/UpdateListener;

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcn/bmob/v3/BmobUser$3;->a:Lcn/bmob/v3/listener/UpdateListener;

    invoke-interface {v0, p1}, Lcn/bmob/v3/listener/UpdateListener;->onFailure(Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method public final onSuccess(Lg/madness;)V
    .locals 3

    .prologue
    .line 178
    iget-object v0, p0, Lcn/bmob/v3/BmobUser$3;->t:Lcn/bmob/v3/BmobUser;

    invoke-virtual {p1}, Lg/madness;->x()Lg/is;

    move-result-object v1

    const-string v2, "updatedAt"

    invoke-virtual {v1, v2}, Lg/is;->c(Ljava/lang/String;)Lg/madness;

    move-result-object v1

    invoke-virtual {v1}, Lg/madness;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/bmob/v3/BmobUser;->setUpdatedAt(Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcn/bmob/v3/BmobUser$3;->a:Lcn/bmob/v3/listener/UpdateListener;

    invoke-interface {v0}, Lcn/bmob/v3/listener/UpdateListener;->onSuccess()V

    .line 180
    return-void
.end method
