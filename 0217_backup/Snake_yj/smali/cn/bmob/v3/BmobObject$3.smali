.class final Lcn/bmob/v3/BmobObject$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/bmob/v3/listener/XListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/bmob/v3/BmobObject;->updateBatch(Landroid/content/Context;Ljava/util/List;Lcn/bmob/v3/listener/UpdateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic a:Lcn/bmob/v3/listener/UpdateListener;


# direct methods
.method constructor <init>(Lcn/bmob/v3/BmobObject;Lcn/bmob/v3/listener/UpdateListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p2, p0, Lcn/bmob/v3/BmobObject$3;->a:Lcn/bmob/v3/listener/UpdateListener;

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcn/bmob/v3/BmobObject$3;->a:Lcn/bmob/v3/listener/UpdateListener;

    invoke-interface {v0, p1}, Lcn/bmob/v3/listener/UpdateListener;->onFailure(Ljava/lang/String;)V

    .line 221
    return-void
.end method

.method public final onSuccess(Lg/madness;)V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcn/bmob/v3/BmobObject$3;->a:Lcn/bmob/v3/listener/UpdateListener;

    invoke-interface {v0}, Lcn/bmob/v3/listener/UpdateListener;->onSuccess()V

    .line 216
    return-void
.end method
