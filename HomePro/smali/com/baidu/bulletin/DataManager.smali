.class public Lcom/baidu/bulletin/DataManager;
.super Ljava/lang/Object;
.source "DataManager.java"

# interfaces
.implements Lcom/baidu/bulletin/IDataManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bulletin/DataManager$DataManagerApplistCallback;,
        Lcom/baidu/bulletin/DataManager$DataManagerBulletinOpInfoCallback;,
        Lcom/baidu/bulletin/DataManager$DataManagerOpInfoCallback;,
        Lcom/baidu/bulletin/DataManager$DataManagerNewsDetailCallback;
    }
.end annotation


# static fields
.field private static DELETE_DB_RECORD_COUNT:I

.field private static MAX_DB_RECORD_COUNT_PER_CHANNEL:I

.field private static final TAG:Ljava/lang/String;

.field private static volatile _INSTANCE:Lcom/baidu/bulletin/DataManager;


# instance fields
.field private mDataBaseManager:Lcom/baidu/bulletin/db/manager/IDatabaseManager;

.field private mHandler:Landroid/os/Handler;

.field private mNetworkDataManager:Lcom/baidu/bulletin/network/logic/NetworkDataManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/baidu/bulletin/DataManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/bulletin/DataManager;->TAG:Ljava/lang/String;

    .line 36
    const/16 v0, 0xc8

    sput v0, Lcom/baidu/bulletin/DataManager;->MAX_DB_RECORD_COUNT_PER_CHANNEL:I

    .line 37
    sget v0, Lcom/baidu/bulletin/DataManager;->MAX_DB_RECORD_COUNT_PER_CHANNEL:I

    div-int/lit8 v0, v0, 0x4

    sput v0, Lcom/baidu/bulletin/DataManager;->DELETE_DB_RECORD_COUNT:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v0, p0, Lcom/baidu/bulletin/DataManager;->mDataBaseManager:Lcom/baidu/bulletin/db/manager/IDatabaseManager;

    .line 34
    iput-object v0, p0, Lcom/baidu/bulletin/DataManager;->mNetworkDataManager:Lcom/baidu/bulletin/network/logic/NetworkDataManager;

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/baidu/bulletin/DataManager;->mHandler:Landroid/os/Handler;

    .line 54
    invoke-static {}, Lcom/baidu/bulletin/db/manager/DatabaseManager;->getInstance()Lcom/baidu/bulletin/db/manager/DatabaseManager;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bulletin/DataManager;->mDataBaseManager:Lcom/baidu/bulletin/db/manager/IDatabaseManager;

    .line 55
    new-instance v0, Lcom/baidu/bulletin/network/logic/NetworkDataManager;

    invoke-direct {v0, p1}, Lcom/baidu/bulletin/network/logic/NetworkDataManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/bulletin/DataManager;->mNetworkDataManager:Lcom/baidu/bulletin/network/logic/NetworkDataManager;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/bulletin/DataManager;ILjava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/baidu/bulletin/DataManager;->checkUpdateMessageCount(ILjava/util/List;)V

    return-void
.end method

.method static synthetic access$100(Lcom/baidu/bulletin/DataManager;)Lcom/baidu/bulletin/db/manager/IDatabaseManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/baidu/bulletin/DataManager;->mDataBaseManager:Lcom/baidu/bulletin/db/manager/IDatabaseManager;

    return-object v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 29
    sget v0, Lcom/baidu/bulletin/DataManager;->MAX_DB_RECORD_COUNT_PER_CHANNEL:I

    return v0
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 29
    sget v0, Lcom/baidu/bulletin/DataManager;->DELETE_DB_RECORD_COUNT:I

    return v0
.end method

.method private checkUpdateMessageCount(ILjava/util/List;)V
    .locals 5
    .parameter "topic"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bulletin/db/entity/ChannelItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p2, itemInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/ChannelItemInfo;>;"
    if-eqz p2, :cond_0

    .line 61
    invoke-static {p1}, Lcom/baidu/bulletin/ui/settings/ChannelList;->getChannelIdUseTopic(I)I

    move-result v1

    .line 62
    .local v1, channelListID:I
    invoke-static {v1}, Lcom/baidu/bulletin/ui/settings/ChannelList;->getChannelNameRes(I)I

    move-result v2

    .line 63
    .local v2, typeTextId:I
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, channel:Ljava/lang/String;
    iget-object v3, p0, Lcom/baidu/bulletin/DataManager;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/baidu/bulletin/DataManager$1;

    invoke-direct {v4, p0, p2, v0}, Lcom/baidu/bulletin/DataManager$1;-><init>(Lcom/baidu/bulletin/DataManager;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 79
    .end local v0           #channel:Ljava/lang/String;
    .end local v1           #channelListID:I
    .end local v2           #typeTextId:I
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/baidu/bulletin/DataManager;
    .locals 3

    .prologue
    .line 42
    sget-object v0, Lcom/baidu/bulletin/DataManager;->_INSTANCE:Lcom/baidu/bulletin/DataManager;

    if-nez v0, :cond_1

    .line 43
    const-class v1, Lcom/baidu/bulletin/DataManager;

    monitor-enter v1

    .line 44
    :try_start_0
    sget-object v0, Lcom/baidu/bulletin/DataManager;->_INSTANCE:Lcom/baidu/bulletin/DataManager;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/baidu/bulletin/DataManager;

    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/baidu/bulletin/DataManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/bulletin/DataManager;->_INSTANCE:Lcom/baidu/bulletin/DataManager;

    .line 47
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :cond_1
    sget-object v0, Lcom/baidu/bulletin/DataManager;->_INSTANCE:Lcom/baidu/bulletin/DataManager;

    return-object v0

    .line 47
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public queryChanelItemMaxVersion(I)J
    .locals 4
    .parameter "topic"

    .prologue
    .line 745
    const-wide/16 v1, 0x0

    .line 747
    .local v1, ret:J
    :try_start_0
    iget-object v3, p0, Lcom/baidu/bulletin/DataManager;->mDataBaseManager:Lcom/baidu/bulletin/db/manager/IDatabaseManager;

    invoke-interface {v3, p1}, Lcom/baidu/bulletin/db/manager/IDatabaseManager;->queryChanelItemMaxVersion(I)J
    :try_end_0
    .catch Lcom/baidu/bulletin/db/exception/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 752
    :goto_0
    return-wide v1

    .line 748
    :catch_0
    move-exception v0

    .line 750
    .local v0, e:Lcom/baidu/bulletin/db/exception/DatabaseException;
    invoke-virtual {v0}, Lcom/baidu/bulletin/db/exception/DatabaseException;->printStackTrace()V

    goto :goto_0
.end method

.method public queryChanelItemMinVersion(I)J
    .locals 4
    .parameter "topic"

    .prologue
    .line 755
    const-wide/16 v1, 0x0

    .line 757
    .local v1, ret:J
    :try_start_0
    iget-object v3, p0, Lcom/baidu/bulletin/DataManager;->mDataBaseManager:Lcom/baidu/bulletin/db/manager/IDatabaseManager;

    invoke-interface {v3, p1}, Lcom/baidu/bulletin/db/manager/IDatabaseManager;->queryChanelItemMinVersion(I)J
    :try_end_0
    .catch Lcom/baidu/bulletin/db/exception/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 762
    :goto_0
    return-wide v1

    .line 758
    :catch_0
    move-exception v0

    .line 760
    .local v0, e:Lcom/baidu/bulletin/db/exception/DatabaseException;
    invoke-virtual {v0}, Lcom/baidu/bulletin/db/exception/DatabaseException;->printStackTrace()V

    goto :goto_0
.end method

.method public requestApplist(Lcom/baidu/bulletin/RequestCallback$ApplistCallback;Ljava/lang/String;J)V
    .locals 5
    .parameter "callback"
    .parameter "content"
    .parameter "channelItemId"

    .prologue
    .line 726
    const/4 v0, 0x0

    .line 727
    .local v0, appDetailInfo:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/AppDetailInfo;>;"
    if-nez p1, :cond_0

    .line 742
    :goto_0
    return-void

    .line 729
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/baidu/bulletin/DataManager;->mDataBaseManager:Lcom/baidu/bulletin/db/manager/IDatabaseManager;

    long-to-int v4, p3

    invoke-interface {v3, v4}, Lcom/baidu/bulletin/db/manager/IDatabaseManager;->queryAppDetailByItemId(I)Ljava/util/List;
    :try_end_0
    .catch Lcom/baidu/bulletin/db/exception/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 734
    :goto_1
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 735
    const/4 v3, 0x0

    invoke-interface {p1, v0, v3}, Lcom/baidu/bulletin/RequestCallback$ApplistCallback;->onApplistCallback(Ljava/util/List;I)V

    goto :goto_0

    .line 730
    :catch_0
    move-exception v2

    .line 732
    .local v2, e:Lcom/baidu/bulletin/db/exception/DatabaseException;
    invoke-virtual {v2}, Lcom/baidu/bulletin/db/exception/DatabaseException;->printStackTrace()V

    goto :goto_1

    .line 739
    .end local v2           #e:Lcom/baidu/bulletin/db/exception/DatabaseException;
    :cond_1
    new-instance v1, Lcom/baidu/bulletin/DataManager$DataManagerApplistCallback;

    iget-object v3, p0, Lcom/baidu/bulletin/DataManager;->mDataBaseManager:Lcom/baidu/bulletin/db/manager/IDatabaseManager;

    long-to-int v4, p3

    invoke-direct {v1, p0, p1, v3, v4}, Lcom/baidu/bulletin/DataManager$DataManagerApplistCallback;-><init>(Lcom/baidu/bulletin/DataManager;Lcom/baidu/bulletin/RequestCallback$ApplistCallback;Lcom/baidu/bulletin/db/manager/IDatabaseManager;I)V

    .line 740
    .local v1, appListCB:Lcom/baidu/bulletin/DataManager$DataManagerApplistCallback;
    iget-object v3, p0, Lcom/baidu/bulletin/DataManager;->mNetworkDataManager:Lcom/baidu/bulletin/network/logic/NetworkDataManager;

    invoke-virtual {v3, v1, p2, p3, p4}, Lcom/baidu/bulletin/network/logic/NetworkDataManager;->requestApplist(Lcom/baidu/bulletin/RequestCallback$ApplistCallback;Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public requestBulletinOpInfo(Lcom/baidu/bulletin/RequestCallback$BulletinOpInfoCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 689
    new-instance v0, Lcom/baidu/bulletin/DataManager$DataManagerBulletinOpInfoCallback;

    iget-object v1, p0, Lcom/baidu/bulletin/DataManager;->mDataBaseManager:Lcom/baidu/bulletin/db/manager/IDatabaseManager;

    invoke-direct {v0, p0, p1, v1}, Lcom/baidu/bulletin/DataManager$DataManagerBulletinOpInfoCallback;-><init>(Lcom/baidu/bulletin/DataManager;Lcom/baidu/bulletin/RequestCallback$BulletinOpInfoCallback;Lcom/baidu/bulletin/db/manager/IDatabaseManager;)V

    .line 690
    .local v0, opItemInfoCB:Lcom/baidu/bulletin/DataManager$DataManagerBulletinOpInfoCallback;
    iget-object v1, p0, Lcom/baidu/bulletin/DataManager;->mNetworkDataManager:Lcom/baidu/bulletin/network/logic/NetworkDataManager;

    invoke-virtual {v1, v0}, Lcom/baidu/bulletin/network/logic/NetworkDataManager;->requestBulletinOpInfo(Lcom/baidu/bulletin/RequestCallback$BulletinOpInfoCallback;)V

    .line 691
    return-void
.end method

.method public requestNewChannelItems(Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;IIJ)V
    .locals 10
    .parameter "callback"
    .parameter "maxCount"
    .parameter "topic"
    .parameter "maxVersion"

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x7d0

    .line 283
    if-nez p1, :cond_0

    .line 421
    :goto_0
    return-void

    .line 286
    :cond_0
    const/4 v0, -0x1

    if-ne p3, v0, :cond_1

    .line 287
    invoke-interface {p1, v9, v8}, Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;->onChannelItemsCallback(Ljava/util/List;I)V

    goto :goto_0

    .line 292
    :cond_1
    const-wide/16 v4, 0x0

    .line 294
    .local v4, maxDBVersion:J
    :try_start_0
    iget-object v0, p0, Lcom/baidu/bulletin/DataManager;->mDataBaseManager:Lcom/baidu/bulletin/db/manager/IDatabaseManager;

    invoke-interface {v0, p3}, Lcom/baidu/bulletin/db/manager/IDatabaseManager;->queryChanelItemMaxVersion(I)J
    :try_end_0
    .catch Lcom/baidu/bulletin/db/exception/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 301
    sget-object v0, Lcom/baidu/bulletin/DataManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "maxDBversion = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    new-instance v1, Lcom/baidu/bulletin/DataManager$3;

    invoke-direct {v1, p0, p3, p2, p1}, Lcom/baidu/bulletin/DataManager$3;-><init>(Lcom/baidu/bulletin/DataManager;IILcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;)V

    .line 401
    .local v1, mChannelItemsCallback:Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;
    sget-boolean v0, Lcom/baidu/launcher/app/LauncherApplication;->appRebooting:Z

    if-nez v0, :cond_2

    .line 402
    iget-object v0, p0, Lcom/baidu/bulletin/DataManager;->mNetworkDataManager:Lcom/baidu/bulletin/network/logic/NetworkDataManager;

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/bulletin/network/logic/NetworkDataManager;->requestNewChannelItems(Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;IIJ)V

    goto :goto_0

    .line 295
    .end local v1           #mChannelItemsCallback:Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;
    :catch_0
    move-exception v6

    .line 297
    .local v6, e:Lcom/baidu/bulletin/db/exception/DatabaseException;
    invoke-virtual {v6}, Lcom/baidu/bulletin/db/exception/DatabaseException;->printStackTrace()V

    .line 298
    invoke-interface {p1, v9, v8}, Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;->onChannelItemsCallback(Ljava/util/List;I)V

    goto :goto_0

    .line 408
    .end local v6           #e:Lcom/baidu/bulletin/db/exception/DatabaseException;
    .restart local v1       #mChannelItemsCallback:Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/baidu/bulletin/DataManager;->mDataBaseManager:Lcom/baidu/bulletin/db/manager/IDatabaseManager;

    invoke-interface {v0, p3, p2}, Lcom/baidu/bulletin/db/manager/IDatabaseManager;->queryChannelItemTopVersion(II)Ljava/util/List;

    move-result-object v7

    .line 411
    .local v7, mChannelItemInfos:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/ChannelItemInfo;>;"
    const/16 v0, 0x3eb

    invoke-interface {p1, v7, v0}, Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;->onChannelItemsCallback(Ljava/util/List;I)V
    :try_end_1
    .catch Lcom/baidu/bulletin/db/exception/DatabaseException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 414
    .end local v7           #mChannelItemInfos:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/ChannelItemInfo;>;"
    :catch_1
    move-exception v6

    .line 416
    .restart local v6       #e:Lcom/baidu/bulletin/db/exception/DatabaseException;
    invoke-virtual {v6}, Lcom/baidu/bulletin/db/exception/DatabaseException;->printStackTrace()V

    .line 417
    invoke-interface {p1, v9, v8}, Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;->onChannelItemsCallback(Ljava/util/List;I)V

    goto :goto_0
.end method

.method public requestNewChannelItems(Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;IIJ)V
    .locals 10
    .parameter "callback"
    .parameter "networkUpdateCallback"
    .parameter "maxCount"
    .parameter "topic"
    .parameter "maxVersion"

    .prologue
    .line 109
    if-nez p1, :cond_1

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    const/4 v1, -0x1

    if-ne p4, v1, :cond_3

    .line 114
    if-eqz p1, :cond_2

    .line 115
    const/4 v1, 0x0

    const/16 v2, 0x7d0

    invoke-interface {p1, v1, v2}, Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;->onChannelItemsCallback(Ljava/util/List;I)V

    .line 118
    :cond_2
    if-eqz p2, :cond_0

    .line 119
    const/4 v1, 0x0

    const/16 v2, 0x7d0

    invoke-interface {p2, v1, v2}, Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;->onChannelItemsCallback(Ljava/util/List;I)V

    goto :goto_0

    .line 125
    :cond_3
    const-wide/16 v8, 0x0

    .line 127
    .local v8, maxDBVersion:J
    :try_start_0
    iget-object v1, p0, Lcom/baidu/bulletin/DataManager;->mDataBaseManager:Lcom/baidu/bulletin/db/manager/IDatabaseManager;

    invoke-interface {v1, p4}, Lcom/baidu/bulletin/db/manager/IDatabaseManager;->queryChanelItemMaxVersion(I)J
    :try_end_0
    .catch Lcom/baidu/bulletin/db/exception/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    .line 141
    sget-object v1, Lcom/baidu/bulletin/DataManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "maxDBversion = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    new-instance v0, Lcom/baidu/bulletin/DataManager$2;

    move-object v1, p0

    move v2, p4

    move v3, p3

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/baidu/bulletin/DataManager$2;-><init>(Lcom/baidu/bulletin/DataManager;IILcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;)V

    .line 272
    .local v0, mChannelItemsCallback:Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;
    iget-object v1, p0, Lcom/baidu/bulletin/DataManager;->mNetworkDataManager:Lcom/baidu/bulletin/network/logic/NetworkDataManager;

    move-object v2, v0

    move v3, p3

    move v4, p4

    move-wide v5, v8

    invoke-virtual/range {v1 .. v6}, Lcom/baidu/bulletin/network/logic/NetworkDataManager;->requestNewChannelItems(Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;IIJ)V

    goto :goto_0

    .line 128
    .end local v0           #mChannelItemsCallback:Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;
    :catch_0
    move-exception v7

    .line 130
    .local v7, e:Lcom/baidu/bulletin/db/exception/DatabaseException;
    invoke-virtual {v7}, Lcom/baidu/bulletin/db/exception/DatabaseException;->printStackTrace()V

    .line 132
    if-eqz p1, :cond_4

    .line 133
    const/4 v1, 0x0

    const/16 v2, 0x7d0

    invoke-interface {p1, v1, v2}, Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;->onChannelItemsCallback(Ljava/util/List;I)V

    .line 136
    :cond_4
    if-eqz p2, :cond_0

    .line 137
    const/4 v1, 0x0

    const/16 v2, 0x7d0

    invoke-interface {p2, v1, v2}, Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;->onChannelItemsCallback(Ljava/util/List;I)V

    goto :goto_0
.end method

.method public requestNewestFromLocal(Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;II)V
    .locals 4
    .parameter "callback"
    .parameter "maxCount"
    .parameter "topic"

    .prologue
    .line 86
    :try_start_0
    iget-object v2, p0, Lcom/baidu/bulletin/DataManager;->mDataBaseManager:Lcom/baidu/bulletin/db/manager/IDatabaseManager;

    invoke-interface {v2, p3, p2}, Lcom/baidu/bulletin/db/manager/IDatabaseManager;->queryChannelItemTopVersion(II)Ljava/util/List;

    move-result-object v1

    .line 90
    .local v1, mChannelItemInfos:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/ChannelItemInfo;>;"
    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;->onChannelItemsCallback(Ljava/util/List;I)V
    :try_end_0
    .catch Lcom/baidu/bulletin/db/exception/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .end local v1           #mChannelItemInfos:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/ChannelItemInfo;>;"
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, e:Lcom/baidu/bulletin/db/exception/DatabaseException;
    invoke-virtual {v0}, Lcom/baidu/bulletin/db/exception/DatabaseException;->printStackTrace()V

    .line 95
    const/4 v2, 0x0

    const/16 v3, 0x7d0

    invoke-interface {p1, v2, v3}, Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;->onChannelItemsCallback(Ljava/util/List;I)V

    goto :goto_0
.end method

.method public requestNewsDetail(Lcom/baidu/bulletin/RequestCallback$NewsDetailCallback;Ljava/lang/String;J)V
    .locals 5
    .parameter "callback"
    .parameter "content"
    .parameter "newsId"

    .prologue
    .line 584
    const/4 v2, 0x0

    .line 585
    .local v2, newsDetailItems:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/NewsDetailInfo;>;"
    if-nez p1, :cond_0

    .line 600
    :goto_0
    return-void

    .line 587
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/baidu/bulletin/DataManager;->mDataBaseManager:Lcom/baidu/bulletin/db/manager/IDatabaseManager;

    long-to-int v4, p3

    invoke-interface {v3, v4}, Lcom/baidu/bulletin/db/manager/IDatabaseManager;->queryNewsDetailByItemId(I)Ljava/util/List;
    :try_end_0
    .catch Lcom/baidu/bulletin/db/exception/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 592
    :goto_1
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 593
    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Lcom/baidu/bulletin/RequestCallback$NewsDetailCallback;->onNewsDetailCallback(Ljava/util/List;I)V

    goto :goto_0

    .line 588
    :catch_0
    move-exception v0

    .line 590
    .local v0, e:Lcom/baidu/bulletin/db/exception/DatabaseException;
    invoke-virtual {v0}, Lcom/baidu/bulletin/db/exception/DatabaseException;->printStackTrace()V

    goto :goto_1

    .line 597
    .end local v0           #e:Lcom/baidu/bulletin/db/exception/DatabaseException;
    :cond_1
    new-instance v1, Lcom/baidu/bulletin/DataManager$DataManagerNewsDetailCallback;

    iget-object v3, p0, Lcom/baidu/bulletin/DataManager;->mDataBaseManager:Lcom/baidu/bulletin/db/manager/IDatabaseManager;

    long-to-int v4, p3

    invoke-direct {v1, p0, p1, v3, v4}, Lcom/baidu/bulletin/DataManager$DataManagerNewsDetailCallback;-><init>(Lcom/baidu/bulletin/DataManager;Lcom/baidu/bulletin/RequestCallback$NewsDetailCallback;Lcom/baidu/bulletin/db/manager/IDatabaseManager;I)V

    .line 598
    .local v1, newsDetailCB:Lcom/baidu/bulletin/DataManager$DataManagerNewsDetailCallback;
    iget-object v3, p0, Lcom/baidu/bulletin/DataManager;->mNetworkDataManager:Lcom/baidu/bulletin/network/logic/NetworkDataManager;

    invoke-virtual {v3, v1, p2, p3, p4}, Lcom/baidu/bulletin/network/logic/NetworkDataManager;->requestNewsDetail(Lcom/baidu/bulletin/RequestCallback$NewsDetailCallback;Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public requestOldChannelItems(Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;IIJ)V
    .locals 14
    .parameter "callback"
    .parameter "maxCount"
    .parameter "topic"
    .parameter "minVersion"

    .prologue
    .line 427
    if-nez p1, :cond_0

    .line 549
    :goto_0
    return-void

    .line 431
    :cond_0
    const/4 v10, 0x0

    .line 433
    .local v10, channellItems:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/ChannelItemInfo;>;"
    :try_start_0
    iget-object v3, p0, Lcom/baidu/bulletin/DataManager;->mDataBaseManager:Lcom/baidu/bulletin/db/manager/IDatabaseManager;

    const/4 v8, 0x0

    move/from16 v4, p3

    move-wide/from16 v5, p4

    move/from16 v7, p2

    invoke-interface/range {v3 .. v8}, Lcom/baidu/bulletin/db/manager/IDatabaseManager;->queryChannelItem(IJII)Ljava/util/List;
    :try_end_0
    .catch Lcom/baidu/bulletin/db/exception/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 441
    if-eqz v10, :cond_1

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, p2

    if-ne v4, v0, :cond_1

    const/4 v4, 0x0

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    iget-wide v4, v4, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->version:J

    const-wide/16 v6, 0x1

    sub-long v6, p4, v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    add-int/lit8 v4, p2, -0x1

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    iget-wide v4, v4, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->version:J

    move/from16 v0, p2

    int-to-long v6, v0

    sub-long v6, p4, v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 446
    const/4 v4, 0x0

    invoke-interface {p1, v10, v4}, Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;->onChannelItemsCallback(Ljava/util/List;I)V

    goto :goto_0

    .line 435
    :catch_0
    move-exception v12

    .line 437
    .local v12, e:Lcom/baidu/bulletin/db/exception/DatabaseException;
    invoke-virtual {v12}, Lcom/baidu/bulletin/db/exception/DatabaseException;->printStackTrace()V

    .line 438
    const/4 v4, 0x0

    const/16 v5, 0x7d0

    invoke-interface {p1, v4, v5}, Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;->onChannelItemsCallback(Ljava/util/List;I)V

    goto :goto_0

    .line 453
    .end local v12           #e:Lcom/baidu/bulletin/db/exception/DatabaseException;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/baidu/bulletin/DataManager;->mDataBaseManager:Lcom/baidu/bulletin/db/manager/IDatabaseManager;

    move/from16 v0, p2

    int-to-long v4, v0

    sub-long v5, p4, v4

    const-wide/16 v7, 0x1

    sub-long v7, p4, v7

    move/from16 v4, p3

    invoke-interface/range {v3 .. v8}, Lcom/baidu/bulletin/db/manager/IDatabaseManager;->deleteChannelItem(IJJ)V
    :try_end_1
    .catch Lcom/baidu/bulletin/db/exception/DatabaseException; {:try_start_1 .. :try_end_1} :catch_2

    .line 464
    :try_start_2
    iget-object v4, p0, Lcom/baidu/bulletin/DataManager;->mDataBaseManager:Lcom/baidu/bulletin/db/manager/IDatabaseManager;

    move/from16 v0, p3

    move-wide/from16 v1, p4

    invoke-interface {v4, v0, v1, v2}, Lcom/baidu/bulletin/db/manager/IDatabaseManager;->queryChannelItemCountEqualMore(IJ)I

    move-result v11

    .line 467
    .local v11, dbSize:I
    sget v4, Lcom/baidu/bulletin/DataManager;->MAX_DB_RECORD_COUNT_PER_CHANNEL:I

    if-lt v11, v4, :cond_2

    .line 469
    iget-object v4, p0, Lcom/baidu/bulletin/DataManager;->mDataBaseManager:Lcom/baidu/bulletin/db/manager/IDatabaseManager;

    const-wide/16 v5, 0x1

    sub-long v5, p4, v5

    const/4 v7, -0x1

    move/from16 v0, p3

    invoke-interface {v4, v0, v5, v6, v7}, Lcom/baidu/bulletin/db/manager/IDatabaseManager;->deleteChannelItemEqualLess(IJI)V

    .line 472
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {p1, v4, v5}, Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;->onChannelItemsCallback(Ljava/util/List;I)V
    :try_end_2
    .catch Lcom/baidu/bulletin/db/exception/DatabaseException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 475
    .end local v11           #dbSize:I
    :catch_1
    move-exception v12

    .line 477
    .restart local v12       #e:Lcom/baidu/bulletin/db/exception/DatabaseException;
    invoke-virtual {v12}, Lcom/baidu/bulletin/db/exception/DatabaseException;->printStackTrace()V

    .line 478
    const/4 v4, 0x0

    const/16 v5, 0x7d0

    invoke-interface {p1, v4, v5}, Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;->onChannelItemsCallback(Ljava/util/List;I)V

    goto/16 :goto_0

    .line 455
    .end local v12           #e:Lcom/baidu/bulletin/db/exception/DatabaseException;
    :catch_2
    move-exception v13

    .line 457
    .local v13, e2:Lcom/baidu/bulletin/db/exception/DatabaseException;
    invoke-virtual {v13}, Lcom/baidu/bulletin/db/exception/DatabaseException;->printStackTrace()V

    .line 458
    const/4 v4, 0x0

    const/16 v5, 0x7d0

    invoke-interface {p1, v4, v5}, Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;->onChannelItemsCallback(Ljava/util/List;I)V

    goto/16 :goto_0

    .line 483
    .end local v13           #e2:Lcom/baidu/bulletin/db/exception/DatabaseException;
    .restart local v11       #dbSize:I
    :cond_2
    new-instance v3, Lcom/baidu/bulletin/DataManager$4;

    move-object v4, p0

    move-object v5, p1

    move/from16 v6, p3

    move-wide/from16 v7, p4

    move/from16 v9, p2

    invoke-direct/range {v3 .. v9}, Lcom/baidu/bulletin/DataManager$4;-><init>(Lcom/baidu/bulletin/DataManager;Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;IJI)V

    .line 547
    .local v3, mChannelItemsCallback:Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;
    iget-object v4, p0, Lcom/baidu/bulletin/DataManager;->mNetworkDataManager:Lcom/baidu/bulletin/network/logic/NetworkDataManager;

    move-object v5, v3

    move/from16 v6, p2

    move/from16 v7, p3

    move-wide/from16 v8, p4

    invoke-virtual/range {v4 .. v9}, Lcom/baidu/bulletin/network/logic/NetworkDataManager;->requestOldChannelItems(Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;IIJ)V

    goto/16 :goto_0
.end method

.method public requestOpInfo(Lcom/baidu/bulletin/RequestCallback$OpInfoCallback;Ljava/lang/String;I)V
    .locals 8
    .parameter "callback"
    .parameter "channelName"
    .parameter "topic"

    .prologue
    .line 639
    const/4 v7, 0x0

    .line 640
    .local v7, opItemInfo:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/OpItemInfo;>;"
    if-nez p1, :cond_0

    .line 655
    :goto_0
    return-void

    .line 642
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/baidu/bulletin/DataManager;->mDataBaseManager:Lcom/baidu/bulletin/db/manager/IDatabaseManager;

    invoke-interface {v1, p2, p3}, Lcom/baidu/bulletin/db/manager/IDatabaseManager;->queryOpItems(Ljava/lang/String;I)Ljava/util/List;
    :try_end_0
    .catch Lcom/baidu/bulletin/db/exception/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 647
    :goto_1
    if-eqz v7, :cond_1

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 648
    const/4 v1, 0x0

    invoke-interface {p1, v7, v1}, Lcom/baidu/bulletin/RequestCallback$OpInfoCallback;->onOpInfoCallback(Ljava/util/List;I)V

    goto :goto_0

    .line 643
    :catch_0
    move-exception v6

    .line 645
    .local v6, e:Lcom/baidu/bulletin/db/exception/DatabaseException;
    invoke-virtual {v6}, Lcom/baidu/bulletin/db/exception/DatabaseException;->printStackTrace()V

    goto :goto_1

    .line 652
    .end local v6           #e:Lcom/baidu/bulletin/db/exception/DatabaseException;
    :cond_1
    new-instance v0, Lcom/baidu/bulletin/DataManager$DataManagerOpInfoCallback;

    iget-object v3, p0, Lcom/baidu/bulletin/DataManager;->mDataBaseManager:Lcom/baidu/bulletin/db/manager/IDatabaseManager;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/baidu/bulletin/DataManager$DataManagerOpInfoCallback;-><init>(Lcom/baidu/bulletin/DataManager;Lcom/baidu/bulletin/RequestCallback$OpInfoCallback;Lcom/baidu/bulletin/db/manager/IDatabaseManager;Ljava/lang/String;I)V

    .line 654
    .local v0, opItemInfoCB:Lcom/baidu/bulletin/DataManager$DataManagerOpInfoCallback;
    iget-object v1, p0, Lcom/baidu/bulletin/DataManager;->mNetworkDataManager:Lcom/baidu/bulletin/network/logic/NetworkDataManager;

    invoke-virtual {v1, v0, p2, p3}, Lcom/baidu/bulletin/network/logic/NetworkDataManager;->requestOpInfo(Lcom/baidu/bulletin/RequestCallback$OpInfoCallback;Ljava/lang/String;I)V

    goto :goto_0
.end method
