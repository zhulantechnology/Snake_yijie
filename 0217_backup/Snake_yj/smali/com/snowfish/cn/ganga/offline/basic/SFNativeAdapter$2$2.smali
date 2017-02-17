.class Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$2$2;
.super Ljava/lang/Object;
.source "SFNativeAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$2;

.field private final synthetic val$remain:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$2;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$2$2;->this$1:Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$2;

    iput-object p2, p0, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$2$2;->val$remain:Ljava/lang/String;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$2$2;->val$remain:Ljava/lang/String;

    invoke-static {v0}, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter;->onFailed(Ljava/lang/String;)V

    .line 57
    return-void
.end method
