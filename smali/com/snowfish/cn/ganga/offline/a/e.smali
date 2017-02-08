.class final Lcom/snowfish/cn/ganga/offline/a/e;
.super Ljava/lang/Object;
.source "SFConfigLoader.java"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>(Lcom/snowfish/cn/ganga/offline/a/d;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 1
    check-cast p1, Lcom/snowfish/cn/ganga/offline/channel/b;

    check-cast p2, Lcom/snowfish/cn/ganga/offline/channel/b;

    iget v0, p1, Lcom/snowfish/cn/ganga/offline/channel/b;->d:I

    iget v1, p2, Lcom/snowfish/cn/ganga/offline/channel/b;->d:I

    sub-int/2addr v0, v1

    return v0
.end method
