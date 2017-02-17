.class public Lcom/snowfish/a/a/l/g;
.super Ljava/lang/Object;
.source "ASetupTool.java"


# static fields
.field private static a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/snowfish/a/a/l/g;->a:[B

    .line 108
    return-void

    .line 14
    :array_0
    .array-data 1
        0x43t
        0x4ft
        0x4dt
        0x50t
        0x2et
        0x56t
        0x45t
        0x52t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/File;)J
    .locals 2

    .prologue
    .line 149
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 152
    invoke-static {v0}, Lcom/snowfish/a/a/l/g;->b(Ljava/io/InputStream;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 155
    :goto_0
    return-wide v0

    .line 153
    :catch_0
    move-exception v0

    .line 154
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 155
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method private static a(Ljava/io/InputStream;)J
    .locals 6

    .prologue
    .line 57
    const/16 v0, 0x1000

    new-array v2, v0, [B

    .line 59
    const-wide/16 v0, 0x0

    .line 61
    :goto_0
    :try_start_0
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 62
    if-gez v3, :cond_1

    .line 69
    if-eqz p0, :cond_0

    .line 70
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 67
    :cond_0
    :goto_1
    return-wide v0

    .line 64
    :cond_1
    int-to-long v4, v3

    add-long/2addr v0, v4

    .line 60
    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    if-eqz p0, :cond_2

    .line 70
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 67
    :cond_2
    :goto_2
    const-wide/16 v0, -0x1

    goto :goto_1

    .line 68
    :catchall_0
    move-exception v0

    .line 69
    if-eqz p0, :cond_3

    .line 70
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 72
    :cond_3
    :goto_3
    throw v0

    :catch_1
    move-exception v2

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_3
.end method

.method public static a(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 129
    const-class v0, Lcom/snowfish/a/a/l/g;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 130
    if-nez v0, :cond_0

    .line 131
    invoke-static {}, Lcom/snowfish/a/a/l/g;->b()Ljava/io/InputStream;

    move-result-object v0

    .line 132
    :cond_0
    if-nez v0, :cond_1

    .line 133
    const-wide/16 v0, -0x1

    .line 135
    :goto_0
    return-wide v0

    :cond_1
    invoke-static {v0}, Lcom/snowfish/a/a/l/g;->a(Ljava/io/InputStream;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)J
    .locals 16

    .prologue
    .line 161
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 162
    new-instance v8, Ljava/io/File;

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-direct {v8, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 163
    const-class v2, Lcom/snowfish/a/a/l/g;

    invoke-virtual {v2, v7}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/snowfish/a/a/l/g;->b()Ljava/io/InputStream;

    move-result-object v2

    :cond_0
    if-nez v2, :cond_4

    const-wide/16 v4, -0x1

    .line 165
    :goto_0
    const/4 v6, 0x0

    .line 167
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 168
    invoke-static {v8}, Lcom/snowfish/a/a/l/g;->a(Ljava/io/File;)J

    move-result-wide v2

    .line 171
    cmp-long v9, v4, v2

    if-gtz v9, :cond_1

    .line 172
    cmp-long v9, v4, v2

    if-nez v9, :cond_2

    .line 174
    invoke-static {v7}, Lcom/snowfish/a/a/l/g;->a(Ljava/lang/String;)J

    move-result-wide v10

    .line 175
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v12

    .line 176
    cmp-long v9, v10, v12

    if-nez v9, :cond_1

    const-wide/16 v14, 0x0

    cmp-long v9, v12, v14

    if-lez v9, :cond_1

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-gez v9, :cond_2

    .line 177
    :cond_1
    :goto_1
    const/4 v6, 0x1

    .line 180
    :cond_2
    if-eqz v6, :cond_3

    .line 181
    invoke-static {v7, v8}, Lcom/snowfish/a/a/l/g;->a(Ljava/lang/String;Ljava/io/File;)V

    .line 183
    :cond_3
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 185
    :goto_2
    return-wide v2

    .line 163
    :cond_4
    invoke-static {v2}, Lcom/snowfish/a/a/l/g;->b(Ljava/io/InputStream;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    goto :goto_0

    .line 185
    :catch_0
    move-exception v2

    const-wide/16 v2, -0x1

    goto :goto_2

    :cond_5
    move-wide v2, v4

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;Ljava/io/File;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 17
    .line 19
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 21
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 23
    :try_start_0
    const-class v0, Lcom/snowfish/a/a/l/g;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 24
    if-nez v1, :cond_1

    .line 25
    :try_start_1
    invoke-static {}, Lcom/snowfish/a/a/l/g;->b()Ljava/io/InputStream;

    move-result-object v1

    .line 26
    :cond_1
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".u"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 27
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 29
    const/16 v4, 0x1000

    :try_start_2
    new-array v4, v4, [B

    .line 31
    :cond_2
    :goto_0
    const/4 v5, 0x0

    array-length v6, v4

    invoke-virtual {v1, v4, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    .line 32
    if-ltz v5, :cond_5

    .line 33
    if-lez v5, :cond_2

    .line 37
    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 46
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 47
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 49
    if-eqz v1, :cond_3

    .line 50
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 51
    :cond_3
    if-eqz v2, :cond_4

    .line 52
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    :cond_4
    :goto_2
    return-void

    .line 40
    :cond_5
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 44
    :try_start_5
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 45
    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 49
    if-eqz v1, :cond_4

    .line 50
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_2

    .line 48
    :catchall_0
    move-exception v0

    move-object v1, v2

    .line 49
    :goto_3
    if-eqz v1, :cond_6

    .line 50
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 51
    :cond_6
    if-eqz v2, :cond_7

    .line 52
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 53
    :cond_7
    throw v0

    .line 48
    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v2, v3

    goto :goto_3

    .line 46
    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method private static a()[B
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 112
    :try_start_0
    const-string v0, "com.snowfish.a.a.l.RR.resccmm"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 113
    const-string v2, "DATA"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 114
    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;)J
    .locals 8

    .prologue
    const-wide/16 v0, -0x1

    .line 76
    const/4 v4, 0x0

    .line 77
    sget-object v2, Lcom/snowfish/a/a/l/g;->a:[B

    invoke-static {v2}, Lcom/snowfish/a/a/l/e;->a([B)Ljava/lang/String;

    move-result-object v2

    .line 79
    :try_start_0
    new-instance v3, Ljava/util/zip/ZipInputStream;

    invoke-direct {v3, p0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v4

    .line 82
    if-eqz v4, :cond_3

    .line 83
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 87
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getSize()J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v4

    .line 88
    const-wide/16 v6, 0x3e8

    cmp-long v2, v4, v6

    if-lez v2, :cond_1

    .line 102
    :try_start_2
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 100
    :cond_0
    :goto_1
    return-wide v0

    .line 90
    :cond_1
    long-to-int v2, v4

    :try_start_3
    new-array v2, v2, [B

    .line 91
    invoke-virtual {v3, v2}, Ljava/util/zip/ZipInputStream;->read([B)I

    .line 92
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    .line 93
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-wide v0

    .line 102
    :try_start_4
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_1

    .line 95
    :cond_2
    :try_start_5
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->closeEntry()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    .line 98
    :catch_1
    move-exception v2

    .line 99
    :goto_2
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 102
    if-eqz v3, :cond_0

    .line 103
    :try_start_7
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_1

    :catch_2
    move-exception v2

    goto :goto_1

    .line 102
    :cond_3
    :try_start_8
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_1

    :catch_3
    move-exception v2

    goto :goto_1

    .line 101
    :catchall_0
    move-exception v0

    move-object v3, v4

    .line 102
    :goto_3
    if-eqz v3, :cond_4

    .line 103
    :try_start_9
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 105
    :cond_4
    :goto_4
    throw v0

    :catch_4
    move-exception v2

    goto :goto_1

    :catch_5
    move-exception v1

    goto :goto_4

    .line 101
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 98
    :catch_6
    move-exception v2

    move-object v3, v4

    goto :goto_2
.end method

.method private static b()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 122
    invoke-static {}, Lcom/snowfish/a/a/l/g;->a()[B

    move-result-object v1

    .line 123
    if-nez v1, :cond_0

    .line 124
    const/4 v0, 0x0

    .line 125
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto :goto_0
.end method
