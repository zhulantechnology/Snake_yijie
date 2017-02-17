.class Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$8$1;
.super Ljava/lang/Object;
.source "SFNativeAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$8;

.field private final synthetic val$j:I

.field private final synthetic val$tag:Ljava/lang/String;

.field private final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$8;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$8$1;->this$1:Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$8;

    iput p2, p0, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$8$1;->val$j:I

    iput-object p3, p0, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$8$1;->val$tag:Ljava/lang/String;

    iput-object p4, p0, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$8$1;->val$value:Ljava/lang/String;

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 210
    iget v0, p0, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$8$1;->val$j:I

    iget-object v1, p0, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$8$1;->val$tag:Ljava/lang/String;

    iget-object v2, p0, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$8$1;->val$value:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter;->onExtendResponse(ILjava/lang/String;Ljava/lang/String;)V

    .line 211
    return-void
.end method
