.class public abstract enum Lg/ii;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lg/ii;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum cs:Lg/ii;

.field private static enum ct:Lg/ii;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    new-instance v0, Lg/What;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lg/What;-><init>(Ljava/lang/String;I)V

    .line 34
    sput-object v0, Lg/ii;->cs:Lg/ii;

    .line 40
    new-instance v0, Lg/s;

    const-string v1, "STRING"

    invoke-direct {v0, v1, v3}, Lg/s;-><init>(Ljava/lang/String;I)V

    .line 45
    sput-object v0, Lg/ii;->ct:Lg/ii;

    .line 27
    const/4 v0, 0x2

    new-array v0, v0, [Lg/ii;

    sget-object v1, Lg/ii;->cs:Lg/ii;

    aput-object v1, v0, v2

    sget-object v1, Lg/ii;->ct:Lg/ii;

    aput-object v1, v0, v3

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lg/ii;-><init>(Ljava/lang/String;IB)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
