.class public final Lcom/b/a/c$f;
.super Lcom/b/a/c$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# instance fields
.field private a:J

.field private b:La/a/b;


# direct methods
.method public constructor <init>(La/a/b;)V
    .locals 2

    invoke-direct {p0}, Lcom/b/a/c$h;-><init>()V

    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lcom/b/a/c$f;->a:J

    iput-object p1, p0, Lcom/b/a/c$f;->b:La/a/b;

    return-void
.end method


# virtual methods
.method public final a(Z)Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/b/a/c$f;->b:La/a/b;

    iget-wide v2, v2, La/a/b;->c:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/b/a/c$f;->a:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
