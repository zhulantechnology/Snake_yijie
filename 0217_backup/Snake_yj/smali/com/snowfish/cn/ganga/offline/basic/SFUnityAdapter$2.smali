.class Lcom/snowfish/cn/ganga/offline/basic/SFUnityAdapter$2;
.super Ljava/lang/Object;
.source "SFUnityAdapter.java"

# interfaces
.implements Lcom/snowfish/cn/ganga/offline/helper/SFExtendListener;


# instance fields
.field private final synthetic val$desp:Ljava/lang/String;

.field private final synthetic val$lgameObject:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/snowfish/cn/ganga/offline/basic/SFUnityAdapter$2;->val$lgameObject:Ljava/lang/String;

    iput-object p2, p0, Lcom/snowfish/cn/ganga/offline/basic/SFUnityAdapter$2;->val$desp:Ljava/lang/String;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 111
    const-string v0, ""

    invoke-static {p1, p2, v0}, Lcom/snowfish/cn/ganga/offline/basic/SFUnityAdapter;->toMsgString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 112
    iget-object v1, p0, Lcom/snowfish/cn/ganga/offline/basic/SFUnityAdapter$2;->val$lgameObject:Ljava/lang/String;

    iget-object v2, p0, Lcom/snowfish/cn/ganga/offline/basic/SFUnityAdapter$2;->val$desp:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void
.end method
