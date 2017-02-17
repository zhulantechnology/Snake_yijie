.class final Lcn/bmob/v3/BmobObject$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/bmob/v3/listener/XListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/bmob/v3/BmobObject;->insertBatch(Landroid/content/Context;Ljava/util/List;Lcn/bmob/v3/listener/InsertListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic L:Lcn/bmob/v3/listener/InsertListener;


# direct methods
.method constructor <init>(Lcn/bmob/v3/BmobObject;Lcn/bmob/v3/listener/InsertListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p2, p0, Lcn/bmob/v3/BmobObject$2;->L:Lcn/bmob/v3/listener/InsertListener;

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcn/bmob/v3/BmobObject$2;->L:Lcn/bmob/v3/listener/InsertListener;

    invoke-interface {v0, p1}, Lcn/bmob/v3/listener/InsertListener;->onFailure(Ljava/lang/String;)V

    .line 200
    return-void
.end method

.method public final onSuccess(Lg/madness;)V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcn/bmob/v3/BmobObject$2;->L:Lcn/bmob/v3/listener/InsertListener;

    invoke-interface {v0}, Lcn/bmob/v3/listener/InsertListener;->onSuccess()V

    .line 195
    return-void
.end method
