.class final Lcn/bmob/v3/AsyncCustomEndpoints$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/bmob/v3/listener/XListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/bmob/v3/AsyncCustomEndpoints;->callEndpoint(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lcn/bmob/v3/listener/CloudCodeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic Code:Lcn/bmob/v3/listener/CloudCodeListener;


# direct methods
.method constructor <init>(Lcn/bmob/v3/AsyncCustomEndpoints;Lcn/bmob/v3/listener/CloudCodeListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p2, p0, Lcn/bmob/v3/AsyncCustomEndpoints$1;->Code:Lcn/bmob/v3/listener/CloudCodeListener;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcn/bmob/v3/AsyncCustomEndpoints$1;->Code:Lcn/bmob/v3/listener/CloudCodeListener;

    invoke-interface {v0, p1}, Lcn/bmob/v3/listener/CloudCodeListener;->onFailure(Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public final onSuccess(Lg/madness;)V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcn/bmob/v3/AsyncCustomEndpoints$1;->Code:Lcn/bmob/v3/listener/CloudCodeListener;

    invoke-interface {v0, p1}, Lcn/bmob/v3/listener/CloudCodeListener;->onSuccess(Ljava/lang/Object;)V

    .line 76
    return-void
.end method
