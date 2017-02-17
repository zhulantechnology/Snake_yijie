.class public Lcom/snowfish/a/a/s/PA;
.super Landroid/app/Activity;
.source "PA.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/16 v1, 0x400

    const/4 v2, 0x0

    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-virtual {p0}, Lcom/snowfish/a/a/s/PA;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 35
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/snowfish/a/a/s/PA;->requestWindowFeature(I)Z

    .line 37
    new-instance v0, Lcom/snowfish/a/a/s/c;

    invoke-direct {v0, p0}, Lcom/snowfish/a/a/s/c;-><init>(Landroid/content/Context;)V

    .line 38
    new-instance v0, Lcom/snowfish/a/a/s/c;

    invoke-direct {v0, p0}, Lcom/snowfish/a/a/s/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/snowfish/a/a/s/PA;->setContentView(Landroid/view/View;)V

    .line 39
    invoke-virtual {p0}, Lcom/snowfish/a/a/s/PA;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 40
    if-eqz v0, :cond_0

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 42
    const-string v1, "@_"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-static {v2, v2, v2, v2, v0}, Lcom/snowfish/android/ahelper/APayment;->pay(Landroid/content/Context;Ljava/lang/String;Lcom/snowfish/a/a/p/IPaymentResultListener;Landroid/os/Handler;Ljava/util/Map;)V

    .line 45
    :cond_0
    return-void
.end method
