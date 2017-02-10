.class public Lcom/mgame/pay/main/n;
.super Ljava/lang/Object;


# static fields
.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "0"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "3"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "4"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "5"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "6"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "7"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "8"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "9"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "a"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "b"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "c"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "d"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "e"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "f"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mgame/pay/main/n;->a:[Ljava/lang/String;

    return-void
.end method

.method private static a(B)Ljava/lang/String;
    .locals 4

    if-gez p0, :cond_0

    add-int/lit16 p0, p0, 0x100

    :cond_0
    div-int/lit8 v0, p0, 0x10

    rem-int/lit8 v1, p0, 0x10

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/mgame/pay/main/n;->a:[Ljava/lang/String;

    aget-object v0, v3, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/mgame/pay/main/n;->a:[Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-byte v2, p0, v0

    invoke-static {v2}, Lcom/mgame/pay/main/n;->a(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 15

    const/4 v14, 0x6

    const/4 v13, 0x5

    const/4 v4, 0x4

    const/4 v1, 0x0

    const/16 v12, 0x10

    const-string v0, "tpbilling"

    const/16 v2, 0x3e

    new-array v6, v2, [Ljava/lang/String;

    const-string v2, "a"

    aput-object v2, v6, v1

    const/4 v2, 0x1

    const-string v3, "b"

    aput-object v3, v6, v2

    const/4 v2, 0x2

    const-string v3, "c"

    aput-object v3, v6, v2

    const/4 v2, 0x3

    const-string v3, "d"

    aput-object v3, v6, v2

    const-string v2, "e"

    aput-object v2, v6, v4

    const-string v2, "f"

    aput-object v2, v6, v13

    const-string v2, "g"

    aput-object v2, v6, v14

    const/4 v2, 0x7

    const-string v3, "h"

    aput-object v3, v6, v2

    const/16 v2, 0x8

    const-string v3, "i"

    aput-object v3, v6, v2

    const/16 v2, 0x9

    const-string v3, "j"

    aput-object v3, v6, v2

    const/16 v2, 0xa

    const-string v3, "k"

    aput-object v3, v6, v2

    const/16 v2, 0xb

    const-string v3, "l"

    aput-object v3, v6, v2

    const/16 v2, 0xc

    const-string v3, "m"

    aput-object v3, v6, v2

    const/16 v2, 0xd

    const-string v3, "n"

    aput-object v3, v6, v2

    const/16 v2, 0xe

    const-string v3, "o"

    aput-object v3, v6, v2

    const/16 v2, 0xf

    const-string v3, "p"

    aput-object v3, v6, v2

    const-string v2, "q"

    aput-object v2, v6, v12

    const/16 v2, 0x11

    const-string v3, "r"

    aput-object v3, v6, v2

    const/16 v2, 0x12

    const-string v3, "s"

    aput-object v3, v6, v2

    const/16 v2, 0x13

    const-string v3, "t"

    aput-object v3, v6, v2

    const/16 v2, 0x14

    const-string v3, "u"

    aput-object v3, v6, v2

    const/16 v2, 0x15

    const-string v3, "v"

    aput-object v3, v6, v2

    const/16 v2, 0x16

    const-string v3, "w"

    aput-object v3, v6, v2

    const/16 v2, 0x17

    const-string v3, "x"

    aput-object v3, v6, v2

    const/16 v2, 0x18

    const-string v3, "y"

    aput-object v3, v6, v2

    const/16 v2, 0x19

    const-string v3, "z"

    aput-object v3, v6, v2

    const/16 v2, 0x1a

    const-string v3, "0"

    aput-object v3, v6, v2

    const/16 v2, 0x1b

    const-string v3, "1"

    aput-object v3, v6, v2

    const/16 v2, 0x1c

    const-string v3, "2"

    aput-object v3, v6, v2

    const/16 v2, 0x1d

    const-string v3, "3"

    aput-object v3, v6, v2

    const/16 v2, 0x1e

    const-string v3, "4"

    aput-object v3, v6, v2

    const/16 v2, 0x1f

    const-string v3, "5"

    aput-object v3, v6, v2

    const/16 v2, 0x20

    const-string v3, "6"

    aput-object v3, v6, v2

    const/16 v2, 0x21

    const-string v3, "7"

    aput-object v3, v6, v2

    const/16 v2, 0x22

    const-string v3, "8"

    aput-object v3, v6, v2

    const/16 v2, 0x23

    const-string v3, "9"

    aput-object v3, v6, v2

    const/16 v2, 0x24

    const-string v3, "A"

    aput-object v3, v6, v2

    const/16 v2, 0x25

    const-string v3, "B"

    aput-object v3, v6, v2

    const/16 v2, 0x26

    const-string v3, "C"

    aput-object v3, v6, v2

    const/16 v2, 0x27

    const-string v3, "D"

    aput-object v3, v6, v2

    const/16 v2, 0x28

    const-string v3, "E"

    aput-object v3, v6, v2

    const/16 v2, 0x29

    const-string v3, "F"

    aput-object v3, v6, v2

    const/16 v2, 0x2a

    const-string v3, "G"

    aput-object v3, v6, v2

    const/16 v2, 0x2b

    const-string v3, "H"

    aput-object v3, v6, v2

    const/16 v2, 0x2c

    const-string v3, "I"

    aput-object v3, v6, v2

    const/16 v2, 0x2d

    const-string v3, "J"

    aput-object v3, v6, v2

    const/16 v2, 0x2e

    const-string v3, "K"

    aput-object v3, v6, v2

    const/16 v2, 0x2f

    const-string v3, "L"

    aput-object v3, v6, v2

    const/16 v2, 0x30

    const-string v3, "M"

    aput-object v3, v6, v2

    const/16 v2, 0x31

    const-string v3, "N"

    aput-object v3, v6, v2

    const/16 v2, 0x32

    const-string v3, "O"

    aput-object v3, v6, v2

    const/16 v2, 0x33

    const-string v3, "P"

    aput-object v3, v6, v2

    const/16 v2, 0x34

    const-string v3, "Q"

    aput-object v3, v6, v2

    const/16 v2, 0x35

    const-string v3, "R"

    aput-object v3, v6, v2

    const/16 v2, 0x36

    const-string v3, "S"

    aput-object v3, v6, v2

    const/16 v2, 0x37

    const-string v3, "T"

    aput-object v3, v6, v2

    const/16 v2, 0x38

    const-string v3, "U"

    aput-object v3, v6, v2

    const/16 v2, 0x39

    const-string v3, "V"

    aput-object v3, v6, v2

    const/16 v2, 0x3a

    const-string v3, "W"

    aput-object v3, v6, v2

    const/16 v2, 0x3b

    const-string v3, "X"

    aput-object v3, v6, v2

    const/16 v2, 0x3c

    const-string v3, "Y"

    aput-object v3, v6, v2

    const/16 v2, 0x3d

    const-string v3, "Z"

    aput-object v3, v6, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mgame/pay/main/n;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v8, v0, 0x8

    new-array v9, v4, [Ljava/lang/String;

    move v5, v1

    :goto_0
    if-ge v5, v8, :cond_1

    const-string v0, ""

    add-int/lit8 v2, v5, 0x1

    mul-int/lit8 v3, v5, 0x8

    mul-int/lit8 v2, v2, 0x8

    invoke-virtual {v7, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "3FFFFFFF"

    invoke-static {v3, v12}, Ljava/lang/Long;->valueOf(Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v2, v12}, Ljava/lang/Long;->valueOf(Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    and-long/2addr v2, v10

    move-object v4, v0

    move v0, v1

    :goto_1
    if-ge v0, v14, :cond_0

    const-string v10, "0000003D"

    invoke-static {v10, v12}, Ljava/lang/Long;->valueOf(Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    and-long/2addr v10, v2

    long-to-int v10, v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v10, v6, v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    shr-long/2addr v2, v13

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    aput-object v4, v9, v5

    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    :cond_1
    return-object v9
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/mgame/pay/main/n;->a([B)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method
