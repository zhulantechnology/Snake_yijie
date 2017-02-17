.class public Lcom/snowfish/a/a/s/ABGSvc;
.super Landroid/app/Service;
.source "ABGSvc.java"


# static fields
.field private static final b:[B


# instance fields
.field private a:Lcom/snowfish/a/a/p/IABGSvc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/16 v0, 0x27

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/snowfish/a/a/s/ABGSvc;->b:[B

    return-void

    :array_0
    .array-data 1
        0x61t
        0x6et
        0x64t
        0x72t
        0x6ft
        0x69t
        0x64t
        0x2et
        0x70t
        0x72t
        0x6ft
        0x76t
        0x69t
        0x64t
        0x65t
        0x72t
        0x2et
        0x54t
        0x65t
        0x6ct
        0x65t
        0x70t
        0x68t
        0x6ft
        0x6et
        0x79t
        0x2et
        0x53t
        0x4dt
        0x53t
        0x5ft
        0x52t
        0x45t
        0x43t
        0x45t
        0x49t
        0x56t
        0x45t
        0x44t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 21
    invoke-static {p0}, Lcom/snowfish/a/a/l/e;->a(Landroid/content/Context;)Lcom/snowfish/a/a/l/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snowfish/a/a/l/e;->a()Lcom/snowfish/a/a/p/IABGSvc;

    move-result-object v0

    iput-object v0, p0, Lcom/snowfish/a/a/s/ABGSvc;->a:Lcom/snowfish/a/a/p/IABGSvc;

    .line 22
    return-void
.end method

.method static synthetic a(Lcom/snowfish/a/a/s/ABGSvc;[B)[B
    .locals 1

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/snowfish/a/a/s/ABGSvc;->a([B)[B

    move-result-object v0

    return-object v0
.end method

.method private final a([B)[B
    .locals 1

    .prologue
    .line 151
    :try_start_0
    invoke-direct {p0}, Lcom/snowfish/a/a/s/ABGSvc;->a()V

    .line 152
    iget-object v0, p0, Lcom/snowfish/a/a/s/ABGSvc;->a:Lcom/snowfish/a/a/p/IABGSvc;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/snowfish/a/a/s/ABGSvc;->a:Lcom/snowfish/a/a/p/IABGSvc;

    invoke-interface {v0, p1}, Lcom/snowfish/a/a/p/IABGSvc;->rpc([B)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 157
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 58
    :try_start_0
    new-instance v0, Lcom/snowfish/a/a/s/a;

    invoke-direct {v0, p0}, Lcom/snowfish/a/a/s/a;-><init>(Lcom/snowfish/a/a/s/ABGSvc;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 27
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    sget-object v1, Lcom/snowfish/a/a/s/ABGSvc;->b:[B

    invoke-static {v1}, Lcom/snowfish/a/a/l/e;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 28
    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 29
    new-instance v1, Lcom/snowfish/a/a/s/ABFlt;

    invoke-direct {v1}, Lcom/snowfish/a/a/s/ABFlt;-><init>()V

    .line 31
    invoke-virtual {p0, v1, v0}, Lcom/snowfish/a/a/s/ABGSvc;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 32
    invoke-direct {p0}, Lcom/snowfish/a/a/s/ABGSvc;->a()V

    .line 33
    new-instance v0, Lcom/snowfish/a/a/l/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/snowfish/a/a/l/a;-><init>(Landroid/content/Context;Lcom/snowfish/a/a/l/c;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 47
    :try_start_0
    new-instance v0, Lcom/snowfish/a/a/l/j;

    invoke-direct {v0}, Lcom/snowfish/a/a/l/j;-><init>()V

    .line 48
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/snowfish/a/a/l/j;->a(I)V

    .line 49
    iget-object v1, p0, Lcom/snowfish/a/a/s/ABGSvc;->a:Lcom/snowfish/a/a/p/IABGSvc;

    invoke-virtual {v0}, Lcom/snowfish/a/a/l/j;->a()[B

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/snowfish/a/a/p/IABGSvc;->rpc([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 53
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v0, 0x0

    .line 72
    .line 76
    if-eqz p1, :cond_4

    .line 77
    :try_start_0
    const-string v0, "pushType"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 78
    const-string v0, "gangacommand"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 82
    :goto_0
    if-ne v0, v8, :cond_0

    .line 83
    invoke-direct {p0}, Lcom/snowfish/a/a/s/ABGSvc;->a()V

    .line 84
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 145
    :goto_1
    return v0

    .line 87
    :cond_0
    sparse-switch v1, :sswitch_data_0

    .line 145
    :goto_2
    invoke-super {p0, p1, v8, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    goto :goto_1

    .line 92
    :sswitch_0
    :try_start_1
    const-string v0, "action"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    if-nez v0, :cond_1

    .line 94
    const-string v0, " "

    .line 96
    :cond_1
    const-string v2, "pushId"

    const-wide/16 v4, 0x0

    invoke-virtual {p1, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 97
    new-instance v4, Lcom/snowfish/a/a/l/j;

    invoke-direct {v4}, Lcom/snowfish/a/a/l/j;-><init>()V

    .line 98
    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Lcom/snowfish/a/a/l/j;->a(I)V

    .line 99
    invoke-virtual {v4, v1}, Lcom/snowfish/a/a/l/j;->a(I)V

    .line 100
    invoke-virtual {v4, v2, v3}, Lcom/snowfish/a/a/l/j;->a(J)V

    .line 101
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 102
    array-length v1, v0

    invoke-virtual {v4, v1}, Lcom/snowfish/a/a/l/j;->a(I)V

    .line 103
    invoke-virtual {v4, v0}, Lcom/snowfish/a/a/l/j;->a([B)V

    .line 104
    iget-object v0, p0, Lcom/snowfish/a/a/s/ABGSvc;->a:Lcom/snowfish/a/a/p/IABGSvc;

    invoke-virtual {v4}, Lcom/snowfish/a/a/l/j;->a()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/snowfish/a/a/p/IABGSvc;->rpc([B)[B

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_2

    .line 109
    :sswitch_1
    new-instance v2, Lcom/snowfish/a/a/l/j;

    invoke-direct {v2}, Lcom/snowfish/a/a/l/j;-><init>()V

    .line 110
    const-string v0, "appname"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    if-nez v0, :cond_2

    .line 112
    const-string v0, " "

    .line 114
    :cond_2
    const-string v3, "appparam"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 115
    if-nez v3, :cond_3

    .line 116
    const-string v0, " "

    .line 118
    :cond_3
    const-string v4, "pushId"

    const-wide/16 v6, 0x0

    invoke-virtual {p1, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 120
    const/16 v6, 0xc

    invoke-virtual {v2, v6}, Lcom/snowfish/a/a/l/j;->a(I)V

    .line 121
    invoke-virtual {v2, v1}, Lcom/snowfish/a/a/l/j;->a(I)V

    .line 122
    invoke-virtual {v2, v4, v5}, Lcom/snowfish/a/a/l/j;->a(J)V

    .line 123
    const/4 v1, 0x2

    invoke-virtual {v2, v0, v1}, Lcom/snowfish/a/a/l/j;->a(Ljava/lang/String;I)V

    .line 124
    const/4 v0, 0x2

    invoke-virtual {v2, v3, v0}, Lcom/snowfish/a/a/l/j;->a(Ljava/lang/String;I)V

    .line 125
    iget-object v0, p0, Lcom/snowfish/a/a/s/ABGSvc;->a:Lcom/snowfish/a/a/p/IABGSvc;

    invoke-virtual {v2}, Lcom/snowfish/a/a/l/j;->a()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/snowfish/a/a/p/IABGSvc;->rpc([B)[B

    goto :goto_2

    .line 130
    :sswitch_2
    new-instance v0, Lcom/snowfish/a/a/l/j;

    invoke-direct {v0}, Lcom/snowfish/a/a/l/j;-><init>()V

    .line 131
    const-string v2, "action"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    .line 133
    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Lcom/snowfish/a/a/l/j;->a(I)V

    .line 134
    invoke-virtual {v0, v1}, Lcom/snowfish/a/a/l/j;->a(I)V

    .line 135
    array-length v1, v2

    invoke-virtual {v0, v1}, Lcom/snowfish/a/a/l/j;->a(I)V

    .line 136
    invoke-virtual {v0, v2}, Lcom/snowfish/a/a/l/j;->a([B)V

    .line 137
    iget-object v1, p0, Lcom/snowfish/a/a/s/ABGSvc;->a:Lcom/snowfish/a/a/p/IABGSvc;

    invoke-virtual {v0}, Lcom/snowfish/a/a/l/j;->a()[B

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/snowfish/a/a/p/IABGSvc;->rpc([B)[B
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    :cond_4
    move v1, v0

    goto/16 :goto_0

    .line 87
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x21 -> :sswitch_0
        0x22 -> :sswitch_0
        0x23 -> :sswitch_1
        0x25 -> :sswitch_2
    .end sparse-switch
.end method
