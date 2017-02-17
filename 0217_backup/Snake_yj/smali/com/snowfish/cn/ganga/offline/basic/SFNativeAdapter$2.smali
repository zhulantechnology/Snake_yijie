.class Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$2;
.super Lcom/snowfish/cn/ganga/offline/helper/SFIPayResultListener;
.source "SFNativeAdapter.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/snowfish/cn/ganga/offline/helper/SFIPayResultListener;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onCanceled(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 40
    # getter for: Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter;->mSFActionCallback:Lcom/snowfish/cn/ganga/offline/basic/SFActionCallback;
    invoke-static {}, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter;->access$0()Lcom/snowfish/cn/ganga/offline/basic/SFActionCallback;

    move-result-object v0

    new-instance v1, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$2$1;

    invoke-direct {v1, p0, p1}, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$2$1;-><init>(Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$2;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/snowfish/cn/ganga/offline/basic/SFActionCallback;->callback(Ljava/lang/Runnable;)V

    .line 48
    return-void
.end method

.method public onFailed(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 52
    # getter for: Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter;->mSFActionCallback:Lcom/snowfish/cn/ganga/offline/basic/SFActionCallback;
    invoke-static {}, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter;->access$0()Lcom/snowfish/cn/ganga/offline/basic/SFActionCallback;

    move-result-object v0

    new-instance v1, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$2$2;

    invoke-direct {v1, p0, p1}, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$2$2;-><init>(Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$2;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/snowfish/cn/ganga/offline/basic/SFActionCallback;->callback(Ljava/lang/Runnable;)V

    .line 60
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 64
    # getter for: Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter;->mSFActionCallback:Lcom/snowfish/cn/ganga/offline/basic/SFActionCallback;
    invoke-static {}, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter;->access$0()Lcom/snowfish/cn/ganga/offline/basic/SFActionCallback;

    move-result-object v0

    new-instance v1, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$2$3;

    invoke-direct {v1, p0, p1}, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$2$3;-><init>(Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$2;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/snowfish/cn/ganga/offline/basic/SFActionCallback;->callback(Ljava/lang/Runnable;)V

    .line 72
    return-void
.end method
