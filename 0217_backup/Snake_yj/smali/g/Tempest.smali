.class public final Lg/Tempest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/Tempest$This;
    }
.end annotation


# instance fields
.field private final bV:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Map",
            "<",
            "Lk/This",
            "<*>;",
            "Lg/Tempest$This",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field private final bW:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lk/This",
            "<*>;",
            "Lg/name",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final bX:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lg/That;",
            ">;"
        }
    .end annotation
.end field

.field private final bY:Li/thing;

.field private final bZ:Z

.field private final ca:Z

.field private final cb:Z

.field private final cc:Z

.field final cd:Lg/this;

.field final ce:Lg/t;


# direct methods
.method public constructor <init>()V
    .locals 12

    .prologue
    const/4 v4, 0x0

    .line 174
    sget-object v1, Li/of;->cO:Li/of;

    sget-object v2, Lg/of;->bQ:Lg/of;

    .line 175
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    .line 176
    const/4 v7, 0x1

    sget-object v10, Lg/ii;->cs:Lg/ii;

    .line 177
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v11

    move-object v0, p0

    move v5, v4

    move v6, v4

    move v8, v4

    move v9, v4

    invoke-direct/range {v0 .. v11}, Lg/Tempest;-><init>(Li/of;Lg/The;Ljava/util/Map;ZZZZZZLg/ii;Ljava/util/List;)V

    .line 178
    return-void
.end method

.method constructor <init>(Li/of;Lg/The;Ljava/util/Map;ZZZZZZLg/ii;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/of;",
            "Lg/The;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lg/i",
            "<*>;>;ZZZZZZ",
            "Lg/ii;",
            "Ljava/util/List",
            "<",
            "Lg/That;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lg/Tempest;->bV:Ljava/lang/ThreadLocal;

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lg/Tempest;->bW:Ljava/util/Map;

    .line 123
    new-instance v0, Lg/this;

    invoke-direct {v0, p0}, Lg/this;-><init>(Lg/Tempest;)V

    iput-object v0, p0, Lg/Tempest;->cd:Lg/this;

    .line 130
    new-instance v0, Lg/t;

    invoke-direct {v0, p0}, Lg/t;-><init>(Lg/Tempest;)V

    iput-object v0, p0, Lg/Tempest;->ce:Lg/t;

    .line 186
    new-instance v0, Li/thing;

    invoke-direct {v0, p3}, Li/thing;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lg/Tempest;->bY:Li/thing;

    .line 187
    iput-boolean p4, p0, Lg/Tempest;->bZ:Z

    .line 188
    iput-boolean p6, p0, Lg/Tempest;->cb:Z

    .line 189
    iput-boolean p7, p0, Lg/Tempest;->ca:Z

    .line 190
    iput-boolean p8, p0, Lg/Tempest;->cc:Z

    .line 192
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 195
    sget-object v0, Lj/is;->eI:Lg/That;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    sget-object v0, Lj/V;->dt:Lg/That;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    invoke-interface {v1, p11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 205
    sget-object v0, Lj/is;->ep:Lg/That;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    sget-object v0, Lj/is;->ee:Lg/That;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    sget-object v0, Lj/is;->dY:Lg/That;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    sget-object v0, Lj/is;->ea:Lg/That;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    sget-object v0, Lj/is;->ec:Lg/That;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v3, Ljava/lang/Long;

    .line 211
    sget-object v0, Lg/ii;->cs:Lg/ii;

    if-ne p10, v0, :cond_0

    sget-object v0, Lj/is;->ef:Lg/name;

    .line 210
    :goto_0
    invoke-static {v2, v3, v0}, Lj/is;->Code(Ljava/lang/Class;Ljava/lang/Class;Lg/name;)Lg/That;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v3, Ljava/lang/Double;

    .line 213
    if-eqz p9, :cond_1

    sget-object v0, Lj/is;->eh:Lg/name;

    .line 212
    :goto_1
    invoke-static {v2, v3, v0}, Lj/is;->Code(Ljava/lang/Class;Ljava/lang/Class;Lg/name;)Lg/That;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v3, Ljava/lang/Float;

    .line 215
    if-eqz p9, :cond_2

    sget-object v0, Lj/is;->eg:Lg/name;

    .line 214
    :goto_2
    invoke-static {v2, v3, v0}, Lj/is;->Code(Ljava/lang/Class;Ljava/lang/Class;Lg/name;)Lg/That;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    sget-object v0, Lj/is;->ej:Lg/That;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    sget-object v0, Lj/is;->el:Lg/That;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    sget-object v0, Lj/is;->er:Lg/That;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    sget-object v0, Lj/is;->et:Lg/That;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    const-class v0, Ljava/math/BigDecimal;

    sget-object v2, Lj/is;->en:Lg/name;

    invoke-static {v0, v2}, Lj/is;->Code(Ljava/lang/Class;Lg/name;)Lg/That;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    const-class v0, Ljava/math/BigInteger;

    sget-object v2, Lj/is;->eo:Lg/name;

    invoke-static {v0, v2}, Lj/is;->Code(Ljava/lang/Class;Lg/name;)Lg/That;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    sget-object v0, Lj/is;->ev:Lg/That;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    sget-object v0, Lj/is;->ex:Lg/That;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    sget-object v0, Lj/is;->eB:Lg/That;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    sget-object v0, Lj/is;->eG:Lg/That;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    sget-object v0, Lj/is;->ez:Lg/That;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    sget-object v0, Lj/is;->dV:Lg/That;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    sget-object v0, Lj/darkness;->dt:Lg/That;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    sget-object v0, Lj/is;->eE:Lg/That;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    sget-object v0, Lj/madness;->dt:Lg/That;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    sget-object v0, Lj/this;->dt:Lg/That;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    sget-object v0, Lj/is;->eC:Lg/That;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    sget-object v0, Lj/This;->dt:Lg/That;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    sget-object v0, Lj/is;->eJ:Lg/That;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    sget-object v0, Lj/is;->dT:Lg/That;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    new-instance v0, Lj/of;

    iget-object v2, p0, Lg/Tempest;->bY:Li/thing;

    invoke-direct {v0, v2}, Lj/of;-><init>(Li/thing;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    new-instance v0, Lj/Tempest;

    iget-object v2, p0, Lg/Tempest;->bY:Li/thing;

    invoke-direct {v0, v2, p5}, Lj/Tempest;-><init>(Li/thing;Z)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    new-instance v0, Lj/Though;

    .line 241
    iget-object v2, p0, Lg/Tempest;->bY:Li/thing;

    invoke-direct {v0, v2, p2, p1}, Lj/Though;-><init>(Li/thing;Lg/The;Li/of;)V

    .line 240
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lg/Tempest;->bX:Ljava/util/List;

    .line 244
    return-void

    .line 211
    :cond_0
    new-instance v0, Lg/Tempest$3;

    invoke-direct {v0, p0}, Lg/Tempest$3;-><init>(Lg/Tempest;)V

    goto/16 :goto_0

    .line 213
    :cond_1
    new-instance v0, Lg/Tempest$1;

    invoke-direct {v0, p0}, Lg/Tempest$1;-><init>(Lg/Tempest;)V

    goto/16 :goto_1

    .line 215
    :cond_2
    new-instance v0, Lg/Tempest$2;

    invoke-direct {v0, p0}, Lg/Tempest$2;-><init>(Lg/Tempest;)V

    goto/16 :goto_2
.end method

.method private Code(Ll/This;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ll/This;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lg/yet;,
            Lg/II;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 795
    .line 796
    invoke-virtual {p1}, Ll/This;->isLenient()Z

    move-result v2

    .line 797
    invoke-virtual {p1, v1}, Ll/This;->setLenient(Z)V

    .line 799
    :try_start_0
    invoke-virtual {p1}, Ll/This;->P()Ll/of;

    .line 800
    const/4 v1, 0x0

    .line 801
    invoke-static {p2}, Lk/This;->S(Ljava/lang/reflect/Type;)Lk/This;

    move-result-object v0

    .line 802
    invoke-virtual {p0, v0}, Lg/Tempest;->Code(Lk/This;)Lg/name;

    move-result-object v0

    .line 803
    invoke-virtual {v0, p1}, Lg/name;->Code(Ll/This;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 820
    invoke-virtual {p1, v2}, Ll/This;->setLenient(Z)V

    .line 811
    :goto_0
    return-object v0

    .line 805
    :catch_0
    move-exception v0

    .line 810
    if-eqz v1, :cond_0

    .line 820
    invoke-virtual {p1, v2}, Ll/This;->setLenient(Z)V

    .line 811
    const/4 v0, 0x0

    goto :goto_0

    .line 813
    :cond_0
    :try_start_1
    new-instance v1, Lg/II;

    invoke-direct {v1, v0}, Lg/II;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 819
    :catchall_0
    move-exception v0

    .line 820
    invoke-virtual {p1, v2}, Ll/This;->setLenient(Z)V

    .line 821
    throw v0

    .line 814
    :catch_1
    move-exception v0

    .line 815
    :try_start_2
    new-instance v1, Lg/II;

    invoke-direct {v1, v0}, Lg/II;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 816
    :catch_2
    move-exception v0

    .line 818
    new-instance v1, Lg/II;

    invoke-direct {v1, v0}, Lg/II;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method private Code(Ljava/io/Writer;)Ll/darkness;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 638
    iget-boolean v0, p0, Lg/Tempest;->cb:Z

    if-eqz v0, :cond_0

    .line 639
    const-string v0, ")]}\'\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 641
    :cond_0
    new-instance v0, Ll/darkness;

    invoke-direct {v0, p1}, Ll/darkness;-><init>(Ljava/io/Writer;)V

    .line 642
    iget-boolean v1, p0, Lg/Tempest;->cc:Z

    if-eqz v1, :cond_1

    .line 643
    const-string v1, "  "

    invoke-virtual {v0, v1}, Ll/darkness;->setIndent(Ljava/lang/String;)V

    .line 645
    :cond_1
    iget-boolean v1, p0, Lg/Tempest;->bZ:Z

    invoke-virtual {v0, v1}, Ll/darkness;->B(Z)V

    .line 646
    return-object v0
.end method

.method static synthetic Code(Lg/Tempest;D)V
    .locals 3

    .prologue
    .line 294
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " is not a valid double value as per JSON specification. To override this"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private Code(Lg/madness;Ljava/lang/Appendable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lg/yet;
        }
    .end annotation

    .prologue
    .line 626
    :try_start_0
    invoke-static {p2}, Li/thing$1;->Code(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object v0

    invoke-direct {p0, v0}, Lg/Tempest;->Code(Ljava/io/Writer;)Ll/darkness;

    move-result-object v1

    .line 627
    invoke-virtual {v1}, Ll/darkness;->isLenient()Z

    move-result v2

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ll/darkness;->setLenient(Z)V

    invoke-virtual {v1}, Ll/darkness;->an()Z

    move-result v3

    iget-boolean v0, p0, Lg/Tempest;->ca:Z

    invoke-virtual {v1, v0}, Ll/darkness;->Z(Z)V

    invoke-virtual {v1}, Ll/darkness;->ao()Z

    move-result v4

    iget-boolean v0, p0, Lg/Tempest;->bZ:Z

    invoke-virtual {v1, v0}, Ll/darkness;->B(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {p1, v1}, Li/thing$1;->Code(Lg/madness;Ll/darkness;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1, v2}, Ll/darkness;->setLenient(Z)V

    invoke-virtual {v1, v3}, Ll/darkness;->Z(Z)V

    invoke-virtual {v1, v4}, Ll/darkness;->B(Z)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 628
    return-void

    .line 627
    :catch_0
    move-exception v0

    :try_start_3
    new-instance v5, Lg/yet;

    invoke-direct {v5, v0}, Lg/yet;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {v1, v2}, Ll/darkness;->setLenient(Z)V

    invoke-virtual {v1, v3}, Ll/darkness;->Z(Z)V

    invoke-virtual {v1, v4}, Ll/darkness;->B(Z)V

    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 628
    :catch_1
    move-exception v0

    .line 629
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private Code(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lg/yet;
        }
    .end annotation

    .prologue
    .line 571
    :try_start_0
    invoke-static {p3}, Li/thing$1;->Code(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object v0

    invoke-direct {p0, v0}, Lg/Tempest;->Code(Ljava/io/Writer;)Ll/darkness;

    move-result-object v0

    .line 572
    invoke-direct {p0, p1, p2, v0}, Lg/Tempest;->Code(Ljava/lang/Object;Ljava/lang/reflect/Type;Ll/darkness;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 573
    return-void

    :catch_0
    move-exception v0

    .line 574
    new-instance v1, Lg/yet;

    invoke-direct {v1, v0}, Lg/yet;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private Code(Ljava/lang/Object;Ljava/lang/reflect/Type;Ll/darkness;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lg/yet;
        }
    .end annotation

    .prologue
    .line 585
    invoke-static {p2}, Lk/This;->S(Ljava/lang/reflect/Type;)Lk/This;

    move-result-object v0

    invoke-virtual {p0, v0}, Lg/Tempest;->Code(Lk/This;)Lg/name;

    move-result-object v0

    .line 586
    invoke-virtual {p3}, Ll/darkness;->isLenient()Z

    move-result v1

    .line 587
    const/4 v2, 0x1

    invoke-virtual {p3, v2}, Ll/darkness;->setLenient(Z)V

    .line 588
    invoke-virtual {p3}, Ll/darkness;->an()Z

    move-result v2

    .line 589
    iget-boolean v3, p0, Lg/Tempest;->ca:Z

    invoke-virtual {p3, v3}, Ll/darkness;->Z(Z)V

    .line 590
    invoke-virtual {p3}, Ll/darkness;->ao()Z

    move-result v3

    .line 591
    iget-boolean v4, p0, Lg/Tempest;->bZ:Z

    invoke-virtual {p3, v4}, Ll/darkness;->B(Z)V

    .line 593
    :try_start_0
    invoke-virtual {v0, p3, p1}, Lg/name;->Code(Ll/darkness;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 597
    invoke-virtual {p3, v1}, Ll/darkness;->setLenient(Z)V

    .line 598
    invoke-virtual {p3, v2}, Ll/darkness;->Z(Z)V

    .line 599
    invoke-virtual {p3, v3}, Ll/darkness;->B(Z)V

    .line 601
    return-void

    .line 594
    :catch_0
    move-exception v0

    .line 595
    :try_start_1
    new-instance v4, Lg/yet;

    invoke-direct {v4, v0}, Lg/yet;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 596
    :catchall_0
    move-exception v0

    .line 597
    invoke-virtual {p3, v1}, Ll/darkness;->setLenient(Z)V

    .line 598
    invoke-virtual {p3, v2}, Ll/darkness;->Z(Z)V

    .line 599
    invoke-virtual {p3, v3}, Ll/darkness;->B(Z)V

    .line 600
    throw v0
.end method

.method private static Code(Ljava/lang/Object;Ll/This;)V
    .locals 2

    .prologue
    .line 775
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ll/This;->P()Ll/of;

    move-result-object v0

    sget-object v1, Ll/of;->fl:Ll/of;

    if-eq v0, v1, :cond_0

    .line 776
    new-instance v0, Lg/yet;

    const-string v1, "JSON document was not fully consumed."

    invoke-direct {v0, v1}, Lg/yet;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ll/I; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 778
    :catch_0
    move-exception v0

    .line 779
    new-instance v1, Lg/II;

    invoke-direct {v1, v0}, Lg/II;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 780
    :catch_1
    move-exception v0

    .line 781
    new-instance v1, Lg/yet;

    invoke-direct {v1, v0}, Lg/yet;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 783
    :cond_0
    return-void
.end method


# virtual methods
.method public final B(Ljava/lang/Object;)Lg/madness;
    .locals 2

    .prologue
    .line 462
    if-nez p1, :cond_0

    .line 463
    sget-object v0, Lg/there;->cp:Lg/there;

    .line 465
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Lj/From;

    invoke-direct {v1}, Lj/From;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lg/Tempest;->Code(Ljava/lang/Object;Ljava/lang/reflect/Type;Ll/darkness;)V

    invoke-virtual {v1}, Lj/From;->U()Lg/madness;

    move-result-object v0

    goto :goto_0
.end method

.method public final C(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 504
    if-nez p1, :cond_0

    .line 505
    sget-object v0, Lg/there;->cp:Lg/there;

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    invoke-direct {p0, v0, v1}, Lg/Tempest;->Code(Lg/madness;Ljava/lang/Appendable;)V

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 507
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lg/Tempest;->Code(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final Code(Lg/That;Lk/This;)Lg/name;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lg/That;",
            "Lk/This",
            "<TT;>;)",
            "Lg/name",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 420
    const/4 v0, 0x0

    .line 422
    iget-object v1, p0, Lg/Tempest;->bX:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 435
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GSON cannot serialize "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 422
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/That;

    .line 423
    if-nez v1, :cond_2

    .line 424
    if-ne v0, p1, :cond_0

    .line 425
    const/4 v0, 0x1

    move v1, v0

    .line 427
    goto :goto_0

    .line 430
    :cond_2
    invoke-interface {v0, p0, p2}, Lg/That;->Code(Lg/Tempest;Lk/This;)Lg/name;

    move-result-object v0

    .line 431
    if-eqz v0, :cond_0

    .line 432
    return-object v0
.end method

.method public final Code(Ljava/lang/Class;)Lg/name;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lg/name",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 445
    invoke-static {p1}, Lk/This;->B(Ljava/lang/Class;)Lk/This;

    move-result-object v0

    invoke-virtual {p0, v0}, Lg/Tempest;->Code(Lk/This;)Lg/name;

    move-result-object v0

    return-object v0
.end method

.method public final Code(Lk/This;)Lg/name;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lk/This",
            "<TT;>;)",
            "Lg/name",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 332
    iget-object v0, p0, Lg/Tempest;->bW:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/name;

    .line 333
    if-eqz v0, :cond_1

    .line 360
    :cond_0
    :goto_0
    return-object v0

    .line 337
    :cond_1
    iget-object v0, p0, Lg/Tempest;->bV:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 338
    const/4 v1, 0x0

    .line 339
    if-nez v0, :cond_5

    .line 340
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 341
    iget-object v0, p0, Lg/Tempest;->bV:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 342
    const/4 v0, 0x1

    move-object v2, v1

    move v1, v0

    .line 346
    :goto_1
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/Tempest$This;

    .line 347
    if-nez v0, :cond_0

    .line 352
    :try_start_0
    new-instance v3, Lg/Tempest$This;

    invoke-direct {v3}, Lg/Tempest$This;-><init>()V

    .line 353
    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    iget-object v0, p0, Lg/Tempest;->bX:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 363
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GSON cannot handle "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    :catchall_0
    move-exception v0

    .line 365
    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    if-eqz v1, :cond_3

    .line 368
    iget-object v1, p0, Lg/Tempest;->bV:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    .line 370
    :cond_3
    throw v0

    .line 355
    :cond_4
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/That;

    .line 356
    invoke-interface {v0, p0, p1}, Lg/That;->Code(Lg/Tempest;Lk/This;)Lg/name;

    move-result-object v0

    .line 357
    if-eqz v0, :cond_2

    .line 358
    invoke-virtual {v3, v0}, Lg/Tempest$This;->Code(Lg/name;)V

    .line 359
    iget-object v3, p0, Lg/Tempest;->bW:Ljava/util/Map;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 365
    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    if-eqz v1, :cond_0

    .line 368
    iget-object v1, p0, Lg/Tempest;->bV:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_0

    :cond_5
    move-object v2, v0

    goto :goto_1
.end method

.method public final Code(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lg/II;
        }
    .end annotation

    .prologue
    .line 713
    if-nez p1, :cond_0

    .line 714
    const/4 v0, 0x0

    .line 718
    :goto_0
    return-object v0

    .line 716
    :cond_0
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 717
    new-instance v1, Ll/This;

    invoke-direct {v1, v0}, Ll/This;-><init>(Ljava/io/Reader;)V

    invoke-direct {p0, v1, p2}, Lg/Tempest;->Code(Ll/This;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1}, Lg/Tempest;->Code(Ljava/lang/Object;Ll/This;)V

    goto :goto_0
.end method

.method public final V(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lg/II;
        }
    .end annotation

    .prologue
    .line 689
    invoke-virtual {p0, p1, p2}, Lg/Tempest;->Code(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 690
    invoke-static {p2}, Li/The;->Z(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 898
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{serializeNulls:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 899
    iget-boolean v1, p0, Lg/Tempest;->bZ:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 900
    const-string v1, "factories:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lg/Tempest;->bX:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 901
    const-string v1, ",instanceCreators:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lg/Tempest;->bY:Li/thing;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 902
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 903
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 898
    return-object v0
.end method
