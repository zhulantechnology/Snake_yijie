.class final Lcn/bmob/v3/requestmanager/thing$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/Though$thing;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/bmob/v3/requestmanager/thing;->Code(Lcn/bmob/v3/listener/XListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/Though$thing",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic E:Lcn/bmob/v3/listener/XListener;


# direct methods
.method constructor <init>(Lcn/bmob/v3/requestmanager/thing;Lcn/bmob/v3/listener/XListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p2, p0, Lcn/bmob/v3/requestmanager/thing$1;->E:Lcn/bmob/v3/listener/XListener;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic V(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 1
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcn/bmob/v3/requestmanager/ApiResult;

    invoke-static {v0, v1}, Ld/thing;->Code(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/bmob/v3/requestmanager/ApiResult;

    :try_start_0
    invoke-virtual {v0}, Lcn/bmob/v3/requestmanager/ApiResult;->getResult()Lcn/bmob/v3/requestmanager/Result;

    move-result-object v1

    invoke-virtual {v1}, Lcn/bmob/v3/requestmanager/Result;->getCode()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcn/bmob/v3/requestmanager/thing$1;->E:Lcn/bmob/v3/listener/XListener;

    invoke-virtual {v0}, Lcn/bmob/v3/requestmanager/ApiResult;->getResult()Lcn/bmob/v3/requestmanager/Result;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/requestmanager/Result;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcn/bmob/v3/listener/XListener;->onFailure(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcn/bmob/v3/requestmanager/thing$1;->E:Lcn/bmob/v3/listener/XListener;

    invoke-virtual {v0}, Lcn/bmob/v3/requestmanager/ApiResult;->getData()Lg/madness;

    move-result-object v0

    invoke-interface {v1, v0}, Lcn/bmob/v3/listener/XListener;->onSuccess(Lg/madness;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcn/bmob/v3/requestmanager/thing$1;->E:Lcn/bmob/v3/listener/XListener;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/bmob/v3/listener/XListener;->onFailure(Ljava/lang/String;)V

    goto :goto_0
.end method
