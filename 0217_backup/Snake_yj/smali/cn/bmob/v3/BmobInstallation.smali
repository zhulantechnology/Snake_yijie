.class public Lcn/bmob/v3/BmobInstallation;
.super Lcn/bmob/v3/BmobObject;
.source "SourceFile"


# static fields
.field private static mContext:Landroid/content/Context;

.field private static subOrUnsub:Z


# instance fields
.field private channels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private deviceType:Ljava/lang/String;

.field private installationId:Ljava/lang/String;

.field private timeZone:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x1

    sput-boolean v0, Lcn/bmob/v3/BmobInstallation;->subOrUnsub:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcn/bmob/v3/BmobObject;-><init>()V

    .line 37
    const-string v0, "android"

    iput-object v0, p0, Lcn/bmob/v3/BmobInstallation;->deviceType:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/bmob/v3/BmobInstallation;->channels:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 50
    invoke-virtual {p0, v0}, Lcn/bmob/v3/BmobInstallation;->setChannels(Ljava/util/List;)V

    .line 51
    invoke-static {p1}, Lcn/bmob/v3/requestmanager/thing;->Z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/bmob/v3/BmobInstallation;->setInstallationId(Ljava/lang/String;)V

    .line 52
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/bmob/v3/BmobInstallation;->setTimeZone(Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public static getCurrentInstallation(Landroid/content/Context;)Lcn/bmob/v3/BmobInstallation;
    .locals 1

    .prologue
    .line 57
    sput-object p0, Lcn/bmob/v3/BmobInstallation;->mContext:Landroid/content/Context;

    .line 59
    new-instance v0, Lcn/bmob/v3/BmobInstallation;

    invoke-direct {v0, p0}, Lcn/bmob/v3/BmobInstallation;-><init>(Landroid/content/Context;)V

    .line 64
    return-object v0
.end method

.method public static getQuery()Lcn/bmob/v3/BmobQuery;
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
    .line 68
    new-instance v0, Lcn/bmob/v3/BmobQuery;

    invoke-direct {v0}, Lcn/bmob/v3/BmobQuery;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getChannels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcn/bmob/v3/BmobInstallation;->channels:Ljava/util/List;

    return-object v0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcn/bmob/v3/BmobInstallation;->deviceType:Ljava/lang/String;

    return-object v0
.end method

.method public getInstallationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcn/bmob/v3/BmobInstallation;->installationId:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeZone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcn/bmob/v3/BmobInstallation;->timeZone:Ljava/lang/String;

    return-object v0
.end method

.method public insertObject(Landroid/content/Context;Lcn/bmob/v3/listener/InsertListener;)V
    .locals 6

    .prologue
    .line 124
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 126
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {p0}, Ld/thing;->I(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 127
    const-string v1, "data"

    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    const-string v0, "c"

    const-string v1, "_Installation"

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_0
    invoke-static {p1}, Lcn/bmob/v3/requestmanager/thing;->V(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v4

    .line 135
    new-instance v0, La/thing;

    const/4 v2, 0x1

    const-string v3, "http://open.bmob.cn/7/create"

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, La/thing;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/util/Map;Lorg/json/JSONObject;)V

    .line 137
    invoke-static {p1}, Lcn/bmob/v3/requestmanager/thing;->Code(Landroid/content/Context;)Lcn/bmob/v3/requestmanager/thing;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/bmob/v3/requestmanager/thing;->Code(La/thing;)Lcn/bmob/v3/requestmanager/thing;

    move-result-object v0

    .line 141
    new-instance v1, Lcn/bmob/v3/BmobInstallation$1;

    invoke-direct {v1, p0, p2}, Lcn/bmob/v3/BmobInstallation$1;-><init>(Lcn/bmob/v3/BmobInstallation;Lcn/bmob/v3/listener/InsertListener;)V

    invoke-virtual {v0, v1}, Lcn/bmob/v3/requestmanager/thing;->Code(Lcn/bmob/v3/listener/XListener;)V

    .line 157
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 130
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public save()V
    .locals 6

    .prologue
    .line 86
    sget-object v0, Lcn/bmob/v3/BmobInstallation;->mContext:Landroid/content/Context;

    sget-boolean v1, Lcn/bmob/v3/BmobInstallation;->subOrUnsub:Z

    iget-object v2, p0, Lcn/bmob/v3/BmobInstallation;->channels:Ljava/util/List;

    new-instance v3, Lcn/bmob/v3/BmobQuery;

    invoke-direct {v3}, Lcn/bmob/v3/BmobQuery;-><init>()V

    const-string v4, "installationId"

    invoke-static {v0}, Lcn/bmob/v3/requestmanager/thing;->Z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcn/bmob/v3/BmobQuery;->addWhereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcn/bmob/v3/BmobQuery;

    sget-object v4, Lcn/bmob/v3/BmobQuery$CachePolicy;->CACHE_ELSE_NETWORK:Lcn/bmob/v3/BmobQuery$CachePolicy;

    invoke-virtual {v3, v4}, Lcn/bmob/v3/BmobQuery;->setCachePolicy(Lcn/bmob/v3/BmobQuery$CachePolicy;)V

    new-instance v4, Lcn/bmob/v3/BmobInstallation$2;

    invoke-direct {v4, p0, v2, v1, v0}, Lcn/bmob/v3/BmobInstallation$2;-><init>(Lcn/bmob/v3/BmobInstallation;Ljava/util/List;ZLandroid/content/Context;)V

    invoke-virtual {v3, v0, v4}, Lcn/bmob/v3/BmobQuery;->findObjects(Landroid/content/Context;Lcn/bmob/v3/listener/FindListener;)V

    .line 87
    return-void
.end method

.method public setChannels(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 102
    iput-object p1, p0, Lcn/bmob/v3/BmobInstallation;->channels:Ljava/util/List;

    .line 103
    return-void
.end method

.method public setDeviceType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcn/bmob/v3/BmobInstallation;->deviceType:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setInstallationId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcn/bmob/v3/BmobInstallation;->installationId:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcn/bmob/v3/BmobInstallation;->timeZone:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public subscribe(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcn/bmob/v3/BmobInstallation;->channels:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    return-void
.end method

.method public unsubscribe(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcn/bmob/v3/BmobInstallation;->channels:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    const/4 v0, 0x0

    sput-boolean v0, Lcn/bmob/v3/BmobInstallation;->subOrUnsub:Z

    .line 166
    return-void
.end method
