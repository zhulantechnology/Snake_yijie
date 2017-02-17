.class final Lcn/bmob/v3/datatype/BmobFile$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/bmob/v3/listener/XListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/bmob/v3/datatype/BmobFile;->upload(Landroid/content/Context;Lcn/bmob/v3/listener/UploadFileListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic H:Lcn/bmob/v3/datatype/BmobFile;

.field private final synthetic J:Lcn/bmob/v3/listener/UploadFileListener;


# direct methods
.method constructor <init>(Lcn/bmob/v3/datatype/BmobFile;Lcn/bmob/v3/listener/UploadFileListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/bmob/v3/datatype/BmobFile$1;->H:Lcn/bmob/v3/datatype/BmobFile;

    iput-object p2, p0, Lcn/bmob/v3/datatype/BmobFile$1;->J:Lcn/bmob/v3/listener/UploadFileListener;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcn/bmob/v3/datatype/BmobFile$1;->J:Lcn/bmob/v3/listener/UploadFileListener;

    invoke-interface {v0, p1}, Lcn/bmob/v3/listener/UploadFileListener;->onFailure(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public final onSuccess(Lg/madness;)V
    .locals 3

    .prologue
    .line 58
    iget-object v0, p0, Lcn/bmob/v3/datatype/BmobFile$1;->H:Lcn/bmob/v3/datatype/BmobFile;

    invoke-virtual {p1}, Lg/madness;->x()Lg/is;

    move-result-object v1

    const-string v2, "r"

    invoke-virtual {v1, v2}, Lg/is;->c(Ljava/lang/String;)Lg/madness;

    move-result-object v1

    invoke-virtual {v1}, Lg/madness;->x()Lg/is;

    move-result-object v1

    const-string v2, "r"

    invoke-virtual {v1, v2}, Lg/is;->c(Ljava/lang/String;)Lg/madness;

    move-result-object v1

    invoke-virtual {v1}, Lg/madness;->x()Lg/is;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v1, v2}, Lg/is;->c(Ljava/lang/String;)Lg/madness;

    move-result-object v1

    invoke-virtual {v1}, Lg/madness;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/bmob/v3/datatype/BmobFile;->Code(Lcn/bmob/v3/datatype/BmobFile;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcn/bmob/v3/datatype/BmobFile$1;->H:Lcn/bmob/v3/datatype/BmobFile;

    invoke-virtual {p1}, Lg/madness;->x()Lg/is;

    move-result-object v1

    const-string v2, "r"

    invoke-virtual {v1, v2}, Lg/is;->c(Ljava/lang/String;)Lg/madness;

    move-result-object v1

    invoke-virtual {v1}, Lg/madness;->x()Lg/is;

    move-result-object v1

    const-string v2, "r"

    invoke-virtual {v1, v2}, Lg/is;->c(Ljava/lang/String;)Lg/madness;

    move-result-object v1

    invoke-virtual {v1}, Lg/madness;->x()Lg/is;

    move-result-object v1

    const-string v2, "filename"

    invoke-virtual {v1, v2}, Lg/is;->c(Ljava/lang/String;)Lg/madness;

    move-result-object v1

    invoke-virtual {v1}, Lg/madness;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/bmob/v3/datatype/BmobFile;->V(Lcn/bmob/v3/datatype/BmobFile;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcn/bmob/v3/datatype/BmobFile$1;->H:Lcn/bmob/v3/datatype/BmobFile;

    invoke-virtual {p1}, Lg/madness;->x()Lg/is;

    move-result-object v1

    const-string v2, "r"

    invoke-virtual {v1, v2}, Lg/is;->c(Ljava/lang/String;)Lg/madness;

    move-result-object v1

    invoke-virtual {v1}, Lg/madness;->x()Lg/is;

    move-result-object v1

    const-string v2, "r"

    invoke-virtual {v1, v2}, Lg/is;->c(Ljava/lang/String;)Lg/madness;

    move-result-object v1

    invoke-virtual {v1}, Lg/madness;->x()Lg/is;

    move-result-object v1

    const-string v2, "group"

    invoke-virtual {v1, v2}, Lg/is;->c(Ljava/lang/String;)Lg/madness;

    move-result-object v1

    invoke-virtual {v1}, Lg/madness;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/bmob/v3/datatype/BmobFile;->I(Lcn/bmob/v3/datatype/BmobFile;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcn/bmob/v3/datatype/BmobFile$1;->J:Lcn/bmob/v3/listener/UploadFileListener;

    invoke-interface {v0}, Lcn/bmob/v3/listener/UploadFileListener;->onSuccess()V

    .line 62
    return-void
.end method
