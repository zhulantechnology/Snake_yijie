.class abstract Lj/Though$thing;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj/Though;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "thing"
.end annotation


# instance fields
.field final dO:Z

.field final dP:Z

.field final name:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZZ)V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-object p1, p0, Lj/Though$thing;->name:Ljava/lang/String;

    .line 139
    iput-boolean p2, p0, Lj/Though$thing;->dO:Z

    .line 140
    iput-boolean p3, p0, Lj/Though$thing;->dP:Z

    .line 141
    return-void
.end method


# virtual methods
.method abstract Code(Ll/This;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method

.method abstract Code(Ll/darkness;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method
