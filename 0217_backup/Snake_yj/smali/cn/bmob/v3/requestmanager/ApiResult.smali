.class public Lcn/bmob/v3/requestmanager/ApiResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public data:Lg/madness;

.field public result:Lcn/bmob/v3/requestmanager/Result;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lg/madness;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcn/bmob/v3/requestmanager/ApiResult;->data:Lg/madness;

    return-object v0
.end method

.method public getResult()Lcn/bmob/v3/requestmanager/Result;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcn/bmob/v3/requestmanager/ApiResult;->result:Lcn/bmob/v3/requestmanager/Result;

    return-object v0
.end method

.method public setData(Lg/madness;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcn/bmob/v3/requestmanager/ApiResult;->data:Lg/madness;

    .line 41
    return-void
.end method

.method public setResult(Lcn/bmob/v3/requestmanager/Result;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcn/bmob/v3/requestmanager/ApiResult;->result:Lcn/bmob/v3/requestmanager/Result;

    .line 49
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "result: code="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/bmob/v3/requestmanager/ApiResult;->result:Lcn/bmob/v3/requestmanager/Result;

    iget v1, v1, Lcn/bmob/v3/requestmanager/Result;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/bmob/v3/requestmanager/ApiResult;->result:Lcn/bmob/v3/requestmanager/Result;

    iget-object v1, v1, Lcn/bmob/v3/requestmanager/Result;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/bmob/v3/requestmanager/ApiResult;->data:Lg/madness;

    invoke-virtual {v1}, Lg/madness;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
