.class public final Lcom/snowfish/a/a/s/c;
.super Landroid/view/View;
.source "PA.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 24
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/snowfish/a/a/s/c;->setWillNotDraw(Z)V

    .line 25
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/snowfish/a/a/s/c;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 26
    return-void
.end method
