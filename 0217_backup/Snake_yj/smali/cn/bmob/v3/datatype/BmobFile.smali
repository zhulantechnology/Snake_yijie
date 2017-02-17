.class public Lcn/bmob/v3/datatype/BmobFile;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static className:Ljava/lang/String;

.field static file:Ljava/io/File;

.field static maxBmobFileSize:I


# instance fields
.field private __type:Ljava/lang/String;

.field private filename:Ljava/lang/String;

.field private group:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/high16 v0, 0xa00000

    sput v0, Lcn/bmob/v3/datatype/BmobFile;->maxBmobFileSize:I

    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcn/bmob/v3/datatype/BmobFile;->className:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v0, p0, Lcn/bmob/v3/datatype/BmobFile;->filename:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcn/bmob/v3/datatype/BmobFile;->group:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcn/bmob/v3/datatype/BmobFile;->url:Ljava/lang/String;

    .line 30
    const-string v0, "File"

    iput-object v0, p0, Lcn/bmob/v3/datatype/BmobFile;->__type:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/bmob/v3/datatype/BmobFile;->className:Ljava/lang/String;

    .line 38
    sput-object p2, Lcn/bmob/v3/datatype/BmobFile;->file:Ljava/io/File;

    .line 39
    return-void
.end method

.method static synthetic Code(Lcn/bmob/v3/datatype/BmobFile;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcn/bmob/v3/datatype/BmobFile;->url:Ljava/lang/String;

    return-void
.end method

.method static synthetic I(Lcn/bmob/v3/datatype/BmobFile;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcn/bmob/v3/datatype/BmobFile;->group:Ljava/lang/String;

    return-void
.end method

.method static synthetic V(Lcn/bmob/v3/datatype/BmobFile;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcn/bmob/v3/datatype/BmobFile;->filename:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFileUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://file.bmob.cn/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/bmob/v3/datatype/BmobFile;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcn/bmob/v3/datatype/BmobFile;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getGroup()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcn/bmob/v3/datatype/BmobFile;->group:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcn/bmob/v3/datatype/BmobFile;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setFilename(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcn/bmob/v3/datatype/BmobFile;->filename:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setGroup(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcn/bmob/v3/datatype/BmobFile;->group:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcn/bmob/v3/datatype/BmobFile;->url:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public upload(Landroid/content/Context;Lcn/bmob/v3/listener/UploadFileListener;)V
    .locals 4

    .prologue
    .line 42
    sget-object v0, Lcn/bmob/v3/datatype/BmobFile;->className:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    const-string v0, "The operation data table name can\'t for empty."

    invoke-interface {p2, v0}, Lcn/bmob/v3/listener/UploadFileListener;->onFailure(Ljava/lang/String;)V

    .line 72
    :goto_0
    return-void

    .line 45
    :cond_0
    sget-object v0, Lcn/bmob/v3/datatype/BmobFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    sget v2, Lcn/bmob/v3/datatype/BmobFile;->maxBmobFileSize:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 46
    const-string v0, "BmobFile File size must be less than 10M."

    invoke-interface {p2, v0}, Lcn/bmob/v3/listener/UploadFileListener;->onFailure(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :cond_1
    sget-object v0, Lcn/bmob/v3/datatype/BmobFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 49
    const-string v0, "BmobFile File does not exist."

    invoke-interface {p2, v0}, Lcn/bmob/v3/listener/UploadFileListener;->onFailure(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :cond_2
    new-instance v0, Ld/darkness;

    new-instance v1, Lcn/bmob/v3/datatype/BmobFile$1;

    invoke-direct {v1, p0, p2}, Lcn/bmob/v3/datatype/BmobFile$1;-><init>(Lcn/bmob/v3/datatype/BmobFile;Lcn/bmob/v3/listener/UploadFileListener;)V

    invoke-direct {v0, p1, v1}, Ld/darkness;-><init>(Landroid/content/Context;Lcn/bmob/v3/listener/XListener;)V

    .line 70
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcn/bmob/v3/datatype/BmobFile;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Ld/darkness;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
