.class final Le/of$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/of;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic aA:Le/V;

.field private synthetic az:Le/of;


# direct methods
.method constructor <init>(Le/of;Le/V;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Le/of$1;->az:Le/of;

    iput-object p2, p0, Le/of$1;->aA:Le/V;

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 141
    :try_start_0
    iget-object v0, p0, Le/of$1;->az:Le/of;

    invoke-static {v0}, Le/of;->Code(Le/of;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    iget-object v1, p0, Le/of$1;->aA:Le/V;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method