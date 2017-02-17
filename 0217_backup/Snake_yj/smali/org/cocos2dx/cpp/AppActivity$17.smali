.class Lorg/cocos2dx/cpp/AppActivity$17;
.super Ljava/lang/Object;
.source "AppActivity.java"

# interfaces
.implements Lcn/bmob/v3/listener/GetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/cpp/AppActivity;->queryPayChannelByObjectId()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/bmob/v3/listener/GetListener",
        "<",
        "Lorg/cocos2dx/cpp/PayControl;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/cpp/AppActivity;


# direct methods
.method constructor <init>(Lorg/cocos2dx/cpp/AppActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cocos2dx/cpp/AppActivity$17;->this$0:Lorg/cocos2dx/cpp/AppActivity;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 38
    const-string v0, "XXX"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fail  msg ------:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    return-void
.end method

.method public onSuccess(Lorg/cocos2dx/cpp/PayControl;)V
    .locals 3
    .param p1, "object"    # Lorg/cocos2dx/cpp/PayControl;

    .prologue
    .line 32
    invoke-virtual {p1}, Lorg/cocos2dx/cpp/PayControl;->getChannelId()I

    move-result v0

    sput v0, Lorg/cocos2dx/cpp/AppActivity;->payChannelId:I

    .line 33
    const-string v0, "XXX"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CHANNEL ID ------:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lorg/cocos2dx/cpp/AppActivity;->payChannelId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
	
		invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxHelper;->setCocosData()V

    .line 34
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lorg/cocos2dx/cpp/PayControl;

    invoke-virtual {p0, p1}, Lorg/cocos2dx/cpp/AppActivity$17;->onSuccess(Lorg/cocos2dx/cpp/PayControl;)V

    return-void
.end method
