.class final Lj/Though$1;
.super Lj/Though$thing;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj/Though;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private dJ:Lg/name;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/name",
            "<*>;"
        }
    .end annotation
.end field

.field private final synthetic dK:Lg/Tempest;

.field private final synthetic dL:Lk/This;

.field private final synthetic dM:Z

.field private final synthetic val$field:Ljava/lang/reflect/Field;


# direct methods
.method constructor <init>(Lj/Though;Ljava/lang/String;ZZLg/Tempest;Lk/This;Ljava/lang/reflect/Field;Z)V
    .locals 1

    .prologue
    .line 1
    iput-object p5, p0, Lj/Though$1;->dK:Lg/Tempest;

    iput-object p6, p0, Lj/Though$1;->dL:Lk/This;

    iput-object p7, p0, Lj/Though$1;->val$field:Ljava/lang/reflect/Field;

    iput-boolean p8, p0, Lj/Though$1;->dM:Z

    .line 81
    invoke-direct {p0, p2, p3, p4}, Lj/Though$thing;-><init>(Ljava/lang/String;ZZ)V

    .line 82
    invoke-virtual {p5, p6}, Lg/Tempest;->Code(Lk/This;)Lg/name;

    move-result-object v0

    iput-object v0, p0, Lj/Though$1;->dJ:Lg/name;

    return-void
.end method


# virtual methods
.method final Code(Ll/This;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lj/Though$1;->dJ:Lg/name;

    invoke-virtual {v0, p1}, Lg/name;->Code(Ll/This;)Ljava/lang/Object;

    move-result-object v0

    .line 94
    if-nez v0, :cond_0

    iget-boolean v1, p0, Lj/Though$1;->dM:Z

    if-nez v1, :cond_1

    .line 95
    :cond_0
    iget-object v1, p0, Lj/Though$1;->val$field:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p2, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 97
    :cond_1
    return-void
.end method

.method final Code(Ll/darkness;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lj/Though$1;->val$field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 88
    new-instance v1, Lj/there;

    iget-object v2, p0, Lj/Though$1;->dK:Lg/Tempest;

    iget-object v3, p0, Lj/Though$1;->dJ:Lg/name;

    iget-object v4, p0, Lj/Though$1;->dL:Lk/This;

    invoke-virtual {v4}, Lk/This;->ae()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lj/there;-><init>(Lg/Tempest;Lg/name;Ljava/lang/reflect/Type;)V

    .line 89
    invoke-virtual {v1, p1, v0}, Lg/name;->Code(Ll/darkness;Ljava/lang/Object;)V

    .line 90
    return-void
.end method
