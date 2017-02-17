.class public Lcom/snowfish/cn/ganga/offline/helper/SFGameSplashActivity$TransparentView;
.super Landroid/view/View;
.source "SFGameSplashActivity.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 23
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/snowfish/cn/ganga/offline/helper/SFGameSplashActivity$TransparentView;->setWillNotDraw(Z)V

    .line 24
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/snowfish/cn/ganga/offline/helper/SFGameSplashActivity$TransparentView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 25
    return-void
.end method
