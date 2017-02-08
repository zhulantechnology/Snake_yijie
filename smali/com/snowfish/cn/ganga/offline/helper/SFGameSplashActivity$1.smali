.class Lcom/snowfish/cn/ganga/offline/helper/SFGameSplashActivity$1;
.super Ljava/lang/Object;
.source "SFGameSplashActivity.java"

# interfaces
.implements Lcom/snowfish/cn/ganga/offline/basic/SFAnimationCompleteCallback;


# instance fields
.field final synthetic this$0:Lcom/snowfish/cn/ganga/offline/helper/SFGameSplashActivity;


# direct methods
.method constructor <init>(Lcom/snowfish/cn/ganga/offline/helper/SFGameSplashActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/snowfish/cn/ganga/offline/helper/SFGameSplashActivity$1;->this$0:Lcom/snowfish/cn/ganga/offline/helper/SFGameSplashActivity;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCompleted(Z)V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/helper/SFGameSplashActivity$1;->this$0:Lcom/snowfish/cn/ganga/offline/helper/SFGameSplashActivity;

    # invokes: Lcom/snowfish/cn/ganga/offline/helper/SFGameSplashActivity;->switch2NextView()V
    invoke-static {v0}, Lcom/snowfish/cn/ganga/offline/helper/SFGameSplashActivity;->access$0(Lcom/snowfish/cn/ganga/offline/helper/SFGameSplashActivity;)V

    .line 46
    return-void
.end method
