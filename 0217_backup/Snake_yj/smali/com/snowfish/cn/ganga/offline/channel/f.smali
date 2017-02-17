.class final Lcom/snowfish/cn/ganga/offline/channel/f;
.super Ljava/lang/Object;
.source "SFCommonInterfaceAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/app/Activity;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/snowfish/cn/ganga/offline/channel/f;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/snowfish/cn/ganga/offline/channel/f;->b:Ljava/lang/String;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 57
    invoke-static {}, Lcom/snowfish/cn/ganga/offline/channel/a;->b()Lcom/snowfish/cn/ganga/offline/channel/a;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/snowfish/cn/ganga/offline/channel/f;->a:Landroid/app/Activity;

    const-string v2, "SFCommonInterfaceAdapter"

    invoke-virtual {v0, v1, v2}, Lcom/snowfish/cn/ganga/offline/channel/a;->createPayAdapter(Landroid/content/Context;Ljava/lang/String;)Lcom/snowfish/cn/ganga/offline/basic/SFPayAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/snowfish/cn/ganga/offline/channel/f;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/snowfish/cn/ganga/offline/channel/f;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/snowfish/cn/ganga/offline/basic/SFPayAdapter;->setPaid(Landroid/content/Context;Ljava/lang/String;)V

    .line 59
    const-string v0, "sfwarning"

    sget-object v1, Lcom/snowfish/cn/ganga/offline/a/g;->x:[B

    invoke-static {v1}, Lcom/snowfish/cn/ganga/offline/basic/SFUtilsInterface;->bts([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return-void
.end method
