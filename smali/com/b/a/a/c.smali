.class public final Lcom/b/a/a/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/a/c$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field private c:Landroid/content/Context;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private h:Lcom/b/a/a/c$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "um_g_cache"

    iput-object v0, p0, Lcom/b/a/a/c;->d:Ljava/lang/String;

    const-string v0, "single_level"

    iput-object v0, p0, Lcom/b/a/a/c;->e:Ljava/lang/String;

    const-string v0, "stat_player_level"

    iput-object v0, p0, Lcom/b/a/a/c;->f:Ljava/lang/String;

    const-string v0, "stat_game_level"

    iput-object v0, p0, Lcom/b/a/a/c;->g:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/a/c;->h:Lcom/b/a/a/c$a;

    iput-object p1, p0, Lcom/b/a/a/c;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/b/a/a/c;->h:Lcom/b/a/a/c$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/a/c;->h:Lcom/b/a/a/c$a;

    invoke-virtual {v0}, Lcom/b/a/a/c$a;->a()V

    iget-object v0, p0, Lcom/b/a/a/c;->c:Landroid/content/Context;

    const-string v1, "um_g_cache"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "single_level"

    iget-object v2, p0, Lcom/b/a/a/c;->h:Lcom/b/a/a/c$a;

    invoke-static {v2}, La/a/cy;->a(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "stat_player_level"

    iget-object v2, p0, Lcom/b/a/a/c;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "stat_game_level"

    iget-object v2, p0, Lcom/b/a/a/c;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/b/a/a/c;->c:Landroid/content/Context;

    const-string v1, "um_g_cache"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v0, "single_level"

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, La/a/cy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/a/c$a;

    iput-object v0, p0, Lcom/b/a/a/c;->h:Lcom/b/a/a/c$a;

    iget-object v0, p0, Lcom/b/a/a/c;->h:Lcom/b/a/a/c$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/a/c;->h:Lcom/b/a/a/c$a;

    invoke-virtual {v0}, Lcom/b/a/a/c$a;->b()V

    :cond_0
    iget-object v0, p0, Lcom/b/a/a/c;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "stat_player_level"

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/a/c;->b:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/b/a/a/c;->a:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, "stat_game_level"

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/a/c;->a:Ljava/lang/String;

    :cond_2
    return-void
.end method
