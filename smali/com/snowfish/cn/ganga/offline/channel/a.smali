.class public final Lcom/snowfish/cn/ganga/offline/channel/a;
.super Ljava/lang/Object;
.source "SFChannelAdapterFactory.java"

# interfaces
.implements Lcom/snowfish/cn/ganga/offline/basic/SFIAdapterFactory;


# static fields
.field private static a:Lcom/snowfish/cn/ganga/offline/channel/a;


# instance fields
.field private b:Lcom/snowfish/cn/ganga/offline/basic/SFIAdapterFactory;

.field private c:Lcom/snowfish/cn/ganga/offline/basic/SFIAdapterFactory;

.field private d:Lcom/snowfish/cn/ganga/offline/basic/SFIAdapterFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snowfish/cn/ganga/offline/channel/a;->d:Lcom/snowfish/cn/ganga/offline/basic/SFIAdapterFactory;

    .line 16
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Lcom/snowfish/cn/ganga/offline/basic/SFIAdapterFactory;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 58
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snowfish/cn/ganga/offline/basic/SFIAdapterFactory;

    .line 61
    instance-of v2, v0, Lcom/snowfish/cn/ganga/offline/basic/SFIAdapterFactory;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    .line 66
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    .line 63
    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public static b()Lcom/snowfish/cn/ganga/offline/channel/a;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/snowfish/cn/ganga/offline/channel/a;->a:Lcom/snowfish/cn/ganga/offline/channel/a;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/snowfish/cn/ganga/offline/channel/a;

    invoke-direct {v0}, Lcom/snowfish/cn/ganga/offline/channel/a;-><init>()V

    sput-object v0, Lcom/snowfish/cn/ganga/offline/channel/a;->a:Lcom/snowfish/cn/ganga/offline/channel/a;

    .line 34
    :cond_0
    sget-object v0, Lcom/snowfish/cn/ganga/offline/channel/a;->a:Lcom/snowfish/cn/ganga/offline/channel/a;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/snowfish/cn/ganga/offline/basic/SFIAdapterFactory;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/channel/a;->d:Lcom/snowfish/cn/ganga/offline/basic/SFIAdapterFactory;

    return-object v0
.end method

.method public final createBasicAdapter(Landroid/content/Context;Ljava/lang/String;)Lcom/snowfish/cn/ganga/offline/basic/SFBasicAdapter;
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/channel/a;->b:Lcom/snowfish/cn/ganga/offline/basic/SFIAdapterFactory;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/snowfish/cn/ganga/offline/a/d;->a()Lcom/snowfish/cn/ganga/offline/a/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/snowfish/cn/ganga/offline/a/d;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/snowfish/cn/ganga/offline/sf/SFChannelAdapterAHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p1, v0}, Lcom/snowfish/cn/ganga/offline/channel/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/snowfish/cn/ganga/offline/basic/SFIAdapterFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/snowfish/cn/ganga/offline/channel/a;->b:Lcom/snowfish/cn/ganga/offline/basic/SFIAdapterFactory;

    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/channel/a;->b:Lcom/snowfish/cn/ganga/offline/basic/SFIAdapterFactory;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "APK Exception"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 40
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/channel/a;->b:Lcom/snowfish/cn/ganga/offline/basic/SFIAdapterFactory;

    invoke-interface {v0, p1, p2}, Lcom/snowfish/cn/ganga/offline/basic/SFIAdapterFactory;->createBasicAdapter(Landroid/content/Context;Ljava/lang/String;)Lcom/snowfish/cn/ganga/offline/basic/SFBasicAdapter;

    move-result-object v0

    return-object v0

    .line 39
    :cond_1
    invoke-static {}, Lcom/snowfish/cn/ganga/offline/sf/f;->a()Lcom/snowfish/cn/ganga/offline/sf/f;

    invoke-static {}, Lcom/snowfish/cn/ganga/offline/sf/f;->b()Lcom/snowfish/cn/ganga/offline/sf/SFChannelAdapterAHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/snowfish/cn/ganga/offline/channel/a;->b:Lcom/snowfish/cn/ganga/offline/basic/SFIAdapterFactory;

    goto :goto_0
.end method

.method public final createLogoAdapter(Landroid/content/Context;Ljava/lang/String;)Lcom/snowfish/cn/ganga/offline/basic/SFILogoAdapter;
    .locals 8

    .prologue
    .line 51
    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/channel/a;->c:Lcom/snowfish/cn/ganga/offline/basic/SFIAdapterFactory;

    if-nez v0, :cond_3

    invoke-static {}, Lcom/snowfish/cn/ganga/offline/sf/f;->a()Lcom/snowfish/cn/ganga/offline/sf/f;

    invoke-static {}, Lcom/snowfish/cn/ganga/offline/a/d;->a()Lcom/snowfish/cn/ganga/offline/a/d;

    move-result-object v1

    iget-object v0, v1, Lcom/snowfish/cn/ganga/offline/a/d;->c:Ljava/lang/String;

    if-nez v0, :cond_2

    invoke-virtual {v1, p1}, Lcom/snowfish/cn/ganga/offline/a/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/snowfish/cn/ganga/offline/a/d;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/snowfish/cn/ganga/offline/a/d;->b:Lcom/snowfish/cn/ganga/offline/channel/c;

    iget v0, v0, Lcom/snowfish/cn/ganga/offline/channel/c;->b:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    iget-object v0, v1, Lcom/snowfish/cn/ganga/offline/a/d;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/snowfish/cn/ganga/offline/a/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    :goto_0
    iget-object v0, v1, Lcom/snowfish/cn/ganga/offline/a/d;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, v1, Lcom/snowfish/cn/ganga/offline/a/d;->b:Lcom/snowfish/cn/ganga/offline/channel/c;

    iget-wide v4, v0, Lcom/snowfish/cn/ganga/offline/channel/c;->a:J

    new-instance v0, Ljava/lang/String;

    sget-object v3, Lcom/snowfish/cn/ganga/offline/a/g;->f:[B

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Lcom/snowfish/cn/ganga/offline/channel/c;->a(Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-nez v0, :cond_1

    const-class v0, Lcom/snowfish/cn/ganga/offline/sf/SFChannelAdapterAHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/snowfish/cn/ganga/offline/a/d;->c:Ljava/lang/String;

    :cond_1
    iget-object v0, v1, Lcom/snowfish/cn/ganga/offline/a/d;->c:Ljava/lang/String;

    if-nez v0, :cond_2

    iput-object v2, v1, Lcom/snowfish/cn/ganga/offline/a/d;->c:Ljava/lang/String;

    :cond_2
    iget-object v0, v1, Lcom/snowfish/cn/ganga/offline/a/d;->c:Ljava/lang/String;

    const-class v1, Lcom/snowfish/cn/ganga/offline/sf/SFChannelAdapterAHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {p1, v0}, Lcom/snowfish/cn/ganga/offline/channel/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/snowfish/cn/ganga/offline/basic/SFIAdapterFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/snowfish/cn/ganga/offline/channel/a;->c:Lcom/snowfish/cn/ganga/offline/basic/SFIAdapterFactory;

    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/channel/a;->c:Lcom/snowfish/cn/ganga/offline/basic/SFIAdapterFactory;

    if-nez v0, :cond_3

    const-string v0, "LOGO"

    const-string v1, "APK Exception"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/channel/a;->c:Lcom/snowfish/cn/ganga/offline/basic/SFIAdapterFactory;

    invoke-interface {v0, p1, p2}, Lcom/snowfish/cn/ganga/offline/basic/SFIAdapterFactory;->createLogoAdapter(Landroid/content/Context;Ljava/lang/String;)Lcom/snowfish/cn/ganga/offline/basic/SFILogoAdapter;

    move-result-object v0

    return-object v0

    .line 51
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snowfish/cn/ganga/offline/channel/b;

    iget-object v4, v1, Lcom/snowfish/cn/ganga/offline/a/d;->b:Lcom/snowfish/cn/ganga/offline/channel/c;

    iget-wide v4, v4, Lcom/snowfish/cn/ganga/offline/channel/c;->a:J

    iget-wide v6, v0, Lcom/snowfish/cn/ganga/offline/channel/b;->c:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    iget-object v0, v0, Lcom/snowfish/cn/ganga/offline/channel/b;->a:Ljava/lang/String;

    iput-object v0, v1, Lcom/snowfish/cn/ganga/offline/a/d;->c:Ljava/lang/String;

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/snowfish/cn/ganga/offline/sf/f;->a()Lcom/snowfish/cn/ganga/offline/sf/f;

    invoke-static {}, Lcom/snowfish/cn/ganga/offline/sf/f;->b()Lcom/snowfish/cn/ganga/offline/sf/SFChannelAdapterAHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/snowfish/cn/ganga/offline/channel/a;->c:Lcom/snowfish/cn/ganga/offline/basic/SFIAdapterFactory;

    goto :goto_1
.end method

.method public final createPayAdapter(Landroid/content/Context;Ljava/lang/String;)Lcom/snowfish/cn/ganga/offline/basic/SFPayAdapter;
    .locals 4

    .prologue
    .line 45
    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/channel/a;->b:Lcom/snowfish/cn/ganga/offline/basic/SFIAdapterFactory;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/snowfish/cn/ganga/offline/a/d;->a()Lcom/snowfish/cn/ganga/offline/a/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/snowfish/cn/ganga/offline/a/d;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/snowfish/cn/ganga/offline/sf/SFChannelAdapterAHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/snowfish/cn/ganga/offline/sf/f;->a()Lcom/snowfish/cn/ganga/offline/sf/f;

    invoke-static {}, Lcom/snowfish/cn/ganga/offline/sf/f;->b()Lcom/snowfish/cn/ganga/offline/sf/SFChannelAdapterAHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/snowfish/cn/ganga/offline/channel/a;->b:Lcom/snowfish/cn/ganga/offline/basic/SFIAdapterFactory;

    .line 46
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/channel/a;->b:Lcom/snowfish/cn/ganga/offline/basic/SFIAdapterFactory;

    invoke-interface {v0, p1, p2}, Lcom/snowfish/cn/ganga/offline/basic/SFIAdapterFactory;->createPayAdapter(Landroid/content/Context;Ljava/lang/String;)Lcom/snowfish/cn/ganga/offline/basic/SFPayAdapter;

    move-result-object v0

    return-object v0

    .line 45
    :cond_1
    invoke-static {p1, v0}, Lcom/snowfish/cn/ganga/offline/channel/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/snowfish/cn/ganga/offline/basic/SFIAdapterFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/snowfish/cn/ganga/offline/channel/a;->b:Lcom/snowfish/cn/ganga/offline/basic/SFIAdapterFactory;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/channel/a;->b:Lcom/snowfish/cn/ganga/offline/basic/SFIAdapterFactory;

    invoke-interface {v0}, Lcom/snowfish/cn/ganga/offline/basic/SFIAdapterFactory;->getId()J

    move-result-wide v0

    new-instance v2, Ljava/lang/String;

    sget-object v3, Lcom/snowfish/cn/ganga/offline/a/g;->f:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-static {v2}, Lcom/snowfish/cn/ganga/offline/channel/c;->a(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/snowfish/cn/ganga/offline/a/d;->a()Lcom/snowfish/cn/ganga/offline/a/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/snowfish/cn/ganga/offline/a/d;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/channel/a;->b:Lcom/snowfish/cn/ganga/offline/basic/SFIAdapterFactory;

    iput-object v0, p0, Lcom/snowfish/cn/ganga/offline/channel/a;->d:Lcom/snowfish/cn/ganga/offline/basic/SFIAdapterFactory;

    invoke-static {}, Lcom/snowfish/cn/ganga/offline/sf/f;->a()Lcom/snowfish/cn/ganga/offline/sf/f;

    invoke-static {}, Lcom/snowfish/cn/ganga/offline/sf/f;->b()Lcom/snowfish/cn/ganga/offline/sf/SFChannelAdapterAHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/snowfish/cn/ganga/offline/channel/a;->b:Lcom/snowfish/cn/ganga/offline/basic/SFIAdapterFactory;

    goto :goto_0
.end method

.method public final getId()J
    .locals 2

    .prologue
    .line 125
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    return v0
.end method
