.class final Lcom/snowfish/cn/ganga/offline/sf/b;
.super Landroid/os/Handler;
.source "APayment.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 33
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 41
    :goto_0
    return-void

    .line 35
    :pswitch_0
    invoke-static {}, Lcom/snowfish/cn/ganga/offline/sf/SFInitListenerFactory;->getInitListener()Lcom/snowfish/cn/ganga/offline/helper/SFOfflineInitListener;

    move-result-object v0

    const-string v1, "success"

    const-string v2, "success"

    invoke-interface {v0, v1, v2}, Lcom/snowfish/cn/ganga/offline/helper/SFOfflineInitListener;->onResponse(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 38
    :pswitch_1
    invoke-static {}, Lcom/snowfish/cn/ganga/offline/sf/SFInitListenerFactory;->getInitListener()Lcom/snowfish/cn/ganga/offline/helper/SFOfflineInitListener;

    move-result-object v0

    const-string v1, "fail"

    const-string v2, "fail"

    invoke-interface {v0, v1, v2}, Lcom/snowfish/cn/ganga/offline/helper/SFOfflineInitListener;->onResponse(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
