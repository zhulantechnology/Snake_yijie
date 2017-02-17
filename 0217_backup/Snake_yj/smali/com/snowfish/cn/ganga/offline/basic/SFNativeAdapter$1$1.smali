.class Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$1$1;
.super Ljava/lang/Object;
.source "SFNativeAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$1;

.field private final synthetic val$bool:Z


# direct methods
.method constructor <init>(Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$1;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$1$1;->this$1:Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$1;

    iput-boolean p2, p0, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$1$1;->val$bool:Z

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$1$1;->val$bool:Z

    invoke-static {v0}, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter;->onGameExit(Z)V

    .line 28
    return-void
.end method
