.class Lcom/baidu/mobstat/b;
.super Ljava/lang/Object;


# static fields
.field static a:Lcom/baidu/mobstat/c;

.field private static c:Lorg/json/JSONObject;

.field private static i:Lcom/baidu/mobstat/b;


# instance fields
.field private b:I

.field private d:Lorg/json/JSONArray;

.field private e:Lorg/json/JSONArray;

.field private f:Lorg/json/JSONArray;

.field private g:Lorg/json/JSONArray;

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/baidu/mobstat/c;

    invoke-direct {v0}, Lcom/baidu/mobstat/c;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/b;->a:Lcom/baidu/mobstat/c;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/b;->c:Lorg/json/JSONObject;

    new-instance v0, Lcom/baidu/mobstat/b;

    invoke-direct {v0}, Lcom/baidu/mobstat/b;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/b;->i:Lcom/baidu/mobstat/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/baidu/mobstat/b;->b:I

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/b;->d:Lorg/json/JSONArray;

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/b;->e:Lorg/json/JSONArray;

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/b;->f:Lorg/json/JSONArray;

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/b;->g:Lorg/json/JSONArray;

    iput-boolean v1, p0, Lcom/baidu/mobstat/b;->h:Z

    return-void
.end method

.method public static a()Lcom/baidu/mobstat/b;
    .locals 1

    sget-object v0, Lcom/baidu/mobstat/b;->i:Lcom/baidu/mobstat/b;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Lcom/baidu/mobstat/b;->b(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/mobstat/b;->h:Z

    return-void
.end method

.method private static b(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_1

    const/4 p0, 0x0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    const-string v0, "000000000000000"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/baidu/mobstat/b;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "stat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "imei=null,mac="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic c()Lorg/json/JSONObject;
    .locals 1

    sget-object v0, Lcom/baidu/mobstat/b;->c:Lorg/json/JSONObject;

    return-object v0
.end method

.method private d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/mobstat/b;->h:Z

    return v0
.end method

.method static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/baidu/mobstat/b;->a:Lcom/baidu/mobstat/c;

    invoke-static {v0}, Lcom/baidu/mobstat/c;->a(Lcom/baidu/mobstat/c;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/baidu/mobstat/l;->a()Lcom/baidu/mobstat/l;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/l;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/baidu/mobstat/b;->a:Lcom/baidu/mobstat/c;

    const-string v2, "cuid"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/mobstat/c;->c(Lcom/baidu/mobstat/c;Ljava/lang/String;)Ljava/lang/String;

    sget-object v1, Lcom/baidu/mobstat/b;->a:Lcom/baidu/mobstat/c;

    invoke-static {v1}, Lcom/baidu/mobstat/c;->a(Lcom/baidu/mobstat/c;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/baidu/mobstat/b;->a:Lcom/baidu/mobstat/c;

    invoke-static {p0}, Lcom/baidu/a/a/a/b/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/mobstat/c;->c(Lcom/baidu/mobstat/c;Ljava/lang/String;)Ljava/lang/String;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "cuid"

    sget-object v2, Lcom/baidu/mobstat/b;->a:Lcom/baidu/mobstat/c;

    invoke-static {v2}, Lcom/baidu/mobstat/c;->a(Lcom/baidu/mobstat/c;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    sget-object v0, Lcom/baidu/mobstat/b;->a:Lcom/baidu/mobstat/c;

    invoke-static {v0}, Lcom/baidu/mobstat/c;->a(Lcom/baidu/mobstat/c;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/baidu/mobstat/b;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static h(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/baidu/mobstat/w;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ":"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(JLjava/lang/String;)V
    .locals 6

    const/16 v2, 0x1400

    const/4 v5, 0x0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "t"

    invoke-virtual {v1, v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    if-le v0, v2, :cond_0

    const/16 v0, 0x1400

    new-array v0, v0, [B

    const/4 v2, 0x0

    const/16 v3, 0x1400

    const/4 v4, 0x0

    invoke-virtual {p3, v2, v3, v0, v4}, Ljava/lang/String;->getBytes(II[BI)V

    array-length v2, v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception bytes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;)I

    const-string v2, "c"

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0, v1, v5}, Lcom/baidu/mobstat/b;->c(Lorg/json/JSONObject;Z)V

    return-void

    :cond_0
    :try_start_1
    const-string v0, "c"

    invoke-virtual {v1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "stat"

    invoke-static {v2, v0}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public declared-synchronized a(Landroid/content/Context;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/baidu/mobstat/b;->a:Lcom/baidu/mobstat/c;

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/c;->b(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/baidu/mobstat/b;->a:Lcom/baidu/mobstat/c;

    invoke-static {v0, p1}, Lcom/baidu/mobstat/c;->a(Lcom/baidu/mobstat/c;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;IJJ)V
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "i"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "l"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "c"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "t"

    invoke-virtual {v0, v1, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "d"

    invoke-virtual {v0, v1, p6, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/baidu/mobstat/b;->b(Lorg/json/JSONObject;Z)V

    const-string v1, "stat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "put event:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "stat"

    invoke-static {v1, v0}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public a(Lorg/json/JSONObject;Z)V
    .locals 4

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "stat"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "putSession:addSize is:"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/baidu/mobstat/a/b;->a([Ljava/lang/Object;)I

    iget v1, p0, Lcom/baidu/mobstat/b;->b:I

    add-int/2addr v0, v1

    const v1, 0x32000

    if-le v0, v1, :cond_0

    const-string v0, "stat"

    const-string v1, "putSession: size is full!"

    invoke-static {v0, v1}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/baidu/mobstat/b;->d:Lorg/json/JSONArray;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/b;->d:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :try_start_1
    iget-object v2, p0, Lcom/baidu/mobstat/b;->d:Lorg/json/JSONArray;

    invoke-virtual {v2, v0, p1}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v2, "stat"

    invoke-static {v2, v0}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public b(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    const-string v0, "stat"

    const-string v1, "flush cache to __local_stat_cache.json"

    invoke-static {v0, v1}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    iget-object v2, p0, Lcom/baidu/mobstat/b;->d:Lorg/json/JSONArray;

    monitor-enter v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v0, Lorg/json/JSONArray;

    iget-object v3, p0, Lcom/baidu/mobstat/b;->d:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const-string v3, "pr"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, p0, Lcom/baidu/mobstat/b;->e:Lorg/json/JSONArray;

    monitor-enter v2
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    new-instance v0, Lorg/json/JSONArray;

    iget-object v3, p0, Lcom/baidu/mobstat/b;->e:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const-string v3, "ev"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v2, p0, Lcom/baidu/mobstat/b;->g:Lorg/json/JSONArray;

    monitor-enter v2
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    new-instance v0, Lorg/json/JSONArray;

    iget-object v3, p0, Lcom/baidu/mobstat/b;->g:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const-string v3, "ex"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :goto_0
    const-string v0, "{}"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/baidu/mobstat/b;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "stat"

    const-string v1, "cache.json exceed 204800B,stop flush."

    invoke-static {v0, v1}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v0
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_0

    :catch_0
    move-exception v0

    const-string v0, "flushLogWithoutHeader() construct cache error"

    const-string v2, "stat"

    invoke-static {v2, v0}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v0
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_0

    :catchall_2
    move-exception v0

    :try_start_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    throw v0
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    const v2, 0x32000

    if-lt v1, v2, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/b;->a(Z)V

    goto :goto_1

    :cond_1
    iput v1, p0, Lcom/baidu/mobstat/b;->b:I

    const-string v1, "stat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "flush:cacheFileSize is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/baidu/mobstat/b;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "__local_stat_cache.json"

    invoke-static {v4, p1, v1, v0, v4}, Lcom/baidu/mobstat/a/a;->a(ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/baidu/mobstat/b;->a:Lcom/baidu/mobstat/c;

    invoke-static {v0, p1}, Lcom/baidu/mobstat/c;->b(Lcom/baidu/mobstat/c;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public b(Lorg/json/JSONObject;Z)V
    .locals 17

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "stat"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "putEvent:eventSize is:"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/baidu/mobstat/a/b;->a([Ljava/lang/Object;)I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/baidu/mobstat/b;->b:I

    add-int/2addr v1, v2

    const v2, 0x32000

    if-le v1, v2, :cond_0

    const-string v1, "stat"

    const-string v2, "putEvent: size is full!"

    invoke-static {v1, v2}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "i"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v2, "l"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v2, "t"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/32 v7, 0x36ee80

    div-long v7, v2, v7

    const-string v2, "s"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :try_start_1
    const-string v3, "d"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    :goto_1
    if-nez v1, :cond_8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/baidu/mobstat/b;->e:Lorg/json/JSONArray;

    monitor-enter v9

    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/mobstat/b;->e:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    if-eqz v2, :cond_1

    :try_start_3
    const-string v1, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string v1, "s"

    const-string v2, "0|"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    :goto_2
    const/4 v3, 0x0

    move v1, v4

    :goto_3
    if-ge v3, v4, :cond_9

    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mobstat/b;->e:Lorg/json/JSONArray;

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    const-string v2, "stat"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ";event_iter="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "i"

    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v2, "l"

    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v2, "t"

    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v13

    const-wide/32 v15, 0x36ee80

    div-long/2addr v13, v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    const/4 v2, 0x0

    :try_start_5
    const-string v15, "d"

    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_3

    move-result v2

    :goto_4
    cmp-long v13, v13, v7

    if-nez v13, :cond_3

    if-eqz v2, :cond_4

    :cond_3
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :catch_0
    move-exception v1

    const-string v2, "stat"

    invoke-static {v2, v1}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :catch_1
    move-exception v3

    const-string v3, "stat"

    const-string v4, "old version data, No duration Tag"

    invoke-static {v3, v4}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_2
    move-exception v1

    :try_start_6
    const-string v1, "stat"

    const-string v2, "event put s fail"

    invoke-static {v1, v2}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v1

    :catch_3
    move-exception v15

    :try_start_7
    const-string v15, "stat"

    const-string v16, "old version data, No duration Tag"

    invoke-static/range {v15 .. v16}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_4

    :catch_4
    move-exception v2

    :goto_6
    :try_start_8
    const-string v10, "stat"

    invoke-static {v10, v2}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_5

    :cond_4
    :try_start_9
    const-string v2, "stat"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, ";event_iter="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v2, v13}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "c"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v11, "c"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    add-int/2addr v11, v2

    const-string v2, "s"

    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string v12, ""

    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    :cond_5
    const-string v2, "0|"

    :cond_6
    const-string v12, "t"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    const-string v14, "t"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    sub-long/2addr v12, v14

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v12, "|"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_4

    move-result-object v1

    :try_start_a
    const-string v2, "c"

    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const-string v2, "c"

    invoke-virtual {v10, v2, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "s"

    invoke-virtual {v10, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_7

    :goto_7
    if-ge v3, v4, :cond_7

    :try_start_b
    monitor-exit v9
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_0

    :cond_7
    :try_start_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/mobstat/b;->e:Lorg/json/JSONArray;

    move-object/from16 v0, p1

    invoke-virtual {v1, v4, v0}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_5

    :goto_8
    :try_start_d
    monitor-exit v9

    goto/16 :goto_0

    :catch_5
    move-exception v1

    const-string v2, "stat"

    invoke-static {v2, v1}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_8

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mobstat/b;->e:Lorg/json/JSONArray;

    monitor-enter v2

    :try_start_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/mobstat/b;->e:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    move-result v1

    :try_start_f
    const-string v3, "s"

    const-string v4, "0"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/mobstat/b;->e:Lorg/json/JSONArray;

    move-object/from16 v0, p1

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_6

    :goto_9
    :try_start_10
    monitor-exit v2

    goto/16 :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    throw v1

    :catch_6
    move-exception v1

    :try_start_11
    const-string v3, "stat"

    invoke-static {v3, v1}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto :goto_9

    :catch_7
    move-exception v1

    move-object v2, v1

    move v1, v3

    goto/16 :goto_6

    :cond_9
    move v3, v1

    goto :goto_7
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobstat/b;->d:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mobstat/b;->e:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mobstat/b;->g:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public c(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "stat"

    const-string v1, "LoadLastSession()"

    invoke-static {v0, v1}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "__local_last_session.json"

    invoke-static {p1, v0}, Lcom/baidu/mobstat/a/a;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "__local_last_session.json"

    invoke-static {v3, p1, v0}, Lcom/baidu/mobstat/a/a;->a(ZLandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "stat"

    const-string v1, "loadLastSession(): last_session.json file not found."

    invoke-static {v0, v1}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "__local_last_session.json"

    invoke-static {v3, p1, v2, v1, v3}, Lcom/baidu/mobstat/a/a;->a(ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lcom/baidu/mobstat/b;->c(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/b;->b(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)V
    .locals 4

    const-string v0, "{}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/baidu/mobstat/b;->a(Lorg/json/JSONObject;Z)V

    const-string v1, "stat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Load last session:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "stat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "putSession()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public c(Lorg/json/JSONObject;Z)V
    .locals 4

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "stat"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "putException:addSize is:"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/baidu/mobstat/a/b;->a([Ljava/lang/Object;)I

    iget v1, p0, Lcom/baidu/mobstat/b;->b:I

    add-int/2addr v0, v1

    const v1, 0x32000

    if-le v0, v1, :cond_0

    const-string v0, "stat"

    const-string v1, "putException: size is full!"

    invoke-static {v0, v1}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/baidu/mobstat/b;->g:Lorg/json/JSONArray;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/b;->g:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :try_start_1
    iget-object v2, p0, Lcom/baidu/mobstat/b;->g:Lorg/json/JSONArray;

    invoke-virtual {v2, v0, p1}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v2, "stat"

    invoke-static {v2, v0}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public d(Landroid/content/Context;)V
    .locals 11

    const-wide/32 v9, 0x240c8400

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "__local_stat_cache.json"

    invoke-static {p1, v1}, Lcom/baidu/mobstat/a/a;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "__local_stat_cache.json"

    invoke-static {v0, p1, v1}, Lcom/baidu/mobstat/a/a;->a(ZLandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "stat"

    const-string v1, "stat_cache file not found."

    invoke-static {v0, v1}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v2, "stat"

    const-string v3, "loadStatData, "

    invoke-static {v2, v3}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    iput v2, p0, Lcom/baidu/mobstat/b;->b:I

    const-string v2, "stat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load Stat Data:cacheFileSize is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/baidu/mobstat/b;->b:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "stat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Load cache:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-string v1, "pr"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    move v1, v0

    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_4

    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "s"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    sub-long v7, v3, v7

    cmp-long v7, v7, v9

    if-lez v7, :cond_3

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v7, 0x1

    invoke-virtual {p0, v6, v7}, Lcom/baidu/mobstat/b;->a(Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "stat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Load stat data error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    :try_start_1
    const-string v1, "ev"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    move v1, v0

    :goto_3
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_6

    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "t"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    sub-long v7, v3, v7

    cmp-long v7, v7, v9

    if-lez v7, :cond_5

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    const/4 v7, 0x1

    invoke-virtual {p0, v6, v7}, Lcom/baidu/mobstat/b;->b(Lorg/json/JSONObject;Z)V

    goto :goto_4

    :cond_6
    const-string v1, "ex"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    :goto_5
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v5, "t"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    sub-long v5, v3, v5

    cmp-long v5, v5, v9

    if-lez v5, :cond_7

    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_7
    const/4 v5, 0x1

    invoke-virtual {p0, v2, v5}, Lcom/baidu/mobstat/b;->c(Lorg/json/JSONObject;Z)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6
.end method

.method public e(Landroid/content/Context;)Z
    .locals 10

    const/4 v0, 0x0

    const-string v1, "stat"

    const-string v2, "sendLogData() begin."

    invoke-static {v1, v2}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    sget-object v2, Lcom/baidu/mobstat/b;->c:Lorg/json/JSONObject;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lcom/baidu/mobstat/b;->c:Lorg/json/JSONObject;

    const-string v4, "t"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    sget-object v3, Lcom/baidu/mobstat/b;->c:Lorg/json/JSONObject;

    const-string v4, "ss"

    invoke-static {}, Lcom/baidu/mobstat/s;->b()Lcom/baidu/mobstat/s;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/mobstat/s;->d()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "he"

    sget-object v4, Lcom/baidu/mobstat/b;->c:Lorg/json/JSONObject;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v3, p0, Lcom/baidu/mobstat/b;->d:Lorg/json/JSONArray;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v4, "pr"

    iget-object v5, p0, Lcom/baidu/mobstat/b;->d:Lorg/json/JSONArray;

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    iget-object v4, p0, Lcom/baidu/mobstat/b;->e:Lorg/json/JSONArray;

    monitor-enter v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :try_start_4
    const-string v5, "ev"

    iget-object v6, p0, Lcom/baidu/mobstat/b;->e:Lorg/json/JSONArray;

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    :try_start_5
    iget-object v5, p0, Lcom/baidu/mobstat/b;->f:Lorg/json/JSONArray;

    monitor-enter v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    iget-object v6, p0, Lcom/baidu/mobstat/b;->g:Lorg/json/JSONArray;

    monitor-enter v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    const-string v7, "ex"

    iget-object v8, p0, Lcom/baidu/mobstat/b;->g:Lorg/json/JSONArray;

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_3

    :try_start_8
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v7, "stat"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "---Send Data Is:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    const-string v7, "http://hmma.baidu.com/app.gif"

    const v8, 0xc350

    const v9, 0xc350

    invoke-static {p1, v7, v1, v8, v9}, Lcom/baidu/mobstat/w;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    const/4 v0, 0x1

    :goto_0
    :try_start_a
    const-string v1, "stat"

    const-string v7, "sendLogData() end."

    invoke-static {v1, v7}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/baidu/mobstat/b;->a(Z)V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iput-object v1, p0, Lcom/baidu/mobstat/b;->g:Lorg/json/JSONArray;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iput-object v1, p0, Lcom/baidu/mobstat/b;->e:Lorg/json/JSONArray;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iput-object v1, p0, Lcom/baidu/mobstat/b;->d:Lorg/json/JSONArray;

    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/b;->b(Landroid/content/Context;)V

    invoke-static {}, Lcom/baidu/mobstat/s;->b()Lcom/baidu/mobstat/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/s;->c()V

    invoke-static {}, Lcom/baidu/mobstat/l;->a()Lcom/baidu/mobstat/l;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/baidu/mobstat/l;->d(Landroid/content/Context;)V

    :cond_0
    monitor-exit v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    monitor-exit v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    monitor-exit v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :try_start_d
    monitor-exit v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :try_start_e
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    const-string v1, "stat"

    const-string v2, "sendLogData() end."

    invoke-static {v1, v2}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v0

    :catch_0
    move-exception v1

    :try_start_f
    const-string v3, "stat"

    invoke-static {v3, v1}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    throw v0

    :catch_1
    move-exception v1

    :try_start_10
    const-string v4, "stat"

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    :try_start_11
    monitor-exit v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto :goto_1

    :catch_2
    move-exception v1

    :try_start_12
    const-string v5, "stat"

    invoke-static {v5, v1}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    monitor-exit v4
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    :try_start_13
    monitor-exit v3
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    :try_start_14
    monitor-exit v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    goto :goto_1

    :catch_3
    move-exception v1

    :try_start_15
    const-string v7, "stat"

    invoke-static {v7, v1}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    monitor-exit v6
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    :try_start_16
    monitor-exit v5
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    :try_start_17
    monitor-exit v4
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    :try_start_18
    monitor-exit v3
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_4

    :try_start_19
    monitor-exit v2
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    goto :goto_1

    :catch_4
    move-exception v1

    :try_start_1a
    const-string v7, "stat"

    invoke-static {v7, v1}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v6
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    :try_start_1b
    throw v0

    :catchall_2
    move-exception v0

    monitor-exit v5
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2

    :try_start_1c
    throw v0

    :catchall_3
    move-exception v0

    monitor-exit v4
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_3

    :try_start_1d
    throw v0

    :catchall_4
    move-exception v0

    monitor-exit v3
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_4

    :try_start_1e
    throw v0
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0
.end method
