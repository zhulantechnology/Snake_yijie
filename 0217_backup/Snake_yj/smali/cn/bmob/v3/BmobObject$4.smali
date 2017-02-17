.class final Lcn/bmob/v3/BmobObject$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/bmob/v3/listener/XListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/bmob/v3/BmobObject;->deleteBatch(Landroid/content/Context;Ljava/util/List;Lcn/bmob/v3/listener/DeleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic b:Lcn/bmob/v3/listener/DeleteListener;


# direct methods
.method constructor <init>(Lcn/bmob/v3/BmobObject;Lcn/bmob/v3/listener/DeleteListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p2, p0, Lcn/bmob/v3/BmobObject$4;->b:Lcn/bmob/v3/listener/DeleteListener;

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcn/bmob/v3/BmobObject$4;->b:Lcn/bmob/v3/listener/DeleteListener;

    invoke-interface {v0, p1}, Lcn/bmob/v3/listener/DeleteListener;->onFailure(Ljava/lang/String;)V

    .line 241
    return-void
.end method

.method public final onSuccess(Lg/madness;)V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcn/bmob/v3/BmobObject$4;->b:Lcn/bmob/v3/listener/DeleteListener;

    invoke-interface {v0}, Lcn/bmob/v3/listener/DeleteListener;->onSuccess()V

    .line 236
    return-void
.end method
