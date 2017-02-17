.class public final Le/This;
.super Le/there;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Le/there;-><init>()V

    return-void
.end method

.method public constructor <init>(Ld/acknowledge;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Le/there;-><init>(Ld/acknowledge;)V

    .line 40
    return-void
.end method


# virtual methods
.method public final getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    invoke-super {p0}, Le/there;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
