.class final Le/I;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final aC:Le/V;

.field private final aD:Le/Though;

.field private final aE:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Le/this;Le/V;Le/Though;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p2, p0, Le/I;->aC:Le/V;

    .line 84
    iput-object p3, p0, Le/I;->aD:Le/Though;

    .line 85
    iput-object p4, p0, Le/I;->aE:Ljava/lang/Runnable;

    .line 86
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Le/I;->aC:Le/V;

    invoke-virtual {v0}, Le/V;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Le/I;->aC:Le/V;

    const-string v1, "canceled-at-delivery"

    invoke-virtual {v0, v1}, Le/V;->F(Ljava/lang/String;)V

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    iget-object v0, p0, Le/I;->aD:Le/Though;

    iget-object v0, v0, Le/Though;->bi:Le/there;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    .line 99
    iget-object v0, p0, Le/I;->aC:Le/V;

    iget-object v1, p0, Le/I;->aD:Le/Though;

    iget-object v1, v1, Le/Though;->result:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Le/V;->Code(Ljava/lang/Object;)V

    .line 106
    :goto_2
    iget-object v0, p0, Le/I;->aD:Le/Though;

    iget-boolean v0, v0, Le/Though;->bj:Z

    if-eqz v0, :cond_4

    .line 107
    iget-object v0, p0, Le/I;->aC:Le/V;

    const-string v1, "intermediate-response"

    invoke-virtual {v0, v1}, Le/V;->S(Ljava/lang/String;)V

    .line 113
    :goto_3
    iget-object v0, p0, Le/I;->aE:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Le/I;->aE:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 98
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 101
    :cond_3
    iget-object v0, p0, Le/I;->aC:Le/V;

    iget-object v1, p0, Le/I;->aD:Le/Though;

    iget-object v1, v1, Le/Though;->bi:Le/there;

    invoke-virtual {v0, v1}, Le/V;->I(Le/there;)V

    goto :goto_2

    .line 109
    :cond_4
    iget-object v0, p0, Le/I;->aC:Le/V;

    const-string v1, "done"

    invoke-virtual {v0, v1}, Le/V;->F(Ljava/lang/String;)V

    goto :goto_3
.end method
