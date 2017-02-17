.class final Lcom/snowfish/cn/ganga/offline/channel/e;
.super Ljava/lang/Object;
.source "SFCommonInterfaceAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Z

.field private final synthetic b:Landroid/app/Activity;

.field private final synthetic c:Lcom/snowfish/cn/ganga/offline/helper/SFOfflineInitListener;


# direct methods
.method constructor <init>(ZLandroid/app/Activity;Lcom/snowfish/cn/ganga/offline/helper/SFOfflineInitListener;)V
    .locals 0

    .prologue
    .line 1
    iput-boolean p1, p0, Lcom/snowfish/cn/ganga/offline/channel/e;->a:Z

    iput-object p2, p0, Lcom/snowfish/cn/ganga/offline/channel/e;->b:Landroid/app/Activity;

    iput-object p3, p0, Lcom/snowfish/cn/ganga/offline/channel/e;->c:Lcom/snowfish/cn/ganga/offline/helper/SFOfflineInitListener;

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/snowfish/cn/ganga/offline/channel/e;->a:Z

    invoke-static {v0}, Lcom/snowfish/cn/ganga/offline/a/h;->a(Z)V

    .line 230
    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/channel/e;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/snowfish/cn/ganga/offline/channel/e;->c:Lcom/snowfish/cn/ganga/offline/helper/SFOfflineInitListener;

    invoke-static {v0, v1}, Lcom/snowfish/cn/ganga/offline/channel/c;->a(Landroid/content/Context;Lcom/snowfish/cn/ganga/offline/helper/SFOfflineInitListener;)Z

    move-result v0

    .line 231
    iget-object v1, p0, Lcom/snowfish/cn/ganga/offline/channel/e;->b:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/snowfish/cn/ganga/offline/channel/c;->b(Landroid/app/Activity;Z)Lcom/snowfish/cn/ganga/offline/basic/SFBasicAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/snowfish/cn/ganga/offline/channel/e;->b:Landroid/app/Activity;

    invoke-interface {v1, v2}, Lcom/snowfish/cn/ganga/offline/basic/SFBasicAdapter;->onInit(Landroid/content/Context;)V

    .line 232
    iget-object v1, p0, Lcom/snowfish/cn/ganga/offline/channel/e;->b:Landroid/app/Activity;

    invoke-static {v1}, Lcom/snowfish/cn/ganga/offline/channel/c;->f(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 233
    iget-object v1, p0, Lcom/snowfish/cn/ganga/offline/channel/e;->b:Landroid/app/Activity;

    invoke-static {}, Lcom/snowfish/cn/ganga/offline/sf/f;->a()Lcom/snowfish/cn/ganga/offline/sf/f;

    invoke-static {}, Lcom/snowfish/cn/ganga/offline/sf/f;->b()Lcom/snowfish/cn/ganga/offline/sf/SFChannelAdapterAHelper;

    move-result-object v2

    const-string v3, "SFOtherAdapter"

    invoke-virtual {v2, v1, v3}, Lcom/snowfish/cn/ganga/offline/sf/SFChannelAdapterAHelper;->createBasicAdapter(Landroid/content/Context;Ljava/lang/String;)Lcom/snowfish/cn/ganga/offline/basic/SFBasicAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/snowfish/cn/ganga/offline/channel/e;->b:Landroid/app/Activity;

    invoke-interface {v1, v2}, Lcom/snowfish/cn/ganga/offline/basic/SFBasicAdapter;->onInit(Landroid/content/Context;)V

    .line 234
    if-nez v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/channel/e;->c:Lcom/snowfish/cn/ganga/offline/helper/SFOfflineInitListener;

    const-string v1, "success"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/snowfish/cn/ganga/offline/helper/SFOfflineInitListener;->onResponse(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :cond_0
    return-void
.end method
