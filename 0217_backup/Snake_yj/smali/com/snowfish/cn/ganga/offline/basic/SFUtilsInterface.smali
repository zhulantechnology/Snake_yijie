.class public Lcom/snowfish/cn/ganga/offline/basic/SFUtilsInterface;
.super Ljava/lang/Object;
.source "SFUtilsInterface.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([BI)V
    .locals 1

    .prologue
    .line 21
    :try_start_0
    sget-object v0, Lcom/snowfish/cn/ganga/offline/a/f;->a:Lcom/snowfish/cn/ganga/offline/a/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/snowfish/cn/ganga/offline/a/f;

    invoke-direct {v0}, Lcom/snowfish/cn/ganga/offline/a/f;-><init>()V

    sput-object v0, Lcom/snowfish/cn/ganga/offline/a/f;->a:Lcom/snowfish/cn/ganga/offline/a/f;

    :cond_0
    sget-object v0, Lcom/snowfish/cn/ganga/offline/a/f;->a:Lcom/snowfish/cn/ganga/offline/a/f;

    invoke-virtual {v0, p0, p1}, Lcom/snowfish/cn/ganga/offline/a/f;->a([BI)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static ba()Ljava/lang/String;
    .locals 2

    .prologue
    .line 82
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/snowfish/cn/ganga/offline/a/g;->a:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static bts([B)Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    invoke-static {p0}, Lcom/snowfish/cn/ganga/offline/a/h;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static call(Landroid/content/Context;[B)[B
    .locals 1

    .prologue
    .line 101
    invoke-static {p0, p1}, Lcom/snowfish/cn/ganga/offline/a/h;->a(Landroid/content/Context;[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static cc()Ljava/lang/String;
    .locals 2

    .prologue
    .line 86
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/snowfish/cn/ganga/offline/a/g;->e:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static d([BI)[B
    .locals 1

    .prologue
    .line 33
    invoke-static {p0, p1}, Lcom/snowfish/cn/ganga/offline/a/a;->a([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public static e([BILjava/util/Random;)[B
    .locals 1

    .prologue
    .line 28
    invoke-static {p0, p1, p2}, Lcom/snowfish/cn/ganga/offline/a/a;->a([BILjava/util/Random;)[B

    move-result-object v0

    return-object v0
.end method

.method public static gc(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 123
    invoke-static {}, Lcom/snowfish/cn/ganga/offline/a/d;->a()Lcom/snowfish/cn/ganga/offline/a/d;

    move-result-object v0

    const/16 v1, 0x8

    new-array v2, v1, [B

    fill-array-data v2, :array_0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    iget-object v2, v0, Lcom/snowfish/cn/ganga/offline/a/d;->a:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v0, v0, Lcom/snowfish/cn/ganga/offline/a/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snowfish/cn/ganga/offline/channel/b;

    iget-object v3, v0, Lcom/snowfish/cn/ganga/offline/channel/b;->a:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, v0, Lcom/snowfish/cn/ganga/offline/channel/b;->b:Ljava/lang/String;

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x53t
        0x4et
        0x4ft
        0x57t
        0x46t
        0x49t
        0x53t
        0x48t
    .end array-data
.end method

.method public static getCtx()Landroid/content/Context;
    .locals 1

    .prologue
    .line 91
    invoke-static {}, Lcom/snowfish/cn/ganga/offline/a/h;->a()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static gi()J
    .locals 2

    .prologue
    .line 132
    invoke-static {}, Lcom/snowfish/cn/ganga/offline/a/h;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public static gv(Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 128
    invoke-static {}, Lcom/snowfish/cn/ganga/offline/a/d;->a()Lcom/snowfish/cn/ganga/offline/a/d;

    move-result-object v0

    iget-object v2, v0, Lcom/snowfish/cn/ganga/offline/a/d;->a:Ljava/util/List;

    if-nez v2, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, v0, Lcom/snowfish/cn/ganga/offline/a/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snowfish/cn/ganga/offline/channel/b;

    iget-object v3, v0, Lcom/snowfish/cn/ganga/offline/channel/b;->a:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v0, v0, Lcom/snowfish/cn/ganga/offline/channel/b;->f:I

    goto :goto_0
.end method

.method public static iU()Z
    .locals 1

    .prologue
    .line 114
    invoke-static {}, Lcom/snowfish/cn/ganga/offline/a/h;->g()Z

    move-result v0

    return v0
.end method

.method public static iap(Landroid/content/Context;Ljava/lang/String;II)Z
    .locals 1

    .prologue
    .line 118
    invoke-static {}, Lcom/snowfish/cn/ganga/offline/a/h;->f()Z

    move-result v0

    return v0
.end method

.method public static ip()Z
    .locals 1

    .prologue
    .line 136
    invoke-static {}, Lcom/snowfish/cn/ganga/offline/a/h;->h()Z

    move-result v0

    return v0
.end method

.method public static ir(Lcom/snowfish/cn/ganga/offline/basic/IPR;I)Lcom/snowfish/cn/ganga/offline/basic/IPR;
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/snowfish/cn/ganga/offline/a/b;

    invoke-direct {v0, p0, p1}, Lcom/snowfish/cn/ganga/offline/a/b;-><init>(Lcom/snowfish/cn/ganga/offline/basic/IPR;I)V

    return-object v0
.end method

.method public static ir([B)Lcom/snowfish/cn/ganga/offline/basic/IPR;
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lcom/snowfish/cn/ganga/offline/a/b;

    invoke-direct {v0, p0}, Lcom/snowfish/cn/ganga/offline/a/b;-><init>([B)V

    return-object v0
.end method

.method public static ir([BI)Lcom/snowfish/cn/ganga/offline/basic/IPR;
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/snowfish/cn/ganga/offline/a/b;

    invoke-direct {v0, p0, p1}, Lcom/snowfish/cn/ganga/offline/a/b;-><init>([BI)V

    return-object v0
.end method

.method public static ir([BII)Lcom/snowfish/cn/ganga/offline/basic/IPR;
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcom/snowfish/cn/ganga/offline/a/b;

    invoke-direct {v0, p0, p1, p2}, Lcom/snowfish/cn/ganga/offline/a/b;-><init>([BII)V

    return-object v0
.end method

.method public static iw()Lcom/snowfish/cn/ganga/offline/basic/IPW;
    .locals 1

    .prologue
    .line 73
    new-instance v0, Lcom/snowfish/cn/ganga/offline/a/c;

    invoke-direct {v0}, Lcom/snowfish/cn/ganga/offline/a/c;-><init>()V

    return-object v0
.end method

.method public static iw([B)Lcom/snowfish/cn/ganga/offline/basic/IPW;
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lcom/snowfish/cn/ganga/offline/a/c;

    invoke-direct {v0, p0}, Lcom/snowfish/cn/ganga/offline/a/c;-><init>([B)V

    return-object v0
.end method

.method public static iw([BI)Lcom/snowfish/cn/ganga/offline/basic/IPW;
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcom/snowfish/cn/ganga/offline/a/c;

    invoke-direct {v0, p0, p1}, Lcom/snowfish/cn/ganga/offline/a/c;-><init>([BI)V

    return-object v0
.end method

.method public static iw([BII)Lcom/snowfish/cn/ganga/offline/basic/IPW;
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lcom/snowfish/cn/ganga/offline/a/c;

    invoke-direct {v0, p0, p1, p2}, Lcom/snowfish/cn/ganga/offline/a/c;-><init>([BII)V

    return-object v0
.end method

.method public static m()I
    .locals 1

    .prologue
    .line 78
    sget v0, Lcom/snowfish/cn/ganga/offline/a/g;->j:I

    return v0
.end method

.method public static pl(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 96
    invoke-static {p0}, Lcom/snowfish/cn/ganga/offline/channel/c;->a(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static psu(Landroid/content/Context;Z)V
    .locals 0

    .prologue
    .line 144
    invoke-static {p0, p1}, Lcom/snowfish/cn/ganga/offline/a/h;->a(Landroid/content/Context;Z)V

    .line 145
    return-void
.end method

.method public static s(Landroid/content/Context;III)V
    .locals 0

    .prologue
    .line 38
    invoke-static {}, Lcom/snowfish/cn/ganga/offline/a/h;->e()V

    .line 39
    return-void
.end method

.method public static sp(Z)V
    .locals 0

    .prologue
    .line 140
    invoke-static {p0}, Lcom/snowfish/cn/ganga/offline/a/h;->b(Z)V

    .line 141
    return-void
.end method

.method public static up(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 107
    :try_start_0
    invoke-static {}, Lcom/snowfish/cn/ganga/offline/basic/SFUtilsInterface;->iw()Lcom/snowfish/cn/ganga/offline/basic/IPW;

    move-result-object v0

    .line 108
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/snowfish/cn/ganga/offline/basic/IPW;->writeI32(I)V

    .line 109
    invoke-interface {v0}, Lcom/snowfish/cn/ganga/offline/basic/IPW;->toByteArray()[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/snowfish/cn/ganga/offline/a/h;->a(Landroid/content/Context;[B)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
