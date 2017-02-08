.class Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$1;
.super Ljava/lang/Object;
.source "SFNativeAdapter.java"

# interfaces
.implements Lcom/snowfish/cn/ganga/offline/helper/SFGameExitListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onGameExit(Z)V
    .locals 2

    .prologue
    .line 23
    # getter for: Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter;->mSFActionCallback:Lcom/snowfish/cn/ganga/offline/basic/SFActionCallback;
    invoke-static {}, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter;->access$0()Lcom/snowfish/cn/ganga/offline/basic/SFActionCallback;

    move-result-object v0

    new-instance v1, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$1$1;

    invoke-direct {v1, p0, p1}, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$1$1;-><init>(Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$1;Z)V

    invoke-interface {v0, v1}, Lcom/snowfish/cn/ganga/offline/basic/SFActionCallback;->callback(Ljava/lang/Runnable;)V

    .line 31
    return-void
.end method
