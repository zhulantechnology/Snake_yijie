.class public final enum Le/V$This;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/V;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "This"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Le/V$This;",
        ">;"
    }
.end annotation


# static fields
.field private static enum aW:Le/V$This;

.field public static final enum aX:Le/V$This;

.field private static enum aY:Le/V$This;

.field private static enum aZ:Le/V$This;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 464
    new-instance v0, Le/V$This;

    const-string v1, "LOW"

    invoke-direct {v0, v1, v2}, Le/V$This;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/V$This;->aW:Le/V$This;

    .line 465
    new-instance v0, Le/V$This;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v3}, Le/V$This;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/V$This;->aX:Le/V$This;

    .line 466
    new-instance v0, Le/V$This;

    const-string v1, "HIGH"

    invoke-direct {v0, v1, v4}, Le/V$This;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/V$This;->aY:Le/V$This;

    .line 467
    new-instance v0, Le/V$This;

    const-string v1, "IMMEDIATE"

    invoke-direct {v0, v1, v5}, Le/V$This;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/V$This;->aZ:Le/V$This;

    .line 463
    const/4 v0, 0x4

    new-array v0, v0, [Le/V$This;

    sget-object v1, Le/V$This;->aW:Le/V$This;

    aput-object v1, v0, v2

    sget-object v1, Le/V$This;->aX:Le/V$This;

    aput-object v1, v0, v3

    sget-object v1, Le/V$This;->aY:Le/V$This;

    aput-object v1, v0, v4

    sget-object v1, Le/V$This;->aZ:Le/V$This;

    aput-object v1, v0, v5

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 463
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
