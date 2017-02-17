.class public abstract Lg/name;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final B(Ljava/lang/Object;)Lg/madness;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lg/madness;"
        }
    .end annotation

    .prologue
    .line 229
    :try_start_0
    new-instance v0, Lj/From;

    invoke-direct {v0}, Lj/From;-><init>()V

    .line 230
    invoke-virtual {p0, v0, p1}, Lg/name;->Code(Ll/darkness;Ljava/lang/Object;)V

    .line 231
    invoke-virtual {v0}, Lj/From;->U()Lg/madness;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 232
    :catch_0
    move-exception v0

    .line 233
    new-instance v1, Lg/yet;

    invoke-direct {v1, v0}, Lg/yet;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public abstract Code(Ll/This;)Ljava/lang/Object;
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
.end method

.method public abstract Code(Ll/darkness;Ljava/lang/Object;)V
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
.end method
