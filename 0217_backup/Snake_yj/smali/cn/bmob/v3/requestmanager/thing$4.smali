.class final Lcn/bmob/v3/requestmanager/thing$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/bmob/v3/listener/XListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/bmob/v3/requestmanager/thing;->Code(Ljava/lang/reflect/Type;Lcn/bmob/v3/listener/GetListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic Q:Lcn/bmob/v3/requestmanager/thing;

.field private final synthetic R:Z

.field private final synthetic T:Ljava/lang/reflect/Type;

.field private final synthetic W:Lcn/bmob/v3/listener/GetListener;


# direct methods
.method constructor <init>(Lcn/bmob/v3/requestmanager/thing;ZLjava/lang/reflect/Type;Lcn/bmob/v3/listener/GetListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/bmob/v3/requestmanager/thing$4;->Q:Lcn/bmob/v3/requestmanager/thing;

    iput-boolean p2, p0, Lcn/bmob/v3/requestmanager/thing$4;->R:Z

    iput-object p3, p0, Lcn/bmob/v3/requestmanager/thing$4;->T:Ljava/lang/reflect/Type;

    iput-object p4, p0, Lcn/bmob/v3/requestmanager/thing$4;->W:Lcn/bmob/v3/listener/GetListener;

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcn/bmob/v3/requestmanager/thing$4;->W:Lcn/bmob/v3/listener/GetListener;

    invoke-interface {v0, p1}, Lcn/bmob/v3/listener/GetListener;->onFailure(Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method public final onSuccess(Lg/madness;)V
    .locals 3

    .prologue
    .line 162
    new-instance v0, Lg/V;

    invoke-direct {v0}, Lg/V;-><init>()V

    invoke-virtual {v0}, Lg/V;->m()Lg/Tempest;

    move-result-object v0

    .line 164
    iget-boolean v1, p0, Lcn/bmob/v3/requestmanager/thing$4;->R:Z

    if-eqz v1, :cond_0

    .line 165
    iget-object v1, p0, Lcn/bmob/v3/requestmanager/thing$4;->Q:Lcn/bmob/v3/requestmanager/thing;

    invoke-virtual {p1}, Lg/madness;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/bmob/v3/requestmanager/thing;->Code(Lcn/bmob/v3/requestmanager/thing;Ljava/lang/String;)V

    .line 167
    :cond_0
    invoke-virtual {p1}, Lg/madness;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/bmob/v3/requestmanager/thing$4;->T:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v1, v2}, Lg/Tempest;->Code(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 168
    iget-object v1, p0, Lcn/bmob/v3/requestmanager/thing$4;->W:Lcn/bmob/v3/listener/GetListener;

    invoke-interface {v1, v0}, Lcn/bmob/v3/listener/GetListener;->onSuccess(Ljava/lang/Object;)V

    .line 169
    return-void
.end method
