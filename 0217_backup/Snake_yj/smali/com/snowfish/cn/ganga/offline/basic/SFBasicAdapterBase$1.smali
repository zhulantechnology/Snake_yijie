.class Lcom/snowfish/cn/ganga/offline/basic/SFBasicAdapterBase$1;
.super Ljava/lang/Object;
.source "SFBasicAdapterBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/snowfish/cn/ganga/offline/basic/SFBasicAdapterBase;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/snowfish/cn/ganga/offline/basic/SFBasicAdapterBase;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/snowfish/cn/ganga/offline/basic/SFBasicAdapterBase$1;->this$0:Lcom/snowfish/cn/ganga/offline/basic/SFBasicAdapterBase;

    iput-object p2, p0, Lcom/snowfish/cn/ganga/offline/basic/SFBasicAdapterBase$1;->val$context:Landroid/content/Context;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 52
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 53
    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/basic/SFBasicAdapterBase$1;->this$0:Lcom/snowfish/cn/ganga/offline/basic/SFBasicAdapterBase;

    iget-object v1, p0, Lcom/snowfish/cn/ganga/offline/basic/SFBasicAdapterBase$1;->this$0:Lcom/snowfish/cn/ganga/offline/basic/SFBasicAdapterBase;

    iget-object v1, v1, Lcom/snowfish/cn/ganga/offline/basic/SFBasicAdapterBase;->gameExitListener:Lcom/snowfish/cn/ganga/offline/helper/SFGameExitListener;

    invoke-virtual {v0, v1}, Lcom/snowfish/cn/ganga/offline/basic/SFBasicAdapterBase;->onGameConfirmExit(Lcom/snowfish/cn/ganga/offline/helper/SFGameExitListener;)V

    .line 54
    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/basic/SFBasicAdapterBase$1;->val$context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/snowfish/cn/ganga/offline/basic/SFBasicAdapterBase$1$1;

    invoke-direct {v1, p0}, Lcom/snowfish/cn/ganga/offline/basic/SFBasicAdapterBase$1$1;-><init>(Lcom/snowfish/cn/ganga/offline/basic/SFBasicAdapterBase$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 62
    return-void
.end method
