.class final Lcom/snowfish/cn/ganga/offline/channel/g;
.super Ljava/lang/Object;
.source "SFCommonInterfaceAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/app/Activity;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:I

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:Ljava/lang/String;

.field private final synthetic f:Lcom/snowfish/cn/ganga/offline/helper/SFIPayResultListener;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/snowfish/cn/ganga/offline/helper/SFIPayResultListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/snowfish/cn/ganga/offline/channel/g;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/snowfish/cn/ganga/offline/channel/g;->b:Ljava/lang/String;

    iput p3, p0, Lcom/snowfish/cn/ganga/offline/channel/g;->c:I

    iput-object p4, p0, Lcom/snowfish/cn/ganga/offline/channel/g;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/snowfish/cn/ganga/offline/channel/g;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/snowfish/cn/ganga/offline/channel/g;->f:Lcom/snowfish/cn/ganga/offline/helper/SFIPayResultListener;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    .line 73
    invoke-static {}, Lcom/snowfish/cn/ganga/offline/channel/a;->b()Lcom/snowfish/cn/ganga/offline/channel/a;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/snowfish/cn/ganga/offline/channel/g;->a:Landroid/app/Activity;

    const-string v2, "SFCommonInterfaceAdapter"

    invoke-virtual {v0, v1, v2}, Lcom/snowfish/cn/ganga/offline/channel/a;->createPayAdapter(Landroid/content/Context;Ljava/lang/String;)Lcom/snowfish/cn/ganga/offline/basic/SFPayAdapter;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/snowfish/cn/ganga/offline/channel/g;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/snowfish/cn/ganga/offline/channel/g;->b:Ljava/lang/String;

    iget v3, p0, Lcom/snowfish/cn/ganga/offline/channel/g;->c:I

    iget-object v4, p0, Lcom/snowfish/cn/ganga/offline/channel/g;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/snowfish/cn/ganga/offline/channel/g;->e:Ljava/lang/String;

    .line 76
    iget-object v6, p0, Lcom/snowfish/cn/ganga/offline/channel/g;->f:Lcom/snowfish/cn/ganga/offline/helper/SFIPayResultListener;

    .line 75
    invoke-interface/range {v0 .. v6}, Lcom/snowfish/cn/ganga/offline/basic/SFPayAdapter;->recharge(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/snowfish/cn/ganga/offline/helper/SFIPayResultListener;)Z

    move-result v0

    .line 77
    const-string v1, "sfwarning"

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/snowfish/cn/ganga/offline/a/g;->t:[B

    invoke-static {v3}, Lcom/snowfish/cn/ganga/offline/basic/SFUtilsInterface;->bts([B)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/snowfish/cn/ganga/offline/channel/g;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " price = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/snowfish/cn/ganga/offline/channel/g;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/channel/g;->f:Lcom/snowfish/cn/ganga/offline/helper/SFIPayResultListener;

    const-string v1, "no support"

    invoke-virtual {v0, v1}, Lcom/snowfish/cn/ganga/offline/helper/SFIPayResultListener;->onFailed(Ljava/lang/String;)V

    .line 80
    const-string v0, "sfwarning"

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/snowfish/cn/ganga/offline/a/g;->t:[B

    invoke-static {v2}, Lcom/snowfish/cn/ganga/offline/basic/SFUtilsInterface;->bts([B)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " no support"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_0
    return-void
.end method
