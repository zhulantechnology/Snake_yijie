.class Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$5;
.super Ljava/lang/Object;
.source "SFNativeAdapter.java"

# interfaces
.implements Lcom/snowfish/android/ahelper/APaymentCodeListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onCallBack(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 8

    .prologue
    .line 109
    # getter for: Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter;->mSFActionCallback:Lcom/snowfish/cn/ganga/offline/basic/SFActionCallback;
    invoke-static {}, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter;->access$0()Lcom/snowfish/cn/ganga/offline/basic/SFActionCallback;

    move-result-object v7

    new-instance v0, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$5$1;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$5$1;-><init>(Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$5;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v7, v0}, Lcom/snowfish/cn/ganga/offline/basic/SFActionCallback;->callback(Ljava/lang/Runnable;)V

    .line 121
    return-void
.end method
