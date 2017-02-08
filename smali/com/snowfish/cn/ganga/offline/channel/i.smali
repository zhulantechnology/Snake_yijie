.class final Lcom/snowfish/cn/ganga/offline/channel/i;
.super Ljava/lang/Object;
.source "SFCommonInterfaceAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/app/Activity;

.field private final synthetic b:Lcom/snowfish/cn/ganga/offline/helper/SFGameExitListener;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/snowfish/cn/ganga/offline/helper/SFGameExitListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/snowfish/cn/ganga/offline/channel/i;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/snowfish/cn/ganga/offline/channel/i;->b:Lcom/snowfish/cn/ganga/offline/helper/SFGameExitListener;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 105
    :try_start_0
    const-string v0, "sfwarning"

    sget-object v1, Lcom/snowfish/cn/ganga/offline/a/g;->s:[B

    invoke-static {v1}, Lcom/snowfish/cn/ganga/offline/basic/SFUtilsInterface;->bts([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/channel/i;->a:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/snowfish/cn/ganga/offline/channel/c;->b(Landroid/app/Activity;Z)Lcom/snowfish/cn/ganga/offline/basic/SFBasicAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/snowfish/cn/ganga/offline/channel/i;->a:Landroid/app/Activity;

    new-instance v2, Lcom/snowfish/cn/ganga/offline/channel/j;

    iget-object v3, p0, Lcom/snowfish/cn/ganga/offline/channel/i;->a:Landroid/app/Activity;

    iget-object v4, p0, Lcom/snowfish/cn/ganga/offline/channel/i;->b:Lcom/snowfish/cn/ganga/offline/helper/SFGameExitListener;

    invoke-direct {v2, p0, v3, v4}, Lcom/snowfish/cn/ganga/offline/channel/j;-><init>(Lcom/snowfish/cn/ganga/offline/channel/i;Landroid/app/Activity;Lcom/snowfish/cn/ganga/offline/helper/SFGameExitListener;)V

    invoke-interface {v0, v1, v2}, Lcom/snowfish/cn/ganga/offline/basic/SFBasicAdapter;->onExit(Landroid/content/Context;Lcom/snowfish/cn/ganga/offline/helper/SFGameExitListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_0
    return-void

    .line 124
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/channel/i;->b:Lcom/snowfish/cn/ganga/offline/helper/SFGameExitListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/snowfish/cn/ganga/offline/helper/SFGameExitListener;->onGameExit(Z)V

    goto :goto_0
.end method
