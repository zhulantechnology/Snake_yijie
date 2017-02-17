.class final Lcn/bmob/v3/requestmanager/thing$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/bmob/v3/listener/XListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/bmob/v3/requestmanager/thing;->Code(Ljava/lang/reflect/Type;Lcn/bmob/v3/listener/FindListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic Q:Lcn/bmob/v3/requestmanager/thing;

.field private final synthetic R:Z

.field private final synthetic T:Ljava/lang/reflect/Type;

.field private final synthetic U:Lcn/bmob/v3/listener/FindListener;


# direct methods
.method constructor <init>(Lcn/bmob/v3/requestmanager/thing;ZLjava/lang/reflect/Type;Lcn/bmob/v3/listener/FindListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/bmob/v3/requestmanager/thing$3;->Q:Lcn/bmob/v3/requestmanager/thing;

    iput-boolean p2, p0, Lcn/bmob/v3/requestmanager/thing$3;->R:Z

    iput-object p3, p0, Lcn/bmob/v3/requestmanager/thing$3;->T:Ljava/lang/reflect/Type;

    iput-object p4, p0, Lcn/bmob/v3/requestmanager/thing$3;->U:Lcn/bmob/v3/listener/FindListener;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcn/bmob/v3/requestmanager/thing$3;->U:Lcn/bmob/v3/listener/FindListener;

    invoke-interface {v0, p1}, Lcn/bmob/v3/listener/FindListener;->onError(Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public final onSuccess(Lg/madness;)V
    .locals 6

    .prologue
    .line 117
    new-instance v0, Lg/V;

    invoke-direct {v0}, Lg/V;-><init>()V

    invoke-virtual {v0}, Lg/V;->m()Lg/Tempest;

    move-result-object v2

    .line 124
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 125
    invoke-virtual {p1}, Lg/madness;->x()Lg/is;

    move-result-object v0

    const-string v1, "results"

    invoke-virtual {v0, v1}, Lg/is;->d(Ljava/lang/String;)Lg/Though;

    move-result-object v0

    invoke-virtual {v0}, Lg/Though;->toString()Ljava/lang/String;

    move-result-object v0

    .line 127
    iget-boolean v1, p0, Lcn/bmob/v3/requestmanager/thing$3;->R:Z

    if-eqz v1, :cond_0

    .line 128
    iget-object v1, p0, Lcn/bmob/v3/requestmanager/thing$3;->Q:Lcn/bmob/v3/requestmanager/thing;

    invoke-static {v1, v0}, Lcn/bmob/v3/requestmanager/thing;->Code(Lcn/bmob/v3/requestmanager/thing;Ljava/lang/String;)V

    .line 131
    :cond_0
    const-class v1, Ljava/util/List;

    invoke-virtual {v2, v0, v1}, Lg/Tempest;->V(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 132
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lt v1, v4, :cond_1

    .line 139
    iget-object v0, p0, Lcn/bmob/v3/requestmanager/thing$3;->U:Lcn/bmob/v3/listener/FindListener;

    invoke-interface {v0, v3}, Lcn/bmob/v3/listener/FindListener;->onSuccess(Ljava/util/List;)V

    .line 140
    return-void

    .line 134
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Lg/Tempest;->C(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 136
    iget-object v5, p0, Lcn/bmob/v3/requestmanager/thing$3;->T:Ljava/lang/reflect/Type;

    invoke-virtual {v2, v4, v5}, Lg/Tempest;->Code(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v4

    .line 137
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
