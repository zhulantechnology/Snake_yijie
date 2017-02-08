.class final Lcom/snowfish/cn/ganga/offline/a/i;
.super Landroid/os/Handler;
.source "SFUtils.java"


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 361
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 364
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 375
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 380
    return-void

    .line 367
    :pswitch_0
    invoke-static {}, Lcom/snowfish/cn/ganga/offline/channel/a;->b()Lcom/snowfish/cn/ganga/offline/channel/a;

    move-result-object v0

    .line 368
    invoke-static {}, Lcom/snowfish/cn/ganga/offline/a/h;->j()Landroid/content/Context;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/snowfish/cn/ganga/offline/channel/a;->createBasicAdapter(Landroid/content/Context;Ljava/lang/String;)Lcom/snowfish/cn/ganga/offline/basic/SFBasicAdapter;

    move-result-object v0

    .line 369
    invoke-static {}, Lcom/snowfish/cn/ganga/offline/a/h;->j()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/snowfish/cn/ganga/offline/basic/SFBasicAdapter;->showUI(Landroid/content/Context;)V

    goto :goto_0

    .line 372
    :pswitch_1
    invoke-static {}, Lcom/snowfish/cn/ganga/offline/channel/a;->b()Lcom/snowfish/cn/ganga/offline/channel/a;

    move-result-object v0

    .line 373
    invoke-static {}, Lcom/snowfish/cn/ganga/offline/a/h;->j()Landroid/content/Context;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/snowfish/cn/ganga/offline/channel/a;->createPayAdapter(Landroid/content/Context;Ljava/lang/String;)Lcom/snowfish/cn/ganga/offline/basic/SFPayAdapter;

    move-result-object v0

    .line 374
    invoke-static {}, Lcom/snowfish/cn/ganga/offline/a/h;->j()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/snowfish/cn/ganga/offline/basic/SFPayAdapter;->showUI(Landroid/content/Context;)V

    goto :goto_0

    .line 364
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
