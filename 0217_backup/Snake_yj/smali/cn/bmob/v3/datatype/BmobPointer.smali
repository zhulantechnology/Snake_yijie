.class public Lcn/bmob/v3/datatype/BmobPointer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static params:Lorg/json/JSONObject;

.field private static rApi$6fc396a8:La/thing;

.field private static requestCommand:Lcn/bmob/v3/requestmanager/thing;


# instance fields
.field private __type:Ljava/lang/String;

.field private className:Ljava/lang/String;

.field private objectId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, "Pointer"

    iput-object v0, p0, Lcn/bmob/v3/datatype/BmobPointer;->__type:Ljava/lang/String;

    .line 30
    instance-of v0, p1, Lcn/bmob/v3/BmobUser;

    if-eqz v0, :cond_1

    .line 31
    check-cast p1, Lcn/bmob/v3/BmobUser;

    .line 32
    const-string v0, "_User"

    invoke-virtual {p0, v0}, Lcn/bmob/v3/datatype/BmobPointer;->setClassName(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p1}, Lcn/bmob/v3/BmobUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/bmob/v3/datatype/BmobPointer;->setObjectId(Ljava/lang/String;)V

    .line 43
    :cond_0
    :goto_0
    return-void

    .line 34
    :cond_1
    instance-of v0, p1, Lcn/bmob/v3/BmobRole;

    if-eqz v0, :cond_2

    .line 35
    check-cast p1, Lcn/bmob/v3/BmobRole;

    .line 36
    sget-object v0, Lcn/bmob/v3/BmobRole;->className:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcn/bmob/v3/datatype/BmobPointer;->setClassName(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p1}, Lcn/bmob/v3/BmobRole;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/bmob/v3/datatype/BmobPointer;->setObjectId(Ljava/lang/String;)V

    goto :goto_0

    .line 38
    :cond_2
    instance-of v0, p1, Lcn/bmob/v3/BmobObject;

    if-eqz v0, :cond_0

    .line 39
    check-cast p1, Lcn/bmob/v3/BmobObject;

    .line 40
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/bmob/v3/datatype/BmobPointer;->setClassName(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p1}, Lcn/bmob/v3/BmobObject;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/bmob/v3/datatype/BmobPointer;->setObjectId(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcn/bmob/v3/datatype/BmobPointer;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getObject(Landroid/content/Context;Lcn/bmob/v3/listener/GetListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Lcn/bmob/v3/listener/GetListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 71
    iget-object v0, p0, Lcn/bmob/v3/datatype/BmobPointer;->objectId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 73
    const-string v0, "objectId is null."

    invoke-interface {p2, v0}, Lcn/bmob/v3/listener/GetListener;->onFailure(Ljava/lang/String;)V

    .line 74
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 98
    :goto_0
    return-void

    .line 78
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v0, v0, v7

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v0, v0, v7

    move-object v6, v0

    check-cast v6, Ljava/lang/Class;

    .line 80
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcn/bmob/v3/datatype/BmobPointer;->params:Lorg/json/JSONObject;

    .line 81
    const-class v0, Lcn/bmob/v3/BmobUser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 82
    const-class v0, Lcn/bmob/v3/BmobUser;

    invoke-virtual {v6}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83
    :cond_1
    sget-object v0, Lcn/bmob/v3/datatype/BmobPointer;->params:Lorg/json/JSONObject;

    const-string v1, "c"

    const-string v2, "_User"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    :goto_1
    sget-object v0, Lcn/bmob/v3/datatype/BmobPointer;->params:Lorg/json/JSONObject;

    const-string v1, "objectId"

    iget-object v2, p0, Lcn/bmob/v3/datatype/BmobPointer;->objectId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_2
    sget-object v0, Lcn/bmob/v3/datatype/BmobPointer;->params:Lorg/json/JSONObject;

    invoke-static {p1}, Lcn/bmob/v3/requestmanager/thing;->V(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v4

    .line 93
    new-instance v0, La/thing;

    const/4 v2, 0x1

    const-string v3, "http://open.bmob.cn/7/find"

    sget-object v5, Lcn/bmob/v3/datatype/BmobPointer;->params:Lorg/json/JSONObject;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, La/thing;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/util/Map;Lorg/json/JSONObject;)V

    sput-object v0, Lcn/bmob/v3/datatype/BmobPointer;->rApi$6fc396a8:La/thing;

    .line 95
    invoke-static {p1}, Lcn/bmob/v3/requestmanager/thing;->Code(Landroid/content/Context;)Lcn/bmob/v3/requestmanager/thing;

    move-result-object v0

    sget-object v1, Lcn/bmob/v3/datatype/BmobPointer;->rApi$6fc396a8:La/thing;

    invoke-virtual {v0, v1}, Lcn/bmob/v3/requestmanager/thing;->Code(La/thing;)Lcn/bmob/v3/requestmanager/thing;

    move-result-object v0

    .line 97
    sput-object v0, Lcn/bmob/v3/datatype/BmobPointer;->requestCommand:Lcn/bmob/v3/requestmanager/thing;

    invoke-virtual {v0, v6, p2, v7}, Lcn/bmob/v3/requestmanager/thing;->Code(Ljava/lang/reflect/Type;Lcn/bmob/v3/listener/GetListener;Z)V

    goto :goto_0

    .line 85
    :cond_2
    :try_start_1
    sget-object v0, Lcn/bmob/v3/datatype/BmobPointer;->params:Lorg/json/JSONObject;

    const-string v1, "c"

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 88
    :catch_0
    move-exception v0

    .line 89
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method

.method public getObjectId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcn/bmob/v3/datatype/BmobPointer;->objectId:Ljava/lang/String;

    return-object v0
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcn/bmob/v3/datatype/BmobPointer;->className:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setObjectId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcn/bmob/v3/datatype/BmobPointer;->objectId:Ljava/lang/String;

    .line 63
    return-void
.end method
