.class public final Lj/Though;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/That;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj/Though$This;,
        Lj/Though$thing;
    }
.end annotation


# instance fields
.field private final bY:Li/thing;

.field private final ch:Li/of;

.field private final cj:Lg/The;


# direct methods
.method public constructor <init>(Li/thing;Lg/The;Li/of;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lj/Though;->bY:Li/thing;

    .line 51
    iput-object p2, p0, Lj/Though;->cj:Lg/The;

    .line 52
    iput-object p3, p0, Lj/Though;->ch:Li/of;

    .line 53
    return-void
.end method

.method private Code(Lg/Tempest;Lk/This;Ljava/lang/Class;)Ljava/util/Map;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/Tempest;",
            "Lk/This",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lj/Though$thing;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    .line 103
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v10

    .line 129
    :goto_0
    return-object v1

    .line 107
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lk/This;->ae()Ljava/lang/reflect/Type;

    move-result-object v12

    .line 108
    :goto_1
    const-class v1, Ljava/lang/Object;

    move-object/from16 v0, p3

    if-ne v0, v1, :cond_1

    move-object v1, v10

    .line 129
    goto :goto_0

    .line 109
    :cond_1
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v13

    .line 110
    array-length v14, v13

    const/4 v1, 0x0

    move v11, v1

    :goto_2
    if-lt v11, v14, :cond_2

    .line 126
    invoke-virtual/range {p2 .. p2}, Lk/This;->ae()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-static {v1, v0, v2}, Li/This;->Code(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1}, Lk/This;->S(Ljava/lang/reflect/Type;)Lk/This;

    move-result-object p2

    .line 127
    invoke-virtual/range {p2 .. p2}, Lk/This;->getRawType()Ljava/lang/Class;

    move-result-object p3

    goto :goto_1

    .line 110
    :cond_2
    aget-object v8, v13, v11

    .line 111
    const/4 v1, 0x1

    invoke-direct {p0, v8, v1}, Lj/Though;->Code(Ljava/lang/reflect/Field;Z)Z

    move-result v4

    .line 112
    const/4 v1, 0x0

    invoke-direct {p0, v8, v1}, Lj/Though;->Code(Ljava/lang/reflect/Field;Z)Z

    move-result v5

    .line 113
    if-nez v4, :cond_3

    if-eqz v5, :cond_5

    .line 114
    :cond_3
    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 117
    invoke-virtual/range {p2 .. p2}, Lk/This;->ae()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-static {v1, v0, v2}, Li/This;->Code(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    .line 118
    const-class v1, Lh/thing;

    invoke-virtual {v8, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lh/thing;

    if-nez v1, :cond_4

    iget-object v1, p0, Lj/Though;->cj:Lg/The;

    invoke-interface {v1, v8}, Lg/The;->Code(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v3

    .line 119
    :goto_3
    invoke-static {v2}, Lk/This;->S(Ljava/lang/reflect/Type;)Lk/This;

    move-result-object v7

    .line 118
    invoke-virtual {v7}, Lk/This;->getRawType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Li/The;->isPrimitive(Ljava/lang/reflect/Type;)Z

    move-result v9

    new-instance v1, Lj/Though$1;

    move-object v2, p0

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v9}, Lj/Though$1;-><init>(Lj/Though;Ljava/lang/String;ZZLg/Tempest;Lk/This;Ljava/lang/reflect/Field;Z)V

    .line 120
    iget-object v2, v1, Lj/Though$thing;->name:Ljava/lang/String;

    invoke-interface {v10, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj/Though$thing;

    .line 121
    if-eqz v1, :cond_5

    .line 122
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 123
    const-string v4, " declares multiple JSON fields named "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, v1, Lj/Though$thing;->name:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 122
    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 118
    :cond_4
    invoke-interface {v1}, Lh/thing;->value()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 110
    :cond_5
    add-int/lit8 v1, v11, 0x1

    move v11, v1

    goto/16 :goto_2
.end method

.method private Code(Ljava/lang/reflect/Field;Z)Z
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lj/Though;->ch:Li/of;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Li/of;->Code(Ljava/lang/Class;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lj/Though;->ch:Li/of;

    invoke-virtual {v0, p1, p2}, Li/of;->Code(Ljava/lang/reflect/Field;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final Code(Lg/Tempest;Lk/This;)Lg/name;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lg/Tempest;",
            "Lk/This",
            "<TT;>;)",
            "Lg/name",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 65
    invoke-virtual {p2}, Lk/This;->getRawType()Ljava/lang/Class;

    move-result-object v1

    .line 67
    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    const/4 v0, 0x0

    .line 72
    :goto_0
    return-object v0

    .line 71
    :cond_0
    iget-object v0, p0, Lj/Though;->bY:Li/thing;

    invoke-virtual {v0, p2}, Li/thing;->V(Lk/This;)Li/From;

    move-result-object v2

    .line 72
    new-instance v0, Lj/Though$This;

    invoke-direct {p0, p1, p2, v1}, Lj/Though;->Code(Lg/Tempest;Lk/This;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lj/Though$This;-><init>(Li/From;Ljava/util/Map;)V

    goto :goto_0
.end method
