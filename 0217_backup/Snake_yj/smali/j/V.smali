.class public final Lj/V;
.super Lg/name;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg/name",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static synthetic dI:[I

.field public static final dt:Lg/That;


# instance fields
.field private final cw:Lg/Tempest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lj/i;

    invoke-direct {v0}, Lj/i;-><init>()V

    sput-object v0, Lj/V;->dt:Lg/That;

    .line 46
    return-void
.end method

.method synthetic constructor <init>(Lg/Tempest;)V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lj/V;-><init>(Lg/Tempest;B)V

    return-void
.end method

.method private constructor <init>(Lg/Tempest;B)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lg/name;-><init>()V

    .line 51
    iput-object p1, p0, Lj/V;->cw:Lg/Tempest;

    .line 52
    return-void
.end method

.method private static synthetic ad()[I
    .locals 3

    .prologue
    .line 37
    sget-object v0, Lj/V;->dI:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ll/of;->am()[Ll/of;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Ll/of;->fc:Ll/of;

    invoke-virtual {v1}, Ll/of;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_9

    :goto_1
    :try_start_1
    sget-object v1, Ll/of;->fe:Ll/of;

    invoke-virtual {v1}, Ll/of;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_8

    :goto_2
    :try_start_2
    sget-object v1, Ll/of;->fj:Ll/of;

    invoke-virtual {v1}, Ll/of;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_7

    :goto_3
    :try_start_3
    sget-object v1, Ll/of;->fd:Ll/of;

    invoke-virtual {v1}, Ll/of;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_6

    :goto_4
    :try_start_4
    sget-object v1, Ll/of;->fl:Ll/of;

    invoke-virtual {v1}, Ll/of;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_5

    :goto_5
    :try_start_5
    sget-object v1, Ll/of;->ff:Ll/of;

    invoke-virtual {v1}, Ll/of;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_4

    :goto_6
    :try_start_6
    sget-object v1, Ll/of;->fg:Ll/of;

    invoke-virtual {v1}, Ll/of;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_3

    :goto_7
    :try_start_7
    sget-object v1, Ll/of;->fk:Ll/of;

    invoke-virtual {v1}, Ll/of;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_2

    :goto_8
    :try_start_8
    sget-object v1, Ll/of;->fi:Ll/of;

    invoke-virtual {v1}, Ll/of;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_1

    :goto_9
    :try_start_9
    sget-object v1, Ll/of;->fh:Ll/of;

    invoke-virtual {v1}, Ll/of;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_0

    :goto_a
    sput-object v0, Lj/V;->dI:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_a

    :catch_1
    move-exception v1

    goto :goto_9

    :catch_2
    move-exception v1

    goto :goto_8

    :catch_3
    move-exception v1

    goto :goto_7

    :catch_4
    move-exception v1

    goto :goto_6

    :catch_5
    move-exception v1

    goto :goto_5

    :catch_6
    move-exception v1

    goto :goto_4

    :catch_7
    move-exception v1

    goto :goto_3

    :catch_8
    move-exception v1

    goto :goto_2

    :catch_9
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public final Code(Ll/This;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-virtual {p1}, Ll/This;->P()Ll/of;

    move-result-object v0

    .line 56
    invoke-static {}, Lj/V;->ad()[I

    move-result-object v1

    invoke-virtual {v0}, Ll/of;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 89
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 58
    :pswitch_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    invoke-virtual {p1}, Ll/This;->beginArray()V

    .line 60
    :goto_0
    invoke-virtual {p1}, Ll/This;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 63
    invoke-virtual {p1}, Ll/This;->endArray()V

    .line 86
    :goto_1
    return-object v0

    .line 61
    :cond_0
    invoke-virtual {p0, p1}, Lj/V;->Code(Ll/This;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 67
    :pswitch_2
    new-instance v0, Li/acknowledge;

    invoke-direct {v0}, Li/acknowledge;-><init>()V

    .line 68
    invoke-virtual {p1}, Ll/This;->beginObject()V

    .line 69
    :goto_2
    invoke-virtual {p1}, Ll/This;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 72
    invoke-virtual {p1}, Ll/This;->endObject()V

    goto :goto_1

    .line 70
    :cond_1
    invoke-virtual {p1}, Ll/This;->nextName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lj/V;->Code(Ll/This;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 76
    :pswitch_3
    invoke-virtual {p1}, Ll/This;->nextString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 79
    :pswitch_4
    invoke-virtual {p1}, Ll/This;->nextDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_1

    .line 82
    :pswitch_5
    invoke-virtual {p1}, Ll/This;->nextBoolean()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    .line 85
    :pswitch_6
    invoke-virtual {p1}, Ll/This;->nextNull()V

    .line 86
    const/4 v0, 0x0

    goto :goto_1

    .line 56
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public final Code(Ll/darkness;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    if-nez p2, :cond_0

    .line 96
    invoke-virtual {p1}, Ll/darkness;->ac()Ll/darkness;

    .line 108
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lj/V;->cw:Lg/Tempest;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg/Tempest;->Code(Ljava/lang/Class;)Lg/name;

    move-result-object v0

    .line 101
    instance-of v1, v0, Lj/V;

    if-eqz v1, :cond_1

    .line 102
    invoke-virtual {p1}, Ll/darkness;->aa()Ll/darkness;

    .line 103
    invoke-virtual {p1}, Ll/darkness;->ab()Ll/darkness;

    goto :goto_0

    .line 107
    :cond_1
    invoke-virtual {v0, p1, p2}, Lg/name;->Code(Ll/darkness;Ljava/lang/Object;)V

    goto :goto_0
.end method
