.class final Lcn/bmob/v3/BmobQuery$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/bmob/v3/listener/XListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/bmob/v3/BmobQuery;->count(Landroid/content/Context;Ljava/lang/Class;Lcn/bmob/v3/listener/CountListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic o:Lcn/bmob/v3/listener/CountListener;


# direct methods
.method constructor <init>(Lcn/bmob/v3/BmobQuery;Lcn/bmob/v3/listener/CountListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p2, p0, Lcn/bmob/v3/BmobQuery$1;->o:Lcn/bmob/v3/listener/CountListener;

    .line 656
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 667
    iget-object v0, p0, Lcn/bmob/v3/BmobQuery$1;->o:Lcn/bmob/v3/listener/CountListener;

    invoke-interface {v0, p1}, Lcn/bmob/v3/listener/CountListener;->onFailure(Ljava/lang/String;)V

    .line 668
    return-void
.end method

.method public final onSuccess(Lg/madness;)V
    .locals 3

    .prologue
    .line 661
    iget-object v0, p0, Lcn/bmob/v3/BmobQuery$1;->o:Lcn/bmob/v3/listener/CountListener;

    invoke-virtual {p1}, Lg/madness;->x()Lg/is;

    move-result-object v1

    const-string v2, "count"

    invoke-virtual {v1, v2}, Lg/is;->c(Ljava/lang/String;)Lg/madness;

    move-result-object v1

    invoke-virtual {v1}, Lg/madness;->r()I

    move-result v1

    invoke-interface {v0, v1}, Lcn/bmob/v3/listener/CountListener;->onSuccess(I)V

    .line 662
    return-void
.end method
