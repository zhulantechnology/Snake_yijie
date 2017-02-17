.class public Lcn/bmob/v3/datatype/BmobDate;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private __type:Ljava/lang/String;

.field private iso:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Date;)V
    .locals 2

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, "Date"

    iput-object v0, p0, Lcn/bmob/v3/datatype/BmobDate;->__type:Ljava/lang/String;

    .line 12
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/bmob/v3/datatype/BmobDate;->iso:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcn/bmob/v3/datatype/BmobDate;->iso:Ljava/lang/String;

    return-object v0
.end method
