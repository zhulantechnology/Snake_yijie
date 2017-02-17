.class final Lc/This$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/bmob/v3/listener/XListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/This;->Code(Landroid/content/Context;Lcn/bmob/v3/listener/XListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic E:Lcn/bmob/v3/listener/XListener;


# direct methods
.method constructor <init>(Lc/This;Lcn/bmob/v3/listener/XListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p2, p0, Lc/This$3;->E:Lcn/bmob/v3/listener/XListener;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lc/This$3;->E:Lcn/bmob/v3/listener/XListener;

    invoke-interface {v0, p1}, Lcn/bmob/v3/listener/XListener;->onFailure(Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method public final onSuccess(Lg/madness;)V
    .locals 3

    .prologue
    .line 124
    iget-object v0, p0, Lc/This$3;->E:Lcn/bmob/v3/listener/XListener;

    invoke-virtual {p1}, Lg/madness;->x()Lg/is;

    move-result-object v1

    const-string v2, "S"

    invoke-virtual {v1, v2}, Lg/is;->c(Ljava/lang/String;)Lg/madness;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/bmob/v3/listener/XListener;->onSuccess(Lg/madness;)V

    .line 125
    return-void
.end method
