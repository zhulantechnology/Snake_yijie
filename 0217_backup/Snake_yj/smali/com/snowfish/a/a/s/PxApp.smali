.class public Lcom/snowfish/a/a/s/PxApp;
.super Landroid/app/Application;
.source "PxApp.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 17
    :try_start_0
    invoke-static {p0}, Lcom/snowfish/a/a/l/d;->b(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
