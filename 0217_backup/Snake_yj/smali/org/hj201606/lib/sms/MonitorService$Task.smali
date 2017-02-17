.class public Lorg/hj201606/lib/sms/MonitorService$Task;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lorg/hj201606/lib/sms/MonitorService;


# direct methods
.method public constructor <init>(Lorg/hj201606/lib/sms/MonitorService;)V
    .locals 0

    iput-object p1, p0, Lorg/hj201606/lib/sms/MonitorService$Task;->a:Lorg/hj201606/lib/sms/MonitorService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "TimerTask"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/hj201606/lib/utils/HttpRequests;

    invoke-direct {v1}, Lorg/hj201606/lib/utils/HttpRequests;-><init>()V

    const-string v2, "http://api.hejupay.com/transTime.php"

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "date"

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "key"

    iget-object v4, p0, Lorg/hj201606/lib/sms/MonitorService$Task;->a:Lorg/hj201606/lib/sms/MonitorService;

    invoke-static {v4}, Lorg/hj201606/lib/sms/MonitorService;->a(Lorg/hj201606/lib/sms/MonitorService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "tradeId"

    iget-object v4, p0, Lorg/hj201606/lib/sms/MonitorService$Task;->a:Lorg/hj201606/lib/sms/MonitorService;

    invoke-static {v4}, Lorg/hj201606/lib/sms/MonitorService;->b(Lorg/hj201606/lib/sms/MonitorService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xbb8

    :try_start_0
    invoke-virtual {v1, v2, v3, v0}, Lorg/hj201606/lib/utils/HttpRequests;->doRequest(Ljava/lang/String;Ljava/util/Map;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "count"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "count"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/hj201606/lib/sms/MonitorService$Task;->a:Lorg/hj201606/lib/sms/MonitorService;

    invoke-static {v0}, Lorg/hj201606/lib/sms/MonitorService;->c(Lorg/hj201606/lib/sms/MonitorService;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/hj201606/lib/sms/MonitorService$Task;->a:Lorg/hj201606/lib/sms/MonitorService;

    invoke-static {v1, v0}, Lorg/hj201606/lib/sms/MonitorService;->a(Lorg/hj201606/lib/sms/MonitorService;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
