.class public final enum La/a/y$e;
.super Ljava/lang/Enum;

# interfaces
.implements La/a/bb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation


# static fields
.field public static final enum a:La/a/y$e;

.field public static final enum b:La/a/y$e;

.field public static final enum c:La/a/y$e;

.field private static final d:Ljava/util/Map;

.field private static final synthetic g:[La/a/y$e;


# instance fields
.field private final e:S

.field private final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    new-instance v0, La/a/y$e;

    const-string v1, "IDENTITY"

    const-string v2, "identity"

    invoke-direct {v0, v1, v5, v3, v2}, La/a/y$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, La/a/y$e;->a:La/a/y$e;

    new-instance v0, La/a/y$e;

    const-string v1, "TS"

    const-string v2, "ts"

    invoke-direct {v0, v1, v3, v4, v2}, La/a/y$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, La/a/y$e;->b:La/a/y$e;

    new-instance v0, La/a/y$e;

    const-string v1, "VERSION"

    const-string v2, "version"

    invoke-direct {v0, v1, v4, v6, v2}, La/a/y$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, La/a/y$e;->c:La/a/y$e;

    new-array v0, v6, [La/a/y$e;

    sget-object v1, La/a/y$e;->a:La/a/y$e;

    aput-object v1, v0, v5

    sget-object v1, La/a/y$e;->b:La/a/y$e;

    aput-object v1, v0, v3

    sget-object v1, La/a/y$e;->c:La/a/y$e;

    aput-object v1, v0, v4

    sput-object v0, La/a/y$e;->g:[La/a/y$e;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, La/a/y$e;->d:Ljava/util/Map;

    const-class v0, La/a/y$e;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/y$e;

    sget-object v2, La/a/y$e;->d:Ljava/util/Map;

    iget-object v3, v0, La/a/y$e;->f:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ISLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-short p3, p0, La/a/y$e;->e:S

    iput-object p4, p0, La/a/y$e;->f:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)La/a/y$e;
    .locals 1

    const-class v0, La/a/y$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, La/a/y$e;

    return-object v0
.end method

.method public static values()[La/a/y$e;
    .locals 1

    sget-object v0, La/a/y$e;->g:[La/a/y$e;

    invoke-virtual {v0}, [La/a/y$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La/a/y$e;

    return-object v0
.end method


# virtual methods
.method public final a()S
    .locals 1

    iget-short v0, p0, La/a/y$e;->e:S

    return v0
.end method
