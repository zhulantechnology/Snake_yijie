.class final Lcom/snowfish/cn/ganga/offline/channel/j;
.super Ljava/lang/Object;
.source "SFCommonInterfaceAdapter.java"

# interfaces
.implements Lcom/snowfish/cn/ganga/offline/helper/SFGameExitListener;


# instance fields
.field private final synthetic a:Landroid/app/Activity;

.field private final synthetic b:Lcom/snowfish/cn/ganga/offline/helper/SFGameExitListener;


# direct methods
.method constructor <init>(Lcom/snowfish/cn/ganga/offline/channel/i;Landroid/app/Activity;Lcom/snowfish/cn/ganga/offline/helper/SFGameExitListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p2, p0, Lcom/snowfish/cn/ganga/offline/channel/j;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/snowfish/cn/ganga/offline/channel/j;->b:Lcom/snowfish/cn/ganga/offline/helper/SFGameExitListener;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGameExit(Z)V
    .locals 3

    .prologue
    .line 110
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/channel/j;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/snowfish/cn/ganga/offline/channel/c;->f(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/channel/j;->a:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/snowfish/cn/ganga/offline/channel/c;->b(Landroid/app/Activity;Z)Lcom/snowfish/cn/ganga/offline/basic/SFBasicAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/snowfish/cn/ganga/offline/channel/j;->a:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/snowfish/cn/ganga/offline/basic/SFBasicAdapter;->onDestroy(Landroid/content/Context;)V

    .line 113
    :cond_0
    if-eqz p1, :cond_1

    .line 114
    invoke-static {}, Lcom/snowfish/cn/ganga/offline/channel/a;->b()Lcom/snowfish/cn/ganga/offline/channel/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snowfish/cn/ganga/offline/channel/a;->a()Lcom/snowfish/cn/ganga/offline/basic/SFIAdapterFactory;

    move-result-object v0

    .line 115
    if-eqz v0, :cond_1

    .line 116
    iget-object v1, p0, Lcom/snowfish/cn/ganga/offline/channel/j;->a:Landroid/app/Activity;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/snowfish/cn/ganga/offline/basic/SFIAdapterFactory;->createBasicAdapter(Landroid/content/Context;Ljava/lang/String;)Lcom/snowfish/cn/ganga/offline/basic/SFBasicAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/snowfish/cn/ganga/offline/channel/j;->a:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/snowfish/cn/ganga/offline/basic/SFBasicAdapter;->onDestroy(Landroid/content/Context;)V

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/channel/j;->b:Lcom/snowfish/cn/ganga/offline/helper/SFGameExitListener;

    invoke-interface {v0, p1}, Lcom/snowfish/cn/ganga/offline/helper/SFGameExitListener;->onGameExit(Z)V

    .line 121
    return-void
.end method
