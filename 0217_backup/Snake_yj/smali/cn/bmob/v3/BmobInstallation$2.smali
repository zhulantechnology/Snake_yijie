.class final Lcn/bmob/v3/BmobInstallation$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/bmob/v3/listener/FindListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/bmob/v3/BmobInstallation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/bmob/v3/listener/FindListener",
        "<",
        "Lcn/bmob/v3/BmobInstallation;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic C:Ljava/util/List;

.field private final synthetic F:Landroid/content/Context;

.field private final synthetic S:Z


# direct methods
.method constructor <init>(Lcn/bmob/v3/BmobInstallation;Ljava/util/List;ZLandroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p2, p0, Lcn/bmob/v3/BmobInstallation$2;->C:Ljava/util/List;

    iput-boolean p3, p0, Lcn/bmob/v3/BmobInstallation$2;->S:Z

    iput-object p4, p0, Lcn/bmob/v3/BmobInstallation$2;->F:Landroid/content/Context;

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 224
    const-class v0, Lcn/bmob/v3/BmobInstallation;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Find BmobInstallation Error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    return-void
.end method

.method public final onSuccess(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/bmob/v3/BmobInstallation;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 177
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 178
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/bmob/v3/BmobInstallation;

    move v2, v1

    .line 179
    :goto_0
    iget-object v1, p0, Lcn/bmob/v3/BmobInstallation$2;->C:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v2, v1, :cond_0

    .line 186
    invoke-virtual {v0, v4}, Lcn/bmob/v3/BmobInstallation;->setDeviceType(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v0, v4}, Lcn/bmob/v3/BmobInstallation;->setTimeZone(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v0, v4}, Lcn/bmob/v3/BmobInstallation;->setInstallationId(Ljava/lang/String;)V

    .line 189
    iget-object v1, p0, Lcn/bmob/v3/BmobInstallation$2;->F:Landroid/content/Context;

    new-instance v2, Lcn/bmob/v3/BmobInstallation$2$1;

    invoke-direct {v2, p0}, Lcn/bmob/v3/BmobInstallation$2$1;-><init>(Lcn/bmob/v3/BmobInstallation$2;)V

    invoke-virtual {v0, v1, v2}, Lcn/bmob/v3/BmobInstallation;->updateObject(Landroid/content/Context;Lcn/bmob/v3/listener/UpdateListener;)V

    .line 219
    :goto_1
    return-void

    .line 180
    :cond_0
    iget-boolean v1, p0, Lcn/bmob/v3/BmobInstallation$2;->S:Z

    if-eqz v1, :cond_1

    .line 181
    invoke-virtual {v0}, Lcn/bmob/v3/BmobInstallation;->getChannels()Ljava/util/List;

    move-result-object v3

    iget-object v1, p0, Lcn/bmob/v3/BmobInstallation$2;->C:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 183
    :cond_1
    invoke-virtual {v0}, Lcn/bmob/v3/BmobInstallation;->getChannels()Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, Lcn/bmob/v3/BmobInstallation$2;->C:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 204
    :cond_2
    iget-object v0, p0, Lcn/bmob/v3/BmobInstallation$2;->F:Landroid/content/Context;

    invoke-static {v0}, Lcn/bmob/v3/BmobInstallation;->getCurrentInstallation(Landroid/content/Context;)Lcn/bmob/v3/BmobInstallation;

    move-result-object v0

    iget-object v1, p0, Lcn/bmob/v3/BmobInstallation$2;->F:Landroid/content/Context;

    new-instance v2, Lcn/bmob/v3/BmobInstallation$2$2;

    invoke-direct {v2, p0}, Lcn/bmob/v3/BmobInstallation$2$2;-><init>(Lcn/bmob/v3/BmobInstallation$2;)V

    invoke-virtual {v0, v1, v2}, Lcn/bmob/v3/BmobInstallation;->insertObject(Landroid/content/Context;Lcn/bmob/v3/listener/InsertListener;)V

    goto :goto_1
.end method
