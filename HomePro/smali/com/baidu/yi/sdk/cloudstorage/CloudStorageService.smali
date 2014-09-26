.class public Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;
.super Landroid/app/Service;
.source "CloudStorageService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService$LocalBinder;,
        Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService$SchedulerThread;,
        Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService$TaskManagerObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CloudStorageService"


# instance fields
.field private mLocalBinder:Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService$LocalBinder;

.field private mObserver:Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService$TaskManagerObserver;

.field private mPendingUpdate:Z

.field private mScheduler:Landroid/os/Handler;

.field private mSchedulerThread:Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService$SchedulerThread;

.field private mTasks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;->mTasks:Ljava/util/Map;

    .line 56
    new-instance v0, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService$LocalBinder;-><init>(Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;)V

    iput-object v0, p0, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;->mLocalBinder:Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService$LocalBinder;

    .line 34
    return-void
.end method

.method static synthetic access$0(Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;)Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService$SchedulerThread;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;->mSchedulerThread:Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService$SchedulerThread;

    return-object v0
.end method

.method static synthetic access$1(Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;)Z
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;->mPendingUpdate:Z

    return v0
.end method

.method static synthetic access$2(Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService$SchedulerThread;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;->mSchedulerThread:Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService$SchedulerThread;

    return-void
.end method

.method static synthetic access$3(Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;->scheduleAlarm(J)V

    return-void
.end method

.method static synthetic access$4(Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;->mPendingUpdate:Z

    return-void
.end method

.method static synthetic access$5(Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;->mTasks:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$6(Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;Lcom/baidu/yi/sdk/cloudstorage/TaskInfo$Reader;Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;J)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 178
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;->updateTask(Lcom/baidu/yi/sdk/cloudstorage/TaskInfo$Reader;Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;J)V

    return-void
.end method

.method static synthetic access$7(Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;Lcom/baidu/yi/sdk/cloudstorage/TaskInfo$Reader;J)Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 164
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;->insertTask(Lcom/baidu/yi/sdk/cloudstorage/TaskInfo$Reader;J)Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8(Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 171
    invoke-direct {p0, p1}, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;->deleteTask(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9(Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;->updateFromProvider()V

    return-void
.end method

.method private deleteTask(Ljava/lang/String;)V
    .locals 3
    .parameter "id"

    .prologue
    .line 172
    iget-object v1, p0, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;->mTasks:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;

    .line 173
    .local v0, info:Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;
    if-eqz v0, :cond_0

    .line 174
    iget-object v1, p0, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;->mTasks:Ljava/util/Map;

    iget-object v2, v0, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mTaskId:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    :cond_0
    return-void
.end method

.method private getCallerPackageName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 47
    .local v0, uid:I
    invoke-virtual {p0}, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private insertTask(Lcom/baidu/yi/sdk/cloudstorage/TaskInfo$Reader;J)Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;
    .locals 3
    .parameter "reader"
    .parameter "now"

    .prologue
    .line 165
    invoke-virtual {p1, p0}, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo$Reader;->newTaskInfo(Landroid/content/Context;)Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;

    move-result-object v0

    .line 166
    .local v0, info:Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;
    iget-object v1, p0, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;->mTasks:Ljava/util/Map;

    iget-object v2, v0, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mTaskId:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    invoke-static {}, Lcom/baidu/yi/sdk/cloudstorage/TaskHandler;->getInstance()Lcom/baidu/yi/sdk/cloudstorage/TaskHandler;

    move-result-object v1

    invoke-virtual {v1, v0, p2, p3}, Lcom/baidu/yi/sdk/cloudstorage/TaskHandler;->startIfReady(Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;J)V

    .line 168
    return-object v0
.end method

.method private scheduleAlarm(J)V
    .locals 6
    .parameter "wakeUp"

    .prologue
    const/4 v5, 0x0

    .line 70
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 71
    .local v0, alarms:Landroid/app/AlarmManager;
    if-nez v0, :cond_0

    .line 72
    const-string v2, "CloudStorageService"

    const-string v3, "couldn\'t get alarm manager"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :goto_0
    return-void

    .line 75
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.baidu.cloudstorage.retry"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 76
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.android.providers.downloads"

    .line 77
    const-class v3, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 76
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p1

    .line 81
    const/high16 v4, 0x4000

    .line 80
    invoke-static {p0, v5, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 78
    invoke-virtual {v0, v5, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private updateFromProvider()V
    .locals 2

    .prologue
    .line 59
    monitor-enter p0

    .line 60
    :try_start_0
    const-string v0, "CloudStorageService"

    const-string v1, "update Form Provider"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;->mPendingUpdate:Z

    .line 62
    iget-object v0, p0, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;->mSchedulerThread:Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService$SchedulerThread;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService$SchedulerThread;

    invoke-direct {v0, p0}, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService$SchedulerThread;-><init>(Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;)V

    iput-object v0, p0, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;->mSchedulerThread:Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService$SchedulerThread;

    .line 64
    iget-object v0, p0, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;->mSchedulerThread:Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService$SchedulerThread;

    invoke-virtual {v0}, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService$SchedulerThread;->start()V

    .line 59
    :cond_0
    monitor-exit p0

    .line 67
    return-void

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateTask(Lcom/baidu/yi/sdk/cloudstorage/TaskInfo$Reader;Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;J)V
    .locals 1
    .parameter "reader"
    .parameter "info"
    .parameter "now"

    .prologue
    .line 179
    invoke-virtual {p1, p2}, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo$Reader;->updateFromDatabase(Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;)V

    .line 180
    invoke-static {}, Lcom/baidu/yi/sdk/cloudstorage/TaskHandler;->getInstance()Lcom/baidu/yi/sdk/cloudstorage/TaskHandler;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Lcom/baidu/yi/sdk/cloudstorage/TaskHandler;->startIfReady(Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;J)V

    .line 181
    return-void
.end method


# virtual methods
.method public addListener(Lcom/baidu/yi/sdk/cloudstorage/global/ICloudStorageCallback;)Z
    .locals 3
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 252
    const/4 v1, 0x0

    .line 254
    .local v1, result:Z
    if-eqz p1, :cond_0

    .line 255
    invoke-direct {p0}, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;->getCallerPackageName()Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, pkgName:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 257
    invoke-static {}, Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil;->getInstance()Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil;

    move-result-object v2

    invoke-virtual {v2, v0, p1}, Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil;->putListener(Ljava/lang/String;Lcom/baidu/yi/sdk/cloudstorage/global/ICloudStorageCallback;)Z

    move-result v1

    .line 261
    .end local v0           #pkgName:Ljava/lang/String;
    :cond_0
    return v1
.end method

.method public cancelTask(Ljava/lang/String;)I
    .locals 3
    .parameter "uuid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 389
    const-string v0, "CloudStorageService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cancel task: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    invoke-static {}, Lcom/baidu/yi/sdk/cloudstorage/TaskHandler;->getInstance()Lcom/baidu/yi/sdk/cloudstorage/TaskHandler;

    move-result-object v0

    sget-object v1, Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;->CANCEL:Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;

    invoke-virtual {v0, p1, v1}, Lcom/baidu/yi/sdk/cloudstorage/TaskHandler;->controlTask(Ljava/lang/String;Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;)V

    .line 391
    invoke-direct {p0, p1}, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;->deleteTask(Ljava/lang/String;)V

    .line 392
    invoke-static {}, Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;->getInstance()Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;->deleteTask(Ljava/lang/String;Landroid/content/Context;)Z

    .line 394
    const/4 v0, 0x0

    return v0
.end method

.method public checkOfflineTaskInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "cloud"
    .parameter "taskid"
    .parameter "remotePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 350
    const/4 v1, 0x0

    .line 351
    .local v1, uuid:Ljava/lang/String;
    invoke-direct {p0}, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;->getCallerPackageName()Ljava/lang/String;

    move-result-object v5

    .local v5, pkgName:Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 352
    const-string v0, "CloudStorageService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "receive checkOfflineTaskInfo from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    invoke-static {}, Lcom/baidu/yi/sdk/cloudstorage/utils/Helpers;->createUUID()Ljava/lang/String;

    move-result-object v1

    .line 354
    invoke-static {}, Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;->getInstance()Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;

    move-result-object v0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p1

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;->addOfflineInfoTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    .line 359
    :goto_0
    return-object v1

    .line 357
    :cond_0
    const-string v0, "CloudStorageService"

    const-string v2, "invalid caller package name!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public deleteFile(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/yi/sdk/cloudstorage/global/ICloudStorageCallback;)Ljava/lang/String;
    .locals 7
    .parameter "cloud"
    .parameter "relativePath"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 294
    const/4 v3, 0x0

    .line 295
    .local v3, uuid:Ljava/lang/String;
    invoke-direct {p0}, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;->getCallerPackageName()Ljava/lang/String;

    move-result-object v1

    .local v1, pkgName:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 296
    invoke-static {}, Lcom/baidu/yi/sdk/cloudstorage/utils/Helpers;->createUUID()Ljava/lang/String;

    move-result-object v3

    .line 297
    invoke-static {}, Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil;->getInstance()Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil;

    move-result-object v4

    invoke-virtual {v4, v3, p3}, Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil;->putListenerByUUID(Ljava/lang/String;Lcom/baidu/yi/sdk/cloudstorage/global/ICloudStorageCallback;)Z

    .line 298
    const-string v4, "CloudStorageService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "receive delete request from "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 299
    const-string v6, ", uuid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 298
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    new-instance v2, Lcom/baidu/yi/sdk/cloudstorage/model/FileRequest;

    invoke-direct {v2}, Lcom/baidu/yi/sdk/cloudstorage/model/FileRequest;-><init>()V

    .line 301
    .local v2, request:Lcom/baidu/yi/sdk/cloudstorage/model/FileRequest;
    iput-object p1, v2, Lcom/baidu/yi/sdk/cloudstorage/model/FileRequest;->cloud:Ljava/lang/String;

    .line 302
    iput-object p2, v2, Lcom/baidu/yi/sdk/cloudstorage/model/FileRequest;->remotePath:Ljava/lang/String;

    .line 303
    iput-object v1, v2, Lcom/baidu/yi/sdk/cloudstorage/model/FileRequest;->pkgName:Ljava/lang/String;

    .line 304
    iput-object v3, v2, Lcom/baidu/yi/sdk/cloudstorage/model/FileRequest;->uuid:Ljava/lang/String;

    .line 305
    iget-object v4, p0, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;->mScheduler:Landroid/os/Handler;

    .line 307
    const/4 v5, 0x4

    .line 306
    invoke-virtual {v4, v5, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 309
    .local v0, msg:Landroid/os/Message;
    iget-object v4, p0, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;->mScheduler:Landroid/os/Handler;

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 310
    const-string v4, "CloudStorageService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "failed to schedule meesage "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    .end local v0           #msg:Landroid/os/Message;
    .end local v2           #request:Lcom/baidu/yi/sdk/cloudstorage/model/FileRequest;
    :cond_0
    :goto_0
    return-object v3

    .line 313
    :cond_1
    const-string v4, "CloudStorageService"

    const-string v5, "invalid caller package name!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public downloadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "cloud"
    .parameter "localPath"
    .parameter "relativePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 321
    const/4 v1, 0x0

    .line 322
    .local v1, uuid:Ljava/lang/String;
    invoke-direct {p0}, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;->getCallerPackageName()Ljava/lang/String;

    move-result-object v5

    .local v5, pkgName:Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 323
    const-string v0, "CloudStorageService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "receive download request from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    invoke-static {}, Lcom/baidu/yi/sdk/cloudstorage/utils/Helpers;->createUUID()Ljava/lang/String;

    move-result-object v1

    .line 325
    invoke-static {}, Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;->getInstance()Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;

    move-result-object v0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p1

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;->addDownloadTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    .line 330
    :goto_0
    return-object v1

    .line 328
    :cond_0
    const-string v0, "CloudStorageService"

    const-string v2, "invalid caller package name!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getTaskDetail(Ljava/lang/String;)Lcom/baidu/yi/sdk/cloudstorage/global/TaskDetail;
    .locals 4
    .parameter "uuid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 398
    const/4 v1, 0x0

    .line 399
    .local v1, result:Lcom/baidu/yi/sdk/cloudstorage/global/TaskDetail;
    invoke-static {}, Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;->getInstance()Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;

    move-result-object v2

    .line 400
    invoke-virtual {v2, p1, p0}, Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;->getTaskInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;

    move-result-object v0

    .line 401
    .local v0, info:Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;
    if-eqz v0, :cond_0

    .line 402
    new-instance v1, Lcom/baidu/yi/sdk/cloudstorage/global/TaskDetail;

    .end local v1           #result:Lcom/baidu/yi/sdk/cloudstorage/global/TaskDetail;
    invoke-direct {v1}, Lcom/baidu/yi/sdk/cloudstorage/global/TaskDetail;-><init>()V

    .line 403
    .restart local v1       #result:Lcom/baidu/yi/sdk/cloudstorage/global/TaskDetail;
    iput-object p1, v1, Lcom/baidu/yi/sdk/cloudstorage/global/TaskDetail;->uuid:Ljava/lang/String;

    .line 404
    iget-wide v2, v0, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mErrorCode:J

    long-to-int v2, v2

    iput v2, v1, Lcom/baidu/yi/sdk/cloudstorage/global/TaskDetail;->errorCode:I

    .line 405
    iget v2, v0, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mAction:I

    iput v2, v1, Lcom/baidu/yi/sdk/cloudstorage/global/TaskDetail;->action:I

    .line 406
    iget-object v2, v0, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mLocalPath:Ljava/lang/String;

    iput-object v2, v1, Lcom/baidu/yi/sdk/cloudstorage/global/TaskDetail;->localPath:Ljava/lang/String;

    .line 407
    iget-object v2, v0, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mRemotePath:Ljava/lang/String;

    iput-object v2, v1, Lcom/baidu/yi/sdk/cloudstorage/global/TaskDetail;->remotePath:Ljava/lang/String;

    .line 408
    iget v2, v0, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mStatus:I

    iput v2, v1, Lcom/baidu/yi/sdk/cloudstorage/global/TaskDetail;->status:I

    .line 409
    iget-wide v2, v0, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mCurrentBytes:J

    iput-wide v2, v1, Lcom/baidu/yi/sdk/cloudstorage/global/TaskDetail;->transferred:J

    .line 410
    iget-wide v2, v0, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mTotalBytes:J

    iput-wide v2, v1, Lcom/baidu/yi/sdk/cloudstorage/global/TaskDetail;->total:J

    .line 412
    :cond_0
    return-object v1
.end method

.method public listDirectory(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/yi/sdk/cloudstorage/global/ICloudStorageCallback;)Ljava/lang/String;
    .locals 7
    .parameter "cloud"
    .parameter "relativePath"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 267
    const/4 v3, 0x0

    .line 268
    .local v3, uuid:Ljava/lang/String;
    invoke-direct {p0}, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;->getCallerPackageName()Ljava/lang/String;

    move-result-object v1

    .local v1, pkgName:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 269
    invoke-static {}, Lcom/baidu/yi/sdk/cloudstorage/utils/Helpers;->createUUID()Ljava/lang/String;

    move-result-object v3

    .line 270
    invoke-static {}, Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil;->getInstance()Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil;

    move-result-object v4

    invoke-virtual {v4, v3, p3}, Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil;->putListenerByUUID(Ljava/lang/String;Lcom/baidu/yi/sdk/cloudstorage/global/ICloudStorageCallback;)Z

    .line 271
    const-string v4, "CloudStorageService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "receive list request from "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", uuid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 272
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 271
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    new-instance v2, Lcom/baidu/yi/sdk/cloudstorage/model/FileRequest;

    invoke-direct {v2}, Lcom/baidu/yi/sdk/cloudstorage/model/FileRequest;-><init>()V

    .line 274
    .local v2, request:Lcom/baidu/yi/sdk/cloudstorage/model/FileRequest;
    iput-object p1, v2, Lcom/baidu/yi/sdk/cloudstorage/model/FileRequest;->cloud:Ljava/lang/String;

    .line 275
    iput-object p2, v2, Lcom/baidu/yi/sdk/cloudstorage/model/FileRequest;->remotePath:Ljava/lang/String;

    .line 276
    iput-object v1, v2, Lcom/baidu/yi/sdk/cloudstorage/model/FileRequest;->pkgName:Ljava/lang/String;

    .line 277
    iput-object v3, v2, Lcom/baidu/yi/sdk/cloudstorage/model/FileRequest;->uuid:Ljava/lang/String;

    .line 278
    iget-object v4, p0, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;->mScheduler:Landroid/os/Handler;

    .line 279
    const/4 v5, 0x1

    .line 278
    invoke-virtual {v4, v5, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 281
    .local v0, msg:Landroid/os/Message;
    iget-object v4, p0, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;->mScheduler:Landroid/os/Handler;

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 282
    const-string v4, "CloudStorageService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "failed to schedule meesage "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    const/4 v4, 0x0

    .line 288
    .end local v0           #msg:Landroid/os/Message;
    .end local v2           #request:Lcom/baidu/yi/sdk/cloudstorage/model/FileRequest;
    :goto_0
    return-object v4

    .line 286
    :cond_0
    const-string v4, "CloudStorageService"

    const-string v5, "invalid caller package name!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v4, v3

    .line 288
    goto :goto_0
.end method

.method public offlineFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "cloud"
    .parameter "localPath"
    .parameter "relativePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 336
    const/4 v1, 0x0

    .line 337
    .local v1, uuid:Ljava/lang/String;
    invoke-direct {p0}, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;->getCallerPackageName()Ljava/lang/String;

    move-result-object v5

    .local v5, pkgName:Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 338
    const-string v0, "CloudStorageService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "receive offline request from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-static {}, Lcom/baidu/yi/sdk/cloudstorage/utils/Helpers;->createUUID()Ljava/lang/String;

    move-result-object v1

    .line 340
    invoke-static {}, Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;->getInstance()Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;

    move-result-object v0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p1

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;->addOfflineTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    .line 345
    :goto_0
    return-object v1

    .line 343
    :cond_0
    const-string v0, "CloudStorageService"

    const-string v2, "invalid caller package name!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;->mLocalBinder:Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService$LocalBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    .line 198
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 199
    new-instance v1, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService$TaskManagerObserver;

    invoke-direct {v1, p0}, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService$TaskManagerObserver;-><init>(Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;)V

    iput-object v1, p0, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;->mObserver:Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService$TaskManagerObserver;

    .line 200
    invoke-virtual {p0}, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 201
    invoke-virtual {p0}, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/yi/sdk/cloudstorage/provider/TableDefine;->getContentURI(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;->mObserver:Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService$TaskManagerObserver;

    .line 200
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 204
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CloudStorageService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 205
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 206
    new-instance v1, Lcom/baidu/yi/sdk/cloudstorage/Scheduler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/baidu/yi/sdk/cloudstorage/Scheduler;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;->mScheduler:Landroid/os/Handler;

    .line 209
    invoke-direct {p0}, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;->updateFromProvider()V

    .line 210
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;->mObserver:Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService$TaskManagerObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 215
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 216
    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 220
    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    .line 221
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 225
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .parameter "intent"

    .prologue
    .line 230
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public pauseTask(Ljava/lang/String;)I
    .locals 2
    .parameter "uuid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 378
    invoke-static {}, Lcom/baidu/yi/sdk/cloudstorage/TaskHandler;->getInstance()Lcom/baidu/yi/sdk/cloudstorage/TaskHandler;

    move-result-object v0

    sget-object v1, Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;->PAUSED:Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;

    invoke-virtual {v0, p1, v1}, Lcom/baidu/yi/sdk/cloudstorage/TaskHandler;->controlTask(Ljava/lang/String;Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;)V

    .line 379
    const/4 v0, 0x0

    return v0
.end method

.method public putAuthInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/yi/sdk/cloudstorage/global/ICloudStorageCallback;)Ljava/lang/String;
    .locals 9
    .parameter "appId"
    .parameter "cloud"
    .parameter "token"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 418
    const/4 v4, 0x0

    .line 419
    .local v4, uuid:Ljava/lang/String;
    invoke-direct {p0}, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;->getCallerPackageName()Ljava/lang/String;

    move-result-object v2

    .local v2, pkgName:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 420
    invoke-static {}, Lcom/baidu/yi/sdk/cloudstorage/utils/Helpers;->createUUID()Ljava/lang/String;

    move-result-object v4

    .line 421
    invoke-static {}, Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil;->getInstance()Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil;

    move-result-object v0

    invoke-virtual {v0, v4, p4}, Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil;->putListenerByUUID(Ljava/lang/String;Lcom/baidu/yi/sdk/cloudstorage/global/ICloudStorageCallback;)Z

    .line 422
    const-string v0, "CloudStorageService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "receive auth request from "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    move-object v1, p0

    .line 424
    .local v1, context:Landroid/content/Context;
    invoke-static {v1}, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;->getInstance(Landroid/content/Context;)Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;

    move-result-object v0

    move-object v3, p3

    move-object v5, p2

    move-object v6, p1

    move-object v8, v7

    invoke-virtual/range {v0 .. v8}, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;->handleAuthentication(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    .end local v1           #context:Landroid/content/Context;
    :goto_0
    return-object v4

    .line 427
    :cond_0
    const-string v0, "CloudStorageService"

    const-string v3, "invalid caller package name!"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public putOAuthInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/yi/sdk/cloudstorage/global/ICloudStorageCallback;)Ljava/lang/String;
    .locals 9
    .parameter "appId"
    .parameter "cloud"
    .parameter "token"
    .parameter "apiKey"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 435
    const/4 v4, 0x0

    .line 436
    .local v4, uuid:Ljava/lang/String;
    invoke-direct {p0}, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;->getCallerPackageName()Ljava/lang/String;

    move-result-object v2

    .local v2, pkgName:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 437
    invoke-static {}, Lcom/baidu/yi/sdk/cloudstorage/utils/Helpers;->createUUID()Ljava/lang/String;

    move-result-object v4

    .line 438
    invoke-static {}, Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil;->getInstance()Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil;

    move-result-object v0

    invoke-virtual {v0, v4, p5}, Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil;->putListenerByUUID(Ljava/lang/String;Lcom/baidu/yi/sdk/cloudstorage/global/ICloudStorageCallback;)Z

    .line 439
    const-string v0, "CloudStorageService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "receive auth request from "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    move-object v1, p0

    .line 441
    .local v1, context:Landroid/content/Context;
    invoke-static {v1}, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;->getInstance(Landroid/content/Context;)Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;

    move-result-object v0

    .line 442
    const/4 v8, 0x0

    move-object v3, p3

    move-object v5, p2

    move-object v6, p1

    move-object v7, p4

    .line 441
    invoke-virtual/range {v0 .. v8}, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;->handleAuthentication(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    .end local v1           #context:Landroid/content/Context;
    :goto_0
    return-object v4

    .line 444
    :cond_0
    const-string v0, "CloudStorageService"

    const-string v3, "invalid caller package name!"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public putOAuthInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/yi/sdk/cloudstorage/global/ICloudStorageCallback;)Ljava/lang/String;
    .locals 9
    .parameter "appId"
    .parameter "cloud"
    .parameter "token"
    .parameter "apiKey"
    .parameter "secretKey"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 452
    const/4 v4, 0x0

    .line 453
    .local v4, uuid:Ljava/lang/String;
    invoke-direct {p0}, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;->getCallerPackageName()Ljava/lang/String;

    move-result-object v2

    .local v2, pkgName:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 454
    invoke-static {}, Lcom/baidu/yi/sdk/cloudstorage/utils/Helpers;->createUUID()Ljava/lang/String;

    move-result-object v4

    .line 455
    invoke-static {}, Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil;->getInstance()Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil;

    move-result-object v0

    invoke-virtual {v0, v4, p6}, Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil;->putListenerByUUID(Ljava/lang/String;Lcom/baidu/yi/sdk/cloudstorage/global/ICloudStorageCallback;)Z

    .line 456
    const-string v0, "CloudStorageService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "receive auth request from "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    move-object v1, p0

    .line 458
    .local v1, context:Landroid/content/Context;
    invoke-static {v1}, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;->getInstance(Landroid/content/Context;)Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;

    move-result-object v0

    move-object v3, p3

    move-object v5, p2

    move-object v6, p1

    move-object v7, p4

    move-object v8, p5

    invoke-virtual/range {v0 .. v8}, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;->handleAuthentication(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    .end local v1           #context:Landroid/content/Context;
    :goto_0
    return-object v4

    .line 461
    :cond_0
    const-string v0, "CloudStorageService"

    const-string v3, "invalid caller package name!"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeListener(Lcom/baidu/yi/sdk/cloudstorage/global/ICloudStorageCallback;)Z
    .locals 2
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 240
    if-eqz p1, :cond_0

    .line 241
    invoke-direct {p0}, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;->getCallerPackageName()Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, pkgName:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 243
    invoke-static {}, Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil;->getInstance()Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil;

    move-result-object v1

    .line 244
    invoke-virtual {v1, v0, p1}, Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil;->removeListener(Ljava/lang/String;Lcom/baidu/yi/sdk/cloudstorage/global/ICloudStorageCallback;)V

    .line 247
    .end local v0           #pkgName:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public resumeTask(Ljava/lang/String;)I
    .locals 1
    .parameter "uuid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 383
    invoke-static {}, Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;->getInstance()Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;->resumeTask(Ljava/lang/String;Landroid/content/Context;)Z

    .line 385
    const/4 v0, 0x0

    return v0
.end method

.method public uploadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "cloud"
    .parameter "localPath"
    .parameter "relativePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 365
    const/4 v1, 0x0

    .line 366
    .local v1, uuid:Ljava/lang/String;
    invoke-direct {p0}, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;->getCallerPackageName()Ljava/lang/String;

    move-result-object v5

    .local v5, pkgName:Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 367
    const-string v0, "CloudStorageService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "receive upload request from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    invoke-static {}, Lcom/baidu/yi/sdk/cloudstorage/utils/Helpers;->createUUID()Ljava/lang/String;

    move-result-object v1

    .line 369
    invoke-static {}, Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;->getInstance()Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;

    move-result-object v0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p1

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;->addUploadTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    .line 374
    :goto_0
    return-object v1

    .line 372
    :cond_0
    const-string v0, "CloudStorageService"

    const-string v2, "invalid caller package name!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
