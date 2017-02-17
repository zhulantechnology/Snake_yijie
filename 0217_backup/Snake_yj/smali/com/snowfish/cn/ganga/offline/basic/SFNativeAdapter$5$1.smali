.class Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$5$1;
.super Ljava/lang/Object;
.source "SFNativeAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$5;

.field private final synthetic val$orderId:Ljava/lang/String;

.field private final synthetic val$payPoint:Ljava/lang/String;

.field private final synthetic val$price:I

.field private final synthetic val$remain:Ljava/lang/String;

.field private final synthetic val$result:I


# direct methods
.method constructor <init>(Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$5;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$5$1;->this$1:Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$5;

    iput p2, p0, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$5$1;->val$result:I

    iput-object p3, p0, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$5$1;->val$orderId:Ljava/lang/String;

    iput-object p4, p0, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$5$1;->val$payPoint:Ljava/lang/String;

    iput p5, p0, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$5$1;->val$price:I

    iput-object p6, p0, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$5$1;->val$remain:Ljava/lang/String;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 112
    # getter for: Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter;->mSFActionCallback:Lcom/snowfish/cn/ganga/offline/basic/SFActionCallback;
    invoke-static {}, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter;->access$0()Lcom/snowfish/cn/ganga/offline/basic/SFActionCallback;

    move-result-object v7

    new-instance v0, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$5$1$1;

    iget v2, p0, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$5$1;->val$result:I

    iget-object v3, p0, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$5$1;->val$orderId:Ljava/lang/String;

    iget-object v4, p0, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$5$1;->val$payPoint:Ljava/lang/String;

    iget v5, p0, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$5$1;->val$price:I

    iget-object v6, p0, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$5$1;->val$remain:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$5$1$1;-><init>(Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$5$1;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v7, v0}, Lcom/snowfish/cn/ganga/offline/basic/SFActionCallback;->callback(Ljava/lang/Runnable;)V

    .line 119
    return-void
.end method
