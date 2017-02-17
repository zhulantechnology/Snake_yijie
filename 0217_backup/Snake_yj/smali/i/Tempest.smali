.class final Li/Tempest;
.super Ljava/io/Writer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/Tempest$This;
    }
.end annotation


# instance fields
.field private final dn:Ljava/lang/Appendable;

.field private final do:Li/Tempest$This;


# direct methods
.method synthetic constructor <init>(Ljava/lang/Appendable;)V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Li/Tempest;-><init>(Ljava/lang/Appendable;B)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Appendable;B)V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 81
    new-instance v0, Li/Tempest$This;

    invoke-direct {v0}, Li/Tempest$This;-><init>()V

    iput-object v0, p0, Li/Tempest;->do:Li/Tempest$This;

    .line 84
    iput-object p1, p0, Li/Tempest;->dn:Ljava/lang/Appendable;

    .line 85
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method public final flush()V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method public final write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Li/Tempest;->dn:Ljava/lang/Appendable;

    int-to-char v1, p1

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 94
    return-void
.end method

.method public final write([CII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Li/Tempest;->do:Li/Tempest$This;

    iput-object p1, v0, Li/Tempest$This;->chars:[C

    .line 89
    iget-object v0, p0, Li/Tempest;->dn:Ljava/lang/Appendable;

    iget-object v1, p0, Li/Tempest;->do:Li/Tempest$This;

    add-int v2, p2, p3

    invoke-interface {v0, v1, p2, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    .line 90
    return-void
.end method
