.class final Lj/other;
.super Lg/name;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj/is;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg/name",
        "<",
        "Lg/madness;",
        ">;"
    }
.end annotation


# static fields
.field private static synthetic dI:[I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 642
    invoke-direct {p0}, Lg/name;-><init>()V

    .line 1
    return-void
.end method

.method private Code(Ll/darkness;Lg/madness;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 681
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lg/madness;->w()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 682
    :cond_0
    invoke-virtual {p1}, Ll/darkness;->ac()Ll/darkness;

    .line 708
    :goto_0
    return-void

    .line 683
    :cond_1
    invoke-virtual {p2}, Lg/madness;->v()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 684
    invoke-virtual {p2}, Lg/madness;->z()Lg/in;

    move-result-object v0

    .line 685
    invoke-virtual {v0}, Lg/in;->isNumber()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 686
    invoke-virtual {v0}, Lg/in;->o()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {p1, v0}, Ll/darkness;->Code(Ljava/lang/Number;)Ll/darkness;

    goto :goto_0

    .line 687
    :cond_2
    invoke-virtual {v0}, Lg/in;->isBoolean()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 688
    invoke-virtual {v0}, Lg/in;->s()Z

    move-result v0

    invoke-virtual {p1, v0}, Ll/darkness;->V(Z)Ll/darkness;

    goto :goto_0

    .line 690
    :cond_3
    invoke-virtual {v0}, Lg/in;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ll/darkness;->g(Ljava/lang/String;)Ll/darkness;

    goto :goto_0

    .line 693
    :cond_4
    invoke-virtual {p2}, Lg/madness;->t()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 694
    invoke-virtual {p1}, Ll/darkness;->X()Ll/darkness;

    .line 695
    invoke-virtual {p2}, Lg/madness;->y()Lg/Though;

    move-result-object v0

    invoke-virtual {v0}, Lg/Though;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 698
    invoke-virtual {p1}, Ll/darkness;->Y()Ll/darkness;

    goto :goto_0

    .line 695
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/madness;

    .line 696
    invoke-direct {p0, p1, v0}, Lj/other;->Code(Ll/darkness;Lg/madness;)V

    goto :goto_1

    .line 700
    :cond_6
    invoke-virtual {p2}, Lg/madness;->u()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 701
    invoke-virtual {p1}, Ll/darkness;->aa()Ll/darkness;

    .line 702
    invoke-virtual {p2}, Lg/madness;->x()Lg/is;

    move-result-object v0

    invoke-virtual {v0}, Lg/is;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    .line 706
    invoke-virtual {p1}, Ll/darkness;->ab()Ll/darkness;

    goto :goto_0

    .line 702
    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    .line 703
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ll/darkness;->f(Ljava/lang/String;)Ll/darkness;

    .line 704
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/madness;

    invoke-direct {p0, p1, v0}, Lj/other;->Code(Ll/darkness;Lg/madness;)V

    goto :goto_2

    .line 709
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Couldn\'t write "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private L(Ll/This;)Lg/madness;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 644
    invoke-static {}, Lj/other;->ad()[I

    move-result-object v0

    invoke-virtual {p1}, Ll/This;->P()Ll/of;

    move-result-object v1

    invoke-virtual {v1}, Ll/of;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 676
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 646
    :pswitch_1
    new-instance v0, Lg/in;

    invoke-virtual {p1}, Ll/This;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lg/in;-><init>(Ljava/lang/String;)V

    .line 670
    :goto_0
    return-object v0

    .line 648
    :pswitch_2
    invoke-virtual {p1}, Ll/This;->nextString()Ljava/lang/String;

    move-result-object v1

    .line 649
    new-instance v0, Lg/in;

    new-instance v2, Li/I;

    invoke-direct {v2, v1}, Li/I;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lg/in;-><init>(Ljava/lang/Number;)V

    goto :goto_0

    .line 651
    :pswitch_3
    new-instance v0, Lg/in;

    invoke-virtual {p1}, Ll/This;->nextBoolean()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lg/in;-><init>(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 653
    :pswitch_4
    invoke-virtual {p1}, Ll/This;->nextNull()V

    .line 654
    sget-object v0, Lg/there;->cp:Lg/there;

    goto :goto_0

    .line 656
    :pswitch_5
    new-instance v0, Lg/Though;

    invoke-direct {v0}, Lg/Though;-><init>()V

    .line 657
    invoke-virtual {p1}, Ll/This;->beginArray()V

    .line 658
    :goto_1
    invoke-virtual {p1}, Ll/This;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 661
    invoke-virtual {p1}, Ll/This;->endArray()V

    goto :goto_0

    .line 659
    :cond_0
    invoke-direct {p0, p1}, Lj/other;->L(Ll/This;)Lg/madness;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg/Though;->V(Lg/madness;)V

    goto :goto_1

    .line 664
    :pswitch_6
    new-instance v0, Lg/is;

    invoke-direct {v0}, Lg/is;-><init>()V

    .line 665
    invoke-virtual {p1}, Ll/This;->beginObject()V

    .line 666
    :goto_2
    invoke-virtual {p1}, Ll/This;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 669
    invoke-virtual {p1}, Ll/This;->endObject()V

    goto :goto_0

    .line 667
    :cond_1
    invoke-virtual {p1}, Ll/This;->nextName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Lj/other;->L(Ll/This;)Lg/madness;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lg/is;->Code(Ljava/lang/String;Lg/madness;)V

    goto :goto_2

    .line 644
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static synthetic ad()[I
    .locals 3

    .prologue
    .line 642
    sget-object v0, Lj/other;->dI:[I

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
    sput-object v0, Lj/other;->dI:[I

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
.method public final synthetic Code(Ll/This;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0, p1}, Lj/other;->L(Ll/This;)Lg/madness;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic Code(Ll/darkness;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1
    check-cast p2, Lg/madness;

    invoke-direct {p0, p1, p2}, Lj/other;->Code(Ll/darkness;Lg/madness;)V

    return-void
.end method
