.class public Lcn/bmob/v3/BmobRole;
.super Lcn/bmob/v3/BmobObject;
.source "SourceFile"


# static fields
.field public static className:Ljava/lang/String;


# instance fields
.field private name:Ljava/lang/String;

.field private q:Lcn/bmob/v3/datatype/BmobRelation;

.field private r:Lcn/bmob/v3/datatype/BmobRelation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "_Role"

    sput-object v0, Lcn/bmob/v3/BmobRole;->className:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcn/bmob/v3/BmobObject;-><init>()V

    .line 27
    new-instance v0, Lcn/bmob/v3/datatype/BmobRelation;

    invoke-direct {v0}, Lcn/bmob/v3/datatype/BmobRelation;-><init>()V

    iput-object v0, p0, Lcn/bmob/v3/BmobRole;->q:Lcn/bmob/v3/datatype/BmobRelation;

    .line 28
    new-instance v0, Lcn/bmob/v3/datatype/BmobRelation;

    invoke-direct {v0}, Lcn/bmob/v3/datatype/BmobRelation;-><init>()V

    iput-object v0, p0, Lcn/bmob/v3/BmobRole;->r:Lcn/bmob/v3/datatype/BmobRelation;

    .line 31
    invoke-virtual {p0, p1}, Lcn/bmob/v3/BmobRole;->setName(Ljava/lang/String;)V

    .line 32
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcn/bmob/v3/BmobRole;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRoles()Lcn/bmob/v3/datatype/BmobRelation;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcn/bmob/v3/BmobRole;->q:Lcn/bmob/v3/datatype/BmobRelation;

    return-object v0
.end method

.method public getUsers()Lcn/bmob/v3/datatype/BmobRelation;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcn/bmob/v3/BmobRole;->r:Lcn/bmob/v3/datatype/BmobRelation;

    return-object v0
.end method

.method public insertObject(Landroid/content/Context;Lcn/bmob/v3/listener/InsertListener;)V
    .locals 6

    .prologue
    .line 50
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 52
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {p0}, Ld/thing;->I(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 53
    const-string v1, "data"

    invoke-virtual {p0, v0}, Lcn/bmob/v3/BmobRole;->disposePointerType(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    const-string v0, "c"

    sget-object v1, Lcn/bmob/v3/BmobRole;->className:Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    invoke-static {p1}, Lcn/bmob/v3/requestmanager/thing;->V(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v4

    .line 61
    new-instance v0, La/thing;

    const/4 v2, 0x1

    const-string v3, "http://open.bmob.cn/7/create"

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, La/thing;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/util/Map;Lorg/json/JSONObject;)V

    .line 62
    invoke-static {p1}, Lcn/bmob/v3/requestmanager/thing;->Code(Landroid/content/Context;)Lcn/bmob/v3/requestmanager/thing;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/bmob/v3/requestmanager/thing;->Code(La/thing;)Lcn/bmob/v3/requestmanager/thing;

    move-result-object v0

    .line 66
    new-instance v1, Lcn/bmob/v3/BmobRole$1;

    invoke-direct {v1, p0, p2}, Lcn/bmob/v3/BmobRole$1;-><init>(Lcn/bmob/v3/BmobRole;Lcn/bmob/v3/listener/InsertListener;)V

    invoke-virtual {v0, v1}, Lcn/bmob/v3/requestmanager/thing;->Code(Lcn/bmob/v3/listener/XListener;)V

    .line 82
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 56
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcn/bmob/v3/BmobRole;->name:Ljava/lang/String;

    .line 39
    return-void
.end method
