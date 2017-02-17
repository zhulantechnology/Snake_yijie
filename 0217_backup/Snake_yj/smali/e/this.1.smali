.class public Le/this;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final bk:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Le/darkness;

    invoke-direct {v0, p0, p1}, Le/darkness;-><init>(Le/this;Landroid/os/Handler;)V

    iput-object v0, p0, Le/this;->bk:Ljava/util/concurrent/Executor;

    .line 42
    return-void
.end method

.method public static Code(Z)V
    .locals 1

    .prologue
    .line 41
    if-nez p0, :cond_0

    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 44
    :cond_0
    return-void
.end method

.method public static Z(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 34
    if-nez p0, :cond_0

    .line 35
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 37
    :cond_0
    return-object p0
.end method


# virtual methods
.method public Code(Le/V;Le/Though;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/V",
            "<*>;",
            "Le/Though",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Le/this;->Code(Le/V;Le/Though;Ljava/lang/Runnable;)V

    .line 56
    return-void
.end method

.method public Code(Le/V;Le/Though;Ljava/lang/Runnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/V",
            "<*>;",
            "Le/Though",
            "<*>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 60
    invoke-virtual {p1}, Le/V;->e()V

    .line 61
    const-string v0, "post-response"

    invoke-virtual {p1, v0}, Le/V;->S(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Le/this;->bk:Ljava/util/concurrent/Executor;

    new-instance v1, Le/I;

    invoke-direct {v1, p0, p1, p2, p3}, Le/I;-><init>(Le/this;Le/V;Le/Though;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 63
    return-void
.end method

.method public Code(Le/V;Le/there;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/V",
            "<*>;",
            "Le/there;",
            ")V"
        }
    .end annotation

    .prologue
    .line 67
    const-string v0, "post-error"

    invoke-virtual {p1, v0}, Le/V;->S(Ljava/lang/String;)V

    .line 68
    invoke-static {p2}, Le/Though;->Z(Le/there;)Le/Though;

    move-result-object v0

    .line 69
    iget-object v1, p0, Le/this;->bk:Ljava/util/concurrent/Executor;

    new-instance v2, Le/I;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v0, v3}, Le/I;-><init>(Le/this;Le/V;Le/Though;Ljava/lang/Runnable;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 70
    return-void
.end method
