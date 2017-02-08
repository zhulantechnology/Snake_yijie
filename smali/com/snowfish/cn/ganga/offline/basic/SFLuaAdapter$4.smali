.class Lcom/snowfish/cn/ganga/offline/basic/SFLuaAdapter$4;
.super Ljava/lang/Object;
.source "SFLuaAdapter.java"

# interfaces
.implements Lcom/snowfish/cn/ganga/offline/helper/SFGameExitListener;


# instance fields
.field private final synthetic val$luaCallback:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 1
    iput p1, p0, Lcom/snowfish/cn/ganga/offline/basic/SFLuaAdapter$4;->val$luaCallback:I

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGameExit(Z)V
    .locals 3

    .prologue
    .line 151
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 153
    :try_start_0
    const-string v2, "result"

    if-eqz p1, :cond_0

    const-string v0, "exit"

    :goto_0
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :goto_1
    iget v0, p0, Lcom/snowfish/cn/ganga/offline/basic/SFLuaAdapter$4;->val$luaCallback:I

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/snowfish/cn/ganga/offline/basic/SFLuaAdapter;->runGLThreadCallBack(ILjava/lang/String;Z)V

    .line 159
    return-void

    .line 153
    :cond_0
    :try_start_1
    const-string v0, "noExit"
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 154
    :catch_0
    move-exception v0

    .line 155
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method
