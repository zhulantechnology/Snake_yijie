.class Lcom/snowfish/cn/ganga/offline/basic/SFLuaAdapter$2;
.super Lcom/snowfish/cn/ganga/offline/helper/SFIPayResultListener;
.source "SFLuaAdapter.java"


# instance fields
.field private final synthetic val$luaCallback:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 1
    iput p1, p0, Lcom/snowfish/cn/ganga/offline/basic/SFLuaAdapter$2;->val$luaCallback:I

    .line 58
    invoke-direct {p0}, Lcom/snowfish/cn/ganga/offline/helper/SFIPayResultListener;-><init>()V

    return-void
.end method

.method private luaPayCallBack(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 76
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 78
    :try_start_0
    const-string v0, "result"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    const-string v0, "remain"

    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    iget v0, p0, Lcom/snowfish/cn/ganga/offline/basic/SFLuaAdapter$2;->val$luaCallback:I

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/snowfish/cn/ganga/offline/basic/SFLuaAdapter;->runGLThreadCallBack(ILjava/lang/String;Z)V

    .line 85
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 81
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onCanceled(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 72
    const-string v0, "cancel"

    invoke-direct {p0, v0, p1}, Lcom/snowfish/cn/ganga/offline/basic/SFLuaAdapter$2;->luaPayCallBack(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public onFailed(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 67
    const-string v0, "fail"

    invoke-direct {p0, v0, p1}, Lcom/snowfish/cn/ganga/offline/basic/SFLuaAdapter$2;->luaPayCallBack(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 62
    const-string v0, "success"

    invoke-direct {p0, v0, p1}, Lcom/snowfish/cn/ganga/offline/basic/SFLuaAdapter$2;->luaPayCallBack(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method
