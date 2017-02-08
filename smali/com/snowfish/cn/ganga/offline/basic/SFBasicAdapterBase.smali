.class public abstract Lcom/snowfish/cn/ganga/offline/basic/SFBasicAdapterBase;
.super Ljava/lang/Object;
.source "SFBasicAdapterBase.java"

# interfaces
.implements Lcom/snowfish/cn/ganga/offline/basic/SFBasicAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "ZYBasicAdapterBase"


# instance fields
.field protected gameExitListener:Lcom/snowfish/cn/ganga/offline/helper/SFGameExitListener;

.field private isSupportCommuntiy:Z

.field private isSupportSmsPay:Z

.field protected mConfigFileName:Ljava/lang/String;

.field protected mExitMessage:Ljava/lang/String;

.field protected mExitTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, "\u4eb2\uff0c\u4f60\u786e\u5b9a\u9000\u51fa\u6e38\u620f\u5417\uff1f"

    iput-object v0, p0, Lcom/snowfish/cn/ganga/offline/basic/SFBasicAdapterBase;->mExitMessage:Ljava/lang/String;

    .line 16
    const-string v0, "\u6e38\u620f\u9000\u51fa"

    iput-object v0, p0, Lcom/snowfish/cn/ganga/offline/basic/SFBasicAdapterBase;->mExitTitle:Ljava/lang/String;

    .line 9
    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    const-string v0, "ZYBasicAdapterBase"

    return-object v0
.end method

.method protected isSupportCommuntiy()Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/snowfish/cn/ganga/offline/basic/SFBasicAdapterBase;->isSupportCommuntiy:Z

    return v0
.end method

.method protected isSupportSmsPay()Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/snowfish/cn/ganga/offline/basic/SFBasicAdapterBase;->isSupportSmsPay:Z

    return v0
.end method

.method public onDestroy(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method public onExit(Landroid/content/Context;Lcom/snowfish/cn/ganga/offline/helper/SFGameExitListener;)V
    .locals 0

    .prologue
    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/snowfish/cn/ganga/offline/basic/SFBasicAdapterBase;->showExitConfirm(Landroid/content/Context;Lcom/snowfish/cn/ganga/offline/helper/SFGameExitListener;)V

    .line 21
    return-void
.end method

.method protected onGameCancleExit(Lcom/snowfish/cn/ganga/offline/helper/SFGameExitListener;)V
    .locals 1

    .prologue
    .line 35
    if-eqz p1, :cond_0

    .line 36
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/snowfish/cn/ganga/offline/helper/SFGameExitListener;->onGameExit(Z)V

    .line 37
    :cond_0
    return-void
.end method

.method protected onGameConfirmExit(Lcom/snowfish/cn/ganga/offline/helper/SFGameExitListener;)V
    .locals 1

    .prologue
    .line 40
    if-eqz p1, :cond_0

    .line 41
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/snowfish/cn/ganga/offline/helper/SFGameExitListener;->onGameExit(Z)V

    .line 42
    :cond_0
    return-void
.end method

.method public onInit(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 24
    return-void
.end method

.method public onPause(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 99
    return-void
.end method

.method public onResume(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method protected showExitConfirm(Landroid/content/Context;Lcom/snowfish/cn/ganga/offline/helper/SFGameExitListener;)V
    .locals 1

    .prologue
    .line 87
    iput-object p2, p0, Lcom/snowfish/cn/ganga/offline/basic/SFBasicAdapterBase;->gameExitListener:Lcom/snowfish/cn/ganga/offline/helper/SFGameExitListener;

    .line 88
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/snowfish/cn/ganga/offline/basic/SFUtilsInterface;->psu(Landroid/content/Context;Z)V

    .line 89
    return-void
.end method

.method public showUI(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 46
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 47
    iget-object v1, p0, Lcom/snowfish/cn/ganga/offline/basic/SFBasicAdapterBase;->mExitTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 48
    iget-object v1, p0, Lcom/snowfish/cn/ganga/offline/basic/SFBasicAdapterBase;->mExitMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 49
    const-string v1, "\u9000\u51fa"

    new-instance v2, Lcom/snowfish/cn/ganga/offline/basic/SFBasicAdapterBase$1;

    invoke-direct {v2, p0, p1}, Lcom/snowfish/cn/ganga/offline/basic/SFBasicAdapterBase$1;-><init>(Lcom/snowfish/cn/ganga/offline/basic/SFBasicAdapterBase;Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 65
    const-string v1, "\u8fd4\u56de"

    new-instance v2, Lcom/snowfish/cn/ganga/offline/basic/SFBasicAdapterBase$2;

    invoke-direct {v2, p0}, Lcom/snowfish/cn/ganga/offline/basic/SFBasicAdapterBase$2;-><init>(Lcom/snowfish/cn/ganga/offline/basic/SFBasicAdapterBase;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 73
    new-instance v1, Lcom/snowfish/cn/ganga/offline/basic/SFBasicAdapterBase$3;

    invoke-direct {v1, p0}, Lcom/snowfish/cn/ganga/offline/basic/SFBasicAdapterBase$3;-><init>(Lcom/snowfish/cn/ganga/offline/basic/SFBasicAdapterBase;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 80
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 82
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 83
    return-void
.end method
