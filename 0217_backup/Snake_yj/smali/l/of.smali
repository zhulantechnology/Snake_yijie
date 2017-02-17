.class public final enum Ll/of;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ll/of;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum fc:Ll/of;

.field public static final enum fd:Ll/of;

.field public static final enum fe:Ll/of;

.field public static final enum ff:Ll/of;

.field public static final enum fg:Ll/of;

.field public static final enum fh:Ll/of;

.field public static final enum fi:Ll/of;

.field public static final enum fj:Ll/of;

.field public static final enum fk:Ll/of;

.field public static final enum fl:Ll/of;

.field private static final synthetic fm:[Ll/of;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 27
    new-instance v0, Ll/of;

    const-string v1, "BEGIN_ARRAY"

    invoke-direct {v0, v1, v3}, Ll/of;-><init>(Ljava/lang/String;I)V

    .line 31
    sput-object v0, Ll/of;->fc:Ll/of;

    .line 33
    new-instance v0, Ll/of;

    const-string v1, "END_ARRAY"

    invoke-direct {v0, v1, v4}, Ll/of;-><init>(Ljava/lang/String;I)V

    .line 37
    sput-object v0, Ll/of;->fd:Ll/of;

    .line 39
    new-instance v0, Ll/of;

    const-string v1, "BEGIN_OBJECT"

    invoke-direct {v0, v1, v5}, Ll/of;-><init>(Ljava/lang/String;I)V

    .line 43
    sput-object v0, Ll/of;->fe:Ll/of;

    .line 45
    new-instance v0, Ll/of;

    const-string v1, "END_OBJECT"

    invoke-direct {v0, v1, v6}, Ll/of;-><init>(Ljava/lang/String;I)V

    .line 49
    sput-object v0, Ll/of;->ff:Ll/of;

    .line 51
    new-instance v0, Ll/of;

    const-string v1, "NAME"

    invoke-direct {v0, v1, v7}, Ll/of;-><init>(Ljava/lang/String;I)V

    .line 56
    sput-object v0, Ll/of;->fg:Ll/of;

    .line 58
    new-instance v0, Ll/of;

    const-string v1, "STRING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Ll/of;-><init>(Ljava/lang/String;I)V

    .line 61
    sput-object v0, Ll/of;->fh:Ll/of;

    .line 63
    new-instance v0, Ll/of;

    const-string v1, "NUMBER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Ll/of;-><init>(Ljava/lang/String;I)V

    .line 67
    sput-object v0, Ll/of;->fi:Ll/of;

    .line 69
    new-instance v0, Ll/of;

    const-string v1, "BOOLEAN"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Ll/of;-><init>(Ljava/lang/String;I)V

    .line 72
    sput-object v0, Ll/of;->fj:Ll/of;

    .line 74
    new-instance v0, Ll/of;

    const-string v1, "NULL"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Ll/of;-><init>(Ljava/lang/String;I)V

    .line 77
    sput-object v0, Ll/of;->fk:Ll/of;

    .line 79
    new-instance v0, Ll/of;

    const-string v1, "END_DOCUMENT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Ll/of;-><init>(Ljava/lang/String;I)V

    .line 84
    sput-object v0, Ll/of;->fl:Ll/of;

    .line 25
    const/16 v0, 0xa

    new-array v0, v0, [Ll/of;

    sget-object v1, Ll/of;->fc:Ll/of;

    aput-object v1, v0, v3

    sget-object v1, Ll/of;->fd:Ll/of;

    aput-object v1, v0, v4

    sget-object v1, Ll/of;->fe:Ll/of;

    aput-object v1, v0, v5

    sget-object v1, Ll/of;->ff:Ll/of;

    aput-object v1, v0, v6

    sget-object v1, Ll/of;->fg:Ll/of;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Ll/of;->fh:Ll/of;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Ll/of;->fi:Ll/of;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Ll/of;->fj:Ll/of;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Ll/of;->fk:Ll/of;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Ll/of;->fl:Ll/of;

    aput-object v2, v0, v1

    sput-object v0, Ll/of;->fm:[Ll/of;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static am()[Ll/of;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Ll/of;->fm:[Ll/of;

    array-length v1, v0

    new-array v2, v1, [Ll/of;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
