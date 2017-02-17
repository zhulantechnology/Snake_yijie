.class final Lc/This$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/bmob/v3/listener/XListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/This;->Code(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lcn/bmob/v3/listener/PushListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic G:Lcn/bmob/v3/listener/PushListener;


# direct methods
.method constructor <init>(Lc/This;Lcn/bmob/v3/listener/PushListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p2, p0, Lc/This$4;->G:Lcn/bmob/v3/listener/PushListener;

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 175
    iget-object v0, p0, Lc/This$4;->G:Lcn/bmob/v3/listener/PushListener;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lc/This$4;->G:Lcn/bmob/v3/listener/PushListener;

    invoke-interface {v0, p1}, Lcn/bmob/v3/listener/PushListener;->onFailure(Ljava/lang/String;)V

    .line 180
    :goto_0
    return-void

    .line 178
    :cond_0
    const-string v0, "BmobPush"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Push Message Error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final onSuccess(Lg/madness;)V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lc/This$4;->G:Lcn/bmob/v3/listener/PushListener;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lc/This$4;->G:Lcn/bmob/v3/listener/PushListener;

    invoke-interface {v0}, Lcn/bmob/v3/listener/PushListener;->onSuccess()V

    .line 170
    :cond_0
    return-void
.end method
