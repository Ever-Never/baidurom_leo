.class Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService$SchedulerThread;
.super Ljava/lang/Thread;
.source "CloudStorageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SchedulerThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;


# direct methods
.method public constructor <init>(Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService$SchedulerThread;->this$0:Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 86
    return-void
.end method


# virtual methods
.method public run()V
    .locals 23

    .prologue
    .line 90
    const-string v3, "CloudStorageService"

    const-string v4, "Start db task scheduler"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const/16 v3, 0xa

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 93
    const/4 v14, 0x0

    .line 94
    .local v14, keepService:Z
    const-wide v21, 0x7fffffffffffffffL

    .line 96
    .local v21, wakeUp:J
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService$SchedulerThread;->this$0:Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;

    monitor-enter v4

    .line 97
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService$SchedulerThread;->this$0:Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;

    #getter for: Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;->mSchedulerThread:Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService$SchedulerThread;
    invoke-static {v3}, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;->access$0(Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;)Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService$SchedulerThread;

    move-result-object v3

    move-object/from16 v0, p0

    if-eq v3, v0, :cond_1

    .line 98
    new-instance v3, Ljava/lang/IllegalStateException;

    .line 99
    const-string v5, "multiple SchedulerThread in SchedulerThread"

    .line 98
    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 96
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 101
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService$SchedulerThread;->this$0:Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;

    #getter for: Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;->mPendingUpdate:Z
    invoke-static {v3}, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;->access$1(Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 102
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService$SchedulerThread;->this$0:Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;

    const/4 v5, 0x0

    #setter for: Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;->mSchedulerThread:Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService$SchedulerThread;
    invoke-static {v3, v5}, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;->access$2(Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService$SchedulerThread;)V

    .line 103
    if-nez v14, :cond_2

    .line 104
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService$SchedulerThread;->this$0:Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;

    invoke-virtual {v3}, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;->stopSelf()V

    .line 106
    :cond_2
    const-wide v5, 0x7fffffffffffffffL

    cmp-long v3, v21, v5

    if-eqz v3, :cond_3

    .line 107
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService$SchedulerThread;->this$0:Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;

    move-wide/from16 v0, v21

    #calls: Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;->scheduleAlarm(J)V
    invoke-static {v3, v0, v1}, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;->access$3(Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;J)V

    .line 109
    :cond_3
    monitor-exit v4

    return-void

    .line 111
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService$SchedulerThread;->this$0:Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;

    const/4 v5, 0x0

    #setter for: Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;->mPendingUpdate:Z
    invoke-static {v3, v5}, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;->access$4(Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;Z)V

    .line 96
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 114
    .local v17, now:J
    const/4 v14, 0x0

    .line 115
    const-wide v21, 0x7fffffffffffffffL

    .line 116
    new-instance v12, Ljava/util/HashSet;

    .line 117
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService$SchedulerThread;->this$0:Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;

    #getter for: Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;->mTasks:Ljava/util/Map;
    invoke-static {v3}, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;->access$5(Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 116
    invoke-direct {v12, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 118
    .local v12, idsNoLongerInDatabase:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService$SchedulerThread;->this$0:Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;

    invoke-virtual {v3}, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 119
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService$SchedulerThread;->this$0:Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;

    invoke-virtual {v4}, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/baidu/yi/sdk/cloudstorage/provider/TableDefine;->getContentURI(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {}, Lcom/baidu/yi/sdk/cloudstorage/provider/TableDefine;->getProjection()[Ljava/lang/String;

    move-result-object v5

    .line 120
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 118
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 121
    .local v9, cursor:Landroid/database/Cursor;
    if-nez v9, :cond_5

    .line 122
    const-string v3, "CloudStorageService"

    const-string v4, "No task is found"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 126
    :cond_5
    :try_start_2
    new-instance v19, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo$Reader;

    move-object/from16 v0, v19

    invoke-direct {v0, v9}, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo$Reader;-><init>(Landroid/database/Cursor;)V

    .line 128
    .local v19, reader:Lcom/baidu/yi/sdk/cloudstorage/TaskInfo$Reader;
    const-string v3, "task_id"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 129
    .local v11, idColumn:I
    const-string v3, "CloudStorageService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "number of rows in db:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v3

    if-eqz v3, :cond_7

    .line 151
    if-eqz v9, :cond_6

    .line 152
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 155
    :cond_6
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 156
    .local v10, id:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService$SchedulerThread;->this$0:Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;

    #calls: Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;->deleteTask(Ljava/lang/String;)V
    invoke-static {v4, v10}, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;->access$8(Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;Ljava/lang/String;)V

    goto :goto_2

    .line 133
    .end local v10           #id:Ljava/lang/String;
    :cond_7
    :try_start_3
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 134
    .local v20, taskId:Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-interface {v12, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 135
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService$SchedulerThread;->this$0:Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;

    #getter for: Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;->mTasks:Ljava/util/Map;
    invoke-static {v3}, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;->access$5(Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;)Ljava/util/Map;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;

    .line 136
    .local v13, info:Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;
    if-eqz v13, :cond_a

    .line 137
    const-string v3, "CloudStorageService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "update task:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService$SchedulerThread;->this$0:Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;

    move-object/from16 v0, v19

    move-wide/from16 v1, v17

    #calls: Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;->updateTask(Lcom/baidu/yi/sdk/cloudstorage/TaskInfo$Reader;Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;J)V
    invoke-static {v3, v0, v13, v1, v2}, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;->access$6(Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;Lcom/baidu/yi/sdk/cloudstorage/TaskInfo$Reader;Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;J)V

    .line 143
    :goto_3
    move-wide/from16 v0, v17

    invoke-virtual {v13, v0, v1}, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->netAction(J)J

    move-result-wide v15

    .line 144
    .local v15, next:J
    const-wide/16 v3, 0x0

    cmp-long v3, v3, v15

    if-nez v3, :cond_b

    .line 145
    const/4 v14, 0x1

    .line 132
    :cond_8
    :goto_4
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 150
    .end local v11           #idColumn:I
    .end local v13           #info:Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;
    .end local v15           #next:J
    .end local v19           #reader:Lcom/baidu/yi/sdk/cloudstorage/TaskInfo$Reader;
    .end local v20           #taskId:Ljava/lang/String;
    :catchall_1
    move-exception v3

    .line 151
    if-eqz v9, :cond_9

    .line 152
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 153
    :cond_9
    throw v3

    .line 140
    .restart local v11       #idColumn:I
    .restart local v13       #info:Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;
    .restart local v19       #reader:Lcom/baidu/yi/sdk/cloudstorage/TaskInfo$Reader;
    .restart local v20       #taskId:Ljava/lang/String;
    :cond_a
    :try_start_4
    const-string v3, "CloudStorageService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "insert task:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService$SchedulerThread;->this$0:Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;

    move-object/from16 v0, v19

    move-wide/from16 v1, v17

    #calls: Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;->insertTask(Lcom/baidu/yi/sdk/cloudstorage/TaskInfo$Reader;J)Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;
    invoke-static {v3, v0, v1, v2}, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;->access$7(Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;Lcom/baidu/yi/sdk/cloudstorage/TaskInfo$Reader;J)Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v13

    goto :goto_3

    .line 146
    .restart local v15       #next:J
    :cond_b
    const-wide/16 v3, 0x0

    cmp-long v3, v15, v3

    if-lez v3, :cond_8

    cmp-long v3, v15, v21

    if-gez v3, :cond_8

    .line 147
    move-wide/from16 v21, v15

    goto :goto_4
.end method
