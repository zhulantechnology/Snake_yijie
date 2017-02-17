.class final Lc/This$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/bmob/v3/listener/XListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/This;->resetPassword(Landroid/content/Context;Ljava/lang/String;Lcn/bmob/v3/listener/ResetPasswordListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic A:Lcn/bmob/v3/listener/ResetPasswordListener;


# direct methods
.method constructor <init>(Lc/This;Lcn/bmob/v3/listener/ResetPasswordListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p2, p0, Lc/This$2;->A:Lcn/bmob/v3/listener/ResetPasswordListener;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lc/This$2;->A:Lcn/bmob/v3/listener/ResetPasswordListener;

    invoke-interface {v0, p1}, Lcn/bmob/v3/listener/ResetPasswordListener;->onFailure(Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public final onSuccess(Lg/madness;)V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lc/This$2;->A:Lcn/bmob/v3/listener/ResetPasswordListener;

    invoke-interface {v0}, Lcn/bmob/v3/listener/ResetPasswordListener;->onSuccess()V

    .line 95
    return-void
.end method
