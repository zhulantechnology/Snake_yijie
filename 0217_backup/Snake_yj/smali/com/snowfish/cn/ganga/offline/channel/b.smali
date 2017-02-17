.class public final Lcom/snowfish/cn/ganga/offline/channel/b;
.super Ljava/lang/Object;
.source "SFChannelAttributes.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:J

.field public d:I

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/snowfish/cn/ganga/offline/channel/b;
    .locals 4

    .prologue
    .line 12
    new-instance v0, Lcom/snowfish/cn/ganga/offline/channel/b;

    invoke-direct {v0}, Lcom/snowfish/cn/ganga/offline/channel/b;-><init>()V

    .line 13
    iget-object v1, p0, Lcom/snowfish/cn/ganga/offline/channel/b;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/snowfish/cn/ganga/offline/channel/b;->a:Ljava/lang/String;

    .line 14
    iget-object v1, p0, Lcom/snowfish/cn/ganga/offline/channel/b;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/snowfish/cn/ganga/offline/channel/b;->b:Ljava/lang/String;

    .line 15
    iget-wide v2, p0, Lcom/snowfish/cn/ganga/offline/channel/b;->c:J

    iput-wide v2, v0, Lcom/snowfish/cn/ganga/offline/channel/b;->c:J

    .line 16
    iget v1, p0, Lcom/snowfish/cn/ganga/offline/channel/b;->d:I

    iput v1, v0, Lcom/snowfish/cn/ganga/offline/channel/b;->d:I

    .line 17
    iget v1, p0, Lcom/snowfish/cn/ganga/offline/channel/b;->e:I

    iput v1, v0, Lcom/snowfish/cn/ganga/offline/channel/b;->e:I

    .line 18
    iget v1, p0, Lcom/snowfish/cn/ganga/offline/channel/b;->f:I

    iput v1, v0, Lcom/snowfish/cn/ganga/offline/channel/b;->f:I

    .line 19
    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/snowfish/cn/ganga/offline/channel/b;->a()Lcom/snowfish/cn/ganga/offline/channel/b;

    move-result-object v0

    return-object v0
.end method
