.class final Lj/rose$1;
.super Lg/name;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj/rose;->Code(Lg/Tempest;Lk/This;)Lg/name;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg/name",
        "<",
        "Ljava/sql/Timestamp;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic eK:Lg/name;


# direct methods
.method constructor <init>(Lj/rose;Lg/name;)V
    .locals 0

    .prologue
    .line 1
    iput-object p2, p0, Lj/rose$1;->eK:Lg/name;

    .line 524
    invoke-direct {p0}, Lg/name;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic Code(Ll/This;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1
    iget-object v0, p0, Lj/rose$1;->eK:Lg/name;

    invoke-virtual {v0, p1}, Lg/name;->Code(Ll/This;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/sql/Timestamp;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final bridge synthetic Code(Ll/darkness;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1
    check-cast p2, Ljava/sql/Timestamp;

    iget-object v0, p0, Lj/rose$1;->eK:Lg/name;

    invoke-virtual {v0, p1, p2}, Lg/name;->Code(Ll/darkness;Ljava/lang/Object;)V

    return-void
.end method
