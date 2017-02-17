.class final Lcom/snowfish/a/a/s/a;
.super Lcom/snowfish/a/a/s/IABGSvc$Stub;
.source "ABGSvc.java"


# instance fields
.field private synthetic a:Lcom/snowfish/a/a/s/ABGSvc;


# direct methods
.method constructor <init>(Lcom/snowfish/a/a/s/ABGSvc;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/snowfish/a/a/s/a;->a:Lcom/snowfish/a/a/s/ABGSvc;

    .line 58
    invoke-direct {p0}, Lcom/snowfish/a/a/s/IABGSvc$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final call([B)[B
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/snowfish/a/a/s/a;->a:Lcom/snowfish/a/a/s/ABGSvc;

    invoke-static {v0, p1}, Lcom/snowfish/a/a/s/ABGSvc;->a(Lcom/snowfish/a/a/s/ABGSvc;[B)[B

    move-result-object v0

    return-object v0
.end method
