.class final Lg/a$This;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/That;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "This"
.end annotation


# instance fields
.field private final cA:Z

.field private final cB:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final cu:Lg/Hamlet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/Hamlet",
            "<*>;"
        }
    .end annotation
.end field

.field private final cv:Lg/be;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/be",
            "<*>;"
        }
    .end annotation
.end field

.field private final cz:Lk/This;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/This",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method synthetic constructor <init>(Ljava/lang/Object;Lk/This;ZLjava/lang/Class;)V
    .locals 6

    .prologue
    .line 115
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lg/a$This;-><init>(Ljava/lang/Object;Lk/This;ZLjava/lang/Class;B)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Lk/This;ZLjava/lang/Class;B)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lk/This",
            "<*>;Z",
            "Ljava/lang/Class",
            "<*>;B)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    instance-of v0, p1, Lg/Hamlet;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 118
    check-cast v0, Lg/Hamlet;

    .line 117
    :goto_0
    iput-object v0, p0, Lg/a$This;->cu:Lg/Hamlet;

    .line 120
    instance-of v0, p1, Lg/be;

    if-eqz v0, :cond_1

    .line 121
    check-cast p1, Lg/be;

    .line 120
    :goto_1
    iput-object p1, p0, Lg/a$This;->cv:Lg/be;

    .line 123
    iget-object v0, p0, Lg/a$This;->cu:Lg/Hamlet;

    if-nez v0, :cond_2

    iget-object v0, p0, Lg/a$This;->cv:Lg/be;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_2
    invoke-static {v0}, Le/this;->Code(Z)V

    .line 124
    iput-object p2, p0, Lg/a$This;->cz:Lk/This;

    .line 125
    iput-boolean p3, p0, Lg/a$This;->cA:Z

    .line 126
    iput-object p4, p0, Lg/a$This;->cB:Ljava/lang/Class;

    .line 127
    return-void

    :cond_0
    move-object v0, v1

    .line 119
    goto :goto_0

    :cond_1
    move-object p1, v1

    .line 122
    goto :goto_1

    .line 123
    :cond_2
    const/4 v0, 0x1

    goto :goto_2
.end method


# virtual methods
.method public final Code(Lg/Tempest;Lk/This;)Lg/name;
    .locals 6
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
    .line 131
    iget-object v0, p0, Lg/a$This;->cz:Lk/This;

    if-eqz v0, :cond_2

    .line 132
    iget-object v0, p0, Lg/a$This;->cz:Lk/This;

    invoke-virtual {v0, p2}, Lk/This;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lg/a$This;->cA:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/a$This;->cz:Lk/This;

    invoke-virtual {v0}, Lk/This;->ae()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p2}, Lk/This;->getRawType()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 134
    :goto_0
    if-eqz v0, :cond_3

    .line 135
    new-instance v0, Lg/a;

    iget-object v1, p0, Lg/a$This;->cu:Lg/Hamlet;

    .line 136
    iget-object v2, p0, Lg/a$This;->cv:Lg/be;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p0

    .line 135
    invoke-direct/range {v0 .. v5}, Lg/a;-><init>(Lg/Hamlet;Lg/be;Lg/Tempest;Lk/This;Lg/That;)V

    .line 136
    :goto_1
    return-object v0

    .line 132
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 133
    :cond_2
    iget-object v0, p0, Lg/a$This;->cB:Ljava/lang/Class;

    invoke-virtual {p2}, Lk/This;->getRawType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    goto :goto_0

    .line 137
    :cond_3
    const/4 v0, 0x0

    .line 134
    goto :goto_1
.end method
