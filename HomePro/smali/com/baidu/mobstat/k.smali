.class Lcom/baidu/mobstat/k;
.super Ljava/lang/Thread;


# static fields
.field private static a:Lcom/baidu/mobstat/k;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Z

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/baidu/mobstat/k;

    invoke-direct {v0}, Lcom/baidu/mobstat/k;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/k;->a:Lcom/baidu/mobstat/k;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-boolean v0, p0, Lcom/baidu/mobstat/k;->c:Z

    iput-boolean v0, p0, Lcom/baidu/mobstat/k;->d:Z

    return-void
.end method

.method public static a()Lcom/baidu/mobstat/k;
    .locals 1

    sget-object v0, Lcom/baidu/mobstat/k;->a:Lcom/baidu/mobstat/k;

    return-object v0
.end method

.method private d()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mobstat/k;->c:Z

    return-void
.end method

.method private declared-synchronized e()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/baidu/mobstat/k;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/baidu/mobstat/k;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/baidu/mobstat/k;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/baidu/mobstat/k;->d()V

    invoke-virtual {p0}, Lcom/baidu/mobstat/k;->start()V

    const-string v0, "**************load caceh**start********"

    invoke-static {v0}, Lcom/baidu/mobstat/a/b;->b(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/mobstat/k;->c:Z

    return v0
.end method

.method public declared-synchronized c()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/baidu/mobstat/k;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 3

    const/16 v0, 0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :goto_0
    iget-boolean v0, p0, Lcom/baidu/mobstat/k;->d:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/baidu/mobstat/l;->a()Lcom/baidu/mobstat/l;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/k;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/l;->b(Landroid/content/Context;)V

    invoke-static {}, Lcom/baidu/mobstat/b;->a()Lcom/baidu/mobstat/b;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/k;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/b;->d(Landroid/content/Context;)V

    invoke-static {}, Lcom/baidu/mobstat/b;->a()Lcom/baidu/mobstat/b;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/k;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/b;->c(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/baidu/mobstat/k;->e()V

    sget-object v1, Lcom/baidu/mobstat/k;->a:Lcom/baidu/mobstat/k;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalMonitorStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/baidu/mobstat/b;->a()Lcom/baidu/mobstat/b;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/k;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/b;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/baidu/mobstat/l;->a()Lcom/baidu/mobstat/l;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/k;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/l;->c(Landroid/content/Context;)V

    const-string v0, "**************load caceh**end********"

    invoke-static {v0}, Lcom/baidu/mobstat/a/b;->b(Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v2, "stat"

    invoke-static {v2, v0}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    return-void
.end method
