.class final Lcom/snowfish/cn/ganga/offline/yijie/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic a:Lcom/snowfish/cn/ganga/offline/helper/SFIPayResultListener;


# direct methods
.method constructor <init>(Lcom/snowfish/cn/ganga/offline/helper/SFIPayResultListener;)V
    .locals 0

    iput-object p1, p0, Lcom/snowfish/cn/ganga/offline/yijie/d;->a:Lcom/snowfish/cn/ganga/offline/helper/SFIPayResultListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/yijie/d;->a:Lcom/snowfish/cn/ganga/offline/helper/SFIPayResultListener;

    const-string v1, "\u6a21\u62df\u652f\u4ed8\u5931\u8d25"

    invoke-virtual {v0, v1}, Lcom/snowfish/cn/ganga/offline/helper/SFIPayResultListener;->onFailed(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/snowfish/cn/ganga/offline/basic/SFUtilsInterface;->sp(Z)V

    return-void
.end method
