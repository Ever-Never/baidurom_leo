.class public Lcom/baidu/yi/ads/service/http/HttpScheduler;
.super Ljava/lang/Object;
.source "HttpScheduler.java"


# static fields
.field private static final MAX_TASK_COUNT:I = 0xa

.field private static final TAG:Ljava/lang/String;

.field private static mHttpScheduler:Lcom/baidu/yi/ads/service/http/HttpScheduler;


# instance fields
.field private mHttpThreadList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/yi/ads/service/http/HttpClientThread;",
            ">;"
        }
    .end annotation
.end field

.field private mObserver:Lcom/baidu/yi/ads/service/http/HttpClientThread$Observer;

.field private mWaitingTaskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/yi/ads/service/http/HttpTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/baidu/yi/ads/service/http/HttpScheduler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/yi/ads/service/http/HttpScheduler;->TAG:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/yi/ads/service/http/HttpScheduler;->mHttpThreadList:Ljava/util/List;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/yi/ads/service/http/HttpScheduler;->mWaitingTaskList:Ljava/util/List;

    .line 21
    new-instance v0, Lcom/baidu/yi/ads/service/http/HttpScheduler$1;

    invoke-direct {v0, p0}, Lcom/baidu/yi/ads/service/http/HttpScheduler$1;-><init>(Lcom/baidu/yi/ads/service/http/HttpScheduler;)V

    iput-object v0, p0, Lcom/baidu/yi/ads/service/http/HttpScheduler;->mObserver:Lcom/baidu/yi/ads/service/http/HttpClientThread$Observer;

    .line 10
    return-void
.end method

.method static synthetic access$0(Lcom/baidu/yi/ads/service/http/HttpScheduler;)V
    .locals 0
    .parameter

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/baidu/yi/ads/service/http/HttpScheduler;->trimFinishedThreadAndSendWaitingTask()V

    return-void
.end method

.method public static declared-synchronized close()V
    .locals 2

    .prologue
    .line 36
    const-class v1, Lcom/baidu/yi/ads/service/http/HttpScheduler;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/yi/ads/service/http/HttpScheduler;->mHttpScheduler:Lcom/baidu/yi/ads/service/http/HttpScheduler;

    if-eqz v0, :cond_0

    .line 37
    sget-object v0, Lcom/baidu/yi/ads/service/http/HttpScheduler;->mHttpScheduler:Lcom/baidu/yi/ads/service/http/HttpScheduler;

    invoke-virtual {v0}, Lcom/baidu/yi/ads/service/http/HttpScheduler;->cancelAll()I

    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/yi/ads/service/http/HttpScheduler;->mHttpScheduler:Lcom/baidu/yi/ads/service/http/HttpScheduler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    :cond_0
    monitor-exit v1

    return-void

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private exist(Lcom/baidu/yi/ads/service/http/HttpTask;)Z
    .locals 5
    .parameter "task"

    .prologue
    const/4 v2, 0x1

    .line 151
    iget-object v3, p0, Lcom/baidu/yi/ads/service/http/HttpScheduler;->mWaitingTaskList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 158
    iget-object v3, p0, Lcom/baidu/yi/ads/service/http/HttpScheduler;->mHttpThreadList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 164
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 151
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/yi/ads/service/http/HttpTask;

    .line 152
    .local v0, t:Lcom/baidu/yi/ads/service/http/HttpTask;
    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 158
    .end local v0           #t:Lcom/baidu/yi/ads/service/http/HttpTask;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/yi/ads/service/http/HttpClientThread;

    .line 159
    .local v1, thread:Lcom/baidu/yi/ads/service/http/HttpClientThread;
    invoke-virtual {v1}, Lcom/baidu/yi/ads/service/http/HttpClientThread;->getTask()Lcom/baidu/yi/ads/service/http/HttpTask;

    move-result-object v4

    if-ne v4, p1, :cond_1

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/baidu/yi/ads/service/http/HttpScheduler;
    .locals 2

    .prologue
    .line 29
    const-class v1, Lcom/baidu/yi/ads/service/http/HttpScheduler;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/yi/ads/service/http/HttpScheduler;->mHttpScheduler:Lcom/baidu/yi/ads/service/http/HttpScheduler;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/baidu/yi/ads/service/http/HttpScheduler;

    invoke-direct {v0}, Lcom/baidu/yi/ads/service/http/HttpScheduler;-><init>()V

    sput-object v0, Lcom/baidu/yi/ads/service/http/HttpScheduler;->mHttpScheduler:Lcom/baidu/yi/ads/service/http/HttpScheduler;

    .line 32
    :cond_0
    sget-object v0, Lcom/baidu/yi/ads/service/http/HttpScheduler;->mHttpScheduler:Lcom/baidu/yi/ads/service/http/HttpScheduler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private hasFreeThread()Z
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/baidu/yi/ads/service/http/HttpScheduler;->mHttpThreadList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasWaitingTask()Z
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/baidu/yi/ads/service/http/HttpScheduler;->mWaitingTaskList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private sendWithNewThread(Lcom/baidu/yi/ads/service/http/HttpTask;)Z
    .locals 2
    .parameter "task"

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/baidu/yi/ads/service/http/HttpScheduler;->hasFreeThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    new-instance v0, Lcom/baidu/yi/ads/service/http/HttpClientThread;

    iget-object v1, p0, Lcom/baidu/yi/ads/service/http/HttpScheduler;->mObserver:Lcom/baidu/yi/ads/service/http/HttpClientThread$Observer;

    invoke-direct {v0, p1, v1}, Lcom/baidu/yi/ads/service/http/HttpClientThread;-><init>(Lcom/baidu/yi/ads/service/http/HttpTask;Lcom/baidu/yi/ads/service/http/HttpClientThread$Observer;)V

    .line 178
    .local v0, thread:Lcom/baidu/yi/ads/service/http/HttpClientThread;
    iget-object v1, p0, Lcom/baidu/yi/ads/service/http/HttpScheduler;->mHttpThreadList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    invoke-virtual {v0}, Lcom/baidu/yi/ads/service/http/HttpClientThread;->start()V

    .line 180
    const/4 v1, 0x1

    .line 182
    .end local v0           #thread:Lcom/baidu/yi/ads/service/http/HttpClientThread;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private declared-synchronized trimFinishedThreadAndSendWaitingTask()V
    .locals 4

    .prologue
    .line 187
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/baidu/yi/ads/service/http/HttpScheduler;->mHttpThreadList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 195
    :goto_1
    invoke-direct {p0}, Lcom/baidu/yi/ads/service/http/HttpScheduler;->hasWaitingTask()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/baidu/yi/ads/service/http/HttpScheduler;->hasFreeThread()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_3

    .line 198
    :cond_0
    monitor-exit p0

    return-void

    .line 188
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/baidu/yi/ads/service/http/HttpScheduler;->mHttpThreadList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/yi/ads/service/http/HttpClientThread;

    .line 189
    .local v1, thread:Lcom/baidu/yi/ads/service/http/HttpClientThread;
    invoke-virtual {v1}, Lcom/baidu/yi/ads/service/http/HttpClientThread;->isFree()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 190
    iget-object v2, p0, Lcom/baidu/yi/ads/service/http/HttpScheduler;->mHttpThreadList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 191
    add-int/lit8 v0, v0, -0x1

    .line 187
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 196
    .end local v1           #thread:Lcom/baidu/yi/ads/service/http/HttpClientThread;
    :cond_3
    iget-object v2, p0, Lcom/baidu/yi/ads/service/http/HttpScheduler;->mWaitingTaskList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/yi/ads/service/http/HttpTask;

    invoke-direct {p0, v2}, Lcom/baidu/yi/ads/service/http/HttpScheduler;->sendWithNewThread(Lcom/baidu/yi/ads/service/http/HttpTask;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 187
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method declared-synchronized cancel(Lcom/baidu/yi/ads/service/http/HttpConnection;)I
    .locals 7
    .parameter "connection"

    .prologue
    .line 97
    monitor-enter p0

    const/4 v0, 0x0

    .line 100
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/baidu/yi/ads/service/http/HttpScheduler;->mWaitingTaskList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lt v1, v5, :cond_0

    .line 113
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    iget-object v5, p0, Lcom/baidu/yi/ads/service/http/HttpScheduler;->mHttpThreadList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-lt v2, v5, :cond_2

    .line 124
    monitor-exit p0

    return v0

    .line 101
    .end local v2           #j:I
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/baidu/yi/ads/service/http/HttpScheduler;->mWaitingTaskList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/yi/ads/service/http/HttpTask;

    .line 102
    .local v3, t:Lcom/baidu/yi/ads/service/http/HttpTask;
    iget-object v5, v3, Lcom/baidu/yi/ads/service/http/HttpTask;->mConnection:Lcom/baidu/yi/ads/service/http/HttpConnection;

    if-ne v5, p1, :cond_1

    .line 103
    iget-object v5, v3, Lcom/baidu/yi/ads/service/http/HttpTask;->mProgress:Lcom/baidu/yi/ads/service/http/HttpTask$Progress;

    sget-object v6, Lcom/baidu/yi/ads/service/http/HttpTask$State;->Canceled:Lcom/baidu/yi/ads/service/http/HttpTask$State;

    iput-object v6, v5, Lcom/baidu/yi/ads/service/http/HttpTask$Progress;->mState:Lcom/baidu/yi/ads/service/http/HttpTask$State;

    .line 104
    invoke-virtual {v3}, Lcom/baidu/yi/ads/service/http/HttpTask;->onProgressed()V

    .line 105
    iget-object v5, p0, Lcom/baidu/yi/ads/service/http/HttpScheduler;->mWaitingTaskList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 106
    add-int/lit8 v1, v1, -0x1

    .line 108
    add-int/lit8 v0, v0, 0x1

    .line 100
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 114
    .end local v3           #t:Lcom/baidu/yi/ads/service/http/HttpTask;
    .restart local v2       #j:I
    :cond_2
    iget-object v5, p0, Lcom/baidu/yi/ads/service/http/HttpScheduler;->mHttpThreadList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/yi/ads/service/http/HttpClientThread;

    .line 115
    .local v4, thread:Lcom/baidu/yi/ads/service/http/HttpClientThread;
    invoke-virtual {v4}, Lcom/baidu/yi/ads/service/http/HttpClientThread;->getTask()Lcom/baidu/yi/ads/service/http/HttpTask;

    move-result-object v5

    iget-object v5, v5, Lcom/baidu/yi/ads/service/http/HttpTask;->mConnection:Lcom/baidu/yi/ads/service/http/HttpConnection;

    if-ne v5, p1, :cond_3

    .line 116
    invoke-virtual {v4}, Lcom/baidu/yi/ads/service/http/HttpClientThread;->cancel()V

    .line 117
    iget-object v5, p0, Lcom/baidu/yi/ads/service/http/HttpScheduler;->mHttpThreadList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    add-int/lit8 v2, v2, -0x1

    .line 120
    add-int/lit8 v0, v0, 0x1

    .line 113
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 97
    .end local v2           #j:I
    .end local v4           #thread:Lcom/baidu/yi/ads/service/http/HttpClientThread;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method declared-synchronized cancel(Lcom/baidu/yi/ads/service/http/HttpTask;)I
    .locals 7
    .parameter "task"

    .prologue
    const/4 v4, 0x1

    .line 70
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/baidu/yi/ads/service/http/HttpScheduler;->mWaitingTaskList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lt v0, v5, :cond_0

    .line 81
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    iget-object v5, p0, Lcom/baidu/yi/ads/service/http/HttpScheduler;->mHttpThreadList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-lt v1, v5, :cond_2

    .line 90
    const/4 v4, 0x0

    .end local v1           #j:I
    :goto_2
    monitor-exit p0

    return v4

    .line 71
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/baidu/yi/ads/service/http/HttpScheduler;->mWaitingTaskList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/yi/ads/service/http/HttpTask;

    .line 72
    .local v2, t:Lcom/baidu/yi/ads/service/http/HttpTask;
    if-ne v2, p1, :cond_1

    .line 73
    iget-object v5, v2, Lcom/baidu/yi/ads/service/http/HttpTask;->mProgress:Lcom/baidu/yi/ads/service/http/HttpTask$Progress;

    sget-object v6, Lcom/baidu/yi/ads/service/http/HttpTask$State;->Canceled:Lcom/baidu/yi/ads/service/http/HttpTask$State;

    iput-object v6, v5, Lcom/baidu/yi/ads/service/http/HttpTask$Progress;->mState:Lcom/baidu/yi/ads/service/http/HttpTask$State;

    .line 74
    invoke-virtual {v2}, Lcom/baidu/yi/ads/service/http/HttpTask;->onProgressed()V

    .line 75
    iget-object v5, p0, Lcom/baidu/yi/ads/service/http/HttpScheduler;->mWaitingTaskList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 70
    .end local v2           #t:Lcom/baidu/yi/ads/service/http/HttpTask;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .restart local v2       #t:Lcom/baidu/yi/ads/service/http/HttpTask;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    .end local v2           #t:Lcom/baidu/yi/ads/service/http/HttpTask;
    .restart local v1       #j:I
    :cond_2
    :try_start_2
    iget-object v5, p0, Lcom/baidu/yi/ads/service/http/HttpScheduler;->mHttpThreadList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/yi/ads/service/http/HttpClientThread;

    .line 83
    .local v3, thread:Lcom/baidu/yi/ads/service/http/HttpClientThread;
    invoke-virtual {v3}, Lcom/baidu/yi/ads/service/http/HttpClientThread;->getTask()Lcom/baidu/yi/ads/service/http/HttpTask;

    move-result-object v5

    if-ne v5, p1, :cond_3

    .line 84
    invoke-virtual {v3}, Lcom/baidu/yi/ads/service/http/HttpClientThread;->cancel()V

    .line 85
    iget-object v5, p0, Lcom/baidu/yi/ads/service/http/HttpScheduler;->mHttpThreadList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 81
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public declared-synchronized cancelAll()I
    .locals 6

    .prologue
    .line 131
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/baidu/yi/ads/service/http/HttpScheduler;->mWaitingTaskList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lcom/baidu/yi/ads/service/http/HttpScheduler;->mHttpThreadList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int v0, v3, v4

    .line 134
    .local v0, count:I
    iget-object v3, p0, Lcom/baidu/yi/ads/service/http/HttpScheduler;->mWaitingTaskList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 138
    iget-object v3, p0, Lcom/baidu/yi/ads/service/http/HttpScheduler;->mWaitingTaskList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 141
    iget-object v3, p0, Lcom/baidu/yi/ads/service/http/HttpScheduler;->mHttpThreadList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 144
    iget-object v3, p0, Lcom/baidu/yi/ads/service/http/HttpScheduler;->mHttpThreadList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    monitor-exit p0

    return v0

    .line 134
    :cond_0
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/yi/ads/service/http/HttpTask;

    .line 135
    .local v1, task:Lcom/baidu/yi/ads/service/http/HttpTask;
    iget-object v4, v1, Lcom/baidu/yi/ads/service/http/HttpTask;->mProgress:Lcom/baidu/yi/ads/service/http/HttpTask$Progress;

    sget-object v5, Lcom/baidu/yi/ads/service/http/HttpTask$State;->Canceled:Lcom/baidu/yi/ads/service/http/HttpTask$State;

    iput-object v5, v4, Lcom/baidu/yi/ads/service/http/HttpTask$Progress;->mState:Lcom/baidu/yi/ads/service/http/HttpTask$State;

    .line 136
    invoke-virtual {v1}, Lcom/baidu/yi/ads/service/http/HttpTask;->onProgressed()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 131
    .end local v0           #count:I
    .end local v1           #task:Lcom/baidu/yi/ads/service/http/HttpTask;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 141
    .restart local v0       #count:I
    :cond_1
    :try_start_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/yi/ads/service/http/HttpClientThread;

    .line 142
    .local v2, thread:Lcom/baidu/yi/ads/service/http/HttpClientThread;
    invoke-virtual {v2}, Lcom/baidu/yi/ads/service/http/HttpClientThread;->cancel()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method declared-synchronized send(Lcom/baidu/yi/ads/service/http/HttpTask;)Z
    .locals 2
    .parameter "task"

    .prologue
    .line 46
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/baidu/yi/ads/service/http/HttpScheduler;->exist(Lcom/baidu/yi/ads/service/http/HttpTask;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    sget-object v0, Lcom/baidu/yi/ads/service/http/HttpScheduler;->TAG:Ljava/lang/String;

    const-string v1, "Task exist!"

    invoke-static {v0, v1}, Lcom/baidu/yi/ads/service/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :goto_0
    const/4 v0, 0x0

    :goto_1
    monitor-exit p0

    return v0

    .line 49
    :cond_0
    :try_start_1
    iget-object v0, p1, Lcom/baidu/yi/ads/service/http/HttpTask;->mRequest:Lcom/baidu/yi/ads/service/http/HttpParam$Request;

    invoke-virtual {v0}, Lcom/baidu/yi/ads/service/http/HttpParam$Request;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50
    invoke-direct {p0, p1}, Lcom/baidu/yi/ads/service/http/HttpScheduler;->sendWithNewThread(Lcom/baidu/yi/ads/service/http/HttpTask;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/baidu/yi/ads/service/http/HttpScheduler;->mWaitingTaskList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 56
    :cond_2
    iget-object v0, p1, Lcom/baidu/yi/ads/service/http/HttpTask;->mProgress:Lcom/baidu/yi/ads/service/http/HttpTask$Progress;

    sget-object v1, Lcom/baidu/yi/ads/service/http/HttpTask$State;->Failed:Lcom/baidu/yi/ads/service/http/HttpTask$State;

    iput-object v1, v0, Lcom/baidu/yi/ads/service/http/HttpTask$Progress;->mState:Lcom/baidu/yi/ads/service/http/HttpTask$State;

    .line 57
    invoke-virtual {p1}, Lcom/baidu/yi/ads/service/http/HttpTask;->onProgressed()V

    .line 58
    sget-object v0, Lcom/baidu/yi/ads/service/http/HttpScheduler;->TAG:Ljava/lang/String;

    const-string v1, "download error param!"

    invoke-static {v0, v1}, Lcom/baidu/yi/ads/service/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
