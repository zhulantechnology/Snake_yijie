.class Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$5$1$1;
.super Ljava/lang/Object;
.source "SFNativeAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$2:Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$5$1;

.field private final synthetic val$orderId:Ljava/lang/String;

.field private final synthetic val$payPoint:Ljava/lang/String;

.field private final synthetic val$price:I

.field private final synthetic val$remain:Ljava/lang/String;

.field private final synthetic val$result:I


# direct methods
.method constructor <init>(Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$5$1;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$5$1$1;->this$2:Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$5$1;

    iput p2, p0, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$5$1$1;->val$result:I

    iput-object p3, p0, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$5$1$1;->val$orderId:Ljava/lang/String;

    iput-object p4, p0, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$5$1$1;->val$payPoint:Ljava/lang/String;

    iput p5, p0, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$5$1$1;->val$price:I

    iput-object p6, p0, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$5$1$1;->val$remain:Ljava/lang/String;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 116
    iget v0, p0, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$5$1$1;->val$result:I

    iget-object v1, p0, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$5$1$1;->val$orderId:Ljava/lang/String;

    iget-object v2, p0, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$5$1$1;->val$payPoint:Ljava/lang/String;

    iget v3, p0, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$5$1$1;->val$price:I

    iget-object v4, p0, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$5$1$1;->val$remain:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter;->onCodeCallback(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 117
    return-void
.end method
