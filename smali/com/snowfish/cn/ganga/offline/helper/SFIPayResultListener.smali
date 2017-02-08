.class public abstract Lcom/snowfish/cn/ganga/offline/helper/SFIPayResultListener;
.super Ljava/lang/Object;
.source "SFIPayResultListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onCanceled(Ljava/lang/String;)V
.end method

.method public abstract onFailed(Ljava/lang/String;)V
.end method

.method public abstract onSuccess(Ljava/lang/String;)V
.end method
