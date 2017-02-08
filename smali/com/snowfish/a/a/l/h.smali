.class public final Lcom/snowfish/a/a/l/h;
.super Ljava/lang/Object;
.source "ASvcLoader.java"

# interfaces
.implements Lcom/snowfish/a/a/p/ILoader;


# static fields
.field private static a:Lcom/snowfish/a/a/l/h;

.field private static d:[B

.field private static e:[B

.field private static f:[B

.field private static g:[B

.field private static h:[B

.field private static i:[B

.field private static j:[B

.field private static k:Ljava/lang/String;

.field private static l:Ljava/lang/String;

.field private static s:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;

.field private c:J

.field private m:J

.field private n:Ljava/util/Map;

.field private o:Ljava/lang/ClassLoader;

.field private p:Ljava/io/File;

.field private q:J

.field private r:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x7

    .line 31
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/snowfish/a/a/l/h;->d:[B

    .line 33
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/snowfish/a/a/l/h;->e:[B

    .line 37
    const/16 v0, 0xb

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/snowfish/a/a/l/h;->f:[B

    .line 40
    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    sput-object v0, Lcom/snowfish/a/a/l/h;->g:[B

    .line 44
    const/16 v0, 0x1f

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    sput-object v0, Lcom/snowfish/a/a/l/h;->h:[B

    .line 48
    new-array v0, v1, [B

    fill-array-data v0, :array_5

    sput-object v0, Lcom/snowfish/a/a/l/h;->i:[B

    .line 50
    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_6

    sput-object v0, Lcom/snowfish/a/a/l/h;->j:[B

    .line 53
    sget-object v0, Lcom/snowfish/a/a/l/h;->d:[B

    invoke-static {v0}, Lcom/snowfish/a/a/l/e;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 52
    sput-object v0, Lcom/snowfish/a/a/l/h;->k:Ljava/lang/String;

    .line 55
    sget-object v0, Lcom/snowfish/a/a/l/h;->e:[B

    invoke-static {v0}, Lcom/snowfish/a/a/l/e;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 54
    sput-object v0, Lcom/snowfish/a/a/l/h;->l:Ljava/lang/String;

    .line 63
    sget-object v0, Lcom/snowfish/a/a/l/h;->g:[B

    invoke-static {v0}, Lcom/snowfish/a/a/l/e;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 62
    sput-object v0, Lcom/snowfish/a/a/l/h;->s:Ljava/lang/String;

    .line 227
    return-void

    .line 31
    nop

    :array_0
    .array-data 1
        0x72t
        0x65t
        0x73t
        0x2et
        0x62t
        0x69t
        0x6et
    .end array-data

    .line 33
    :array_1
    .array-data 1
        0x72t
        0x65t
        0x73t
        0x2et
        0x61t
        0x70t
        0x6bt
    .end array-data

    .line 37
    :array_2
    .array-data 1
        0x53t
        0x6ft
        0x6et
        0x6et
        0x65t
        0x6et
        0x62t
        0x6ct
        0x75t
        0x6dt
        0x65t
    .end array-data

    .line 40
    :array_3
    .array-data 1
        0x2ft
        0x61t
        0x73t
        0x73t
        0x65t
        0x74t
        0x73t
        0x2ft
        0x53t
        0x6ft
        0x6et
        0x6et
        0x65t
        0x6et
        0x62t
        0x6ct
        0x75t
        0x6dt
        0x65t
        0x2ft
    .end array-data

    .line 44
    :array_4
    .array-data 1
        0x63t
        0x6ft
        0x6dt
        0x2et
        0x6dt
        0x69t
        0x2et
        0x67t
        0x61t
        0x6dt
        0x65t
        0x2et
        0x75t
        0x2et
        0x75t
        0x2et
        0x66t
        0x72t
        0x65t
        0x65t
        0x2et
        0x68t
        0x2et
        0x52t
        0x65t
        0x48t
        0x65t
        0x6ct
        0x70t
        0x65t
        0x72t
    .end array-data

    .line 48
    :array_5
    .array-data 1
        0x67t
        0x65t
        0x74t
        0x46t
        0x69t
        0x6ct
        0x65t
    .end array-data

    .line 50
    :array_6
    .array-data 1
        0x67t
        0x65t
        0x74t
        0x46t
        0x6ft
        0x6ct
        0x64t
        0x65t
        0x72t
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/snowfish/a/a/l/h;->n:Ljava/util/Map;

    .line 66
    iput-object p1, p0, Lcom/snowfish/a/a/l/h;->b:Landroid/content/Context;

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/snowfish/a/a/l/h;->s:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/snowfish/a/a/l/h;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snowfish/a/a/l/g;->a(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/snowfish/a/a/l/h;->i:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Lcom/snowfish/a/a/l/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/snowfish/a/a/l/h;->j:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Lcom/snowfish/a/a/l/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    sput-object v1, Lcom/snowfish/a/a/l/h;->s:Ljava/lang/String;

    sput-object v0, Lcom/snowfish/a/a/l/h;->k:Ljava/lang/String;

    .line 68
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/snowfish/a/a/l/h;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    sget-object v2, Lcom/snowfish/a/a/l/h;->l:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/snowfish/a/a/l/h;->p:Ljava/io/File;

    .line 69
    sget-object v0, Lcom/snowfish/a/a/l/h;->k:Ljava/lang/String;

    .line 70
    sget-object v1, Lcom/snowfish/a/a/l/h;->s:Ljava/lang/String;

    sget-object v2, Lcom/snowfish/a/a/l/h;->l:Ljava/lang/String;

    .line 71
    invoke-static {p1}, Lcom/snowfish/a/a/l/h;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    .line 69
    invoke-static {v0, v1, v2, v3}, Lcom/snowfish/a/a/l/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snowfish/a/a/l/h;->q:J

    .line 72
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/snowfish/a/a/l/h;
    .locals 2

    .prologue
    .line 77
    const-class v1, Lcom/snowfish/a/a/l/h;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/snowfish/a/a/l/h;->a:Lcom/snowfish/a/a/l/h;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lcom/snowfish/a/a/l/h;

    invoke-direct {v0, p0}, Lcom/snowfish/a/a/l/h;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/snowfish/a/a/l/h;->a:Lcom/snowfish/a/a/l/h;

    .line 80
    :cond_0
    sget-object v0, Lcom/snowfish/a/a/l/h;->a:Lcom/snowfish/a/a/l/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a()Z
    .locals 6

    .prologue
    .line 230
    const/4 v0, 0x0

    .line 232
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 233
    const-string v2, "mounted"

    .line 232
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 233
    if-eqz v1, :cond_0

    .line 234
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 235
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 236
    new-instance v2, Landroid/os/StatFs;

    invoke-direct {v2, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 237
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v4, v1

    .line 238
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v2, v1

    .line 239
    mul-long/2addr v2, v4

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    const-wide/16 v4, 0x12c

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 241
    const/4 v0, 0x1

    .line 247
    :cond_0
    :goto_0
    return v0

    .line 244
    :catch_0
    move-exception v1

    .line 245
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    .prologue
    .line 251
    invoke-static {}, Lcom/snowfish/a/a/l/h;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    new-instance v0, Ljava/io/File;

    .line 253
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 254
    sget-object v2, Lcom/snowfish/a/a/l/h;->f:[B

    invoke-static {v2}, Lcom/snowfish/a/a/l/e;->a([B)Ljava/lang/String;

    move-result-object v2

    .line 252
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/snowfish/a/a/l/h;->f:[B

    invoke-static {v0}, Lcom/snowfish/a/a/l/e;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 257
    const/4 v1, 0x3

    .line 256
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 263
    :try_start_0
    new-instance v0, Ljava/lang/String;

    sget-object v2, Lcom/snowfish/a/a/l/h;->h:[B

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    .line 264
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 265
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, p0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 266
    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 267
    if-eqz v0, :cond_0

    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 268
    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :goto_0
    return-object v0

    .line 270
    :catch_0
    move-exception v0

    .line 271
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    move-object v0, v1

    .line 273
    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)Ljava/lang/Class;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 118
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/snowfish/a/a/l/h;->o:Ljava/lang/ClassLoader;

    .line 119
    iget-object v2, p0, Lcom/snowfish/a/a/l/h;->p:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 121
    const-wide/16 v2, 0x64

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    :goto_0
    :try_start_2
    sget-object v2, Lcom/snowfish/a/a/l/h;->k:Ljava/lang/String;

    .line 126
    sget-object v3, Lcom/snowfish/a/a/l/h;->s:Ljava/lang/String;

    sget-object v4, Lcom/snowfish/a/a/l/h;->l:Ljava/lang/String;

    .line 127
    iget-object v5, p0, Lcom/snowfish/a/a/l/h;->b:Landroid/content/Context;

    invoke-static {v5}, Lcom/snowfish/a/a/l/h;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    .line 125
    invoke-static {v2, v3, v4, v5}, Lcom/snowfish/a/a/l/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/snowfish/a/a/l/h;->q:J

    .line 128
    iget-wide v2, p0, Lcom/snowfish/a/a/l/h;->q:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 142
    :cond_0
    :goto_1
    monitor-exit p0

    return-object v0

    .line 122
    :catch_0
    move-exception v2

    .line 123
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 131
    :cond_1
    if-nez v1, :cond_2

    .line 133
    :try_start_4
    iget-object v1, p0, Lcom/snowfish/a/a/l/h;->p:Ljava/io/File;

    invoke-static {v1}, Lcom/snowfish/a/a/l/g;->a(Ljava/io/File;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/snowfish/a/a/l/h;->q:J

    .line 134
    iget-object v1, p0, Lcom/snowfish/a/a/l/h;->p:Ljava/io/File;

    iget-object v2, p0, Lcom/snowfish/a/a/l/h;->b:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/snowfish/a/a/l/f;->a(Ljava/io/File;Landroid/content/Context;)Ljava/lang/ClassLoader;

    move-result-object v1

    .line 135
    if-eqz v1, :cond_0

    .line 137
    iput-object v1, p0, Lcom/snowfish/a/a/l/h;->o:Ljava/lang/ClassLoader;

    .line 138
    iget-wide v0, p0, Lcom/snowfish/a/a/l/h;->c:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/snowfish/a/a/l/h;->c:J

    .line 141
    :cond_2
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/snowfish/a/a/l/h;->o:Ljava/lang/ClassLoader;

    invoke-static {p1, v0, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    goto :goto_1
.end method

.method public final declared-synchronized b(Ljava/lang/String;)Lcom/snowfish/a/a/p/IReloadable;
    .locals 12

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 148
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/snowfish/a/a/l/h;->n:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snowfish/a/a/l/d;

    .line 149
    iget-object v3, p0, Lcom/snowfish/a/a/l/h;->o:Ljava/lang/ClassLoader;

    .line 150
    iget-object v1, p0, Lcom/snowfish/a/a/l/h;->p:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 151
    if-nez v0, :cond_0

    .line 153
    const-wide/16 v6, 0x64

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    :goto_0
    :try_start_2
    sget-object v1, Lcom/snowfish/a/a/l/h;->k:Ljava/lang/String;

    .line 158
    sget-object v6, Lcom/snowfish/a/a/l/h;->s:Ljava/lang/String;

    sget-object v7, Lcom/snowfish/a/a/l/h;->l:Ljava/lang/String;

    .line 159
    iget-object v8, p0, Lcom/snowfish/a/a/l/h;->b:Landroid/content/Context;

    invoke-static {v8}, Lcom/snowfish/a/a/l/h;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v8

    .line 157
    invoke-static {v1, v6, v7, v8}, Lcom/snowfish/a/a/l/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/snowfish/a/a/l/h;->q:J

    .line 160
    iget-wide v6, p0, Lcom/snowfish/a/a/l/h;->q:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-gez v1, :cond_1

    move-object v0, v2

    .line 218
    :goto_1
    monitor-exit p0

    return-object v0

    .line 154
    :catch_0
    move-exception v1

    .line 155
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 163
    :cond_0
    :try_start_4
    iget-object v0, v0, Lcom/snowfish/a/a/l/d;->a:Lcom/snowfish/a/a/p/IReloadable;

    goto :goto_1

    .line 166
    :cond_1
    iget-object v1, p0, Lcom/snowfish/a/a/l/h;->n:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v4

    :goto_2
    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/snowfish/a/a/l/h;->p:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/snowfish/a/a/l/h;->m:J

    cmp-long v1, v6, v8

    if-eqz v1, :cond_5

    iput-wide v6, p0, Lcom/snowfish/a/a/l/h;->m:J

    move v1, v4

    :goto_3
    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/snowfish/a/a/l/h;->r:Z

    if-eqz v1, :cond_6

    :cond_3
    move-object v1, v2

    .line 170
    :goto_4
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/snowfish/a/a/l/h;->r:Z

    .line 171
    if-nez v1, :cond_9

    .line 173
    iget-object v1, p0, Lcom/snowfish/a/a/l/h;->p:Ljava/io/File;

    invoke-static {v1}, Lcom/snowfish/a/a/l/g;->a(Ljava/io/File;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/snowfish/a/a/l/h;->q:J

    .line 174
    iget-object v1, p0, Lcom/snowfish/a/a/l/h;->p:Ljava/io/File;

    iget-object v3, p0, Lcom/snowfish/a/a/l/h;->b:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/snowfish/a/a/l/f;->a(Ljava/io/File;Landroid/content/Context;)Ljava/lang/ClassLoader;

    move-result-object v1

    .line 175
    if-nez v1, :cond_8

    .line 176
    if-nez v0, :cond_7

    move-object v0, v2

    .line 177
    goto :goto_1

    .line 166
    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snowfish/a/a/l/d;

    iget-object v7, v1, Lcom/snowfish/a/a/l/d;->a:Lcom/snowfish/a/a/p/IReloadable;

    invoke-interface {v7}, Lcom/snowfish/a/a/p/IReloadable;->isReloadable()Z

    move-result v7

    if-nez v7, :cond_2

    iget-wide v8, v1, Lcom/snowfish/a/a/l/d;->b:J

    iget-wide v10, p0, Lcom/snowfish/a/a/l/h;->c:J

    cmp-long v1, v8, v10

    if-nez v1, :cond_2

    move v1, v5

    goto :goto_2

    :cond_5
    move v1, v5

    goto :goto_3

    .line 168
    :cond_6
    if-eqz v0, :cond_c

    iget-wide v4, v0, Lcom/snowfish/a/a/l/d;->b:J

    iget-wide v6, p0, Lcom/snowfish/a/a/l/h;->c:J

    cmp-long v1, v4, v6

    if-nez v1, :cond_c

    .line 169
    iget-object v0, v0, Lcom/snowfish/a/a/l/d;->a:Lcom/snowfish/a/a/p/IReloadable;

    goto :goto_1

    .line 178
    :cond_7
    iget-object v0, v0, Lcom/snowfish/a/a/l/d;->a:Lcom/snowfish/a/a/p/IReloadable;

    goto :goto_1

    .line 180
    :cond_8
    iput-object v1, p0, Lcom/snowfish/a/a/l/h;->o:Ljava/lang/ClassLoader;

    .line 181
    iget-wide v4, p0, Lcom/snowfish/a/a/l/h;->c:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/snowfish/a/a/l/h;->c:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 184
    :cond_9
    const/4 v1, 0x1

    .line 188
    :try_start_5
    iget-object v3, p0, Lcom/snowfish/a/a/l/h;->o:Ljava/lang/ClassLoader;

    .line 187
    invoke-static {p1, v1, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v3

    .line 191
    const/4 v1, 0x2

    :try_start_6
    new-array v1, v1, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lcom/snowfish/a/a/p/ILoader;

    aput-object v5, v1, v4

    const/4 v4, 0x1

    .line 192
    const-class v5, Landroid/content/Context;

    aput-object v5, v1, v4

    .line 191
    invoke-virtual {v3, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 193
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/snowfish/a/a/l/h;->b:Landroid/content/Context;

    aput-object v6, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snowfish/a/a/p/IReloadable;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 205
    :goto_5
    if-eqz v0, :cond_a

    .line 206
    :try_start_7
    iget-object v3, v0, Lcom/snowfish/a/a/l/d;->a:Lcom/snowfish/a/a/p/IReloadable;

    invoke-interface {v3}, Lcom/snowfish/a/a/p/IReloadable;->onUnload()Ljava/lang/Object;

    move-result-object v3

    .line 207
    iget-object v4, p0, Lcom/snowfish/a/a/l/h;->b:Landroid/content/Context;

    invoke-interface {v1, v4, v3}, Lcom/snowfish/a/a/p/IReloadable;->onReload(Landroid/content/Context;Ljava/lang/Object;)V

    .line 209
    :cond_a
    new-instance v3, Lcom/snowfish/a/a/l/d;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/snowfish/a/a/l/d;-><init>(Lcom/snowfish/a/a/l/h;B)V

    .line 210
    iget-wide v4, p0, Lcom/snowfish/a/a/l/h;->c:J

    iput-wide v4, v3, Lcom/snowfish/a/a/l/d;->b:J

    .line 211
    iput-object v1, v3, Lcom/snowfish/a/a/l/d;->a:Lcom/snowfish/a/a/p/IReloadable;

    .line 212
    iget-object v4, p0, Lcom/snowfish/a/a/l/h;->n:Ljava/util/Map;

    invoke-interface {v4, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 213
    goto/16 :goto_1

    .line 194
    :catch_1
    move-exception v1

    .line 195
    const-string v4, "idle"

    const-string v5, "LE1 "

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 198
    const/4 v1, 0x1

    :try_start_8
    new-array v1, v1, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v1, v4

    invoke-virtual {v3, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 199
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/snowfish/a/a/l/h;->b:Landroid/content/Context;

    aput-object v6, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snowfish/a/a/p/IReloadable;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_5

    .line 200
    :catch_2
    move-exception v1

    .line 201
    :try_start_9
    const-string v4, "idle"

    const-string v5, "LE2 "

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 202
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snowfish/a/a/p/IReloadable;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_5

    .line 214
    :catch_3
    move-exception v1

    .line 215
    :try_start_a
    const-string v3, "idle"

    const-string v4, "LE3 "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 216
    if-nez v0, :cond_b

    move-object v0, v2

    .line 217
    goto/16 :goto_1

    .line 218
    :cond_b
    iget-object v0, v0, Lcom/snowfish/a/a/l/d;->a:Lcom/snowfish/a/a/p/IReloadable;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_1

    :cond_c
    move-object v1, v3

    goto/16 :goto_4
.end method

.method public final forceReload(Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snowfish/a/a/l/h;->r:Z

    .line 95
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 96
    invoke-virtual {p0, p1}, Lcom/snowfish/a/a/l/h;->b(Ljava/lang/String;)Lcom/snowfish/a/a/p/IReloadable;

    move-result-object v0

    .line 98
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getLoadedVersion()J
    .locals 2

    .prologue
    .line 103
    iget-wide v0, p0, Lcom/snowfish/a/a/l/h;->q:J

    return-wide v0
.end method

.method public final getLoaderVersion()J
    .locals 2

    .prologue
    .line 224
    iget-wide v0, p0, Lcom/snowfish/a/a/l/h;->c:J

    return-wide v0
.end method
