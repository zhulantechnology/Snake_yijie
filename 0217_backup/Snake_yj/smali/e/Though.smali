.class public Le/Though;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/Though$This;,
        Le/Though$thing;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final bh:Le/thing$This;

.field public final bi:Le/there;

.field public bj:Z

.field public final result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Le/there;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Le/Though;->bj:Z

    .line 81
    iput-object v1, p0, Le/Though;->result:Ljava/lang/Object;

    .line 82
    iput-object v1, p0, Le/Though;->bh:Le/thing$This;

    .line 83
    iput-object p1, p0, Le/Though;->bi:Le/there;

    .line 84
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Le/thing$This;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Le/thing$This;",
            ")V"
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Le/Though;->bj:Z

    .line 75
    iput-object p1, p0, Le/Though;->result:Ljava/lang/Object;

    .line 76
    iput-object p2, p0, Le/Though;->bh:Le/thing$This;

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Le/Though;->bi:Le/there;

    .line 78
    return-void
.end method

.method public static Code(Ljava/lang/Object;Le/thing$This;)Le/Though;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Le/thing$This;",
            ")",
            "Le/Though",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Le/Though;

    invoke-direct {v0, p0, p1}, Le/Though;-><init>(Ljava/lang/Object;Le/thing$This;)V

    return-object v0
.end method

.method public static Code(Landroid/content/Context;Lf/acknowledge;)Le/i;
    .locals 5

    .prologue
    .line 43
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "volley"

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 45
    const-string v0, "volley/0"

    .line 47
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 49
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 53
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-lt v1, v3, :cond_0

    .line 55
    new-instance v0, Lf/mine;

    invoke-direct {v0}, Lf/mine;-><init>()V

    .line 63
    :goto_1
    new-instance v1, Lf/This;

    invoke-direct {v1, v0}, Lf/This;-><init>(Lf/acknowledge;)V

    .line 65
    new-instance v0, Le/i;

    new-instance v3, Lf/darkness;

    invoke-direct {v3, v2}, Lf/darkness;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v3, v1}, Le/i;-><init>(Le/thing;Le/acknowledge;)V

    .line 66
    invoke-virtual {v0}, Le/i;->start()V

    .line 68
    return-object v0

    .line 59
    :cond_0
    new-instance v1, Lf/I;

    invoke-static {v0}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    invoke-direct {v1, v0}, Lf/I;-><init>(Lorg/apache/http/client/HttpClient;)V

    move-object v0, v1

    goto :goto_1

    .line 50
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static Z(Le/there;)Le/Though;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Le/there;",
            ")",
            "Le/Though",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 51
    new-instance v0, Le/Though;

    invoke-direct {v0, p0}, Le/Though;-><init>(Le/there;)V

    return-object v0
.end method
