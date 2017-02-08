.class final Lcom/snowfish/cn/ganga/offline/a/j;
.super Ljava/lang/Object;
.source "SFUtils.java"


# instance fields
.field private a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    if-ne p1, v6, :cond_1

    const-string v0, "iphonesubinfo2"

    .line 152
    :goto_0
    :try_start_0
    const-string v1, "android.os.ServiceManager"

    .line 151
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 153
    const-string v2, "getService"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    .line 152
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 155
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 156
    const/4 v2, 0x0

    .line 157
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 156
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 159
    if-nez v0, :cond_0

    if-ne p1, v6, :cond_0

    .line 160
    const/4 v0, 0x0

    .line 161
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "iphonesubinfo1"

    aput-object v4, v2, v3

    .line 160
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 163
    :cond_0
    if-nez v0, :cond_2

    .line 176
    :goto_1
    return-void

    .line 149
    :cond_1
    const-string v0, "iphonesubinfo"

    goto :goto_0

    .line 168
    :cond_2
    :try_start_1
    const-string v1, "com.android.internal.telephony.IPhoneSubInfo$Stub"

    .line 167
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 169
    const-string v2, "asInterface"

    .line 170
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/os/IBinder;

    aput-object v5, v3, v4

    .line 169
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 172
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 173
    const/4 v2, 0x0

    .line 174
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 173
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/snowfish/cn/ganga/offline/a/j;->a:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 176
    :catch_0
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public final varargs a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 181
    iget-object v1, p0, Lcom/snowfish/cn/ganga/offline/a/j;->a:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 189
    :goto_0
    return-object v0

    .line 185
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/snowfish/cn/ganga/offline/a/j;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 186
    if-nez p2, :cond_1

    const/4 v2, 0x0

    new-array p2, v2, [Ljava/lang/Class;

    .line 185
    :cond_1
    invoke-virtual {v1, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 187
    iget-object v2, p0, Lcom/snowfish/cn/ganga/offline/a/j;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 189
    :catch_0
    move-exception v1

    goto :goto_0
.end method
