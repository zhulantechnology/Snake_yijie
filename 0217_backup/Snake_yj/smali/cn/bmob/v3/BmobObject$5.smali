.class final Lcn/bmob/v3/BmobObject$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/bmob/v3/listener/XListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/bmob/v3/BmobObject;->updateObject(Landroid/content/Context;Ljava/lang/String;Lcn/bmob/v3/listener/UpdateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic D:Lcn/bmob/v3/BmobObject;

.field private final synthetic a:Lcn/bmob/v3/listener/UpdateListener;


# direct methods
.method constructor <init>(Lcn/bmob/v3/BmobObject;Lcn/bmob/v3/listener/UpdateListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/bmob/v3/BmobObject$5;->D:Lcn/bmob/v3/BmobObject;

    iput-object p2, p0, Lcn/bmob/v3/BmobObject$5;->a:Lcn/bmob/v3/listener/UpdateListener;

    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcn/bmob/v3/BmobObject$5;->a:Lcn/bmob/v3/listener/UpdateListener;

    invoke-interface {v0, p1}, Lcn/bmob/v3/listener/UpdateListener;->onFailure(Ljava/lang/String;)V

    .line 363
    return-void
.end method

.method public final onSuccess(Lg/madness;)V
    .locals 3

    .prologue
    .line 355
    iget-object v0, p0, Lcn/bmob/v3/BmobObject$5;->D:Lcn/bmob/v3/BmobObject;

    invoke-virtual {p1}, Lg/madness;->x()Lg/is;

    move-result-object v1

    const-string v2, "updatedAt"

    invoke-virtual {v1, v2}, Lg/is;->c(Ljava/lang/String;)Lg/madness;

    move-result-object v1

    invoke-virtual {v1}, Lg/madness;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/bmob/v3/BmobObject;->setUpdatedAt(Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Lcn/bmob/v3/BmobObject$5;->a:Lcn/bmob/v3/listener/UpdateListener;

    invoke-interface {v0}, Lcn/bmob/v3/listener/UpdateListener;->onSuccess()V

    .line 357
    return-void
.end method
