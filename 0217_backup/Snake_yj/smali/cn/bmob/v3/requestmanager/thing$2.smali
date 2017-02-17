.class final Lcn/bmob/v3/requestmanager/thing$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/Though$This;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/bmob/v3/requestmanager/thing;->Code(Lcn/bmob/v3/listener/XListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/Though$This;"
    }
.end annotation


# instance fields
.field private final synthetic E:Lcn/bmob/v3/listener/XListener;


# direct methods
.method constructor <init>(Lcn/bmob/v3/requestmanager/thing;Lcn/bmob/v3/listener/XListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p2, p0, Lcn/bmob/v3/requestmanager/thing$2;->E:Lcn/bmob/v3/listener/XListener;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final Code(Le/there;)V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcn/bmob/v3/requestmanager/thing$2;->E:Lcn/bmob/v3/listener/XListener;

    invoke-virtual {p1}, Le/there;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/bmob/v3/listener/XListener;->onFailure(Ljava/lang/String;)V

    .line 101
    return-void
.end method
