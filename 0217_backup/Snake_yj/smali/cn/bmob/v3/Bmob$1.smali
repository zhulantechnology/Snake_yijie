.class final Lcn/bmob/v3/Bmob$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/bmob/v3/listener/XListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/bmob/v3/Bmob;->getServerTime(Landroid/content/Context;Lcn/bmob/v3/listener/GetServerTimeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic V:Lcn/bmob/v3/listener/GetServerTimeListener;


# direct methods
.method constructor <init>(Lcn/bmob/v3/listener/GetServerTimeListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/bmob/v3/Bmob$1;->V:Lcn/bmob/v3/listener/GetServerTimeListener;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcn/bmob/v3/Bmob$1;->V:Lcn/bmob/v3/listener/GetServerTimeListener;

    invoke-interface {v0, p1}, Lcn/bmob/v3/listener/GetServerTimeListener;->onFailure(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public final onSuccess(Lg/madness;)V
    .locals 4

    .prologue
    .line 53
    iget-object v0, p0, Lcn/bmob/v3/Bmob$1;->V:Lcn/bmob/v3/listener/GetServerTimeListener;

    invoke-virtual {p1}, Lg/madness;->q()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcn/bmob/v3/listener/GetServerTimeListener;->onSuccess(J)V

    .line 54
    return-void
.end method
