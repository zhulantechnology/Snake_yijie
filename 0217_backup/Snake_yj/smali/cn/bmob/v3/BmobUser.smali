.class public Lcn/bmob/v3/BmobUser;
.super Lcn/bmob/v3/BmobObject;
.source "SourceFile"


# instance fields
.field private email:Ljava/lang/String;

.field private emailVerified:Ljava/lang/Boolean;

.field private password:Ljava/lang/String;

.field private sessionToken:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcn/bmob/v3/BmobObject;-><init>()V

    return-void
.end method

.method public static getCurrentUser(Landroid/content/Context;)Lcn/bmob/v3/BmobUser;
    .locals 1

    .prologue
    .line 230
    const-class v0, Lcn/bmob/v3/BmobUser;

    invoke-static {p0, v0}, Lcn/bmob/v3/BmobUser;->getCurrentUser(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/bmob/v3/BmobUser;

    return-object v0
.end method

.method public static getCurrentUser(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 220
    new-instance v0, Lb/This;

    invoke-direct {v0, p0}, Lb/This;-><init>(Landroid/content/Context;)V

    const-string v1, "user"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lb/This;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Ld/thing;->Code(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static logOut(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 238
    new-instance v0, Lb/This;

    invoke-direct {v0, p0}, Lb/This;-><init>(Landroid/content/Context;)V

    const-string v1, "user"

    invoke-virtual {v0, v1}, Lb/This;->remove(Ljava/lang/String;)V

    .line 239
    return-void
.end method

.method public static requestEmailVerify(Landroid/content/Context;Ljava/lang/String;Lcn/bmob/v3/listener/EmailVerifyListener;)V
    .locals 1

    .prologue
    .line 197
    new-instance v0, Lc/This;

    invoke-direct {v0}, Lc/This;-><init>()V

    .line 198
    invoke-virtual {v0, p0, p1, p2}, Lc/This;->requestEmailVerify(Landroid/content/Context;Ljava/lang/String;Lcn/bmob/v3/listener/EmailVerifyListener;)V

    .line 199
    return-void
.end method

.method public static resetPassword(Landroid/content/Context;Ljava/lang/String;Lcn/bmob/v3/listener/ResetPasswordListener;)V
    .locals 1

    .prologue
    .line 208
    new-instance v0, Lc/This;

    invoke-direct {v0}, Lc/This;-><init>()V

    .line 209
    invoke-virtual {v0, p0, p1, p2}, Lc/This;->resetPassword(Landroid/content/Context;Ljava/lang/String;Lcn/bmob/v3/listener/ResetPasswordListener;)V

    .line 210
    return-void
.end method


# virtual methods
.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcn/bmob/v3/BmobUser;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailVerified()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcn/bmob/v3/BmobUser;->emailVerified:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcn/bmob/v3/BmobUser;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcn/bmob/v3/BmobUser;->sessionToken:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcn/bmob/v3/BmobUser;->username:Ljava/lang/String;

    return-object v0
.end method

.method public login(Landroid/content/Context;Lcn/bmob/v3/listener/InsertListener;)V
    .locals 6

    .prologue
    .line 102
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 104
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 105
    const-string v1, "username"

    invoke-virtual {p0}, Lcn/bmob/v3/BmobUser;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 106
    const-string v1, "password"

    invoke-virtual {p0}, Lcn/bmob/v3/BmobUser;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    const-string v1, "data"

    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    const-string v0, "c"

    const-string v1, "_User"

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    invoke-static {p1}, Lcn/bmob/v3/requestmanager/thing;->V(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v4

    .line 115
    new-instance v0, La/thing;

    const/4 v2, 0x1

    const-string v3, "http://open.bmob.cn/7/login"

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, La/thing;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/util/Map;Lorg/json/JSONObject;)V

    .line 117
    invoke-static {p1}, Lcn/bmob/v3/requestmanager/thing;->Code(Landroid/content/Context;)Lcn/bmob/v3/requestmanager/thing;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/bmob/v3/requestmanager/thing;->Code(La/thing;)Lcn/bmob/v3/requestmanager/thing;

    move-result-object v0

    .line 119
    new-instance v1, Lcn/bmob/v3/BmobUser$2;

    invoke-direct {v1, p0, p1, p2}, Lcn/bmob/v3/BmobUser$2;-><init>(Lcn/bmob/v3/BmobUser;Landroid/content/Context;Lcn/bmob/v3/listener/InsertListener;)V

    invoke-virtual {v0, v1}, Lcn/bmob/v3/requestmanager/thing;->Code(Lcn/bmob/v3/listener/XListener;)V

    .line 147
    return-void

    .line 109
    :catch_0
    move-exception v0

    .line 110
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcn/bmob/v3/BmobUser;->email:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setEmailVerified(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcn/bmob/v3/BmobUser;->emailVerified:Ljava/lang/Boolean;

    .line 55
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcn/bmob/v3/BmobUser;->password:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setSessionToken(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcn/bmob/v3/BmobUser;->sessionToken:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcn/bmob/v3/BmobUser;->username:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public signUp(Landroid/content/Context;Lcn/bmob/v3/listener/InsertListener;)V
    .locals 6

    .prologue
    .line 64
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 66
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {p0}, Ld/thing;->I(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 67
    const-string v1, "data"

    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    const-string v0, "c"

    const-string v1, "_User"

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    invoke-static {p1}, Lcn/bmob/v3/requestmanager/thing;->V(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v4

    .line 75
    new-instance v0, La/thing;

    const/4 v2, 0x1

    const-string v3, "http://open.bmob.cn/7/signup"

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, La/thing;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/util/Map;Lorg/json/JSONObject;)V

    .line 77
    invoke-static {p1}, Lcn/bmob/v3/requestmanager/thing;->Code(Landroid/content/Context;)Lcn/bmob/v3/requestmanager/thing;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/bmob/v3/requestmanager/thing;->Code(La/thing;)Lcn/bmob/v3/requestmanager/thing;

    move-result-object v0

    .line 81
    new-instance v1, Lcn/bmob/v3/BmobUser$1;

    invoke-direct {v1, p0, p2}, Lcn/bmob/v3/BmobUser$1;-><init>(Lcn/bmob/v3/BmobUser;Lcn/bmob/v3/listener/InsertListener;)V

    invoke-virtual {v0, v1}, Lcn/bmob/v3/requestmanager/thing;->Code(Lcn/bmob/v3/listener/XListener;)V

    .line 99
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public updateObject(Landroid/content/Context;Lcn/bmob/v3/listener/UpdateListener;)V
    .locals 6

    .prologue
    .line 150
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 152
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {p0}, Ld/thing;->I(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 155
    const-string v1, "objectId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 156
    const-string v1, "sessionToken"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 157
    const-string v1, "createdAt"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 158
    const-string v1, "updatedAt"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 159
    const-string v1, "data"

    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    const-string v0, "c"

    const-string v1, "_User"

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 161
    const-string v0, "objectId"

    invoke-virtual {p0}, Lcn/bmob/v3/BmobUser;->getObjectId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :goto_0
    invoke-static {p1}, Lcn/bmob/v3/requestmanager/thing;->V(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v4

    .line 167
    const-string v0, "X-Bmob-Session-Token"

    invoke-virtual {p0}, Lcn/bmob/v3/BmobUser;->getSessionToken()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    new-instance v0, La/thing;

    const/4 v2, 0x1

    const-string v3, "http://open.bmob.cn/7/update"

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, La/thing;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/util/Map;Lorg/json/JSONObject;)V

    .line 171
    invoke-static {p1}, Lcn/bmob/v3/requestmanager/thing;->Code(Landroid/content/Context;)Lcn/bmob/v3/requestmanager/thing;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/bmob/v3/requestmanager/thing;->Code(La/thing;)Lcn/bmob/v3/requestmanager/thing;

    move-result-object v0

    .line 173
    new-instance v1, Lcn/bmob/v3/BmobUser$3;

    invoke-direct {v1, p0, p2}, Lcn/bmob/v3/BmobUser$3;-><init>(Lcn/bmob/v3/BmobUser;Lcn/bmob/v3/listener/UpdateListener;)V

    invoke-virtual {v0, v1}, Lcn/bmob/v3/requestmanager/thing;->Code(Lcn/bmob/v3/listener/XListener;)V

    .line 188
    return-void

    .line 162
    :catch_0
    move-exception v0

    .line 163
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
