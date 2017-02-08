.class Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$7;
.super Ljava/lang/Object;
.source "SFNativeAdapter.java"

# interfaces
.implements Lcom/snowfish/android/ahelper/APaymentCodeListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onCallBack(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 141
    invoke-static {p1, p2, p3, p4, p5}, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter;->onCodeCallback(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 142
    return-void
.end method
