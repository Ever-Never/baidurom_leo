.class public Lcom/baidu/bulletin/BulletinService;
.super Landroid/app/Service;
.source "BulletinService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bulletin/BulletinService$ServiceSession;,
        Lcom/baidu/bulletin/BulletinService$MyTaskListener;,
        Lcom/baidu/bulletin/BulletinService$CloudStorageReceiver;,
        Lcom/baidu/bulletin/BulletinService$Task;,
        Lcom/baidu/bulletin/BulletinService$RemoteTaskListener;
    }
.end annotation


# static fields
.field private static final API_KEY:Ljava/lang/String; = "LT3WVvnboqNIGaciDVu0Q4Ut"

.field private static final APP_ID:Ljava/lang/String; = "764234"

.field private static final APP_ROOT:Ljava/lang/String; = "/apps/\u767e\u9875\u7a97/"

.field private static final CLOUD_STORAGE_RESULT_ACTION:Ljava/lang/String; = "com.baidu.cloudstorage.results"

.field private static final MP3:Ljava/lang/String; = ".mp3"

.field public static final NOTLOGIN:I = 0x8

.field public static final NO_SPACE:I = 0x6

.field public static final NWTWORK_ERROR:I = 0x9

.field public static final OFFLINE_FILE_REQ:I = 0x0

.field public static final OFFLINE_TASKINFO_REQ:I = 0x1

.field public static final OTHER_ERROR:I = 0xa

.field private static final SECRET_KEY:Ljava/lang/String; = "9bQpFSKma9Ly9t64VvZ9KANErbmr6lmq"

.field private static final TAG:Ljava/lang/String; = "BulletinService"

.field public static final TOKEN_ERROR:I = 0x1

.field public static final TOO_MANY_TASK:I = 0x2


# instance fields
.field private mCloudService:Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;

.field private mCloudStorageManager:Lcom/baidu/bulletin/utils/CloudStorageManager;

.field private mCloudStorageReceiver:Lcom/baidu/bulletin/BulletinService$CloudStorageReceiver;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mIsBound:Z

.field private mListener:Lcom/baidu/yi/sdk/cloudstorage/global/ICloudStorageCallback;

.field private mLock:Ljava/lang/Object;

.field private mServiceSession:Lcom/baidu/bulletin/BulletinService$ServiceSession;

.field private mTasks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/bulletin/BulletinService$Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 64
    iput-object v1, p0, Lcom/baidu/bulletin/BulletinService;->mCloudService:Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;

    .line 65
    iput-object v1, p0, Lcom/baidu/bulletin/BulletinService;->mCloudStorageManager:Lcom/baidu/bulletin/utils/CloudStorageManager;

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/bulletin/BulletinService;->mIsBound:Z

    .line 70
    new-instance v0, Lcom/baidu/bulletin/BulletinService$CloudStorageReceiver;

    invoke-direct {v0, p0, v1}, Lcom/baidu/bulletin/BulletinService$CloudStorageReceiver;-><init>(Lcom/baidu/bulletin/BulletinService;Lcom/baidu/bulletin/BulletinService$1;)V

    iput-object v0, p0, Lcom/baidu/bulletin/BulletinService;->mCloudStorageReceiver:Lcom/baidu/bulletin/BulletinService$CloudStorageReceiver;

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/baidu/bulletin/BulletinService;->mLock:Ljava/lang/Object;

    .line 117
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/bulletin/BulletinService;->mTasks:Ljava/util/Map;

    .line 452
    new-instance v0, Lcom/baidu/bulletin/BulletinService$1;

    invoke-direct {v0, p0}, Lcom/baidu/bulletin/BulletinService$1;-><init>(Lcom/baidu/bulletin/BulletinService;)V

    iput-object v0, p0, Lcom/baidu/bulletin/BulletinService;->mConnection:Landroid/content/ServiceConnection;

    .line 590
    return-void
.end method

.method static synthetic access$100(Lcom/baidu/bulletin/BulletinService;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/BulletinService;->handleOfflineFileResult(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/baidu/bulletin/BulletinService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/baidu/bulletin/BulletinService;->putAuthInfo()V

    return-void
.end method

.method static synthetic access$1400(Lcom/baidu/bulletin/BulletinService;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;Lcom/baidu/bulletin/BulletinService$RemoteTaskListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/baidu/bulletin/BulletinService;->offlineFile(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;Lcom/baidu/bulletin/BulletinService$RemoteTaskListener;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/baidu/bulletin/BulletinService;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;Ljava/lang/String;Lcom/baidu/bulletin/BulletinService$RemoteTaskListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/bulletin/BulletinService;->checkOfflineTaskInfo(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;Ljava/lang/String;Lcom/baidu/bulletin/BulletinService$RemoteTaskListener;)V

    return-void
.end method

.method static synthetic access$200(Lcom/baidu/bulletin/BulletinService;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/BulletinService;->handleOfflineProgress(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/baidu/bulletin/BulletinService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/baidu/bulletin/BulletinService;->putOAuthInfo()V

    return-void
.end method

.method static synthetic access$400(Lcom/baidu/bulletin/BulletinService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/baidu/bulletin/BulletinService;->isNetworkAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/baidu/bulletin/BulletinService;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/baidu/bulletin/BulletinService;->mTasks:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$700(Lcom/baidu/bulletin/BulletinService;)Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/baidu/bulletin/BulletinService;->mCloudService:Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;

    return-object v0
.end method

.method static synthetic access$702(Lcom/baidu/bulletin/BulletinService;Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;)Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/baidu/bulletin/BulletinService;->mCloudService:Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;

    return-object p1
.end method

.method static synthetic access$802(Lcom/baidu/bulletin/BulletinService;Lcom/baidu/bulletin/utils/CloudStorageManager;)Lcom/baidu/bulletin/utils/CloudStorageManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/baidu/bulletin/BulletinService;->mCloudStorageManager:Lcom/baidu/bulletin/utils/CloudStorageManager;

    return-object p1
.end method

.method private bindCloudService()Z
    .locals 4

    .prologue
    .line 379
    iget-boolean v1, p0, Lcom/baidu/bulletin/BulletinService;->mIsBound:Z

    if-nez v1, :cond_0

    .line 381
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/baidu/bulletin/BulletinService;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/baidu/bulletin/BulletinService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/baidu/bulletin/BulletinService;->mIsBound:Z

    .line 383
    const-string v1, "BulletinService"

    const-string v2, "cloud service binded"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/baidu/bulletin/BulletinService;->mIsBound:Z

    return v1

    .line 384
    :catch_0
    move-exception v0

    .line 385
    .local v0, e:Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0
.end method

.method private declared-synchronized checkOfflineTaskInfo(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;Ljava/lang/String;Lcom/baidu/bulletin/BulletinService$RemoteTaskListener;)V
    .locals 5
    .parameter "data"
    .parameter "taskid"
    .parameter "ls"

    .prologue
    .line 499
    monitor-enter p0

    :try_start_0
    const-string v1, "BulletinService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "offlineId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    new-instance v0, Lcom/baidu/bulletin/BulletinService$Task;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/baidu/bulletin/BulletinService$Task;-><init>(Lcom/baidu/bulletin/BulletinService$1;)V

    .line 501
    .local v0, offlineInfoTask:Lcom/baidu/bulletin/BulletinService$Task;
    const/4 v1, 0x1

    iput v1, v0, Lcom/baidu/bulletin/BulletinService$Task;->mTaskType:I

    .line 502
    iput-object p3, v0, Lcom/baidu/bulletin/BulletinService$Task;->mListener:Lcom/baidu/bulletin/BulletinService$RemoteTaskListener;

    .line 503
    iput-object p1, v0, Lcom/baidu/bulletin/BulletinService$Task;->mChannelItem:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    .line 504
    const/4 v1, 0x0

    iput v1, v0, Lcom/baidu/bulletin/BulletinService$Task;->mRetryTimes:I

    .line 505
    iget-object v1, p1, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->title:Ljava/lang/String;

    invoke-direct {p0, v0, p2, v1}, Lcom/baidu/bulletin/BulletinService;->doCheckOfflineInfo(Lcom/baidu/bulletin/BulletinService$Task;Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    invoke-direct {p0}, Lcom/baidu/bulletin/BulletinService;->isNetworkAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 507
    iget-object v1, v0, Lcom/baidu/bulletin/BulletinService$Task;->mListener:Lcom/baidu/bulletin/BulletinService$RemoteTaskListener;

    iget v2, v0, Lcom/baidu/bulletin/BulletinService$Task;->mTaskType:I

    iget-object v3, v0, Lcom/baidu/bulletin/BulletinService$Task;->mChannelItem:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    const/16 v4, 0x9

    invoke-interface {v1, v2, v3, v4}, Lcom/baidu/bulletin/BulletinService$RemoteTaskListener;->remoteTaskFailed(ILcom/baidu/bulletin/db/entity/ChannelItemInfo;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 510
    :cond_0
    monitor-exit p0

    return-void

    .line 499
    .end local v0           #offlineInfoTask:Lcom/baidu/bulletin/BulletinService$Task;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private checkTokenError(I)I
    .locals 1
    .parameter "error"

    .prologue
    .line 263
    const/16 v0, 0xb

    if-eq p1, v0, :cond_0

    const/16 v0, 0xd

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc

    if-ne p1, v0, :cond_1

    .line 266
    :cond_0
    const/4 v0, 0x1

    .line 272
    :goto_0
    return v0

    .line 267
    :cond_1
    const/16 v0, 0x71

    if-ne p1, v0, :cond_2

    .line 268
    const/4 v0, 0x2

    goto :goto_0

    .line 269
    :cond_2
    const/4 v0, -0x3

    if-ne p1, v0, :cond_3

    .line 270
    const/16 v0, 0x9

    goto :goto_0

    .line 272
    :cond_3
    const/16 v0, 0xa

    goto :goto_0
.end method

.method private doCheckOfflineInfo(Lcom/baidu/bulletin/BulletinService$Task;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "offlineInfoTask"
    .parameter "offlineId"
    .parameter "filename"

    .prologue
    .line 513
    if-nez p2, :cond_0

    .line 514
    const-string v1, "BulletinService"

    const-string v2, "offlineId is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :goto_0
    return-void

    .line 517
    :cond_0
    const-string v1, "BulletinService"

    const-string v2, "CheckOfflineInfo start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    iget-object v2, p0, Lcom/baidu/bulletin/BulletinService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 519
    :try_start_0
    iget-object v1, p1, Lcom/baidu/bulletin/BulletinService$Task;->mListener:Lcom/baidu/bulletin/BulletinService$RemoteTaskListener;

    iget v3, p1, Lcom/baidu/bulletin/BulletinService$Task;->mTaskType:I

    iget-object v4, p1, Lcom/baidu/bulletin/BulletinService$Task;->mChannelItem:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    invoke-interface {v1, v3, v4}, Lcom/baidu/bulletin/BulletinService$RemoteTaskListener;->remoteTaskPreStarted(ILcom/baidu/bulletin/db/entity/ChannelItemInfo;)V

    .line 520
    iget-object v1, p0, Lcom/baidu/bulletin/BulletinService;->mCloudStorageManager:Lcom/baidu/bulletin/utils/CloudStorageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 522
    :try_start_1
    const-string v1, "BulletinService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CheckOfflineInfo offlineId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/baidu/bulletin/BulletinService$Task;->mTaskFinished:Z

    .line 524
    iget-object v1, p0, Lcom/baidu/bulletin/BulletinService;->mCloudStorageManager:Lcom/baidu/bulletin/utils/CloudStorageManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/apps/\u767e\u9875\u7a97/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".mp3"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p2, v3}, Lcom/baidu/bulletin/utils/CloudStorageManager;->checkOfflineTaskInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/baidu/bulletin/BulletinService$Task;->mTaskUid:Ljava/lang/String;

    .line 525
    const-string v1, "BulletinService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CheckOfflineInfo uuid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/baidu/bulletin/BulletinService$Task;->mTaskUid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    iget-object v1, p1, Lcom/baidu/bulletin/BulletinService$Task;->mListener:Lcom/baidu/bulletin/BulletinService$RemoteTaskListener;

    iget v3, p1, Lcom/baidu/bulletin/BulletinService$Task;->mTaskType:I

    iget-object v4, p1, Lcom/baidu/bulletin/BulletinService$Task;->mChannelItem:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    invoke-interface {v1, v3, v4}, Lcom/baidu/bulletin/BulletinService$RemoteTaskListener;->remoteTaskStarted(ILcom/baidu/bulletin/db/entity/ChannelItemInfo;)V

    .line 528
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p1, Lcom/baidu/bulletin/BulletinService$Task;->mTaskLastActiveTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 533
    :cond_1
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/baidu/bulletin/BulletinService;->mTasks:Ljava/util/Map;

    iget-object v3, p1, Lcom/baidu/bulletin/BulletinService$Task;->mTaskUid:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 534
    const-string v1, "BulletinService"

    const-string v3, "add Task start"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    iget-object v3, p0, Lcom/baidu/bulletin/BulletinService;->mTasks:Ljava/util/Map;

    monitor-enter v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 536
    :try_start_3
    iget-object v1, p0, Lcom/baidu/bulletin/BulletinService;->mTasks:Ljava/util/Map;

    iget-object v4, p1, Lcom/baidu/bulletin/BulletinService$Task;->mTaskUid:Ljava/lang/String;

    invoke-interface {v1, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 538
    :try_start_4
    const-string v1, "BulletinService"

    const-string v3, "add Task end"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    :cond_2
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 541
    const-string v1, "BulletinService"

    const-string v2, "CheckOfflineInfo end"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 529
    :catch_0
    move-exception v0

    .line 530
    .local v0, e:Landroid/os/RemoteException;
    :try_start_5
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 540
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v1

    .line 537
    :catchall_1
    move-exception v1

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method private doOffFile(Lcom/baidu/bulletin/BulletinService$Task;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "offlineTask"
    .parameter "url"
    .parameter "filename"

    .prologue
    .line 545
    if-nez p2, :cond_0

    .line 546
    const-string v1, "BulletinService"

    const-string v2, "offline, url is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    :goto_0
    return-void

    .line 549
    :cond_0
    const-string v1, "BulletinService"

    const-string v2, "offline start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    iget-object v2, p0, Lcom/baidu/bulletin/BulletinService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 551
    :try_start_0
    iget-object v1, p1, Lcom/baidu/bulletin/BulletinService$Task;->mListener:Lcom/baidu/bulletin/BulletinService$RemoteTaskListener;

    iget v3, p1, Lcom/baidu/bulletin/BulletinService$Task;->mTaskType:I

    iget-object v4, p1, Lcom/baidu/bulletin/BulletinService$Task;->mChannelItem:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    invoke-interface {v1, v3, v4}, Lcom/baidu/bulletin/BulletinService$RemoteTaskListener;->remoteTaskPreStarted(ILcom/baidu/bulletin/db/entity/ChannelItemInfo;)V

    .line 552
    iget-object v1, p0, Lcom/baidu/bulletin/BulletinService;->mCloudStorageManager:Lcom/baidu/bulletin/utils/CloudStorageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 554
    :try_start_1
    const-string v1, "BulletinService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "offline url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/apps/\u767e\u9875\u7a97/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".mp3"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/baidu/bulletin/BulletinService$Task;->mTaskFinished:Z

    .line 556
    iget-object v1, p0, Lcom/baidu/bulletin/BulletinService;->mCloudStorageManager:Lcom/baidu/bulletin/utils/CloudStorageManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/apps/\u767e\u9875\u7a97/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".mp3"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p2, v3}, Lcom/baidu/bulletin/utils/CloudStorageManager;->offlineFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/baidu/bulletin/BulletinService$Task;->mTaskUid:Ljava/lang/String;

    .line 557
    iget-object v1, p1, Lcom/baidu/bulletin/BulletinService$Task;->mListener:Lcom/baidu/bulletin/BulletinService$RemoteTaskListener;

    iget v3, p1, Lcom/baidu/bulletin/BulletinService$Task;->mTaskType:I

    iget-object v4, p1, Lcom/baidu/bulletin/BulletinService$Task;->mChannelItem:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    invoke-interface {v1, v3, v4}, Lcom/baidu/bulletin/BulletinService$RemoteTaskListener;->remoteTaskStarted(ILcom/baidu/bulletin/db/entity/ChannelItemInfo;)V

    .line 559
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p1, Lcom/baidu/bulletin/BulletinService$Task;->mTaskLastActiveTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 564
    :cond_1
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/baidu/bulletin/BulletinService;->mTasks:Ljava/util/Map;

    iget-object v3, p1, Lcom/baidu/bulletin/BulletinService$Task;->mTaskUid:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 565
    const-string v1, "BulletinService"

    const-string v3, "add Task start"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    iget-object v3, p0, Lcom/baidu/bulletin/BulletinService;->mTasks:Ljava/util/Map;

    monitor-enter v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 567
    :try_start_3
    iget-object v1, p0, Lcom/baidu/bulletin/BulletinService;->mTasks:Ljava/util/Map;

    iget-object v4, p1, Lcom/baidu/bulletin/BulletinService$Task;->mTaskUid:Ljava/lang/String;

    invoke-interface {v1, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 569
    :try_start_4
    const-string v1, "BulletinService"

    const-string v3, "add Task end"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    :cond_2
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 572
    const-string v1, "BulletinService"

    const-string v2, "offline end"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 560
    :catch_0
    move-exception v0

    .line 561
    .local v0, e:Landroid/os/RemoteException;
    :try_start_5
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 571
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v1

    .line 568
    :catchall_1
    move-exception v1

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method private getMatchTask(Ljava/lang/String;)Lcom/baidu/bulletin/BulletinService$Task;
    .locals 3
    .parameter "uuid"

    .prologue
    .line 160
    iget-object v2, p0, Lcom/baidu/bulletin/BulletinService;->mTasks:Ljava/util/Map;

    monitor-enter v2

    .line 161
    :try_start_0
    iget-object v1, p0, Lcom/baidu/bulletin/BulletinService;->mTasks:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/BulletinService$Task;

    .line 162
    .local v0, t:Lcom/baidu/bulletin/BulletinService$Task;
    monitor-exit v2

    return-object v0

    .line 163
    .end local v0           #t:Lcom/baidu/bulletin/BulletinService$Task;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getRemoteFileList()V
    .locals 5

    .prologue
    .line 441
    iget-object v1, p0, Lcom/baidu/bulletin/BulletinService;->mCloudStorageManager:Lcom/baidu/bulletin/utils/CloudStorageManager;

    if-eqz v1, :cond_0

    .line 442
    iget-object v2, p0, Lcom/baidu/bulletin/BulletinService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 444
    :try_start_0
    iget-object v1, p0, Lcom/baidu/bulletin/BulletinService;->mCloudStorageManager:Lcom/baidu/bulletin/utils/CloudStorageManager;

    const-string v3, "/apps/\u767e\u9875\u7a97/"

    iget-object v4, p0, Lcom/baidu/bulletin/BulletinService;->mListener:Lcom/baidu/yi/sdk/cloudstorage/global/ICloudStorageCallback;

    invoke-virtual {v1, v3, v4}, Lcom/baidu/bulletin/utils/CloudStorageManager;->listDirectory(Ljava/lang/String;Lcom/baidu/yi/sdk/cloudstorage/global/ICloudStorageCallback;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 448
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 450
    :cond_0
    return-void

    .line 445
    :catch_0
    move-exception v0

    .line 446
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 448
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private handleOfflineFileResult(Landroid/content/Intent;)V
    .locals 10
    .parameter "i"

    .prologue
    .line 168
    const-string v7, "task_uuid"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 169
    .local v6, uuid:Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/baidu/bulletin/BulletinService;->getMatchTask(Ljava/lang/String;)Lcom/baidu/bulletin/BulletinService$Task;

    move-result-object v3

    .line 170
    .local v3, task:Lcom/baidu/bulletin/BulletinService$Task;
    const/4 v1, -0x1

    .line 171
    .local v1, extraInfo:I
    const-string v7, "BulletinService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getMatchTask, task = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    if-nez v3, :cond_1

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    const-string v7, "error_code"

    const/4 v8, -0x1

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 176
    .local v0, error:I
    const-string v7, "BulletinService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleOfflinefileResult, error code = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const/4 v7, 0x1

    iput-boolean v7, v3, Lcom/baidu/bulletin/BulletinService$Task;->mTaskFinished:Z

    .line 179
    iget-object v2, v3, Lcom/baidu/bulletin/BulletinService$Task;->mListener:Lcom/baidu/bulletin/BulletinService$RemoteTaskListener;

    .line 180
    .local v2, ls:Lcom/baidu/bulletin/BulletinService$RemoteTaskListener;
    iget v4, v3, Lcom/baidu/bulletin/BulletinService$Task;->mTaskType:I

    .line 181
    .local v4, taskType:I
    if-nez v0, :cond_3

    .line 182
    const-string v7, "task_id"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 183
    .local v5, taskid:Ljava/lang/String;
    if-nez v5, :cond_2

    .line 184
    if-eqz v2, :cond_0

    .line 185
    const-string v7, "BulletinService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ls.remoteTaskFailed, task = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-direct {p0, v0}, Lcom/baidu/bulletin/BulletinService;->checkTokenError(I)I

    move-result v1

    .line 187
    invoke-direct {p0, v3, v1}, Lcom/baidu/bulletin/BulletinService;->taskFailHandle(Lcom/baidu/bulletin/BulletinService$Task;I)V

    goto :goto_0

    .line 190
    :cond_2
    const-string v7, "BulletinService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ls.remoteTaskSuccess, taskid = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    if-eqz v2, :cond_0

    .line 192
    iget-object v7, v3, Lcom/baidu/bulletin/BulletinService$Task;->mChannelItem:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    invoke-interface {v2, v4, v7, v5}, Lcom/baidu/bulletin/BulletinService$RemoteTaskListener;->remoteTaskCompleted(ILcom/baidu/bulletin/db/entity/ChannelItemInfo;Ljava/lang/String;)V

    .line 193
    iget-object v7, v3, Lcom/baidu/bulletin/BulletinService$Task;->mTaskUid:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/baidu/bulletin/BulletinService;->removeTask(Ljava/lang/String;)V

    goto :goto_0

    .line 196
    .end local v5           #taskid:Ljava/lang/String;
    :cond_3
    const/16 v7, -0xb

    if-ne v0, v7, :cond_4

    .line 197
    if-eqz v2, :cond_0

    .line 198
    iget-object v7, v3, Lcom/baidu/bulletin/BulletinService$Task;->mChannelItem:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    invoke-interface {v2, v4, v7}, Lcom/baidu/bulletin/BulletinService$RemoteTaskListener;->remoteTaskCanceled(ILcom/baidu/bulletin/db/entity/ChannelItemInfo;)V

    goto/16 :goto_0

    .line 201
    :cond_4
    if-eqz v2, :cond_0

    .line 202
    const-string v7, "BulletinService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ls.remoteTaskFailed, task = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-direct {p0, v0}, Lcom/baidu/bulletin/BulletinService;->checkTokenError(I)I

    move-result v1

    .line 204
    invoke-direct {p0, v3, v1}, Lcom/baidu/bulletin/BulletinService;->taskFailHandle(Lcom/baidu/bulletin/BulletinService$Task;I)V

    goto/16 :goto_0
.end method

.method private handleOfflineProgress(Landroid/content/Intent;)V
    .locals 16
    .parameter "i"

    .prologue
    .line 211
    const-string v12, "task_uuid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 212
    .local v11, uuid:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/baidu/bulletin/BulletinService;->getMatchTask(Ljava/lang/String;)Lcom/baidu/bulletin/BulletinService$Task;

    move-result-object v8

    .line 213
    .local v8, task:Lcom/baidu/bulletin/BulletinService$Task;
    if-nez v8, :cond_0

    .line 260
    :goto_0
    return-void

    .line 216
    :cond_0
    const/4 v12, 0x1

    iput-boolean v12, v8, Lcom/baidu/bulletin/BulletinService$Task;->mTaskFinished:Z

    .line 218
    const-string v12, "offline_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 219
    .local v4, offlineId:Ljava/lang/String;
    const-string v12, "result"

    const/4 v13, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 220
    .local v6, result:I
    const-string v12, "status"

    const/4 v13, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 221
    .local v7, status:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iput-wide v12, v8, Lcom/baidu/bulletin/BulletinService$Task;->mTaskLastActiveTime:J

    .line 222
    const-string v12, "transferred_bytes"

    const-wide/16 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v14}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 224
    .local v1, done:J
    const-string v12, "total_bytes"

    const-wide/16 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v14}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    .line 225
    .local v9, total:J
    const-string v12, "error_code"

    const/4 v13, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 226
    .local v3, error:I
    const-string v12, "BulletinService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "offlineId: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " result: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " status: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " done: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " total: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " error code: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    if-eqz v6, :cond_1

    .line 230
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/baidu/bulletin/BulletinService;->checkTokenError(I)I

    move-result v6

    .line 231
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v6}, Lcom/baidu/bulletin/BulletinService;->taskFailHandle(Lcom/baidu/bulletin/BulletinService$Task;I)V

    goto/16 :goto_0

    .line 233
    :cond_1
    packed-switch v7, :pswitch_data_0

    .line 257
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v7}, Lcom/baidu/bulletin/BulletinService;->taskFailHandle(Lcom/baidu/bulletin/BulletinService$Task;I)V

    goto/16 :goto_0

    .line 235
    :pswitch_0
    iget-object v12, v8, Lcom/baidu/bulletin/BulletinService$Task;->mListener:Lcom/baidu/bulletin/BulletinService$RemoteTaskListener;

    iget v13, v8, Lcom/baidu/bulletin/BulletinService$Task;->mTaskType:I

    iget-object v14, v8, Lcom/baidu/bulletin/BulletinService$Task;->mChannelItem:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    invoke-interface {v12, v13, v14, v4}, Lcom/baidu/bulletin/BulletinService$RemoteTaskListener;->remoteTaskCompleted(ILcom/baidu/bulletin/db/entity/ChannelItemInfo;Ljava/lang/String;)V

    .line 236
    iget-object v12, v8, Lcom/baidu/bulletin/BulletinService$Task;->mTaskUid:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/baidu/bulletin/BulletinService;->removeTask(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 240
    :pswitch_1
    const-wide/16 v12, 0x0

    cmp-long v12, v9, v12

    if-nez v12, :cond_2

    .line 241
    iget-object v12, v8, Lcom/baidu/bulletin/BulletinService$Task;->mListener:Lcom/baidu/bulletin/BulletinService$RemoteTaskListener;

    iget v13, v8, Lcom/baidu/bulletin/BulletinService$Task;->mTaskType:I

    iget-object v14, v8, Lcom/baidu/bulletin/BulletinService$Task;->mChannelItem:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    const/4 v15, 0x0

    invoke-interface {v12, v13, v14, v15, v4}, Lcom/baidu/bulletin/BulletinService$RemoteTaskListener;->remoteTaskProgress(ILcom/baidu/bulletin/db/entity/ChannelItemInfo;ILjava/lang/String;)V

    .line 253
    :goto_1
    iget-object v12, v8, Lcom/baidu/bulletin/BulletinService$Task;->mTaskUid:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/baidu/bulletin/BulletinService;->removeTask(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 243
    :cond_2
    const/high16 v12, 0x42c8

    long-to-float v13, v1

    long-to-float v14, v9

    div-float/2addr v13, v14

    mul-float/2addr v12, v13

    float-to-int v5, v12

    .line 244
    .local v5, progress:I
    const/16 v12, 0x64

    if-le v5, v12, :cond_3

    .line 245
    const/16 v5, 0x64

    .line 247
    :cond_3
    const/16 v12, 0x64

    if-eq v5, v12, :cond_4

    .line 248
    iget-object v12, v8, Lcom/baidu/bulletin/BulletinService$Task;->mListener:Lcom/baidu/bulletin/BulletinService$RemoteTaskListener;

    iget v13, v8, Lcom/baidu/bulletin/BulletinService$Task;->mTaskType:I

    iget-object v14, v8, Lcom/baidu/bulletin/BulletinService$Task;->mChannelItem:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    invoke-interface {v12, v13, v14, v5, v4}, Lcom/baidu/bulletin/BulletinService$RemoteTaskListener;->remoteTaskProgress(ILcom/baidu/bulletin/db/entity/ChannelItemInfo;ILjava/lang/String;)V

    goto :goto_1

    .line 250
    :cond_4
    iget-object v12, v8, Lcom/baidu/bulletin/BulletinService$Task;->mListener:Lcom/baidu/bulletin/BulletinService$RemoteTaskListener;

    iget v13, v8, Lcom/baidu/bulletin/BulletinService$Task;->mTaskType:I

    iget-object v14, v8, Lcom/baidu/bulletin/BulletinService$Task;->mChannelItem:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    invoke-interface {v12, v13, v14, v4}, Lcom/baidu/bulletin/BulletinService$RemoteTaskListener;->remoteTaskCompleted(ILcom/baidu/bulletin/db/entity/ChannelItemInfo;Ljava/lang/String;)V

    goto :goto_1

    .line 233
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isNetworkAvailable()Z
    .locals 4

    .prologue
    .line 276
    invoke-static {}, Lcom/baidu/bulletin/utils/DeviceEnv$Network;->getOutgoingRoute()Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;

    move-result-object v1

    sget-object v2, Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;->NONE:Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    .line 277
    .local v0, available:Z
    :goto_0
    const-string v1, "BulletinService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "network available"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    return v0

    .line 276
    .end local v0           #available:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized offlineFile(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;Lcom/baidu/bulletin/BulletinService$RemoteTaskListener;)V
    .locals 5
    .parameter "data"
    .parameter "ls"

    .prologue
    .line 577
    monitor-enter p0

    :try_start_0
    const-string v1, "BulletinService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "offlineurl:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->sourceUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    new-instance v0, Lcom/baidu/bulletin/BulletinService$Task;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/baidu/bulletin/BulletinService$Task;-><init>(Lcom/baidu/bulletin/BulletinService$1;)V

    .line 579
    .local v0, offlineTask:Lcom/baidu/bulletin/BulletinService$Task;
    const/4 v1, 0x0

    iput v1, v0, Lcom/baidu/bulletin/BulletinService$Task;->mTaskType:I

    .line 580
    iput-object p2, v0, Lcom/baidu/bulletin/BulletinService$Task;->mListener:Lcom/baidu/bulletin/BulletinService$RemoteTaskListener;

    .line 581
    iput-object p1, v0, Lcom/baidu/bulletin/BulletinService$Task;->mChannelItem:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    .line 582
    const/4 v1, 0x0

    iput v1, v0, Lcom/baidu/bulletin/BulletinService$Task;->mRetryTimes:I

    .line 583
    iget-object v1, p1, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->sourceUrl:Ljava/lang/String;

    iget-object v2, p1, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->title:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/baidu/bulletin/BulletinService;->doOffFile(Lcom/baidu/bulletin/BulletinService$Task;Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    invoke-direct {p0}, Lcom/baidu/bulletin/BulletinService;->isNetworkAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 585
    iget-object v1, v0, Lcom/baidu/bulletin/BulletinService$Task;->mListener:Lcom/baidu/bulletin/BulletinService$RemoteTaskListener;

    iget v2, v0, Lcom/baidu/bulletin/BulletinService$Task;->mTaskType:I

    iget-object v3, v0, Lcom/baidu/bulletin/BulletinService$Task;->mChannelItem:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    const/16 v4, 0x9

    invoke-interface {v1, v2, v3, v4}, Lcom/baidu/bulletin/BulletinService$RemoteTaskListener;->remoteTaskFailed(ILcom/baidu/bulletin/db/entity/ChannelItemInfo;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 588
    :cond_0
    monitor-exit p0

    return-void

    .line 577
    .end local v0           #offlineTask:Lcom/baidu/bulletin/BulletinService$Task;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private putAuthInfo()V
    .locals 4

    .prologue
    .line 473
    iget-object v1, p0, Lcom/baidu/bulletin/BulletinService;->mCloudStorageManager:Lcom/baidu/bulletin/utils/CloudStorageManager;

    if-eqz v1, :cond_0

    .line 475
    :try_start_0
    const-string v1, "BulletinService"

    const-string v2, "putAuthInfo"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    iget-object v1, p0, Lcom/baidu/bulletin/BulletinService;->mCloudStorageManager:Lcom/baidu/bulletin/utils/CloudStorageManager;

    const-string v2, "764234"

    iget-object v3, p0, Lcom/baidu/bulletin/BulletinService;->mListener:Lcom/baidu/yi/sdk/cloudstorage/global/ICloudStorageCallback;

    invoke-virtual {v1, v2, v3}, Lcom/baidu/bulletin/utils/CloudStorageManager;->putAuthInfo(Ljava/lang/String;Lcom/baidu/yi/sdk/cloudstorage/global/ICloudStorageCallback;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    :goto_0
    return-void

    .line 477
    :catch_0
    move-exception v0

    .line 478
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 481
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    invoke-direct {p0}, Lcom/baidu/bulletin/BulletinService;->reBindCloudService()Z

    goto :goto_0
.end method

.method private putOAuthInfo()V
    .locals 6

    .prologue
    .line 486
    iget-object v1, p0, Lcom/baidu/bulletin/BulletinService;->mCloudStorageManager:Lcom/baidu/bulletin/utils/CloudStorageManager;

    if-eqz v1, :cond_0

    .line 488
    :try_start_0
    const-string v1, "BulletinService"

    const-string v2, "putOAuthInfo"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    iget-object v1, p0, Lcom/baidu/bulletin/BulletinService;->mCloudStorageManager:Lcom/baidu/bulletin/utils/CloudStorageManager;

    const-string v2, "764234"

    const-string v3, "LT3WVvnboqNIGaciDVu0Q4Ut"

    const-string v4, "9bQpFSKma9Ly9t64VvZ9KANErbmr6lmq"

    iget-object v5, p0, Lcom/baidu/bulletin/BulletinService;->mListener:Lcom/baidu/yi/sdk/cloudstorage/global/ICloudStorageCallback;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/baidu/bulletin/utils/CloudStorageManager;->putOAuthInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/yi/sdk/cloudstorage/global/ICloudStorageCallback;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 496
    :goto_0
    return-void

    .line 490
    :catch_0
    move-exception v0

    .line 491
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 494
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    invoke-direct {p0}, Lcom/baidu/bulletin/BulletinService;->reBindCloudService()Z

    goto :goto_0
.end method

.method private reBindCloudService()Z
    .locals 2

    .prologue
    .line 400
    const-string v0, "BulletinService"

    const-string v1, "reBindCloudService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    invoke-direct {p0}, Lcom/baidu/bulletin/BulletinService;->unBindCloudService()V

    .line 402
    invoke-direct {p0}, Lcom/baidu/bulletin/BulletinService;->bindCloudService()Z

    move-result v0

    return v0
.end method

.method private removeAllTask()V
    .locals 4

    .prologue
    .line 333
    iget-object v3, p0, Lcom/baidu/bulletin/BulletinService;->mTasks:Ljava/util/Map;

    if-eqz v3, :cond_0

    .line 334
    iget-object v3, p0, Lcom/baidu/bulletin/BulletinService;->mTasks:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 335
    .local v1, iter:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 336
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 337
    .local v0, entry:Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 338
    .local v2, taskUid:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/baidu/bulletin/BulletinService;->cancelTask(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p0, v2}, Lcom/baidu/bulletin/BulletinService;->removeTask(Ljava/lang/String;)V

    goto :goto_0

    .line 342
    .end local v0           #entry:Ljava/util/Map$Entry;
    .end local v1           #iter:Ljava/util/Iterator;
    .end local v2           #taskUid:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private taskFailHandle(Lcom/baidu/bulletin/BulletinService$Task;I)V
    .locals 3
    .parameter "task"
    .parameter "extraInfo"

    .prologue
    .line 151
    const-string v0, "BulletinService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remoteTaskFailed, handle task = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v0, p1, Lcom/baidu/bulletin/BulletinService$Task;->mListener:Lcom/baidu/bulletin/BulletinService$RemoteTaskListener;

    iget v1, p1, Lcom/baidu/bulletin/BulletinService$Task;->mTaskType:I

    iget-object v2, p1, Lcom/baidu/bulletin/BulletinService$Task;->mChannelItem:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    invoke-interface {v0, v1, v2, p2}, Lcom/baidu/bulletin/BulletinService$RemoteTaskListener;->remoteTaskFailed(ILcom/baidu/bulletin/db/entity/ChannelItemInfo;I)V

    .line 153
    const/16 v0, 0x9

    if-eq p2, v0, :cond_0

    .line 154
    iget-object v0, p1, Lcom/baidu/bulletin/BulletinService$Task;->mTaskUid:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/baidu/bulletin/BulletinService;->cancelTask(Ljava/lang/String;)V

    .line 155
    iget-object v0, p1, Lcom/baidu/bulletin/BulletinService$Task;->mTaskUid:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/baidu/bulletin/BulletinService;->removeTask(Ljava/lang/String;)V

    .line 157
    :cond_0
    return-void
.end method

.method private unBindCloudService()V
    .locals 2

    .prologue
    .line 392
    iget-boolean v0, p0, Lcom/baidu/bulletin/BulletinService;->mIsBound:Z

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/baidu/bulletin/BulletinService;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/baidu/bulletin/BulletinService;->unbindService(Landroid/content/ServiceConnection;)V

    .line 394
    const-string v0, "BulletinService"

    const-string v1, "cloud service unbinded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/bulletin/BulletinService;->mIsBound:Z

    .line 397
    :cond_0
    return-void
.end method


# virtual methods
.method public cancelTask(Ljava/lang/String;)V
    .locals 4
    .parameter "uuid"

    .prologue
    .line 120
    const-string v1, "BulletinService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelTask, uuid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v1, p0, Lcom/baidu/bulletin/BulletinService;->mCloudStorageManager:Lcom/baidu/bulletin/utils/CloudStorageManager;

    if-eqz v1, :cond_0

    .line 123
    :try_start_0
    iget-object v1, p0, Lcom/baidu/bulletin/BulletinService;->mCloudStorageManager:Lcom/baidu/bulletin/utils/CloudStorageManager;

    invoke-virtual {v1, p1}, Lcom/baidu/bulletin/utils/CloudStorageManager;->cancelTask(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 374
    iget-object v0, p0, Lcom/baidu/bulletin/BulletinService;->mServiceSession:Lcom/baidu/bulletin/BulletinService$ServiceSession;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 346
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 347
    new-instance v1, Lcom/baidu/bulletin/BulletinService$ServiceSession;

    invoke-direct {v1, p0}, Lcom/baidu/bulletin/BulletinService$ServiceSession;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/baidu/bulletin/BulletinService;->mServiceSession:Lcom/baidu/bulletin/BulletinService$ServiceSession;

    .line 348
    invoke-direct {p0}, Lcom/baidu/bulletin/BulletinService;->bindCloudService()Z

    .line 349
    new-instance v1, Lcom/baidu/bulletin/BulletinService$MyTaskListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/baidu/bulletin/BulletinService$MyTaskListener;-><init>(Lcom/baidu/bulletin/BulletinService;Lcom/baidu/bulletin/BulletinService$1;)V

    iput-object v1, p0, Lcom/baidu/bulletin/BulletinService;->mListener:Lcom/baidu/yi/sdk/cloudstorage/global/ICloudStorageCallback;

    .line 350
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 351
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.baidu.cloudstorage.results"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 352
    const-string v1, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 353
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 354
    iget-object v1, p0, Lcom/baidu/bulletin/BulletinService;->mCloudStorageReceiver:Lcom/baidu/bulletin/BulletinService$CloudStorageReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/baidu/bulletin/BulletinService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 355
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 359
    invoke-direct {p0}, Lcom/baidu/bulletin/BulletinService;->removeAllTask()V

    .line 360
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 361
    iget-object v0, p0, Lcom/baidu/bulletin/BulletinService;->mServiceSession:Lcom/baidu/bulletin/BulletinService$ServiceSession;

    invoke-virtual {v0}, Lcom/baidu/bulletin/BulletinService$ServiceSession;->close()V

    .line 362
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/bulletin/BulletinService;->mServiceSession:Lcom/baidu/bulletin/BulletinService$ServiceSession;

    .line 363
    invoke-direct {p0}, Lcom/baidu/bulletin/BulletinService;->unBindCloudService()V

    .line 364
    iget-object v0, p0, Lcom/baidu/bulletin/BulletinService;->mCloudStorageReceiver:Lcom/baidu/bulletin/BulletinService$CloudStorageReceiver;

    invoke-virtual {p0, v0}, Lcom/baidu/bulletin/BulletinService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 365
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 369
    const/4 v0, 0x1

    return v0
.end method

.method public removeTask(Ljava/lang/String;)V
    .locals 3
    .parameter "uuid"

    .prologue
    .line 142
    const-string v0, "BulletinService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeTask, uuid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v1, p0, Lcom/baidu/bulletin/BulletinService;->mTasks:Ljava/util/Map;

    monitor-enter v1

    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/baidu/bulletin/BulletinService;->mTasks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/baidu/bulletin/BulletinService;->mTasks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    :cond_0
    monitor-exit v1

    .line 148
    return-void

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resumeTask(Ljava/lang/String;)V
    .locals 4
    .parameter "uuid"

    .prologue
    .line 131
    const-string v1, "BulletinService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resumeTask, uuid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v1, p0, Lcom/baidu/bulletin/BulletinService;->mCloudStorageManager:Lcom/baidu/bulletin/utils/CloudStorageManager;

    if-eqz v1, :cond_0

    .line 134
    :try_start_0
    iget-object v1, p0, Lcom/baidu/bulletin/BulletinService;->mCloudStorageManager:Lcom/baidu/bulletin/utils/CloudStorageManager;

    invoke-virtual {v1, p1}, Lcom/baidu/bulletin/utils/CloudStorageManager;->resumeTask(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
