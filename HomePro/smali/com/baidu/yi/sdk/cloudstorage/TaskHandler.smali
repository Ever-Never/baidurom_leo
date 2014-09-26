.class public Lcom/baidu/yi/sdk/cloudstorage/TaskHandler;
.super Ljava/lang/Object;
.source "TaskHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TaskHandler"

.field private static final mTaskHandler:Lcom/baidu/yi/sdk/cloudstorage/TaskHandler;


# instance fields
.field private final mMaxConcurrentTasksAllowed:I

.field private final mTasksInProgress:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mTasksQueue:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/baidu/yi/sdk/cloudstorage/TaskHandler;

    invoke-direct {v0}, Lcom/baidu/yi/sdk/cloudstorage/TaskHandler;-><init>()V

    sput-object v0, Lcom/baidu/yi/sdk/cloudstorage/TaskHandler;->mTaskHandler:Lcom/baidu/yi/sdk/cloudstorage/TaskHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/yi/sdk/cloudstorage/TaskHandler;->mTasksQueue:Ljava/util/LinkedHashMap;

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/yi/sdk/cloudstorage/TaskHandler;->mTasksInProgress:Ljava/util/HashMap;

    .line 17
    const/4 v0, 0x5

    iput v0, p0, Lcom/baidu/yi/sdk/cloudstorage/TaskHandler;->mMaxConcurrentTasksAllowed:I

    .line 13
    return-void
.end method

.method static getInstance()Lcom/baidu/yi/sdk/cloudstorage/TaskHandler;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/baidu/yi/sdk/cloudstorage/TaskHandler;->mTaskHandler:Lcom/baidu/yi/sdk/cloudstorage/TaskHandler;

    return-object v0
.end method

.method private isReadyToStart(Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;J)Z
    .locals 4
    .parameter "info"
    .parameter "now"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 89
    if-nez p1, :cond_1

    .line 127
    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 91
    :cond_1
    invoke-static {}, Lcom/baidu/yi/sdk/cloudstorage/TaskHandler;->getInstance()Lcom/baidu/yi/sdk/cloudstorage/TaskHandler;

    move-result-object v2

    iget-object v3, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mTaskId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/baidu/yi/sdk/cloudstorage/TaskHandler;->hasTaskInQueue(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 92
    iget v1, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mControl:I

    sget-object v2, Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;->PAUSED:Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;

    invoke-virtual {v2}, Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;->getValue()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 93
    iget-object v1, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mTaskId:Ljava/lang/String;

    sget-object v2, Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;->PAUSED:Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;

    invoke-virtual {p0, v1, v2}, Lcom/baidu/yi/sdk/cloudstorage/TaskHandler;->controlTask(Ljava/lang/String;Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;)V

    goto :goto_0

    .line 94
    :cond_2
    iget v1, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mControl:I

    sget-object v2, Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;->CANCEL:Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;

    invoke-virtual {v2}, Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;->getValue()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 95
    iget-object v1, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mTaskId:Ljava/lang/String;

    sget-object v2, Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;->CANCEL:Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;

    invoke-virtual {p0, v1, v2}, Lcom/baidu/yi/sdk/cloudstorage/TaskHandler;->controlTask(Ljava/lang/String;Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;)V

    goto :goto_0

    .line 99
    :cond_3
    iget v2, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mControl:I

    sget-object v3, Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;->PAUSED:Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;

    invoke-virtual {v3}, Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;->getValue()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 100
    iget v2, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mControl:I

    sget-object v3, Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;->CANCEL:Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;

    invoke-virtual {v3}, Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;->getValue()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 103
    invoke-virtual {p0, p1}, Lcom/baidu/yi/sdk/cloudstorage/TaskHandler;->checkCanUseNetwork(Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 104
    iget v2, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mStatus:I

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_1
    move v0, v1

    .line 107
    goto :goto_0

    .line 113
    :sswitch_2
    invoke-static {}, Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;->getInstance()Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;

    move-result-object v1

    iget-object v2, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mTaskId:Ljava/lang/String;

    iget-object v3, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v3}, Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;->deleteTask(Ljava/lang/String;Landroid/content/Context;)Z

    goto :goto_0

    .line 117
    :sswitch_3
    invoke-static {}, Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;->getInstance()Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;

    move-result-object v1

    iget-object v2, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mTaskId:Ljava/lang/String;

    .line 118
    iget-object v3, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mContext:Landroid/content/Context;

    .line 117
    invoke-virtual {v1, v2, v3}, Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;->deleteTask(Ljava/lang/String;Landroid/content/Context;)Z

    goto :goto_0

    .line 124
    :sswitch_4
    invoke-virtual {p1, p2, p3}, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->restartTime(J)J

    move-result-wide v2

    cmp-long v2, v2, p2

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 104
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0xbe -> :sswitch_1
        0xc0 -> :sswitch_0
        0xc8 -> :sswitch_2
        0x1f4 -> :sswitch_4
        0x1f5 -> :sswitch_3
        0x1f6 -> :sswitch_0
    .end sparse-switch
.end method

.method private declared-synchronized startTaskThread()V
    .locals 8

    .prologue
    .line 40
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/baidu/yi/sdk/cloudstorage/TaskHandler;->mTasksQueue:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 41
    .local v3, keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v1, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    iget-object v5, p0, Lcom/baidu/yi/sdk/cloudstorage/TaskHandler;->mTasksInProgress:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    const/4 v6, 0x5

    if-ge v5, v6, :cond_0

    .line 43
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 51
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_2

    .line 54
    monitor-exit p0

    return-void

    .line 44
    :cond_1
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 45
    .local v4, taskId:Ljava/lang/String;
    iget-object v5, p0, Lcom/baidu/yi/sdk/cloudstorage/TaskHandler;->mTasksQueue:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;

    .line 46
    .local v2, info:Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;
    invoke-virtual {p0, v2}, Lcom/baidu/yi/sdk/cloudstorage/TaskHandler;->startTaskThread(Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;)V

    .line 47
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    iget-object v6, p0, Lcom/baidu/yi/sdk/cloudstorage/TaskHandler;->mTasksInProgress:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/baidu/yi/sdk/cloudstorage/TaskHandler;->mTasksQueue:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;

    invoke-virtual {v6, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string v5, "TaskHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "started task for : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 40
    .end local v1           #ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #info:Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;
    .end local v3           #keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4           #taskId:Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 51
    .restart local v1       #ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3       #keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    :try_start_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 52
    .local v0, id:Ljava/lang/String;
    iget-object v6, p0, Lcom/baidu/yi/sdk/cloudstorage/TaskHandler;->mTasksQueue:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public checkCanUseNetwork(Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;)Z
    .locals 3
    .parameter "info"

    .prologue
    const/4 v0, 0x1

    .line 131
    iget-object v1, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/yi/sdk/cloudstorage/utils/Helpers;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 132
    iget v1, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mAllowedNetworkTypes:I

    sget-object v2, Lcom/baidu/yi/sdk/cloudstorage/Constants$ALLOWED_NETWORK;->ANY:Lcom/baidu/yi/sdk/cloudstorage/Constants$ALLOWED_NETWORK;

    invoke-virtual {v2}, Lcom/baidu/yi/sdk/cloudstorage/Constants$ALLOWED_NETWORK;->getValue()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 141
    :cond_0
    :goto_0
    return v0

    .line 134
    :cond_1
    iget v1, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mAllowedNetworkTypes:I

    sget-object v2, Lcom/baidu/yi/sdk/cloudstorage/Constants$ALLOWED_NETWORK;->WIFI_ONLY:Lcom/baidu/yi/sdk/cloudstorage/Constants$ALLOWED_NETWORK;

    .line 135
    invoke-virtual {v2}, Lcom/baidu/yi/sdk/cloudstorage/Constants$ALLOWED_NETWORK;->getValue()I

    move-result v2

    .line 134
    if-ne v1, v2, :cond_2

    .line 136
    iget-object v1, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/yi/sdk/cloudstorage/utils/Helpers;->getNetworkType(Landroid/content/Context;)I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 141
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method declared-synchronized controlTask(Ljava/lang/String;Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;)V
    .locals 2
    .parameter "taskId"
    .parameter "control"

    .prologue
    .line 66
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/baidu/yi/sdk/cloudstorage/TaskHandler;->mTasksQueue:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 68
    iget-object v1, p0, Lcom/baidu/yi/sdk/cloudstorage/TaskHandler;->mTasksQueue:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 69
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/baidu/yi/sdk/cloudstorage/TaskHandler;->mTasksInProgress:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/baidu/yi/sdk/cloudstorage/TaskHandler;->mTasksInProgress:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;

    iget-object v0, v1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mTaskThread:Lcom/baidu/yi/sdk/cloudstorage/TaskThread;

    .line 71
    .local v0, thread:Lcom/baidu/yi/sdk/cloudstorage/TaskThread;
    if-eqz v0, :cond_2

    .line 72
    invoke-virtual {p2}, Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/yi/sdk/cloudstorage/TaskThread;->suspendThread(I)V

    .line 74
    :cond_2
    invoke-virtual {p0, p1}, Lcom/baidu/yi/sdk/cloudstorage/TaskHandler;->dequeueTask(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 66
    .end local v0           #thread:Lcom/baidu/yi/sdk/cloudstorage/TaskThread;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized dequeueTask(Ljava/lang/String;)V
    .locals 1
    .parameter "taskId"

    .prologue
    .line 80
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/baidu/yi/sdk/cloudstorage/TaskHandler;->mTasksInProgress:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    :cond_0
    invoke-direct {p0}, Lcom/baidu/yi/sdk/cloudstorage/TaskHandler;->startTaskThread()V

    .line 83
    iget-object v0, p0, Lcom/baidu/yi/sdk/cloudstorage/TaskHandler;->mTasksInProgress:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/baidu/yi/sdk/cloudstorage/TaskHandler;->mTasksQueue:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 84
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    :cond_1
    monitor-exit p0

    return-void

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized enqueueTask(Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 26
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/yi/sdk/cloudstorage/TaskHandler;->mTasksQueue:Ljava/util/LinkedHashMap;

    iget-object v1, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mTaskId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 27
    const-string v0, "TaskHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "enqueued task. id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mTaskId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iget-object v0, p0, Lcom/baidu/yi/sdk/cloudstorage/TaskHandler;->mTasksQueue:Ljava/util/LinkedHashMap;

    iget-object v1, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mTaskId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-direct {p0}, Lcom/baidu/yi/sdk/cloudstorage/TaskHandler;->startTaskThread()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :cond_0
    monitor-exit p0

    return-void

    .line 26
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized hasTaskInProgress(Ljava/lang/String;)Z
    .locals 1
    .parameter "id"

    .prologue
    .line 62
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/yi/sdk/cloudstorage/TaskHandler;->mTasksInProgress:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized hasTaskInQueue(Ljava/lang/String;)Z
    .locals 1
    .parameter "taskId"

    .prologue
    .line 57
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/yi/sdk/cloudstorage/TaskHandler;->mTasksQueue:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/baidu/yi/sdk/cloudstorage/TaskHandler;->mTasksInProgress:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 57
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startIfReady(Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;J)V
    .locals 1
    .parameter "info"
    .parameter "now"

    .prologue
    .line 145
    if-nez p1, :cond_1

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/yi/sdk/cloudstorage/TaskHandler;->isReadyToStart(Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {p0, p1}, Lcom/baidu/yi/sdk/cloudstorage/TaskHandler;->enqueueTask(Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;)V

    goto :goto_0
.end method

.method public startTaskThread(Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 34
    new-instance v0, Lcom/baidu/yi/sdk/cloudstorage/TaskThread;

    iget-object v1, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mTaskId:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Lcom/baidu/yi/sdk/cloudstorage/TaskThread;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;)V

    .line 35
    .local v0, task:Lcom/baidu/yi/sdk/cloudstorage/TaskThread;
    invoke-virtual {v0}, Lcom/baidu/yi/sdk/cloudstorage/TaskThread;->start()V

    .line 36
    iput-object v0, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mTaskThread:Lcom/baidu/yi/sdk/cloudstorage/TaskThread;

    .line 37
    return-void
.end method
