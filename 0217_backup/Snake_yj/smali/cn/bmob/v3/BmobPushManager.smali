.class public Lcn/bmob/v3/BmobPushManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private c:Lcn/bmob/v3/BmobQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/bmob/v3/BmobQuery",
            "<",
            "Lcn/bmob/v3/BmobInstallation;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lc/This;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcn/bmob/v3/BmobPushManager;->mContext:Landroid/content/Context;

    .line 17
    new-instance v0, Lc/This;

    invoke-direct {v0}, Lc/This;-><init>()V

    iput-object v0, p0, Lcn/bmob/v3/BmobPushManager;->d:Lc/This;

    .line 18
    return-void
.end method


# virtual methods
.method public getQuery()Lcn/bmob/v3/BmobQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcn/bmob/v3/BmobQuery",
            "<",
            "Lcn/bmob/v3/BmobInstallation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcn/bmob/v3/BmobPushManager;->c:Lcn/bmob/v3/BmobQuery;

    return-object v0
.end method

.method public pushMessage(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcn/bmob/v3/BmobPushManager;->pushMessage(Ljava/lang/String;Lcn/bmob/v3/listener/PushListener;)V

    .line 27
    return-void
.end method

.method public pushMessage(Ljava/lang/String;Lcn/bmob/v3/listener/PushListener;)V
    .locals 3

    .prologue
    .line 35
    iget-object v0, p0, Lcn/bmob/v3/BmobPushManager;->c:Lcn/bmob/v3/BmobQuery;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcn/bmob/v3/BmobPushManager;->d:Lc/This;

    iget-object v1, p0, Lcn/bmob/v3/BmobPushManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/bmob/v3/BmobPushManager;->c:Lcn/bmob/v3/BmobQuery;

    invoke-virtual {v2}, Lcn/bmob/v3/BmobQuery;->getWhere()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2, p2}, Lc/This;->Code(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lcn/bmob/v3/listener/PushListener;)V

    .line 41
    :goto_0
    return-void

    .line 39
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcn/bmob/v3/BmobPushManager;->pushMessageAll(Ljava/lang/String;Lcn/bmob/v3/listener/PushListener;)V

    goto :goto_0
.end method

.method public pushMessageAll(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcn/bmob/v3/BmobPushManager;->pushMessageAll(Ljava/lang/String;Lcn/bmob/v3/listener/PushListener;)V

    .line 64
    return-void
.end method

.method public pushMessageAll(Ljava/lang/String;Lcn/bmob/v3/listener/PushListener;)V
    .locals 3

    .prologue
    .line 71
    iget-object v0, p0, Lcn/bmob/v3/BmobPushManager;->d:Lc/This;

    iget-object v1, p0, Lcn/bmob/v3/BmobPushManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Lc/This;->Code(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lcn/bmob/v3/listener/PushListener;)V

    .line 72
    return-void
.end method

.method public setQuery(Lcn/bmob/v3/BmobQuery;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/bmob/v3/BmobQuery",
            "<",
            "Lcn/bmob/v3/BmobInstallation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    iput-object p1, p0, Lcn/bmob/v3/BmobPushManager;->c:Lcn/bmob/v3/BmobQuery;

    .line 80
    return-void
.end method
