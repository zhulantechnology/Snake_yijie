.class public final La/a/d;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;)La/a/an;
    .locals 14

    const/4 v1, 0x0

    const-wide/16 v12, 0x0

    :try_start_0
    new-instance v2, La/a/an;

    invoke-direct {v2}, La/a/an;-><init>()V

    const-string v0, "android.net.TrafficStats"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const-string v4, "getUidRxBytes"

    invoke-virtual {v0, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v3, v5

    const-string v5, "getUidTxBytes"

    invoke-virtual {v0, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v6, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, -0x1

    if-ne v6, v0, :cond_1

    move-object v0, v1

    check-cast v0, [J

    :goto_0
    const/4 v3, 0x0

    :try_start_1
    aget-wide v4, v0, v3

    cmp-long v3, v4, v12

    if-lez v3, :cond_0

    const/4 v3, 0x1

    aget-wide v4, v0, v3

    cmp-long v3, v4, v12

    if-gtz v3, :cond_2

    :cond_0
    :goto_1
    return-object v1

    :cond_1
    const/4 v0, 0x2

    new-array v3, v0, [J

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v0, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v8, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    aput-wide v8, v3, v7

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v4

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    aput-wide v6, v3, v4

    move-object v0, v3

    goto :goto_0

    :cond_2
    const-string v3, "umeng_general_config"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "uptr"

    const-wide/16 v6, -0x1

    invoke-interface {v3, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v6, "dntr"

    const-wide/16 v8, -0x1

    invoke-interface {v3, v6, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v8, "uptr"

    const/4 v9, 0x1

    aget-wide v10, v0, v9

    invoke-interface {v3, v8, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v8, "dntr"

    const/4 v9, 0x0

    aget-wide v10, v0, v9

    invoke-interface {v3, v8, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    cmp-long v3, v4, v12

    if-lez v3, :cond_0

    cmp-long v3, v6, v12

    if-lez v3, :cond_0

    const/4 v3, 0x0

    const/4 v8, 0x0

    aget-wide v8, v0, v8

    sub-long v6, v8, v6

    aput-wide v6, v0, v3

    const/4 v3, 0x1

    const/4 v6, 0x1

    aget-wide v6, v0, v6

    sub-long v4, v6, v4

    aput-wide v4, v0, v3

    const/4 v3, 0x0

    aget-wide v4, v0, v3

    cmp-long v3, v4, v12

    if-lez v3, :cond_0

    const/4 v3, 0x1

    aget-wide v4, v0, v3

    cmp-long v3, v4, v12

    if-lez v3, :cond_0

    const/4 v3, 0x0

    aget-wide v4, v0, v3

    long-to-int v3, v4

    invoke-virtual {v2, v3}, La/a/an;->b(I)La/a/an;

    const/4 v3, 0x1

    aget-wide v4, v0, v3

    long-to-int v0, v4

    invoke-virtual {v2, v0}, La/a/an;->a(I)La/a/an;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v2

    goto/16 :goto_1

    :catch_0
    move-exception v0

    const-string v0, "MobclickAgent"

    const-string v2, "sdk less than 2.2 has get no traffic"

    invoke-static {v0, v2}, La/a/ar;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method
