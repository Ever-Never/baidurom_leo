.class Lcom/baidu/mobstat/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Landroid/content/Context;

.field final synthetic e:Lcom/baidu/mobstat/d;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/d;JLjava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobstat/h;->e:Lcom/baidu/mobstat/d;

    iput-wide p2, p0, Lcom/baidu/mobstat/h;->a:J

    iput-object p4, p0, Lcom/baidu/mobstat/h;->b:Ljava/lang/String;

    iput-object p5, p0, Lcom/baidu/mobstat/h;->c:Ljava/lang/String;

    iput-object p6, p0, Lcom/baidu/mobstat/h;->d:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    invoke-static {}, Lcom/baidu/mobstat/k;->a()Lcom/baidu/mobstat/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/k;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/baidu/mobstat/k;->a()Lcom/baidu/mobstat/k;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/baidu/mobstat/k;->a()Lcom/baidu/mobstat/k;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    iget-wide v0, p0, Lcom/baidu/mobstat/h;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    const-string v0, "stat"

    const-string v1, "EventStat: Wrong Case, Duration must be positive"

    invoke-static {v0, v1}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :catch_0
    move-exception v0

    :try_start_2
    const-string v2, "stat"

    invoke-static {v2, v0}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    invoke-static {}, Lcom/baidu/mobstat/b;->a()Lcom/baidu/mobstat/b;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/h;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/mobstat/h;->c:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/baidu/mobstat/h;->a:J

    invoke-virtual/range {v0 .. v7}, Lcom/baidu/mobstat/b;->a(Ljava/lang/String;Ljava/lang/String;IJJ)V

    invoke-static {}, Lcom/baidu/mobstat/b;->a()Lcom/baidu/mobstat/b;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/h;->d:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/b;->b(Landroid/content/Context;)V

    goto :goto_1
.end method
