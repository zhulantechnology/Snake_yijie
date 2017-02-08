.class public final Lcom/snowfish/cn/ganga/offline/sf/h;
.super Ljava/lang/Object;
.source "SFPayAdapterAHelper.java"

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

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic a()[I
    .locals 3

    .prologue
    .line 17
    sget-object v0, Lcom/snowfish/cn/ganga/offline/sf/h;->b:[I

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
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/snowfish/a/a/p/APaymentResult;->Failure:Lcom/snowfish/a/a/p/APaymentResult;

    invoke-virtual {v1}, Lcom/snowfish/a/a/p/APaymentResult;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/snowfish/a/a/p/APaymentResult;->OutOfBanance:Lcom/snowfish/a/a/p/APaymentResult;

    invoke-virtual {v1}, Lcom/snowfish/a/a/p/APaymentResult;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/snowfish/a/a/p/APaymentResult;->Success:Lcom/snowfish/a/a/p/APaymentResult;

    invoke-virtual {v1}, Lcom/snowfish/a/a/p/APaymentResult;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/snowfish/cn/ganga/offline/sf/h;->b:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public final call(Landroid/content/Context;[B)[B
    .locals 1

    .prologue
    .line 68
    invoke-static {}, Lcom/snowfish/cn/ganga/offline/a/h;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/snowfish/android/ahelper/APaymentExtended;->call(Landroid/content/Context;[B)[B

    .line 69
    const/4 v0, 0x0

    return-object v0
.end method

.method public final isPaid(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 22
    invoke-static {p1, p2}, Lcom/snowfish/cn/ganga/offline/sf/a;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final onPaymentCompleted(Lcom/snowfish/a/a/p/APaymentResult;)V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/sf/h;->a:Lcom/snowfish/cn/ganga/offline/helper/SFIPayResultListener;

    if-nez v0, :cond_0

    .line 60
    :goto_0
    return-void

    .line 46
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/snowfish/cn/ganga/offline/basic/SFUtilsInterface;->sp(Z)V

    .line 47
    invoke-static {}, Lcom/snowfish/cn/ganga/offline/sf/h;->a()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/snowfish/a/a/p/APaymentResult;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 49
    :pswitch_0
    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/sf/h;->a:Lcom/snowfish/cn/ganga/offline/helper/SFIPayResultListener;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/snowfish/cn/ganga/offline/helper/SFIPayResultListener;->onSuccess(Ljava/lang/String;)V

    .line 50
    const-string v0, "sfwarning"

    sget-object v1, Lcom/snowfish/cn/ganga/offline/a/g;->B:[B

    invoke-static {v1}, Lcom/snowfish/cn/ganga/offline/basic/SFUtilsInterface;->bts([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 53
    :pswitch_1
    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/sf/h;->a:Lcom/snowfish/cn/ganga/offline/helper/SFIPayResultListener;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/snowfish/cn/ganga/offline/helper/SFIPayResultListener;->onCanceled(Ljava/lang/String;)V

    .line 54
    const-string v0, "sfwarning"

    sget-object v1, Lcom/snowfish/cn/ganga/offline/a/g;->C:[B

    invoke-static {v1}, Lcom/snowfish/cn/ganga/offline/basic/SFUtilsInterface;->bts([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 58
    :pswitch_2
    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/sf/h;->a:Lcom/snowfish/cn/ganga/offline/helper/SFIPayResultListener;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/snowfish/cn/ganga/offline/helper/SFIPayResultListener;->onFailed(Ljava/lang/String;)V

    .line 59
    const-string v0, "sfwarning"

    sget-object v1, Lcom/snowfish/cn/ganga/offline/a/g;->D:[B

    invoke-static {v1}, Lcom/snowfish/cn/ganga/offline/basic/SFUtilsInterface;->bts([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 47
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public final pay(Landroid/content/Context;Ljava/lang/String;Lcom/snowfish/cn/ganga/offline/helper/SFIPayResultListener;)V
    .locals 2

    .prologue
    .line 27
    :try_start_0
    iput-object p3, p0, Lcom/snowfish/cn/ganga/offline/sf/h;->a:Lcom/snowfish/cn/ganga/offline/helper/SFIPayResultListener;

    .line 28
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, p2, p0, v0, v1}, Lcom/snowfish/cn/ganga/offline/sf/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/snowfish/a/a/p/IPaymentResultListener;Landroid/os/Handler;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :goto_0
    return-void

    .line 30
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/snowfish/cn/ganga/offline/basic/SFUtilsInterface;->sp(Z)V

    goto :goto_0
.end method

.method public final recharge(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/snowfish/cn/ganga/offline/helper/SFIPayResultListener;)Z
    .locals 3

    .prologue
    .line 76
    :try_start_0
    iput-object p6, p0, Lcom/snowfish/cn/ganga/offline/sf/h;->a:Lcom/snowfish/cn/ganga/offline/helper/SFIPayResultListener;

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 78
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 79
    const-string v2, "@CHARGE"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v1, "@DESC"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string v1, "@APPUSER"

    invoke-interface {v0, v1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v1, "0"

    const/4 v2, 0x0

    invoke-static {p1, v1, p0, v2, v0}, Lcom/snowfish/cn/ganga/offline/sf/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/snowfish/a/a/p/IPaymentResultListener;Landroid/os/Handler;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    const/4 v0, 0x1

    .line 87
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setPaid(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 35
    invoke-static {}, Lcom/snowfish/cn/ganga/offline/a/h;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    invoke-static {p1, p2, v1}, Lcom/snowfish/cn/ganga/offline/sf/a;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 40
    :goto_0
    return-void

    .line 38
    :cond_0
    invoke-static {p1, p2, v1}, Lcom/snowfish/android/ahelper/APaymentUnity;->setPaid(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public final showUI(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 92
    return-void
.end method
