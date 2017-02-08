.class Lcom/snowfish/cn/ganga/offline/basic/SFLuaAdapter$SFLuaExpandListener;
.super Ljava/lang/Object;
.source "SFLuaAdapter.java"

# interfaces
.implements Lcom/snowfish/cn/ganga/offline/helper/SFExtendListener;


# instance fields
.field private index:I

.field private luaFuncCallback:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput p1, p0, Lcom/snowfish/cn/ganga/offline/basic/SFLuaAdapter$SFLuaExpandListener;->index:I

    .line 181
    iput p2, p0, Lcom/snowfish/cn/ganga/offline/basic/SFLuaAdapter$SFLuaExpandListener;->luaFuncCallback:I

    .line 182
    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 186
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 188
    :try_start_0
    const-string v0, "index"

    iget v2, p0, Lcom/snowfish/cn/ganga/offline/basic/SFLuaAdapter$SFLuaExpandListener;->index:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 189
    const-string v0, "tag"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 190
    const-string v0, "value"

    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :goto_0
    iget v0, p0, Lcom/snowfish/cn/ganga/offline/basic/SFLuaAdapter$SFLuaExpandListener;->luaFuncCallback:I

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/snowfish/cn/ganga/offline/basic/SFLuaAdapter;->runGLThreadCallBack(ILjava/lang/String;Z)V

    .line 196
    return-void

    .line 191
    :catch_0
    move-exception v0

    .line 192
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
