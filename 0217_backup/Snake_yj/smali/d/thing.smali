.class public Ld/thing;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field ab:Landroid/location/LocationManager;

.field ac:Landroid/location/Location;

.field private ad:Ljava/lang/String;

.field private ae:Ljava/lang/String;

.field private af:Ljava/lang/String;

.field private ag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, "network"

    iput-object v0, p0, Ld/thing;->ad:Ljava/lang/String;

    .line 19
    const-string v0, "gps"

    iput-object v0, p0, Ld/thing;->ae:Ljava/lang/String;

    .line 42
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Ld/thing;->ab:Landroid/location/LocationManager;

    .line 43
    iget-object v0, p0, Ld/thing;->ad:Ljava/lang/String;

    invoke-direct {p0, v0}, Ld/thing;->I(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    iget-object v0, p0, Ld/thing;->ac:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ld/thing;->af:Ljava/lang/String;

    .line 45
    iget-object v0, p0, Ld/thing;->ac:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ld/thing;->ag:Ljava/lang/String;

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    iget-object v0, p0, Ld/thing;->ae:Ljava/lang/String;

    invoke-direct {p0, v0}, Ld/thing;->I(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Ld/thing;->ac:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ld/thing;->af:Ljava/lang/String;

    .line 48
    iget-object v0, p0, Ld/thing;->ac:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ld/thing;->ag:Ljava/lang/String;

    goto :goto_0
.end method

.method public static Code(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 39
    new-instance v0, Lg/Tempest;

    invoke-direct {v0}, Lg/Tempest;-><init>()V

    .line 40
    invoke-virtual {v0, p0, p1}, Lg/Tempest;->V(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static I(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 44
    new-instance v0, Lg/V;

    invoke-direct {v0}, Lg/V;-><init>()V

    .line 47
    const-class v1, Lcn/bmob/v3/BmobACL;

    new-instance v2, Ld/thing$1;

    invoke-direct {v2}, Ld/thing$1;-><init>()V

    invoke-virtual {v0, v1, v2}, Lg/V;->Code(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lg/V;

    .line 57
    const-class v1, Lcn/bmob/v3/datatype/BmobRelation;

    new-instance v2, Ld/thing$2;

    invoke-direct {v2}, Ld/thing$2;-><init>()V

    invoke-virtual {v0, v1, v2}, Lg/V;->Code(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lg/V;

    .line 69
    invoke-virtual {v0}, Lg/V;->m()Lg/Tempest;

    move-result-object v0

    .line 70
    invoke-virtual {v0, p0}, Lg/Tempest;->C(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private I(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Ld/thing;->ab:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 67
    if-eqz v0, :cond_0

    .line 68
    iput-object v0, p0, Ld/thing;->ac:Landroid/location/Location;

    .line 69
    const/4 v0, 0x1

    .line 71
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public I()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Ld/thing;->af:Ljava/lang/String;

    return-object v0
.end method

.method public Z()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Ld/thing;->ag:Ljava/lang/String;

    return-object v0
.end method
