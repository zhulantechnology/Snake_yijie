.class public Lcn/bmob/v3/BmobACL;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private I:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/bmob/v3/BmobACL;->I:Ljava/util/Map;

    .line 8
    return-void
.end method

.method private Code(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 22
    iget-object v0, p0, Lcn/bmob/v3/BmobACL;->I:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcn/bmob/v3/BmobACL;->I:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 24
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object v1, p0, Lcn/bmob/v3/BmobACL;->I:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    :goto_0
    return-void

    .line 27
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 28
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object v1, p0, Lcn/bmob/v3/BmobACL;->I:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public getAcl()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18
    iget-object v0, p0, Lcn/bmob/v3/BmobACL;->I:Ljava/util/Map;

    return-object v0
.end method

.method public setPublicReadAccess(Z)V
    .locals 1

    .prologue
    .line 118
    const-string v0, "*"

    invoke-virtual {p0, v0, p1}, Lcn/bmob/v3/BmobACL;->setReadAccess(Ljava/lang/String;Z)V

    .line 119
    return-void
.end method

.method public setPublicWriteAccess(Z)V
    .locals 1

    .prologue
    .line 122
    const-string v0, "*"

    invoke-virtual {p0, v0, p1}, Lcn/bmob/v3/BmobACL;->setWriteAccess(Ljava/lang/String;Z)V

    .line 123
    return-void
.end method

.method public setReadAccess(Lcn/bmob/v3/BmobUser;Z)V
    .locals 2

    .prologue
    .line 43
    if-nez p1, :cond_0

    .line 44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 45
    const-string v1, "cannot setReadAccess for null user"

    .line 44
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_0
    invoke-virtual {p1}, Lcn/bmob/v3/BmobUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 48
    const-string v1, "cannot setReadAccess for null userId"

    .line 47
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_1
    const-string v0, "read"

    invoke-virtual {p1}, Lcn/bmob/v3/BmobUser;->getObjectId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lcn/bmob/v3/BmobACL;->Code(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 52
    return-void
.end method

.method public setReadAccess(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 34
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 36
    const-string v1, "cannot setReadAccess for null userId"

    .line 35
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_0
    const-string v0, "read"

    invoke-direct {p0, v0, p1, p2}, Lcn/bmob/v3/BmobACL;->Code(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 40
    return-void
.end method

.method public setRoleReadAccess(Lcn/bmob/v3/BmobRole;Z)V
    .locals 3

    .prologue
    .line 85
    if-nez p1, :cond_0

    .line 86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 87
    const-string v1, "cannot setReadAccess for null role"

    .line 86
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    invoke-virtual {p1}, Lcn/bmob/v3/BmobRole;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 90
    const-string v1, "cannot setReadAccess for null roleName"

    .line 89
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_1
    const-string v0, "read"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "role:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/bmob/v3/BmobRole;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lcn/bmob/v3/BmobACL;->Code(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 94
    return-void
.end method

.method public setRoleReadAccess(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 76
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 78
    const-string v1, "cannot setReadAccess for null roleName"

    .line 77
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_0
    const-string v0, "read"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "role:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lcn/bmob/v3/BmobACL;->Code(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 82
    return-void
.end method

.method public setRoleWriteAccess(Lcn/bmob/v3/BmobRole;Z)V
    .locals 3

    .prologue
    .line 106
    if-nez p1, :cond_0

    .line 107
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 108
    const-string v1, "cannot setReadAccess for null role"

    .line 107
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_0
    invoke-virtual {p1}, Lcn/bmob/v3/BmobRole;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 111
    const-string v1, "cannot setReadAccess for null roleName"

    .line 110
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_1
    const-string v0, "write"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "role:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/bmob/v3/BmobRole;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lcn/bmob/v3/BmobACL;->Code(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 115
    return-void
.end method

.method public setRoleWriteAccess(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 97
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 99
    const-string v1, "cannot setReadAccess for null roleName"

    .line 98
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_0
    const-string v0, "write"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "role:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lcn/bmob/v3/BmobACL;->Code(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 103
    return-void
.end method

.method public setWriteAccess(Lcn/bmob/v3/BmobUser;Z)V
    .locals 2

    .prologue
    .line 64
    if-nez p1, :cond_0

    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 66
    const-string v1, "cannot setReadAccess for null user"

    .line 65
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_0
    invoke-virtual {p1}, Lcn/bmob/v3/BmobUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 69
    const-string v1, "cannot setReadAccess for null userId"

    .line 68
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_1
    const-string v0, "write"

    invoke-virtual {p1}, Lcn/bmob/v3/BmobUser;->getObjectId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lcn/bmob/v3/BmobACL;->Code(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 73
    return-void
.end method

.method public setWriteAccess(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 55
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 57
    const-string v1, "cannot setReadAccess for null userId"

    .line 56
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    const-string v0, "write"

    invoke-direct {p0, v0, p1, p2}, Lcn/bmob/v3/BmobACL;->Code(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 61
    return-void
.end method
