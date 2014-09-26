.class Lcom/baidu/mobstat/s;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/os/HandlerThread;

.field private static b:Landroid/os/Handler;

.field private static h:Lcom/baidu/mobstat/s;


# instance fields
.field private c:J

.field private d:J

.field private e:J

.field private f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/baidu/mobstat/q;

.field private i:I

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SessionAnalysisThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/mobstat/s;->a:Landroid/os/HandlerThread;

    new-instance v0, Lcom/baidu/mobstat/s;

    invoke-direct {v0}, Lcom/baidu/mobstat/s;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/s;->h:Lcom/baidu/mobstat/s;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v2, p0, Lcom/baidu/mobstat/s;->c:J

    iput-wide v2, p0, Lcom/baidu/mobstat/s;->d:J

    iput-wide v2, p0, Lcom/baidu/mobstat/s;->e:J

    new-instance v0, Lcom/baidu/mobstat/q;

    invoke-direct {v0}, Lcom/baidu/mobstat/q;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/s;->g:Lcom/baidu/mobstat/q;

    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/mobstat/s;->i:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mobstat/s;->j:Z

    iput-boolean v1, p0, Lcom/baidu/mobstat/s;->k:Z

    iput-boolean v1, p0, Lcom/baidu/mobstat/s;->l:Z

    iput-boolean v1, p0, Lcom/baidu/mobstat/s;->m:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mobstat/s;->n:Ljava/lang/String;

    sget-object v0, Lcom/baidu/mobstat/s;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    sget-object v0, Lcom/baidu/mobstat/s;->a:Landroid/os/HandlerThread;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setPriority(I)V

    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/baidu/mobstat/s;->a:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/baidu/mobstat/s;->b:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/baidu/mobstat/s;)Lcom/baidu/mobstat/q;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobstat/s;->g:Lcom/baidu/mobstat/q;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const-string v0, "stat"

    const-string v1, "clearLastSession(Context context):context=null"

    invoke-static {v0, v1}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v0, "{}"

    const-string v1, "__local_last_session.json"

    invoke-static {v2, p1, v1, v0, v2}, Lcom/baidu/mobstat/a/a;->a(ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/baidu/mobstat/s;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/mobstat/s;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/mobstat/s;Landroid/content/Context;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/mobstat/s;->c(Landroid/content/Context;J)V

    return-void
.end method

.method private a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/mobstat/s;->j:Z

    return-void
.end method

.method public static b()Lcom/baidu/mobstat/s;
    .locals 1

    sget-object v0, Lcom/baidu/mobstat/s;->h:Lcom/baidu/mobstat/s;

    return-object v0
.end method

.method private c(Landroid/content/Context;J)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "stat"

    const-string v1, "flush current session to last_session.json"

    invoke-static {v0, v1}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "{}"

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, p0, Lcom/baidu/mobstat/s;->g:Lcom/baidu/mobstat/q;

    invoke-virtual {v0}, Lcom/baidu/mobstat/q;->c()Lorg/json/JSONObject;

    move-result-object v0

    :try_start_0
    const-string v1, "e"

    invoke-virtual {v0, v1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "__local_last_session.json"

    invoke-static {v3, p1, v1, v0, v3}, Lcom/baidu/mobstat/a/a;->a(ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :catch_0
    move-exception v1

    const-string v1, "stat"

    const-string v2, "StatSession.flushSession() failed"

    invoke-static {v1, v2}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/mobstat/s;->j:Z

    return v0
.end method


# virtual methods
.method public a()I
    .locals 2

    iget v0, p0, Lcom/baidu/mobstat/s;->i:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x7530

    iput v0, p0, Lcom/baidu/mobstat/s;->i:I

    :cond_0
    iget v0, p0, Lcom/baidu/mobstat/s;->i:I

    return v0
.end method

.method public a(I)V
    .locals 1

    mul-int/lit16 v0, p1, 0x3e8

    iput v0, p0, Lcom/baidu/mobstat/s;->i:I

    return-void
.end method

.method public a(Landroid/content/Context;J)V
    .locals 9

    const/4 v2, 0x0

    const/4 v8, 0x1

    const-string v0, "stat"

    const-string v1, "AnalysisResume job"

    invoke-static {v0, v1}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/baidu/mobstat/s;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "stat"

    aput-object v1, v0, v2

    const-string v1, "\u9057\u6f0fStatService.onPause() || missing StatService.onPause()"

    aput-object v1, v0, v8

    invoke-static {v0}, Lcom/baidu/mobstat/a/b;->c([Ljava/lang/Object;)I

    :cond_0
    iput-boolean v8, p0, Lcom/baidu/mobstat/s;->k:Z

    invoke-direct {p0}, Lcom/baidu/mobstat/s;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "is_first_resume=true"

    invoke-static {v0}, Lcom/baidu/mobstat/a/b;->b(Ljava/lang/String;)I

    invoke-direct {p0, v2}, Lcom/baidu/mobstat/s;->a(Z)V

    sget-object v0, Lcom/baidu/mobstat/s;->b:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/mobstat/t;

    invoke-direct {v1, p0}, Lcom/baidu/mobstat/t;-><init>(Lcom/baidu/mobstat/s;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    new-instance v0, Lcom/baidu/mobstat/v;

    iget-wide v2, p0, Lcom/baidu/mobstat/s;->c:J

    const/4 v7, 0x0

    move-object v1, p0

    move-wide v4, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v8}, Lcom/baidu/mobstat/v;-><init>(Lcom/baidu/mobstat/s;JJLandroid/content/Context;Landroid/support/v4/app/Fragment;Z)V

    sget-object v1, Lcom/baidu/mobstat/s;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/mobstat/s;->f:Ljava/lang/ref/WeakReference;

    iput-wide p2, p0, Lcom/baidu/mobstat/s;->d:J

    return-void

    :cond_1
    const-string v0, "stat"

    const-string v1, " is_first_resume=false"

    invoke-static {v0, v1}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a(J)Z
    .locals 4

    iget-wide v0, p0, Lcom/baidu/mobstat/s;->c:J

    sub-long v0, p1, v0

    invoke-virtual {p0}, Lcom/baidu/mobstat/s;->a()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/baidu/mobstat/s;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/content/Context;J)V
    .locals 12

    const/4 v10, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    const-string v0, "stat"

    const-string v1, "post pause job"

    invoke-static {v0, v1}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/baidu/mobstat/s;->k:Z

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "stat"

    aput-object v1, v0, v2

    const-string v1, "\u9057\u6f0fStatService.onResume() || missing StatService.onResume()"

    aput-object v1, v0, v10

    invoke-static {v0}, Lcom/baidu/mobstat/a/b;->c([Ljava/lang/Object;)I

    :goto_0
    return-void

    :cond_0
    iput-boolean v2, p0, Lcom/baidu/mobstat/s;->k:Z

    new-instance v0, Lcom/baidu/mobstat/u;

    iget-wide v6, p0, Lcom/baidu/mobstat/s;->d:J

    iget-object v1, p0, Lcom/baidu/mobstat/s;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Context;

    move-object v1, p0

    move-wide v2, p2

    move-object v4, p1

    move-object v9, v5

    move-object v11, v5

    invoke-direct/range {v0 .. v11}, Lcom/baidu/mobstat/u;-><init>(Lcom/baidu/mobstat/s;JLandroid/content/Context;Landroid/support/v4/app/Fragment;JLandroid/content/Context;Landroid/support/v4/app/Fragment;ZLjava/lang/String;)V

    sget-object v1, Lcom/baidu/mobstat/s;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iput-wide p2, p0, Lcom/baidu/mobstat/s;->c:J

    goto :goto_0
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/mobstat/s;->g:Lcom/baidu/mobstat/q;

    iget-object v1, p0, Lcom/baidu/mobstat/s;->g:Lcom/baidu/mobstat/q;

    invoke-virtual {v1}, Lcom/baidu/mobstat/q;->d()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/q;->a(I)V

    return-void
.end method

.method public d()J
    .locals 2

    iget-object v0, p0, Lcom/baidu/mobstat/s;->g:Lcom/baidu/mobstat/q;

    invoke-virtual {v0}, Lcom/baidu/mobstat/q;->a()J

    move-result-wide v0

    return-wide v0
.end method
