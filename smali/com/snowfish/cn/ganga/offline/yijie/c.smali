.class public final Lcom/snowfish/cn/ganga/offline/yijie/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/snowfish/a/a/p/IPaymentResultListener;
.implements Lcom/snowfish/cn/ganga/offline/basic/SFPayAdapter;


# static fields
.field private static synthetic b:[I


# instance fields
.field private a:Lcom/snowfish/cn/ganga/offline/helper/SFIPayResultListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic a()[I
    .locals 3

    sget-object v0, Lcom/snowfish/cn/ganga/offline/yijie/c;->b:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/snowfish/a/a/p/APaymentResult;->values()[Lcom/snowfish/a/a/p/APaymentResult;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/snowfish/a/a/p/APaymentResult;->Canceled:Lcom/snowfish/a/a/p/APaymentResult;

    invoke-virtual {v1}, Lcom/snowfish/a/a/p/APaymentResult;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    :try_start_1
    sget-object v1, Lcom/snowfish/a/a/p/APaymentResult;->Failure:Lcom/snowfish/a/a/p/APaymentResult;

    invoke-virtual {v1}, Lcom/snowfish/a/a/p/APaymentResult;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/snowfish/a/a/p/APaymentResult;->OutOfBanance:Lcom/snowfish/a/a/p/APaymentResult;

    invoke-virtual {v1}, Lcom/snowfish/a/a/p/APaymentResult;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lcom/snowfish/a/a/p/APaymentResult;->Success:Lcom/snowfish/a/a/p/APaymentResult;

    invoke-virtual {v1}, Lcom/snowfish/a/a/p/APaymentResult;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_4
    sput-object v0, Lcom/snowfish/cn/ganga/offline/yijie/c;->b:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_4
.end method


# virtual methods
.method public final call(Landroid/content/Context;[B)[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final isPaid(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1, p2}, Lcom/snowfish/android/ahelper/APayment;->isPaid(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final onPaymentCompleted(Lcom/snowfish/a/a/p/APaymentResult;)V
    .locals 2

    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/yijie/c;->a:Lcom/snowfish/cn/ganga/offline/helper/SFIPayResultListener;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/snowfish/cn/ganga/offline/basic/SFUtilsInterface;->sp(Z)V

    invoke-static {}, Lcom/snowfish/cn/ganga/offline/yijie/c;->a()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/snowfish/a/a/p/APaymentResult;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/yijie/c;->a:Lcom/snowfish/cn/ganga/offline/helper/SFIPayResultListener;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/snowfish/cn/ganga/offline/helper/SFIPayResultListener;->onSuccess(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/yijie/c;->a:Lcom/snowfish/cn/ganga/offline/helper/SFIPayResultListener;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/snowfish/cn/ganga/offline/helper/SFIPayResultListener;->onCanceled(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/yijie/c;->a:Lcom/snowfish/cn/ganga/offline/helper/SFIPayResultListener;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/snowfish/cn/ganga/offline/helper/SFIPayResultListener;->onFailed(Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public final pay(Landroid/content/Context;Ljava/lang/String;Lcom/snowfish/cn/ganga/offline/helper/SFIPayResultListener;)V
    .locals 3

    :try_start_0
    iput-object p3, p0, Lcom/snowfish/cn/ganga/offline/yijie/c;->a:Lcom/snowfish/cn/ganga/offline/helper/SFIPayResultListener;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u652f\u4ed8"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "\u6a21\u62df\u652f\u4ed8\u5931\u8d25"

    new-instance v2, Lcom/snowfish/cn/ganga/offline/yijie/d;

    invoke-direct {v2, p3}, Lcom/snowfish/cn/ganga/offline/yijie/d;-><init>(Lcom/snowfish/cn/ganga/offline/helper/SFIPayResultListener;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v1, "\u6a21\u62df\u652f\u4ed8\u6210\u529f"

    new-instance v2, Lcom/snowfish/cn/ganga/offline/yijie/e;

    invoke-direct {v2, p3}, Lcom/snowfish/cn/ganga/offline/yijie/e;-><init>(Lcom/snowfish/cn/ganga/offline/helper/SFIPayResultListener;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/snowfish/cn/ganga/offline/yijie/f;

    invoke-direct {v1}, Lcom/snowfish/cn/ganga/offline/yijie/f;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/snowfish/cn/ganga/offline/basic/SFUtilsInterface;->sp(Z)V

    goto :goto_0
.end method

.method public final recharge(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/snowfish/cn/ganga/offline/helper/SFIPayResultListener;)Z
    .locals 3

    :try_start_0
    iput-object p6, p0, Lcom/snowfish/cn/ganga/offline/yijie/c;->a:Lcom/snowfish/cn/ganga/offline/helper/SFIPayResultListener;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "@CHARGE"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "@DESC"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "@APPUSER"

    invoke-interface {v0, v1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "0"

    const/4 v2, 0x0

    invoke-static {p1, v1, p0, v2, v0}, Lcom/snowfish/android/ahelper/APayment;->pay(Landroid/content/Context;Ljava/lang/String;Lcom/snowfish/a/a/p/IPaymentResultListener;Landroid/os/Handler;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setPaid(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/snowfish/android/ahelper/APayment;->setPaid(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-static {p1, p2, v0}, Lcom/snowfish/android/ahelper/APaymentUnity;->setPaid(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public final showUI(Landroid/content/Context;)V
    .locals 0

    return-void
.end method
