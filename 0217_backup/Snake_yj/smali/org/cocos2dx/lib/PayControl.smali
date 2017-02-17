.class public Lorg/cocos2dx/lib/PayControl;
.super Lcn/bmob/v3/BmobObject;
.source "PayControl.java"


# instance fields
.field private channelId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcn/bmob/v3/BmobObject;-><init>()V

    return-void
.end method


# virtual methods
.method public getChannelId()I
    .locals 1

    .prologue
    .line 9
    iget v0, p0, Lorg/cocos2dx/lib/PayControl;->channelId:I

    return v0
.end method

.method public setChannelId(I)V
    .locals 0
    .param p1, "channelId"    # I

    .prologue
    .line 13
    iput p1, p0, Lorg/cocos2dx/lib/PayControl;->channelId:I

    .line 14
    return-void
.end method
