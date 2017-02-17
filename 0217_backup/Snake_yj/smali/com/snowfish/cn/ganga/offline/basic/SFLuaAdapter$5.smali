.class Lcom/snowfish/cn/ganga/offline/basic/SFLuaAdapter$5;
.super Ljava/lang/Object;
.source "SFLuaAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic val$func:I

.field private final synthetic val$prama:Ljava/lang/String;

.field private final synthetic val$release:Z


# direct methods
.method constructor <init>(ILjava/lang/String;Z)V
    .locals 0

    .prologue
    .line 1
    iput p1, p0, Lcom/snowfish/cn/ganga/offline/basic/SFLuaAdapter$5;->val$func:I

    iput-object p2, p0, Lcom/snowfish/cn/ganga/offline/basic/SFLuaAdapter$5;->val$prama:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/snowfish/cn/ganga/offline/basic/SFLuaAdapter$5;->val$release:Z

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 234
    iget v0, p0, Lcom/snowfish/cn/ganga/offline/basic/SFLuaAdapter$5;->val$func:I

    iget-object v1, p0, Lcom/snowfish/cn/ganga/offline/basic/SFLuaAdapter$5;->val$prama:Ljava/lang/String;

    # invokes: Lcom/snowfish/cn/ganga/offline/basic/SFLuaAdapter;->callCocos2dxLuaJavaBridgeCallLuaFunctionWithString(ILjava/lang/String;)V
    invoke-static {v0, v1}, Lcom/snowfish/cn/ganga/offline/basic/SFLuaAdapter;->access$3(ILjava/lang/String;)V

    .line 235
    iget-boolean v0, p0, Lcom/snowfish/cn/ganga/offline/basic/SFLuaAdapter$5;->val$release:Z

    if-eqz v0, :cond_0

    .line 236
    iget v0, p0, Lcom/snowfish/cn/ganga/offline/basic/SFLuaAdapter$5;->val$func:I

    # invokes: Lcom/snowfish/cn/ganga/offline/basic/SFLuaAdapter;->callCocos2dxLuaJavaBridgeReleaseLuaFunction(I)V
    invoke-static {v0}, Lcom/snowfish/cn/ganga/offline/basic/SFLuaAdapter;->access$4(I)V

    .line 238
    :cond_0
    return-void
.end method
