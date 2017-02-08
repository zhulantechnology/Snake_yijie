.class Lcom/snowfish/cn/ganga/offline/basic/SFLuaAdapter$3;
.super Lcom/snowfish/cn/ganga/offline/helper/SFIPayResultListener;
.source "SFLuaAdapter.java"


# instance fields
.field private final synthetic val$luaCallback:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 1
    iput p1, p0, Lcom/snowfish/cn/ganga/offline/basic/SFLuaAdapter$3;->val$luaCallback:I

    .line 91
    invoke-direct {p0}, Lcom/snowfish/cn/ganga/offline/helper/SFIPayResultListener;-><init>()V

    return-void
.end method

.method private luaPayCallBack(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 109
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 111
    :try_start_0
    const-string v0, "result"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 112
    const-string v0, "remain"

    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    iget v0, p0, Lcom/snowfish/cn/ganga/offline/basic/SFLuaAdapter$3;->val$luaCallback:I

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/snowfish/cn/ganga/offline/basic/SFLuaAdapter;->runGLThreadCallBack(ILjava/lang/String;Z)V

    .line 118
    return-void

    .line 113
    :catch_0
    move-exception v0

    .line 114
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onCanceled(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 105
    const-string v0, "cancel"

    invoke-direct {p0, v0, p1}, Lcom/snowfish/cn/ganga/offline/basic/SFLuaAdapter$3;->luaPayCallBack(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public onFailed(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 100
    const-string v0, "fail"

    invoke-direct {p0, v0, p1}, Lcom/snowfish/cn/ganga/offline/basic/SFLuaAdapter$3;->luaPayCallBack(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 95
    const-string v0, "success"

    invoke-direct {p0, v0, p1}, Lcom/snowfish/cn/ganga/offline/basic/SFLuaAdapter$3;->luaPayCallBack(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-void
.end method
