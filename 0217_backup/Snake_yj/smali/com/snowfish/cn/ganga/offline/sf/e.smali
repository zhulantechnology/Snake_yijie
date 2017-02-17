.class public final Lcom/snowfish/cn/ganga/offline/sf/e;
.super Lcom/snowfish/cn/ganga/offline/basic/SFBasicAdapterBase;
.source "SFBasicAdapterAHelper.java"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/snowfish/cn/ganga/offline/basic/SFBasicAdapterBase;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/snowfish/cn/ganga/offline/sf/e;->a:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public final isMusicEnabled(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x1

    return v0
.end method

.method public final onDestroy(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/snowfish/cn/ganga/offline/basic/SFBasicAdapterBase;->onDestroy(Landroid/content/Context;)V

    .line 27
    invoke-static {p1}, Lcom/snowfish/cn/ganga/offline/sf/a;->a(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method public final onInit(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/snowfish/cn/ganga/offline/basic/SFBasicAdapterBase;->onInit(Landroid/content/Context;)V

    .line 21
    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/sf/e;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/snowfish/cn/ganga/offline/sf/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public final onPause(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/snowfish/cn/ganga/offline/basic/SFBasicAdapterBase;->onPause(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public final onResume(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/snowfish/cn/ganga/offline/basic/SFBasicAdapterBase;->onResume(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method public final showUI(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/snowfish/cn/ganga/offline/basic/SFBasicAdapterBase;->showUI(Landroid/content/Context;)V

    .line 73
    return-void
.end method

.method public final viewMoreGames(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 48
    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 51
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.browser"

    const-string v3, "com.android.browser.BrowserActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 48
    nop

    :array_0
    .array-data 1
        0x68t
        0x74t
        0x74t
        0x70t
        0x3at
        0x2ft
        0x2ft
        0x6dt
        0x2et
        0x6bt
        0x67t
        0x61t
        0x6dt
        0x65t
        0x2et
        0x63t
        0x6ft
        0x6dt
        0x2et
        0x63t
        0x6et
        0x2ft
        0x69t
        0x6et
        0x64t
        0x65t
        0x78t
        0x2et
        0x68t
        0x74t
        0x6dt
        0x6ct
    .end array-data
.end method
