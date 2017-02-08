.class Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$3;
.super Ljava/lang/Object;
.source "SFNativeAdapter.java"

# interfaces
.implements Lcom/snowfish/cn/ganga/offline/helper/SFOfflineInitListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 81
    # getter for: Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter;->mSFActionCallback:Lcom/snowfish/cn/ganga/offline/basic/SFActionCallback;
    invoke-static {}, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter;->access$0()Lcom/snowfish/cn/ganga/offline/basic/SFActionCallback;

    move-result-object v0

    new-instance v1, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$3$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$3$1;-><init>(Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$3;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/snowfish/cn/ganga/offline/basic/SFActionCallback;->callback(Ljava/lang/Runnable;)V

    .line 88
    return-void
.end method
