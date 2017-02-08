.class Lcom/snowfish/cn/ganga/offline/basic/SFLuaAdapter$1;
.super Ljava/lang/Object;
.source "SFLuaAdapter.java"

# interfaces
.implements Lcom/snowfish/cn/ganga/offline/helper/SFOfflineInitListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 37
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 39
    :try_start_0
    const-string v0, "tag"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    const-string v0, "value"

    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snowfish/cn/ganga/offline/basic/SFLuaAdapter;->access$0(Ljava/lang/String;)V

    .line 45
    # getter for: Lcom/snowfish/cn/ganga/offline/basic/SFLuaAdapter;->mLuaInitCallbackFunc:I
    invoke-static {}, Lcom/snowfish/cn/ganga/offline/basic/SFLuaAdapter;->access$1()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 46
    # getter for: Lcom/snowfish/cn/ganga/offline/basic/SFLuaAdapter;->mLuaInitCallbackFunc:I
    invoke-static {}, Lcom/snowfish/cn/ganga/offline/basic/SFLuaAdapter;->access$1()I

    move-result v0

    # getter for: Lcom/snowfish/cn/ganga/offline/basic/SFLuaAdapter;->mInitResponse:Ljava/lang/String;
    invoke-static {}, Lcom/snowfish/cn/ganga/offline/basic/SFLuaAdapter;->access$2()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/snowfish/cn/ganga/offline/basic/SFLuaAdapter;->runGLThreadCallBack(ILjava/lang/String;Z)V

    .line 47
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/snowfish/cn/ganga/offline/basic/SFLuaAdapter;->access$0(Ljava/lang/String;)V

    .line 49
    :cond_0
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 42
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
