.class Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$8;
.super Ljava/lang/Object;
.source "SFNativeAdapter.java"

# interfaces
.implements Lcom/snowfish/cn/ganga/offline/helper/SFExtendListener;


# instance fields
.field private final synthetic val$j:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 1
    iput p1, p0, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$8;->val$j:I

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 206
    # getter for: Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter;->mSFActionCallback:Lcom/snowfish/cn/ganga/offline/basic/SFActionCallback;
    invoke-static {}, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter;->access$0()Lcom/snowfish/cn/ganga/offline/basic/SFActionCallback;

    move-result-object v0

    new-instance v1, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$8$1;

    iget v2, p0, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$8;->val$j:I

    invoke-direct {v1, p0, v2, p1, p2}, Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$8$1;-><init>(Lcom/snowfish/cn/ganga/offline/basic/SFNativeAdapter$8;ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/snowfish/cn/ganga/offline/basic/SFActionCallback;->callback(Ljava/lang/Runnable;)V

    .line 213
    return-void
.end method
