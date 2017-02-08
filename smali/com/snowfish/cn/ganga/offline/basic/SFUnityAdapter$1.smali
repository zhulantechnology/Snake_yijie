.class Lcom/snowfish/cn/ganga/offline/basic/SFUnityAdapter$1;
.super Ljava/lang/Object;
.source "SFUnityAdapter.java"

# interfaces
.implements Lcom/snowfish/cn/ganga/offline/helper/SFOfflineInitListener;


# instance fields
.field private final synthetic val$gameObject1:Ljava/lang/String;

.field private final synthetic val$runtimeScriptMethod1:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/snowfish/cn/ganga/offline/basic/SFUnityAdapter$1;->val$gameObject1:Ljava/lang/String;

    iput-object p2, p0, Lcom/snowfish/cn/ganga/offline/basic/SFUnityAdapter$1;->val$runtimeScriptMethod1:Ljava/lang/String;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 51
    const-string v0, ""

    invoke-static {p1, p2, v0}, Lcom/snowfish/cn/ganga/offline/basic/SFUnityAdapter;->toMsgString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lcom/snowfish/cn/ganga/offline/basic/SFUnityAdapter$1;->val$gameObject1:Ljava/lang/String;

    iget-object v2, p0, Lcom/snowfish/cn/ganga/offline/basic/SFUnityAdapter$1;->val$runtimeScriptMethod1:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method
