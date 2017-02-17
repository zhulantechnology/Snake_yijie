.class public Lcom/snowfish/cn/ganga/offline/helper/SFGameSplashActivity;
.super Landroid/app/Activity;
.source "SFGameSplashActivity.java"


# instance fields
.field private animationView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snowfish/cn/ganga/offline/helper/SFGameSplashActivity;->animationView:Landroid/view/View;

    .line 17
    return-void
.end method

.method static synthetic access$0(Lcom/snowfish/cn/ganga/offline/helper/SFGameSplashActivity;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/snowfish/cn/ganga/offline/helper/SFGameSplashActivity;->switch2NextView()V

    return-void
.end method

.method private setOrientationSensor()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 80
    invoke-virtual {p0}, Lcom/snowfish/cn/ganga/offline/helper/SFGameSplashActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 81
    if-ne v0, v1, :cond_0

    .line 82
    invoke-virtual {p0, v1}, Lcom/snowfish/cn/ganga/offline/helper/SFGameSplashActivity;->setRequestedOrientation(I)V

    .line 87
    :goto_0
    return-void

    .line 83
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 84
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/snowfish/cn/ganga/offline/helper/SFGameSplashActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 86
    :cond_1
    invoke-virtual {p0}, Lcom/snowfish/cn/ganga/offline/helper/SFGameSplashActivity;->getRequestedOrientation()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/snowfish/cn/ganga/offline/helper/SFGameSplashActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method private switch2NextView()V
    .locals 4

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/snowfish/cn/ganga/offline/helper/SFGameSplashActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/snowfish/cn/ganga/offline/a/g;->g:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    const-string v2, "string"

    invoke-virtual {p0}, Lcom/snowfish/cn/ganga/offline/helper/SFGameSplashActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 61
    invoke-virtual {p0, v0}, Lcom/snowfish/cn/ganga/offline/helper/SFGameSplashActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 62
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 63
    invoke-virtual {p0}, Lcom/snowfish/cn/ganga/offline/helper/SFGameSplashActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    invoke-virtual {p0, v1}, Lcom/snowfish/cn/ganga/offline/helper/SFGameSplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 65
    invoke-virtual {p0}, Lcom/snowfish/cn/ganga/offline/helper/SFGameSplashActivity;->finish()V

    .line 66
    return-void
.end method

.method private switchCMCCView()V
    .locals 4

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/snowfish/cn/ganga/offline/helper/SFGameSplashActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/snowfish/cn/ganga/offline/a/g;->h:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    const-string v2, "string"

    .line 70
    invoke-virtual {p0}, Lcom/snowfish/cn/ganga/offline/helper/SFGameSplashActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 69
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 71
    invoke-virtual {p0, v0}, Lcom/snowfish/cn/ganga/offline/helper/SFGameSplashActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 72
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 73
    invoke-virtual {p0}, Lcom/snowfish/cn/ganga/offline/helper/SFGameSplashActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    invoke-virtual {p0, v1}, Lcom/snowfish/cn/ganga/offline/helper/SFGameSplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 76
    invoke-virtual {p0}, Lcom/snowfish/cn/ganga/offline/helper/SFGameSplashActivity;->finish()V

    .line 77
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-virtual {p0, v2}, Lcom/snowfish/cn/ganga/offline/helper/SFGameSplashActivity;->requestWindowFeature(I)Z

    .line 34
    invoke-direct {p0}, Lcom/snowfish/cn/ganga/offline/helper/SFGameSplashActivity;->setOrientationSensor()V

    .line 36
    invoke-static {p0}, Lcom/snowfish/cn/ganga/offline/a/h;->a(Landroid/content/Context;)V

    .line 37
    invoke-static {}, Lcom/snowfish/cn/ganga/offline/channel/a;->b()Lcom/snowfish/cn/ganga/offline/channel/a;

    move-result-object v0

    .line 38
    const-string v1, ""

    invoke-virtual {v0, p0, v1}, Lcom/snowfish/cn/ganga/offline/channel/a;->createLogoAdapter(Landroid/content/Context;Ljava/lang/String;)Lcom/snowfish/cn/ganga/offline/basic/SFILogoAdapter;

    move-result-object v0

    .line 41
    new-instance v1, Lcom/snowfish/cn/ganga/offline/helper/SFGameSplashActivity$1;

    invoke-direct {v1, p0}, Lcom/snowfish/cn/ganga/offline/helper/SFGameSplashActivity$1;-><init>(Lcom/snowfish/cn/ganga/offline/helper/SFGameSplashActivity;)V

    .line 40
    invoke-interface {v0, p0, v2, v1}, Lcom/snowfish/cn/ganga/offline/basic/SFILogoAdapter;->getAnimationView(Landroid/content/Context;ZLcom/snowfish/cn/ganga/offline/basic/SFAnimationCompleteCallback;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/snowfish/cn/ganga/offline/helper/SFGameSplashActivity;->animationView:Landroid/view/View;

    .line 48
    iget-object v1, p0, Lcom/snowfish/cn/ganga/offline/helper/SFGameSplashActivity;->animationView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 49
    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/helper/SFGameSplashActivity;->animationView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/snowfish/cn/ganga/offline/helper/SFGameSplashActivity;->setContentView(Landroid/view/View;)V

    .line 57
    :goto_0
    return-void

    .line 50
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/snowfish/cn/ganga/offline/a/g;->i:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 51
    if-eqz v0, :cond_1

    .line 52
    invoke-direct {p0}, Lcom/snowfish/cn/ganga/offline/helper/SFGameSplashActivity;->switchCMCCView()V

    goto :goto_0

    .line 55
    :cond_1
    invoke-direct {p0}, Lcom/snowfish/cn/ganga/offline/helper/SFGameSplashActivity;->switch2NextView()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method
