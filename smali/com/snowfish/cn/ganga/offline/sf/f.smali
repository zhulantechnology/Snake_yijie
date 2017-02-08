.class public final Lcom/snowfish/cn/ganga/offline/sf/f;
.super Ljava/lang/Object;
.source "SFChannelAdapterAHelperSingleton.java"


# static fields
.field private static a:Lcom/snowfish/cn/ganga/offline/sf/SFChannelAdapterAHelper;

.field private static b:Lcom/snowfish/cn/ganga/offline/sf/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    new-instance v0, Lcom/snowfish/cn/ganga/offline/sf/SFChannelAdapterAHelper;

    invoke-direct {v0}, Lcom/snowfish/cn/ganga/offline/sf/SFChannelAdapterAHelper;-><init>()V

    sput-object v0, Lcom/snowfish/cn/ganga/offline/sf/f;->a:Lcom/snowfish/cn/ganga/offline/sf/SFChannelAdapterAHelper;

    .line 7
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method

.method public static a()Lcom/snowfish/cn/ganga/offline/sf/f;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/snowfish/cn/ganga/offline/sf/f;->b:Lcom/snowfish/cn/ganga/offline/sf/f;

    if-nez v0, :cond_0

    .line 14
    new-instance v0, Lcom/snowfish/cn/ganga/offline/sf/f;

    invoke-direct {v0}, Lcom/snowfish/cn/ganga/offline/sf/f;-><init>()V

    sput-object v0, Lcom/snowfish/cn/ganga/offline/sf/f;->b:Lcom/snowfish/cn/ganga/offline/sf/f;

    .line 16
    :cond_0
    sget-object v0, Lcom/snowfish/cn/ganga/offline/sf/f;->b:Lcom/snowfish/cn/ganga/offline/sf/f;

    return-object v0
.end method

.method public static b()Lcom/snowfish/cn/ganga/offline/sf/SFChannelAdapterAHelper;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/snowfish/cn/ganga/offline/sf/f;->a:Lcom/snowfish/cn/ganga/offline/sf/SFChannelAdapterAHelper;

    return-object v0
.end method
