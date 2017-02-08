.class public Lcom/snowfish/cn/ganga/offline/sf/SFInitListenerFactory;
.super Ljava/lang/Object;
.source "SFInitListenerFactory.java"

# interfaces
.implements Lcom/snowfish/cn/ganga/offline/channel/SFInitListenerAdapter;


# static fields
.field private static mInitListener:Lcom/snowfish/cn/ganga/offline/helper/SFOfflineInitListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    sput-object v0, Lcom/snowfish/cn/ganga/offline/sf/SFInitListenerFactory;->mInitListener:Lcom/snowfish/cn/ganga/offline/helper/SFOfflineInitListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInitListener()Lcom/snowfish/cn/ganga/offline/helper/SFOfflineInitListener;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/snowfish/cn/ganga/offline/sf/SFInitListenerFactory;->mInitListener:Lcom/snowfish/cn/ganga/offline/helper/SFOfflineInitListener;

    return-object v0
.end method


# virtual methods
.method public setInitListener(Landroid/content/Context;Lcom/snowfish/cn/ganga/offline/helper/SFOfflineInitListener;)V
    .locals 0

    .prologue
    .line 14
    sput-object p2, Lcom/snowfish/cn/ganga/offline/sf/SFInitListenerFactory;->mInitListener:Lcom/snowfish/cn/ganga/offline/helper/SFOfflineInitListener;

    .line 15
    return-void
.end method
