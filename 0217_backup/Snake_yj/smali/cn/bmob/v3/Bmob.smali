.class public Lcn/bmob/v3/Bmob;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static spUtil$1853ce08:Lb/This;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getServerTime(Landroid/content/Context;Lcn/bmob/v3/listener/GetServerTimeListener;)V
    .locals 2

    .prologue
    .line 47
    new-instance v0, Lc/This;

    invoke-direct {v0}, Lc/This;-><init>()V

    .line 48
    new-instance v1, Lcn/bmob/v3/Bmob$1;

    invoke-direct {v1, p1}, Lcn/bmob/v3/Bmob$1;-><init>(Lcn/bmob/v3/listener/GetServerTimeListener;)V

    invoke-virtual {v0, p0, v1}, Lc/This;->Code(Landroid/content/Context;Lcn/bmob/v3/listener/XListener;)V

    .line 62
    return-void
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Lb/This;

    invoke-direct {v0, p0}, Lb/This;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/bmob/v3/Bmob;->spUtil$1853ce08:Lb/This;

    .line 33
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    const-string v0, "appkey is null"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ld/of;->Code(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 39
    :goto_0
    return-void

    .line 37
    :cond_0
    sget-object v0, Lcn/bmob/v3/Bmob;->spUtil$1853ce08:Lb/This;

    const-string v1, "appkey"

    invoke-virtual {v0, v1, p1}, Lb/This;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
