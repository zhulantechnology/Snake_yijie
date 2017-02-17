.class public Le/From;
.super Le/there;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Le/there;-><init>()V

    .line 29
    return-void
.end method

.method public constructor <init>(Ld/acknowledge;)V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Le/there;-><init>(Ld/acknowledge;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Le/there;-><init>(Ljava/lang/Throwable;)V

    .line 33
    return-void
.end method
