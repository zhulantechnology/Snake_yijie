.class public interface abstract Lcom/snowfish/cn/ganga/offline/basic/SFPayAdapter;
.super Ljava/lang/Object;
.source "SFPayAdapter.java"


# virtual methods
.method public abstract call(Landroid/content/Context;[B)[B
.end method

.method public abstract isPaid(Landroid/content/Context;Ljava/lang/String;)Z
.end method

.method public abstract pay(Landroid/content/Context;Ljava/lang/String;Lcom/snowfish/cn/ganga/offline/helper/SFIPayResultListener;)V
.end method

.method public abstract recharge(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/snowfish/cn/ganga/offline/helper/SFIPayResultListener;)Z
.end method

.method public abstract setPaid(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public abstract showUI(Landroid/content/Context;)V
.end method
