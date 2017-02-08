.class public Lcom/snowfish/a/a/s/IApp;
.super Ljava/lang/Object;
.source "IApp.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onCreate(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 10
    :try_start_0
    invoke-static {p0}, Lcom/snowfish/a/a/l/d;->b(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
