.class Lcom/baidu/mobstat/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:J

.field final synthetic d:Landroid/content/Context;

.field final synthetic e:Lcom/baidu/mobstat/d;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/d;Ljava/lang/String;Ljava/lang/String;JLandroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobstat/g;->e:Lcom/baidu/mobstat/d;

    iput-object p2, p0, Lcom/baidu/mobstat/g;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/baidu/mobstat/g;->b:Ljava/lang/String;

    iput-wide p4, p0, Lcom/baidu/mobstat/g;->c:J

    iput-object p6, p0, Lcom/baidu/mobstat/g;->d:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v3, 0x1

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
    iget-object v0, p0, Lcom/baidu/mobstat/g;->e:Lcom/baidu/mobstat/d;

    iget-object v1, p0, Lcom/baidu/mobstat/g;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/mobstat/g;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mobstat/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/baidu/mobstat/g;->e:Lcom/baidu/mobstat/d;

    iget-object v0, v0, Lcom/baidu/mobstat/d;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/baidu/mobstat/i;

    if-nez v4, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "stat"

    aput-object v2, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EventStat: event_id["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mobstat/g;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] with label["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mobstat/g;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is not started or alread done."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/baidu/mobstat/a/b;->b([Ljava/lang/Object;)I

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
    iget-object v0, p0, Lcom/baidu/mobstat/g;->a:Ljava/lang/String;

    iget-object v2, v4, Lcom/baidu/mobstat/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/mobstat/g;->b:Ljava/lang/String;

    iget-object v2, v4, Lcom/baidu/mobstat/i;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const-string v0, "stat"

    const-string v1, "EventStat: Wrong Case, eventId/label pair not match"

    invoke-static {v0, v1}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/baidu/mobstat/g;->e:Lcom/baidu/mobstat/d;

    iget-object v0, v0, Lcom/baidu/mobstat/d;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v0, p0, Lcom/baidu/mobstat/g;->c:J

    iget-wide v5, v4, Lcom/baidu/mobstat/i;->c:J

    sub-long v6, v0, v5

    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-gtz v0, :cond_4

    const-string v0, "stat"

    const-string v1, "EventStat: Wrong Case, Duration must be positive"

    invoke-static {v0, v1}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/baidu/mobstat/b;->a()Lcom/baidu/mobstat/b;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/g;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/mobstat/g;->b:Ljava/lang/String;

    iget-wide v4, v4, Lcom/baidu/mobstat/i;->c:J

    invoke-virtual/range {v0 .. v7}, Lcom/baidu/mobstat/b;->a(Ljava/lang/String;Ljava/lang/String;IJJ)V

    invoke-static {}, Lcom/baidu/mobstat/b;->a()Lcom/baidu/mobstat/b;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/g;->d:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/b;->b(Landroid/content/Context;)V

    goto :goto_1
.end method
