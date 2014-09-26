.class public Lcom/baidu/bulletin/http/HttpScheduler;
.super Ljava/lang/Object;
.source "HttpScheduler.java"


# static fields
.field private static final MAX_TASK_COUNT:I = 0xa

.field private static final TAG:Ljava/lang/String;

.field private static mHttpScheduler:Lcom/baidu/bulletin/http/HttpScheduler;


# instance fields
.field private mHttpThreadList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bulletin/http/HttpClientThread;",
            ">;"
        }
    .end annotation
.end field

.field private mObserver:Lcom/baidu/bulletin/http/HttpClientThread$Observer;

.field private mWaitingTaskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bulletin/http/HttpTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/baidu/bulletin/http/HttpScheduler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/bulletin/http/HttpScheduler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bulletin/http/HttpScheduler;->mHttpThreadList:Ljava/util/List;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bulletin/http/HttpScheduler;->mWaitingTaskList:Ljava/util/List;

    .line 23
    new-instance v0, Lcom/baidu/bulletin/http/HttpScheduler$1;

    invoke-direct {v0, p0}, Lcom/baidu/bulletin/http/HttpScheduler$1;-><init>(Lcom/baidu/bulletin/http/HttpScheduler;)V

    iput-object v0, p0, Lcom/baidu/bulletin/http/HttpScheduler;->mObserver:Lcom/baidu/bulletin/http/HttpClientThread$Observer;

    return-void
.end method

.method static synthetic access$000(Lcom/baidu/bulletin/http/HttpScheduler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/baidu/bulletin/http/HttpScheduler;->trimFinishedThreadAndSendWaitingTask()V

    return-void
.end method

.method public static declared-synchronized close()V
    .locals 2

    .prologue
    .line 38
    const-class v1, Lcom/baidu/bulletin/http/HttpScheduler;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/bulletin/http/HttpScheduler;->mHttpScheduler:Lcom/baidu/bulletin/http/HttpScheduler;

    if-eqz v0, :cond_0

    .line 39
    sget-object v0, Lcom/baidu/bulletin/http/HttpScheduler;->mHttpScheduler:Lcom/baidu/bulletin/http/HttpScheduler;

    invoke-virtual {v0}, Lcom/baidu/bulletin/http/HttpScheduler;->cancelAll()I

    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/bulletin/http/HttpScheduler;->mHttpScheduler:Lcom/baidu/bulletin/http/HttpScheduler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :cond_0
    monitor-exit v1

    return-void

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private exist(Lcom/baidu/bulletin/http/HttpTask;)Z
    .locals 5
    .parameter "task"

    .prologue
    const/4 v3, 0x1

    .line 153
    iget-object v4, p0, Lcom/baidu/bulletin/http/HttpScheduler;->mWaitingTaskList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/bulletin/http/HttpTask;

    .line 154
    .local v1, t:Lcom/baidu/bulletin/http/HttpTask;
    if-ne v1, p1, :cond_0

    .line 166
    .end local v1           #t:Lcom/baidu/bulletin/http/HttpTask;
    :goto_0
    return v3

    .line 160
    :cond_1
    iget-object v4, p0, Lcom/baidu/bulletin/http/HttpScheduler;->mHttpThreadList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/bulletin/http/HttpClientThread;

    .line 161
    .local v2, thread:Lcom/baidu/bulletin/http/HttpClientThread;
    invoke-virtual {v2}, Lcom/baidu/bulletin/http/HttpClientThread;->getTask()Lcom/baidu/bulletin/http/HttpTask;

    move-result-object v4

    if-ne v4, p1, :cond_2

    goto :goto_0

    .line 166
    .end local v2           #thread:Lcom/baidu/bulletin/http/HttpClientThread;
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/baidu/bulletin/http/HttpScheduler;
    .locals 2

    .prologue
    .line 31
    const-class v1, Lcom/baidu/bulletin/http/HttpScheduler;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/bulletin/http/HttpScheduler;->mHttpScheduler:Lcom/baidu/bulletin/http/HttpScheduler;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/baidu/bulletin/http/HttpScheduler;

    invoke-direct {v0}, Lcom/baidu/bulletin/http/HttpScheduler;-><init>()V

    sput-object v0, Lcom/baidu/bulletin/http/HttpScheduler;->mHttpScheduler:Lcom/baidu/bulletin/http/HttpScheduler;

    .line 34
    :cond_0
    sget-object v0, Lcom/baidu/bulletin/http/HttpScheduler;->mHttpScheduler:Lcom/baidu/bulletin/http/HttpScheduler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private hasFreeThread()Z
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/baidu/bulletin/http/HttpScheduler;->mHttpThreadList:Ljava/util/List;

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
    .line 174
    iget-object v0, p0, Lcom/baidu/bulletin/http/HttpScheduler;->mWaitingTaskList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendWithNewThread(Lcom/baidu/bulletin/http/HttpTask;)Z
    .locals 3
    .parameter "task"

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/baidu/bulletin/http/HttpScheduler;->hasFreeThread()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 179
    new-instance v1, Lcom/baidu/bulletin/http/HttpClientThread;

    iget-object v2, p0, Lcom/baidu/bulletin/http/HttpScheduler;->mObserver:Lcom/baidu/bulletin/http/HttpClientThread$Observer;

    invoke-direct {v1, p1, v2}, Lcom/baidu/bulletin/http/HttpClientThread;-><init>(Lcom/baidu/bulletin/http/HttpTask;Lcom/baidu/bulletin/http/HttpClientThread$Observer;)V

    .line 180
    .local v1, thread:Lcom/baidu/bulletin/http/HttpClientThread;
    iget-object v2, p0, Lcom/baidu/bulletin/http/HttpScheduler;->mHttpThreadList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    invoke-virtual {v1}, Lcom/baidu/bulletin/http/HttpClientThread;->start()V

    .line 184
    invoke-static {}, Lcom/baidu/bulletin/utils/DeviceEnv$Network;->getOutgoingRoute()Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;

    move-result-object v0

    .line 185
    .local v0, netType:Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;
    sget-object v2, Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;->WIFI:Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;

    if-ne v0, v2, :cond_1

    .line 186
    const/4 v2, 0x3

    invoke-static {v2}, Lcom/baidu/bulletin/utils/BulletinUBC;->statForNetConnType(B)V

    .line 190
    :cond_0
    :goto_0
    const/4 v2, 0x1

    .line 192
    .end local v0           #netType:Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;
    .end local v1           #thread:Lcom/baidu/bulletin/http/HttpClientThread;
    :goto_1
    return v2

    .line 187
    .restart local v0       #netType:Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;
    .restart local v1       #thread:Lcom/baidu/bulletin/http/HttpClientThread;
    :cond_1
    sget-object v2, Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;->MOBILE:Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;

    if-ne v0, v2, :cond_0

    .line 188
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/baidu/bulletin/utils/BulletinUBC;->statForNetConnType(B)V

    goto :goto_0

    .line 192
    .end local v0           #netType:Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;
    .end local v1           #thread:Lcom/baidu/bulletin/http/HttpClientThread;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private declared-synchronized trimFinishedThreadAndSendWaitingTask()V
    .locals 4

    .prologue
    .line 197
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/baidu/bulletin/http/HttpScheduler;->mHttpThreadList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 198
    iget-object v2, p0, Lcom/baidu/bulletin/http/HttpScheduler;->mHttpThreadList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/bulletin/http/HttpClientThread;

    .line 199
    .local v1, thread:Lcom/baidu/bulletin/http/HttpClientThread;
    invoke-virtual {v1}, Lcom/baidu/bulletin/http/HttpClientThread;->isFree()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 200
    iget-object v2, p0, Lcom/baidu/bulletin/http/HttpScheduler;->mHttpThreadList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 201
    add-int/lit8 v0, v0, -0x1

    .line 197
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 205
    .end local v1           #thread:Lcom/baidu/bulletin/http/HttpClientThread;
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/baidu/bulletin/http/HttpScheduler;->hasWaitingTask()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/baidu/bulletin/http/HttpScheduler;->hasFreeThread()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 206
    iget-object v2, p0, Lcom/baidu/bulletin/http/HttpScheduler;->mWaitingTaskList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/bulletin/http/HttpTask;

    invoke-direct {p0, v2}, Lcom/baidu/bulletin/http/HttpScheduler;->sendWithNewThread(Lcom/baidu/bulletin/http/HttpTask;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 197
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 208
    :cond_2
    monitor-exit p0

    return-void
.end method


# virtual methods
.method declared-synchronized cancel(Lcom/baidu/bulletin/http/HttpConnection;)I
    .locals 7
    .parameter "connection"

    .prologue
    .line 99
    monitor-enter p0

    const/4 v0, 0x0

    .line 102
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/baidu/bulletin/http/HttpScheduler;->mWaitingTaskList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 103
    iget-object v5, p0, Lcom/baidu/bulletin/http/HttpScheduler;->mWaitingTaskList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/bulletin/http/HttpTask;

    .line 104
    .local v3, t:Lcom/baidu/bulletin/http/HttpTask;
    iget-object v5, v3, Lcom/baidu/bulletin/http/HttpTask;->mConnection:Lcom/baidu/bulletin/http/HttpConnection;

    if-ne v5, p1, :cond_0

    .line 105
    iget-object v5, v3, Lcom/baidu/bulletin/http/HttpTask;->mProgress:Lcom/baidu/bulletin/http/HttpTask$Progress;

    sget-object v6, Lcom/baidu/bulletin/http/HttpTask$State;->Canceled:Lcom/baidu/bulletin/http/HttpTask$State;

    iput-object v6, v5, Lcom/baidu/bulletin/http/HttpTask$Progress;->mState:Lcom/baidu/bulletin/http/HttpTask$State;

    .line 106
    invoke-virtual {v3}, Lcom/baidu/bulletin/http/HttpTask;->onProgressed()V

    .line 107
    iget-object v5, p0, Lcom/baidu/bulletin/http/HttpScheduler;->mWaitingTaskList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 108
    add-int/lit8 v1, v1, -0x1

    .line 110
    add-int/lit8 v0, v0, 0x1

    .line 102
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 115
    .end local v3           #t:Lcom/baidu/bulletin/http/HttpTask;
    :cond_1
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    iget-object v5, p0, Lcom/baidu/bulletin/http/HttpScheduler;->mHttpThreadList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 116
    iget-object v5, p0, Lcom/baidu/bulletin/http/HttpScheduler;->mHttpThreadList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/bulletin/http/HttpClientThread;

    .line 117
    .local v4, thread:Lcom/baidu/bulletin/http/HttpClientThread;
    invoke-virtual {v4}, Lcom/baidu/bulletin/http/HttpClientThread;->getTask()Lcom/baidu/bulletin/http/HttpTask;

    move-result-object v5

    iget-object v5, v5, Lcom/baidu/bulletin/http/HttpTask;->mConnection:Lcom/baidu/bulletin/http/HttpConnection;

    if-ne v5, p1, :cond_2

    .line 118
    invoke-virtual {v4}, Lcom/baidu/bulletin/http/HttpClientThread;->cancel()V

    .line 119
    iget-object v5, p0, Lcom/baidu/bulletin/http/HttpScheduler;->mHttpThreadList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    add-int/lit8 v2, v2, -0x1

    .line 122
    add-int/lit8 v0, v0, 0x1

    .line 115
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 126
    .end local v4           #thread:Lcom/baidu/bulletin/http/HttpClientThread;
    :cond_3
    monitor-exit p0

    return v0

    .line 99
    .end local v2           #j:I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method declared-synchronized cancel(Lcom/baidu/bulletin/http/HttpTask;)I
    .locals 7
    .parameter "task"

    .prologue
    const/4 v4, 0x1

    .line 72
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/baidu/bulletin/http/HttpScheduler;->mWaitingTaskList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 73
    iget-object v5, p0, Lcom/baidu/bulletin/http/HttpScheduler;->mWaitingTaskList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/bulletin/http/HttpTask;

    .line 74
    .local v2, t:Lcom/baidu/bulletin/http/HttpTask;
    if-ne v2, p1, :cond_0

    .line 75
    iget-object v5, v2, Lcom/baidu/bulletin/http/HttpTask;->mProgress:Lcom/baidu/bulletin/http/HttpTask$Progress;

    sget-object v6, Lcom/baidu/bulletin/http/HttpTask$State;->Canceled:Lcom/baidu/bulletin/http/HttpTask$State;

    iput-object v6, v5, Lcom/baidu/bulletin/http/HttpTask$Progress;->mState:Lcom/baidu/bulletin/http/HttpTask$State;

    .line 76
    invoke-virtual {v2}, Lcom/baidu/bulletin/http/HttpTask;->onProgressed()V

    .line 77
    iget-object v5, p0, Lcom/baidu/bulletin/http/HttpScheduler;->mWaitingTaskList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    .end local v2           #t:Lcom/baidu/bulletin/http/HttpTask;
    :goto_1
    monitor-exit p0

    return v4

    .line 72
    .restart local v2       #t:Lcom/baidu/bulletin/http/HttpTask;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    .end local v2           #t:Lcom/baidu/bulletin/http/HttpTask;
    :cond_1
    const/4 v1, 0x0

    .local v1, j:I
    :goto_2
    :try_start_1
    iget-object v5, p0, Lcom/baidu/bulletin/http/HttpScheduler;->mHttpThreadList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 84
    iget-object v5, p0, Lcom/baidu/bulletin/http/HttpScheduler;->mHttpThreadList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/bulletin/http/HttpClientThread;

    .line 85
    .local v3, thread:Lcom/baidu/bulletin/http/HttpClientThread;
    invoke-virtual {v3}, Lcom/baidu/bulletin/http/HttpClientThread;->getTask()Lcom/baidu/bulletin/http/HttpTask;

    move-result-object v5

    if-ne v5, p1, :cond_2

    .line 86
    invoke-virtual {v3}, Lcom/baidu/bulletin/http/HttpClientThread;->cancel()V

    .line 87
    iget-object v5, p0, Lcom/baidu/bulletin/http/HttpScheduler;->mHttpThreadList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 72
    .end local v1           #j:I
    .end local v3           #thread:Lcom/baidu/bulletin/http/HttpClientThread;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 83
    .restart local v1       #j:I
    .restart local v3       #thread:Lcom/baidu/bulletin/http/HttpClientThread;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 92
    .end local v3           #thread:Lcom/baidu/bulletin/http/HttpClientThread;
    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public declared-synchronized cancelAll()I
    .locals 6

    .prologue
    .line 133
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/baidu/bulletin/http/HttpScheduler;->mWaitingTaskList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, p0, Lcom/baidu/bulletin/http/HttpScheduler;->mHttpThreadList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int v0, v4, v5

    .line 136
    .local v0, count:I
    iget-object v4, p0, Lcom/baidu/bulletin/http/HttpScheduler;->mWaitingTaskList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/bulletin/http/HttpTask;

    .line 137
    .local v2, task:Lcom/baidu/bulletin/http/HttpTask;
    iget-object v4, v2, Lcom/baidu/bulletin/http/HttpTask;->mProgress:Lcom/baidu/bulletin/http/HttpTask$Progress;

    sget-object v5, Lcom/baidu/bulletin/http/HttpTask$State;->Canceled:Lcom/baidu/bulletin/http/HttpTask$State;

    iput-object v5, v4, Lcom/baidu/bulletin/http/HttpTask$Progress;->mState:Lcom/baidu/bulletin/http/HttpTask$State;

    .line 138
    invoke-virtual {v2}, Lcom/baidu/bulletin/http/HttpTask;->onProgressed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 133
    .end local v0           #count:I
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #task:Lcom/baidu/bulletin/http/HttpTask;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 140
    .restart local v0       #count:I
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/baidu/bulletin/http/HttpScheduler;->mWaitingTaskList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 143
    iget-object v4, p0, Lcom/baidu/bulletin/http/HttpScheduler;->mHttpThreadList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/bulletin/http/HttpClientThread;

    .line 144
    .local v3, thread:Lcom/baidu/bulletin/http/HttpClientThread;
    invoke-virtual {v3}, Lcom/baidu/bulletin/http/HttpClientThread;->cancel()V

    goto :goto_1

    .line 146
    .end local v3           #thread:Lcom/baidu/bulletin/http/HttpClientThread;
    :cond_1
    iget-object v4, p0, Lcom/baidu/bulletin/http/HttpScheduler;->mHttpThreadList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    monitor-exit p0

    return v0
.end method

.method declared-synchronized send(Lcom/baidu/bulletin/http/HttpTask;)Z
    .locals 2
    .parameter "task"

    .prologue
    .line 48
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/http/HttpScheduler;->exist(Lcom/baidu/bulletin/http/HttpTask;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    sget-object v0, Lcom/baidu/bulletin/http/HttpScheduler;->TAG:Ljava/lang/String;

    const-string v1, "Task exist!"

    invoke-static {v0, v1}, Lcom/baidu/bulletin/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :goto_0
    const/4 v0, 0x0

    :goto_1
    monitor-exit p0

    return v0

    .line 51
    :cond_0
    :try_start_1
    iget-object v0, p1, Lcom/baidu/bulletin/http/HttpTask;->mRequest:Lcom/baidu/bulletin/http/HttpParam$Request;

    invoke-virtual {v0}, Lcom/baidu/bulletin/http/HttpParam$Request;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/http/HttpScheduler;->sendWithNewThread(Lcom/baidu/bulletin/http/HttpTask;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/baidu/bulletin/http/HttpScheduler;->mWaitingTaskList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 58
    :cond_2
    iget-object v0, p1, Lcom/baidu/bulletin/http/HttpTask;->mProgress:Lcom/baidu/bulletin/http/HttpTask$Progress;

    sget-object v1, Lcom/baidu/bulletin/http/HttpTask$State;->Failed:Lcom/baidu/bulletin/http/HttpTask$State;

    iput-object v1, v0, Lcom/baidu/bulletin/http/HttpTask$Progress;->mState:Lcom/baidu/bulletin/http/HttpTask$State;

    .line 59
    invoke-virtual {p1}, Lcom/baidu/bulletin/http/HttpTask;->onProgressed()V

    .line 60
    sget-object v0, Lcom/baidu/bulletin/http/HttpScheduler;->TAG:Ljava/lang/String;

    const-string v1, "download error param!"

    invoke-static {v0, v1}, Lcom/baidu/bulletin/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
