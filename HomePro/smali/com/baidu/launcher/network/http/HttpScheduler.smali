.class public Lcom/baidu/launcher/network/http/HttpScheduler;
.super Ljava/lang/Object;
.source "HttpScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/network/http/HttpScheduler$3;,
        Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;,
        Lcom/baidu/launcher/network/http/HttpScheduler$HttpFutureTask;
    }
.end annotation


# static fields
.field private static final MAX_TASK_COUNT:I = 0xa

.field private static final MIN_TASK_COUNT:I = 0x5

.field private static final TAG:Ljava/lang/String; = null

.field private static final THREAD_POOL_TRIM_DELAY:I = 0x7530

.field private static mHttpScheduler:Lcom/baidu/launcher/network/http/HttpScheduler;


# instance fields
.field private mHttpThreadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private mThreadFactory:Ljava/util/concurrent/ThreadFactory;

.field private mWorkingTask:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/baidu/launcher/network/http/HttpScheduler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/launcher/network/http/HttpScheduler;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/network/http/HttpScheduler;->mWorkingTask:Ljava/util/List;

    .line 89
    new-instance v0, Lcom/baidu/launcher/network/http/HttpScheduler$1;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/network/http/HttpScheduler$1;-><init>(Lcom/baidu/launcher/network/http/HttpScheduler;)V

    iput-object v0, p0, Lcom/baidu/launcher/network/http/HttpScheduler;->mThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 97
    new-instance v0, Lcom/baidu/launcher/network/http/HttpScheduler$2;

    const/4 v2, 0x5

    const/16 v3, 0xa

    const-wide/16 v4, 0x7530

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iget-object v8, p0, Lcom/baidu/launcher/network/http/HttpScheduler;->mThreadFactory:Ljava/util/concurrent/ThreadFactory;

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/baidu/launcher/network/http/HttpScheduler$2;-><init>(Lcom/baidu/launcher/network/http/HttpScheduler;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/baidu/launcher/network/http/HttpScheduler;->mHttpThreadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 30
    return-void
.end method

.method static synthetic access$100(Ljava/lang/Runnable;)Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    invoke-static {p0}, Lcom/baidu/launcher/network/http/HttpScheduler;->getHttpRunnable(Ljava/lang/Runnable;)Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/baidu/launcher/network/http/HttpScheduler;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/baidu/launcher/network/http/HttpScheduler;->mWorkingTask:Ljava/util/List;

    return-object v0
.end method

.method public static declared-synchronized close()V
    .locals 2

    .prologue
    .line 40
    const-class v1, Lcom/baidu/launcher/network/http/HttpScheduler;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/launcher/network/http/HttpScheduler;->mHttpScheduler:Lcom/baidu/launcher/network/http/HttpScheduler;

    if-eqz v0, :cond_0

    .line 41
    sget-object v0, Lcom/baidu/launcher/network/http/HttpScheduler;->mHttpScheduler:Lcom/baidu/launcher/network/http/HttpScheduler;

    invoke-virtual {v0}, Lcom/baidu/launcher/network/http/HttpScheduler;->cancelAll()I

    .line 42
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/launcher/network/http/HttpScheduler;->mHttpScheduler:Lcom/baidu/launcher/network/http/HttpScheduler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    :cond_0
    monitor-exit v1

    return-void

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private exist(Lcom/baidu/launcher/network/http/HttpTask;)Z
    .locals 7
    .parameter "task"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 233
    if-nez p1, :cond_0

    move v4, v5

    .line 252
    :goto_0
    return v4

    .line 237
    :cond_0
    invoke-direct {p0}, Lcom/baidu/launcher/network/http/HttpScheduler;->getWaitingTaskIterator()Ljava/util/Iterator;

    move-result-object v2

    .line 238
    .local v2, waiting:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Runnable;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 239
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Runnable;

    invoke-static {v4}, Lcom/baidu/launcher/network/http/HttpScheduler;->getHttpRunnable(Ljava/lang/Runnable;)Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;

    move-result-object v1

    .line 240
    .local v1, runnable:Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;->getHttpTask()Lcom/baidu/launcher/network/http/HttpTask;

    move-result-object v4

    if-ne v4, p1, :cond_1

    move v4, v6

    .line 241
    goto :goto_0

    .line 246
    .end local v1           #runnable:Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;
    :cond_2
    iget-object v4, p0, Lcom/baidu/launcher/network/http/HttpScheduler;->mWorkingTask:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;

    .line 247
    .local v3, working:Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;
    invoke-virtual {v3}, Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;->getHttpTask()Lcom/baidu/launcher/network/http/HttpTask;

    move-result-object v4

    if-ne v4, p1, :cond_3

    move v4, v6

    .line 248
    goto :goto_0

    .end local v3           #working:Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;
    :cond_4
    move v4, v5

    .line 252
    goto :goto_0
.end method

.method private static getHttpRunnable(Ljava/lang/Runnable;)Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;
    .locals 1
    .parameter "r"

    .prologue
    .line 82
    instance-of v0, p0, Lcom/baidu/launcher/network/http/HttpScheduler$HttpFutureTask;

    if-eqz v0, :cond_0

    .line 83
    check-cast p0, Lcom/baidu/launcher/network/http/HttpScheduler$HttpFutureTask;

    .end local p0
    #getter for: Lcom/baidu/launcher/network/http/HttpScheduler$HttpFutureTask;->object:Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;
    invoke-static {p0}, Lcom/baidu/launcher/network/http/HttpScheduler$HttpFutureTask;->access$000(Lcom/baidu/launcher/network/http/HttpScheduler$HttpFutureTask;)Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;

    move-result-object v0

    .line 85
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/baidu/launcher/network/http/HttpScheduler;
    .locals 2

    .prologue
    .line 33
    const-class v1, Lcom/baidu/launcher/network/http/HttpScheduler;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/launcher/network/http/HttpScheduler;->mHttpScheduler:Lcom/baidu/launcher/network/http/HttpScheduler;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/baidu/launcher/network/http/HttpScheduler;

    invoke-direct {v0}, Lcom/baidu/launcher/network/http/HttpScheduler;-><init>()V

    sput-object v0, Lcom/baidu/launcher/network/http/HttpScheduler;->mHttpScheduler:Lcom/baidu/launcher/network/http/HttpScheduler;

    .line 36
    :cond_0
    sget-object v0, Lcom/baidu/launcher/network/http/HttpScheduler;->mHttpScheduler:Lcom/baidu/launcher/network/http/HttpScheduler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getWaitingTaskIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 256
    iget-object v1, p0, Lcom/baidu/launcher/network/http/HttpScheduler;->mHttpThreadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    .line 257
    .local v0, waitingTask:Ljava/util/concurrent/BlockingQueue;,"Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method declared-synchronized cancel(Lcom/baidu/launcher/network/http/HttpConnection;)I
    .locals 5
    .parameter "connection"

    .prologue
    .line 176
    monitor-enter p0

    if-nez p1, :cond_1

    .line 177
    const/4 v0, 0x0

    .line 201
    :cond_0
    monitor-exit p0

    return v0

    .line 179
    :cond_1
    const/4 v0, 0x0

    .line 182
    .local v0, count:I
    :try_start_0
    invoke-direct {p0}, Lcom/baidu/launcher/network/http/HttpScheduler;->getWaitingTaskIterator()Ljava/util/Iterator;

    move-result-object v3

    .line 183
    .local v3, waiting:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Runnable;>;"
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 184
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Runnable;

    invoke-static {v4}, Lcom/baidu/launcher/network/http/HttpScheduler;->getHttpRunnable(Ljava/lang/Runnable;)Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;

    move-result-object v2

    .line 185
    .local v2, runnable:Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;->getHttpTask()Lcom/baidu/launcher/network/http/HttpTask;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/baidu/launcher/network/http/HttpTask;->viaConnection(Lcom/baidu/launcher/network/http/HttpConnection;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 186
    invoke-virtual {v2}, Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;->cancel()V

    .line 187
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 188
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 193
    .end local v2           #runnable:Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;
    :cond_3
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v4, p0, Lcom/baidu/launcher/network/http/HttpScheduler;->mWorkingTask:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 194
    iget-object v4, p0, Lcom/baidu/launcher/network/http/HttpScheduler;->mWorkingTask:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;

    .line 195
    .restart local v2       #runnable:Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;
    invoke-virtual {v2}, Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;->getHttpTask()Lcom/baidu/launcher/network/http/HttpTask;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/baidu/launcher/network/http/HttpTask;->viaConnection(Lcom/baidu/launcher/network/http/HttpConnection;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 196
    invoke-virtual {v2}, Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    add-int/lit8 v0, v0, 0x1

    .line 193
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 176
    .end local v1           #i:I
    .end local v2           #runnable:Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;
    .end local v3           #waiting:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Runnable;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method declared-synchronized cancel(Lcom/baidu/launcher/network/http/HttpTask;)I
    .locals 6
    .parameter "task"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 146
    monitor-enter p0

    if-nez p1, :cond_0

    move v3, v4

    .line 169
    :goto_0
    monitor-exit p0

    return v3

    .line 150
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/baidu/launcher/network/http/HttpScheduler;->getWaitingTaskIterator()Ljava/util/Iterator;

    move-result-object v2

    .line 151
    .local v2, waiting:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Runnable;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 152
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    invoke-static {v3}, Lcom/baidu/launcher/network/http/HttpScheduler;->getHttpRunnable(Ljava/lang/Runnable;)Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;

    move-result-object v1

    .line 153
    .local v1, runnable:Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;->getHttpTask()Lcom/baidu/launcher/network/http/HttpTask;

    move-result-object v3

    if-ne v3, p1, :cond_1

    .line 154
    invoke-virtual {v1}, Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;->cancel()V

    .line 155
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    move v3, v5

    .line 156
    goto :goto_0

    .line 161
    .end local v1           #runnable:Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/baidu/launcher/network/http/HttpScheduler;->mWorkingTask:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 162
    iget-object v3, p0, Lcom/baidu/launcher/network/http/HttpScheduler;->mWorkingTask:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;

    .line 163
    .restart local v1       #runnable:Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;
    invoke-virtual {v1}, Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;->getHttpTask()Lcom/baidu/launcher/network/http/HttpTask;

    move-result-object v3

    if-ne v3, p1, :cond_3

    .line 164
    invoke-virtual {v1}, Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, v5

    .line 165
    goto :goto_0

    .line 161
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1           #runnable:Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;
    :cond_4
    move v3, v4

    .line 169
    goto :goto_0

    .line 146
    .end local v0           #i:I
    .end local v2           #waiting:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Runnable;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized cancelAll()I
    .locals 6

    .prologue
    .line 208
    monitor-enter p0

    const/4 v0, 0x0

    .line 211
    .local v0, count:I
    :try_start_0
    iget-object v5, p0, Lcom/baidu/launcher/network/http/HttpScheduler;->mHttpThreadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v5}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v4

    .line 212
    .local v4, waitingTask:Ljava/util/concurrent/BlockingQueue;,"Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 213
    .local v3, waiting:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Runnable;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 214
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Runnable;

    invoke-static {v5}, Lcom/baidu/launcher/network/http/HttpScheduler;->getHttpRunnable(Ljava/lang/Runnable;)Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;

    move-result-object v2

    .line 215
    .local v2, runnable:Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;
    if-eqz v2, :cond_0

    .line 216
    invoke-virtual {v2}, Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 208
    .end local v2           #runnable:Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;
    .end local v3           #waiting:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Runnable;>;"
    .end local v4           #waitingTask:Ljava/util/concurrent/BlockingQueue;,"Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 219
    .restart local v3       #waiting:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Runnable;>;"
    .restart local v4       #waitingTask:Ljava/util/concurrent/BlockingQueue;,"Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    :cond_1
    :try_start_1
    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v5

    add-int/2addr v0, v5

    .line 220
    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 223
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v5, p0, Lcom/baidu/launcher/network/http/HttpScheduler;->mWorkingTask:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 224
    iget-object v5, p0, Lcom/baidu/launcher/network/http/HttpScheduler;->mWorkingTask:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;

    .line 225
    .restart local v2       #runnable:Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;
    invoke-virtual {v2}, Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;->cancel()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 226
    add-int/lit8 v0, v0, 0x1

    .line 223
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 229
    .end local v2           #runnable:Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;
    :cond_2
    monitor-exit p0

    return v0
.end method

.method declared-synchronized send(Lcom/baidu/launcher/network/http/HttpTask;)Z
    .locals 3
    .parameter "task"

    .prologue
    const/4 v0, 0x0

    .line 123
    monitor-enter p0

    if-nez p1, :cond_0

    .line 139
    :goto_0
    monitor-exit p0

    return v0

    .line 126
    :cond_0
    :try_start_0
    iget-object v1, p1, Lcom/baidu/launcher/network/http/HttpTask;->mRequest:Lcom/baidu/launcher/network/http/HttpParam$Request;

    invoke-virtual {v1}, Lcom/baidu/launcher/network/http/HttpParam$Request;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 127
    invoke-direct {p0, p1}, Lcom/baidu/launcher/network/http/HttpScheduler;->exist(Lcom/baidu/launcher/network/http/HttpTask;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 128
    sget-object v1, Lcom/baidu/launcher/network/http/HttpScheduler;->TAG:Ljava/lang/String;

    const-string v2, "HttpTask exist!"

    invoke-static {v1, v2}, Lcom/baidu/launcher/utils/LogEx;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :cond_1
    iget-object v1, p1, Lcom/baidu/launcher/network/http/HttpTask;->mProgress:Lcom/baidu/launcher/network/http/HttpTask$Progress;

    sget-object v2, Lcom/baidu/launcher/network/http/HttpTask$State;->Failed:Lcom/baidu/launcher/network/http/HttpTask$State;

    iput-object v2, v1, Lcom/baidu/launcher/network/http/HttpTask$Progress;->mState:Lcom/baidu/launcher/network/http/HttpTask$State;

    .line 138
    invoke-virtual {p1}, Lcom/baidu/launcher/network/http/HttpTask;->onProcessed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 130
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/baidu/launcher/network/http/HttpScheduler;->mHttpThreadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;

    invoke-direct {v1, p0, p1}, Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;-><init>(Lcom/baidu/launcher/network/http/HttpScheduler;Lcom/baidu/launcher/network/http/HttpTask;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    const/4 v0, 0x1

    goto :goto_0
.end method
