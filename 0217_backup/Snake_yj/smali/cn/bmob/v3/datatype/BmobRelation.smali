.class public Lcn/bmob/v3/datatype/BmobRelation;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private __op:Ljava/lang/String;

.field private objects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/bmob/v3/datatype/BmobPointer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string v0, "AddRelation"

    iput-object v0, p0, Lcn/bmob/v3/datatype/BmobRelation;->__op:Ljava/lang/String;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/bmob/v3/datatype/BmobRelation;->objects:Ljava/util/List;

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string v0, "AddRelation"

    iput-object v0, p0, Lcn/bmob/v3/datatype/BmobRelation;->__op:Ljava/lang/String;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/bmob/v3/datatype/BmobRelation;->objects:Ljava/util/List;

    .line 12
    iget-object v0, p0, Lcn/bmob/v3/datatype/BmobRelation;->objects:Ljava/util/List;

    new-instance v1, Lcn/bmob/v3/datatype/BmobPointer;

    invoke-direct {v1, p1}, Lcn/bmob/v3/datatype/BmobPointer;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 20
    iget-object v0, p0, Lcn/bmob/v3/datatype/BmobRelation;->objects:Ljava/util/List;

    new-instance v1, Lcn/bmob/v3/datatype/BmobPointer;

    invoke-direct {v1, p1}, Lcn/bmob/v3/datatype/BmobPointer;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    return-void
.end method

.method public getObjects()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcn/bmob/v3/datatype/BmobPointer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcn/bmob/v3/datatype/BmobRelation;->objects:Ljava/util/List;

    return-object v0
.end method

.method public isRemove(Z)V
    .locals 1

    .prologue
    .line 24
    if-eqz p1, :cond_0

    .line 25
    const-string v0, "RemoveRelation"

    iput-object v0, p0, Lcn/bmob/v3/datatype/BmobRelation;->__op:Ljava/lang/String;

    .line 27
    :cond_0
    return-void
.end method

.method public setObjects(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/bmob/v3/datatype/BmobPointer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    iput-object p1, p0, Lcn/bmob/v3/datatype/BmobRelation;->objects:Ljava/util/List;

    .line 37
    return-void
.end method
