.class final Le/is$This$This;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/is$This;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "This"
.end annotation


# instance fields
.field public final bs:J

.field public final name:Ljava/lang/String;

.field public final time:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Le/is$This$This;->name:Ljava/lang/String;

    .line 116
    iput-wide p2, p0, Le/is$This$This;->bs:J

    .line 117
    iput-wide p4, p0, Le/is$This$This;->time:J

    .line 118
    return-void
.end method
