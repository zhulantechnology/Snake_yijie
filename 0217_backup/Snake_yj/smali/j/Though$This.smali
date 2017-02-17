.class public final Lj/Though$This;
.super Lg/name;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj/Though;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "This"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lg/name",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final dN:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lj/Though$thing;",
            ">;"
        }
    .end annotation
.end field

.field private final dx:Li/From;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/From",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method synthetic constructor <init>(Li/From;Ljava/util/Map;)V
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lj/Though$This;-><init>(Li/From;Ljava/util/Map;B)V

    return-void
.end method

.method private constructor <init>(Li/From;Ljava/util/Map;B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/From",
            "<TT;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lj/Though$thing;",
            ">;B)V"
        }
    .end annotation

    .prologue
    .line 151
    invoke-direct {p0}, Lg/name;-><init>()V

    .line 152
    iput-object p1, p0, Lj/Though$This;->dx:Li/From;

    .line 153
    iput-object p2, p0, Lj/Though$This;->dN:Ljava/util/Map;

    .line 154
    return-void
.end method


# virtual methods
.method public final Code(Ll/This;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll/This;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    invoke-virtual {p1}, Ll/This;->P()Ll/of;

    move-result-object v0

    sget-object v1, Ll/of;->fk:Ll/of;

    if-ne v0, v1, :cond_0

    .line 158
    invoke-virtual {p1}, Ll/This;->nextNull()V

    .line 159
    const/4 v0, 0x0

    .line 181
    :goto_0
    return-object v0

    .line 162
    :cond_0
    iget-object v0, p0, Lj/Though$This;->dx:Li/From;

    invoke-interface {v0}, Li/From;->H()Ljava/lang/Object;

    move-result-object v1

    .line 165
    :try_start_0
    invoke-virtual {p1}, Ll/This;->beginObject()V

    .line 166
    :goto_1
    invoke-virtual {p1}, Ll/This;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-nez v0, :cond_1

    .line 180
    invoke-virtual {p1}, Ll/This;->endObject()V

    move-object v0, v1

    .line 181
    goto :goto_0

    .line 167
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ll/This;->nextName()Ljava/lang/String;

    move-result-object v0

    .line 168
    iget-object v2, p0, Lj/Though$This;->dN:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj/Though$thing;

    .line 169
    if-eqz v0, :cond_2

    iget-boolean v2, v0, Lj/Though$thing;->dP:Z

    if-nez v2, :cond_3

    .line 170
    :cond_2
    invoke-virtual {p1}, Ll/This;->skipValue()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 175
    :catch_0
    move-exception v0

    .line 176
    new-instance v1, Lg/II;

    invoke-direct {v1, v0}, Lg/II;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 172
    :cond_3
    :try_start_2
    invoke-virtual {v0, p1, v1}, Lj/Though$thing;->Code(Ll/This;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 177
    :catch_1
    move-exception v0

    .line 178
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final Code(Ll/darkness;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll/darkness;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    if-nez p2, :cond_0

    .line 186
    invoke-virtual {p1}, Ll/darkness;->ac()Ll/darkness;

    .line 202
    :goto_0
    return-void

    .line 190
    :cond_0
    invoke-virtual {p1}, Ll/darkness;->aa()Ll/darkness;

    .line 192
    :try_start_0
    iget-object v0, p0, Lj/Though$This;->dN:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_2

    .line 201
    invoke-virtual {p1}, Ll/darkness;->ab()Ll/darkness;

    goto :goto_0

    .line 192
    :cond_2
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj/Though$thing;

    .line 193
    iget-boolean v2, v0, Lj/Though$thing;->dO:Z

    if-eqz v2, :cond_1

    .line 194
    iget-object v2, v0, Lj/Though$thing;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ll/darkness;->f(Ljava/lang/String;)Ll/darkness;

    .line 195
    invoke-virtual {v0, p1, p2}, Lj/Though$thing;->Code(Ll/darkness;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 199
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
