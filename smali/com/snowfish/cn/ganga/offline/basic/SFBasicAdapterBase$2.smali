.class Lcom/snowfish/cn/ganga/offline/basic/SFBasicAdapterBase$2;
.super Ljava/lang/Object;
.source "SFBasicAdapterBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/snowfish/cn/ganga/offline/basic/SFBasicAdapterBase;


# direct methods
.method constructor <init>(Lcom/snowfish/cn/ganga/offline/basic/SFBasicAdapterBase;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/snowfish/cn/ganga/offline/basic/SFBasicAdapterBase$2;->this$0:Lcom/snowfish/cn/ganga/offline/basic/SFBasicAdapterBase;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 68
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 69
    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/basic/SFBasicAdapterBase$2;->this$0:Lcom/snowfish/cn/ganga/offline/basic/SFBasicAdapterBase;

    iget-object v1, p0, Lcom/snowfish/cn/ganga/offline/basic/SFBasicAdapterBase$2;->this$0:Lcom/snowfish/cn/ganga/offline/basic/SFBasicAdapterBase;

    iget-object v1, v1, Lcom/snowfish/cn/ganga/offline/basic/SFBasicAdapterBase;->gameExitListener:Lcom/snowfish/cn/ganga/offline/helper/SFGameExitListener;

    invoke-virtual {v0, v1}, Lcom/snowfish/cn/ganga/offline/basic/SFBasicAdapterBase;->onGameCancleExit(Lcom/snowfish/cn/ganga/offline/helper/SFGameExitListener;)V

    .line 70
    return-void
.end method
