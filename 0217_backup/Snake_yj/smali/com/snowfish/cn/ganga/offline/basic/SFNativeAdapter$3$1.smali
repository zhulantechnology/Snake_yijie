.class Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$3$1;
.super Ljava/lang/Object;
.source "SFNativeAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$3;

.field private final synthetic val$tag:Ljava/lang/String;

.field private final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$3;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$3$1;->this$1:Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$3;

    iput-object p2, p0, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$3$1;->val$tag:Ljava/lang/String;

    iput-object p3, p0, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$3$1;->val$value:Ljava/lang/String;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 84
    const-string v0, "SFGameNative"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tag:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$3$1;->val$tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$3$1;->val$value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v0, p0, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$3$1;->val$tag:Ljava/lang/String;

    iget-object v1, p0, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$3$1;->val$value:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter;->onInitResponse(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void
.end method
