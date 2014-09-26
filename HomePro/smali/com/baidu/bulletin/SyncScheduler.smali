.class public Lcom/baidu/bulletin/SyncScheduler;
.super Ljava/lang/Object;
.source "SyncScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bulletin/SyncScheduler$NetworkMonitor;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static isAutoSync:Z

.field private static mSyncScheduler:Lcom/baidu/bulletin/SyncScheduler;


# instance fields
.field private lastAutoSyncTime:J

.field private mClientSession:Lcom/baidu/bulletin/BulletinPresentation$ClientSession;

.field private mDataSyncer:Lcom/baidu/bulletin/DataSyncer;

.field private mSyncObserver:Lcom/baidu/bulletin/DataSyncer$SyncObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/baidu/bulletin/SyncScheduler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/bulletin/SyncScheduler;->TAG:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/bulletin/SyncScheduler;->isAutoSync:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/baidu/bulletin/BulletinPresentation$ClientSession;)V
    .locals 2
    .parameter "context"
    .parameter "session"

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lcom/baidu/bulletin/SyncScheduler$1;

    invoke-direct {v0, p0}, Lcom/baidu/bulletin/SyncScheduler$1;-><init>(Lcom/baidu/bulletin/SyncScheduler;)V

    iput-object v0, p0, Lcom/baidu/bulletin/SyncScheduler;->mSyncObserver:Lcom/baidu/bulletin/DataSyncer$SyncObserver;

    .line 108
    iput-object p2, p0, Lcom/baidu/bulletin/SyncScheduler;->mClientSession:Lcom/baidu/bulletin/BulletinPresentation$ClientSession;

    .line 109
    new-instance v0, Lcom/baidu/bulletin/DataSyncer;

    iget-object v1, p0, Lcom/baidu/bulletin/SyncScheduler;->mSyncObserver:Lcom/baidu/bulletin/DataSyncer$SyncObserver;

    invoke-direct {v0, p1, v1}, Lcom/baidu/bulletin/DataSyncer;-><init>(Landroid/content/Context;Lcom/baidu/bulletin/DataSyncer$SyncObserver;)V

    iput-object v0, p0, Lcom/baidu/bulletin/SyncScheduler;->mDataSyncer:Lcom/baidu/bulletin/DataSyncer;

    .line 111
    invoke-virtual {p0}, Lcom/baidu/bulletin/SyncScheduler;->startAutoSync()V

    .line 112
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/bulletin/SyncScheduler;)Lcom/baidu/bulletin/BulletinPresentation$ClientSession;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/baidu/bulletin/SyncScheduler;->mClientSession:Lcom/baidu/bulletin/BulletinPresentation$ClientSession;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/baidu/bulletin/SyncScheduler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private closeDataSyncer()V
    .locals 0

    .prologue
    .line 147
    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/baidu/bulletin/BulletinPresentation$ClientSession;)Lcom/baidu/bulletin/SyncScheduler;
    .locals 1
    .parameter "context"
    .parameter "session"

    .prologue
    .line 36
    sget-object v0, Lcom/baidu/bulletin/SyncScheduler;->mSyncScheduler:Lcom/baidu/bulletin/SyncScheduler;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/baidu/bulletin/SyncScheduler;

    invoke-direct {v0, p0, p1}, Lcom/baidu/bulletin/SyncScheduler;-><init>(Landroid/content/Context;Lcom/baidu/bulletin/BulletinPresentation$ClientSession;)V

    sput-object v0, Lcom/baidu/bulletin/SyncScheduler;->mSyncScheduler:Lcom/baidu/bulletin/SyncScheduler;

    .line 39
    :cond_0
    sget-object v0, Lcom/baidu/bulletin/SyncScheduler;->mSyncScheduler:Lcom/baidu/bulletin/SyncScheduler;

    return-object v0
.end method

.method public static getAutoSync()Z
    .locals 1

    .prologue
    .line 227
    sget-boolean v0, Lcom/baidu/bulletin/SyncScheduler;->isAutoSync:Z

    return v0
.end method

.method public static getInstance()Lcom/baidu/bulletin/SyncScheduler;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/baidu/bulletin/SyncScheduler;->mSyncScheduler:Lcom/baidu/bulletin/SyncScheduler;

    return-object v0
.end method

.method private handleBaiduPushEvent(Ljava/lang/String;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 155
    return-void
.end method

.method public static setAutoSync(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 231
    sput-boolean p0, Lcom/baidu/bulletin/SyncScheduler;->isAutoSync:Z

    .line 232
    return-void
.end method

.method private static setSyncScheduler(Lcom/baidu/bulletin/SyncScheduler;)V
    .locals 0
    .parameter "scheduler"

    .prologue
    .line 47
    sput-object p0, Lcom/baidu/bulletin/SyncScheduler;->mSyncScheduler:Lcom/baidu/bulletin/SyncScheduler;

    .line 48
    return-void
.end method

.method public static shouldAutoSync()Z
    .locals 2

    .prologue
    .line 190
    invoke-static {}, Lcom/baidu/bulletin/utils/DeviceEnv$Network;->getOutgoingRoute()Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;

    move-result-object v0

    sget-object v1, Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;->WIFI:Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/baidu/bulletin/utils/DeviceEnv$Battery;->isLow()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/baidu/bulletin/utils/MediaMonitor;->isStorageAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/baidu/bulletin/utils/DeviceEnv$Storage;->isHasFreeStorageSpace()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/baidu/bulletin/utils/SharedPreferencesUtils;->isAutoSyncEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static shouldSync()Z
    .locals 2

    .prologue
    .line 184
    invoke-static {}, Lcom/baidu/bulletin/utils/DeviceEnv$Network;->getOutgoingRoute()Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;

    move-result-object v0

    sget-object v1, Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;->WIFI:Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/baidu/bulletin/utils/DeviceEnv$Battery;->isLow()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/baidu/bulletin/utils/MediaMonitor;->isStorageAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/baidu/bulletin/utils/DeviceEnv$Storage;->isHasFreeStorageSpace()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/baidu/bulletin/SyncScheduler;->mSyncScheduler:Lcom/baidu/bulletin/SyncScheduler;

    if-eqz v0, :cond_0

    .line 52
    sget-object v0, Lcom/baidu/bulletin/SyncScheduler;->mSyncScheduler:Lcom/baidu/bulletin/SyncScheduler;

    invoke-direct {v0}, Lcom/baidu/bulletin/SyncScheduler;->closeDataSyncer()V

    .line 53
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/baidu/bulletin/SyncScheduler;->setSyncScheduler(Lcom/baidu/bulletin/SyncScheduler;)V

    .line 55
    invoke-static {}, Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader;->close()V

    .line 56
    invoke-static {}, Lcom/baidu/bulletin/network/FileDownloader;->release()V

    .line 57
    invoke-static {}, Lcom/baidu/bulletin/utils/MusicPlayer;->release()V

    .line 58
    invoke-static {}, Lcom/baidu/bulletin/http/HttpScheduler;->close()V

    .line 59
    invoke-static {}, Lcom/baidu/bulletin/dao/PageCacheSerializable;->close()V

    .line 60
    invoke-static {}, Lcom/baidu/bulletin/DataRepository;->close()V

    .line 61
    invoke-static {}, Lcom/baidu/bulletin/pager/BulletinPager;->release()V

    .line 62
    invoke-static {}, Lcom/baidu/bulletin/utils/SharedPreferencesUtils;->release()V

    .line 63
    invoke-static {}, Lcom/baidu/bulletin/utils/DeviceEnv$Static;->close()V

    .line 64
    invoke-static {}, Lcom/baidu/bulletin/utils/ChangeNotifyManager;->trim()V

    .line 66
    :cond_0
    return-void
.end method

.method public downloadImgByPage(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 143
    return-void
.end method

.method public getHistoryToday()Lcom/baidu/bulletin/entity/ChannelItem;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/baidu/bulletin/SyncScheduler;->mDataSyncer:Lcom/baidu/bulletin/DataSyncer;

    invoke-virtual {v0}, Lcom/baidu/bulletin/DataSyncer;->getHistoryToday()Lcom/baidu/bulletin/entity/ChannelItem;

    move-result-object v0

    return-object v0
.end method

.method public getPageCount()I
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/baidu/bulletin/SyncScheduler;->mDataSyncer:Lcom/baidu/bulletin/DataSyncer;

    invoke-virtual {v0}, Lcom/baidu/bulletin/DataSyncer;->getPageCount()I

    move-result v0

    return v0
.end method

.method public getPageData(I)[Lcom/baidu/bulletin/entity/ChannelItem;
    .locals 1
    .parameter "position"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/baidu/bulletin/SyncScheduler;->mDataSyncer:Lcom/baidu/bulletin/DataSyncer;

    invoke-virtual {v0, p1}, Lcom/baidu/bulletin/DataSyncer;->getPageData(I)[Lcom/baidu/bulletin/entity/ChannelItem;

    move-result-object v0

    return-object v0
.end method

.method public refreshChannelContent()V
    .locals 0

    .prologue
    .line 139
    return-void
.end method

.method public requestPage(Lcom/baidu/bulletin/entity/ChannelItem;)V
    .locals 0
    .parameter "channel"

    .prologue
    .line 135
    return-void
.end method

.method public startAutoSync()V
    .locals 2

    .prologue
    .line 161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 181
    .local v0, curTime:J
    return-void
.end method

.method public sync()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/baidu/bulletin/SyncScheduler;->mDataSyncer:Lcom/baidu/bulletin/DataSyncer;

    invoke-virtual {v0}, Lcom/baidu/bulletin/DataSyncer;->sync()V

    .line 119
    return-void
.end method
