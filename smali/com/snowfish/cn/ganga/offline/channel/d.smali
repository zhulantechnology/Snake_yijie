.class final Lcom/snowfish/cn/ganga/offline/channel/d;
.super Ljava/lang/Object;
.source "SFCommonInterfaceAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/app/Activity;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Lcom/snowfish/cn/ganga/offline/helper/SFIPayResultListener;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/snowfish/cn/ganga/offline/helper/SFIPayResultListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/snowfish/cn/ganga/offline/channel/d;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/snowfish/cn/ganga/offline/channel/d;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/snowfish/cn/ganga/offline/channel/d;->c:Lcom/snowfish/cn/ganga/offline/helper/SFIPayResultListener;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 44
    invoke-static {}, Lcom/snowfish/cn/ganga/offline/channel/a;->b()Lcom/snowfish/cn/ganga/offline/channel/a;

    move-result-object v0

    .line 45
    iget-object v1, p0, Lcom/snowfish/cn/ganga/offline/channel/d;->a:Landroid/app/Activity;

    const-string v2, "SFCommonInterfaceAdapter"

    invoke-virtual {v0, v1, v2}, Lcom/snowfish/cn/ganga/offline/channel/a;->createPayAdapter(Landroid/content/Context;Ljava/lang/String;)Lcom/snowfish/cn/ganga/offline/basic/SFPayAdapter;

    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/snowfish/cn/ganga/offline/channel/d;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/snowfish/cn/ganga/offline/channel/d;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/snowfish/cn/ganga/offline/channel/d;->c:Lcom/snowfish/cn/ganga/offline/helper/SFIPayResultListener;

    invoke-interface {v0, v1, v2, v3}, Lcom/snowfish/cn/ganga/offline/basic/SFPayAdapter;->pay(Landroid/content/Context;Ljava/lang/String;Lcom/snowfish/cn/ganga/offline/helper/SFIPayResultListener;)V

    .line 47
    const-string v0, "sfwarning"

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/snowfish/cn/ganga/offline/a/g;->u:[B

    invoke-static {v2}, Lcom/snowfish/cn/ganga/offline/basic/SFUtilsInterface;->bts([B)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/snowfish/cn/ganga/offline/channel/d;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    return-void
.end method
