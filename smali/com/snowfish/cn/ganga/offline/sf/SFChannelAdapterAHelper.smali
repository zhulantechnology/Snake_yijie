.class public Lcom/snowfish/cn/ganga/offline/sf/SFChannelAdapterAHelper;
.super Ljava/lang/Object;
.source "SFChannelAdapterAHelper.java"

# interfaces
.implements Lcom/snowfish/cn/ganga/offline/basic/SFIAdapterFactory;


# instance fields
.field private basicAdapter:Lcom/snowfish/cn/ganga/offline/basic/SFBasicAdapter;

.field private logoAdapter:Lcom/snowfish/cn/ganga/offline/basic/SFILogoAdapter;

.field private payAdapter:Lcom/snowfish/cn/ganga/offline/basic/SFPayAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createBasicAdapter(Landroid/content/Context;Ljava/lang/String;)Lcom/snowfish/cn/ganga/offline/basic/SFBasicAdapter;
    .locals 1

    .prologue
    .line 22
    :try_start_0
    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/sf/SFChannelAdapterAHelper;->basicAdapter:Lcom/snowfish/cn/ganga/offline/basic/SFBasicAdapter;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/snowfish/cn/ganga/offline/sf/e;

    invoke-direct {v0, p2}, Lcom/snowfish/cn/ganga/offline/sf/e;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/snowfish/cn/ganga/offline/sf/SFChannelAdapterAHelper;->basicAdapter:Lcom/snowfish/cn/ganga/offline/basic/SFBasicAdapter;

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/sf/SFChannelAdapterAHelper;->basicAdapter:Lcom/snowfish/cn/ganga/offline/basic/SFBasicAdapter;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :goto_0
    return-object v0

    .line 25
    :catch_0
    move-exception v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 28
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public createLogoAdapter(Landroid/content/Context;Ljava/lang/String;)Lcom/snowfish/cn/ganga/offline/basic/SFILogoAdapter;
    .locals 1

    .prologue
    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/sf/SFChannelAdapterAHelper;->logoAdapter:Lcom/snowfish/cn/ganga/offline/basic/SFILogoAdapter;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/snowfish/cn/ganga/offline/sf/g;

    invoke-direct {v0}, Lcom/snowfish/cn/ganga/offline/sf/g;-><init>()V

    iput-object v0, p0, Lcom/snowfish/cn/ganga/offline/sf/SFChannelAdapterAHelper;->logoAdapter:Lcom/snowfish/cn/ganga/offline/basic/SFILogoAdapter;

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/sf/SFChannelAdapterAHelper;->logoAdapter:Lcom/snowfish/cn/ganga/offline/basic/SFILogoAdapter;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    return-object v0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 52
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public createPayAdapter(Landroid/content/Context;Ljava/lang/String;)Lcom/snowfish/cn/ganga/offline/basic/SFPayAdapter;
    .locals 1

    .prologue
    .line 34
    :try_start_0
    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/sf/SFChannelAdapterAHelper;->payAdapter:Lcom/snowfish/cn/ganga/offline/basic/SFPayAdapter;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/snowfish/cn/ganga/offline/sf/h;

    invoke-direct {v0}, Lcom/snowfish/cn/ganga/offline/sf/h;-><init>()V

    iput-object v0, p0, Lcom/snowfish/cn/ganga/offline/sf/SFChannelAdapterAHelper;->payAdapter:Lcom/snowfish/cn/ganga/offline/basic/SFPayAdapter;

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/sf/SFChannelAdapterAHelper;->payAdapter:Lcom/snowfish/cn/ganga/offline/basic/SFPayAdapter;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :goto_0
    return-object v0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 40
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 57
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/snowfish/cn/ganga/offline/a/g;->f:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Lcom/snowfish/cn/ganga/offline/channel/c;->a(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 62
    const/16 v0, 0xf

    return v0
.end method
