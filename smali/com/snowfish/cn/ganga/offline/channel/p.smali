.class final Lcom/snowfish/cn/ganga/offline/channel/p;
.super Ljava/lang/Object;
.source "SFUnityPayDelegate.java"

# interfaces
.implements Lcom/snowfish/cn/ganga/offline/helper/SFGameExitListener;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/snowfish/cn/ganga/offline/channel/o;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p2, p0, Lcom/snowfish/cn/ganga/offline/channel/p;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/snowfish/cn/ganga/offline/channel/p;->b:Ljava/lang/String;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGameExit(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 45
    const-string v0, "Unity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bool="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    if-eqz p1, :cond_0

    .line 47
    invoke-static {v3}, Lcom/snowfish/cn/ganga/offline/basic/SFUtilsInterface;->sp(Z)V

    .line 48
    const-string v0, "0"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snowfish/cn/ganga/offline/channel/o;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/snowfish/cn/ganga/offline/channel/p;->a:Ljava/lang/String;

    .line 50
    iget-object v2, p0, Lcom/snowfish/cn/ganga/offline/channel/p;->b:Ljava/lang/String;

    .line 49
    invoke-static {v1, v2, v0}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_0
    return-void
.end method
