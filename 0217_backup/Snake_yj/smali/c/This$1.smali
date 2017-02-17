.class final Lc/This$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/bmob/v3/listener/XListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/This;->requestEmailVerify(Landroid/content/Context;Ljava/lang/String;Lcn/bmob/v3/listener/EmailVerifyListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic z:Lcn/bmob/v3/listener/EmailVerifyListener;


# direct methods
.method constructor <init>(Lc/This;Lcn/bmob/v3/listener/EmailVerifyListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p2, p0, Lc/This$1;->z:Lcn/bmob/v3/listener/EmailVerifyListener;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lc/This$1;->z:Lcn/bmob/v3/listener/EmailVerifyListener;

    invoke-interface {v0, p1}, Lcn/bmob/v3/listener/EmailVerifyListener;->onFailure(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public final onSuccess(Lg/madness;)V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lc/This$1;->z:Lcn/bmob/v3/listener/EmailVerifyListener;

    invoke-interface {v0}, Lcn/bmob/v3/listener/EmailVerifyListener;->onSuccess()V

    .line 59
    return-void
.end method
