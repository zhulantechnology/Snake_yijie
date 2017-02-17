.class Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$2$1;
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
    iput-object p1, p0, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$2$1;->this$1:Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$2;

    iput-object p2, p0, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$2$1;->val$remain:Ljava/lang/String;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$2$1;->val$remain:Ljava/lang/String;

    invoke-static {v0}, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter;->onCanceled(Ljava/lang/String;)V

    .line 45
    return-void
.end method
