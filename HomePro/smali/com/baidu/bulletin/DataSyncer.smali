.class public Lcom/baidu/bulletin/DataSyncer;
.super Ljava/lang/Object;
.source "DataSyncer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bulletin/DataSyncer$PageDownloadObserver;,
        Lcom/baidu/bulletin/DataSyncer$SyncObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDataRepository:Lcom/baidu/bulletin/DataRepository;

.field private mDownloadObserver:Lcom/baidu/bulletin/network/logic/DownloadObserver;

.field private mIsDownloadMode:Z

.field private mLatestPageRequestTime:J

.field private mSyncObserver:Lcom/baidu/bulletin/DataSyncer$SyncObserver;

.field private mTaskCancelled:Z

.field private mUpdateInfoDownloader:Lcom/baidu/bulletin/network/logic/UpdateInfoDownloader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/baidu/bulletin/DataSyncer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/bulletin/DataSyncer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/baidu/bulletin/DataSyncer$SyncObserver;)V
    .locals 1
    .parameter "context"
    .parameter "observer"

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/baidu/bulletin/DataSyncer$1;

    invoke-direct {v0, p0}, Lcom/baidu/bulletin/DataSyncer$1;-><init>(Lcom/baidu/bulletin/DataSyncer;)V

    iput-object v0, p0, Lcom/baidu/bulletin/DataSyncer;->mDownloadObserver:Lcom/baidu/bulletin/network/logic/DownloadObserver;

    .line 151
    iput-object p2, p0, Lcom/baidu/bulletin/DataSyncer;->mSyncObserver:Lcom/baidu/bulletin/DataSyncer$SyncObserver;

    .line 154
    invoke-static {}, Lcom/baidu/bulletin/DataRepository;->getInstance()Lcom/baidu/bulletin/DataRepository;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bulletin/DataSyncer;->mDataRepository:Lcom/baidu/bulletin/DataRepository;

    .line 155
    return-void
.end method

.method static synthetic access$002(Lcom/baidu/bulletin/DataSyncer;Lcom/baidu/bulletin/network/logic/UpdateInfoDownloader;)Lcom/baidu/bulletin/network/logic/UpdateInfoDownloader;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/baidu/bulletin/DataSyncer;->mUpdateInfoDownloader:Lcom/baidu/bulletin/network/logic/UpdateInfoDownloader;

    return-object p1
.end method

.method static synthetic access$100(Lcom/baidu/bulletin/DataSyncer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/baidu/bulletin/DataSyncer;->mTaskCancelled:Z

    return v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/baidu/bulletin/DataSyncer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/baidu/bulletin/DataSyncer;)Lcom/baidu/bulletin/DataRepository;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/baidu/bulletin/DataSyncer;->mDataRepository:Lcom/baidu/bulletin/DataRepository;

    return-object v0
.end method

.method static synthetic access$400(Lcom/baidu/bulletin/DataSyncer;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/DataSyncer;->pageChannelItems(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/baidu/bulletin/DataSyncer;)Lcom/baidu/bulletin/DataSyncer$SyncObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/baidu/bulletin/DataSyncer;->mSyncObserver:Lcom/baidu/bulletin/DataSyncer$SyncObserver;

    return-object v0
.end method

.method static synthetic access$602(Lcom/baidu/bulletin/DataSyncer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/baidu/bulletin/DataSyncer;->mIsDownloadMode:Z

    return p1
.end method

.method static synthetic access$700(Lcom/baidu/bulletin/DataSyncer;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 24
    iget-wide v0, p0, Lcom/baidu/bulletin/DataSyncer;->mLatestPageRequestTime:J

    return-wide v0
.end method

.method static synthetic access$702(Lcom/baidu/bulletin/DataSyncer;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-wide p1, p0, Lcom/baidu/bulletin/DataSyncer;->mLatestPageRequestTime:J

    return-wide p1
.end method

.method private pageChannelItems(Z)Z
    .locals 10
    .parameter "required"

    .prologue
    const/4 v6, 0x0

    .line 82
    iget-object v7, p0, Lcom/baidu/bulletin/DataSyncer;->mDataRepository:Lcom/baidu/bulletin/DataRepository;

    invoke-virtual {v7}, Lcom/baidu/bulletin/DataRepository;->queryUnDoPageChannelItems()[Lcom/baidu/bulletin/entity/ChannelItem;

    move-result-object v3

    .line 84
    .local v3, items:[Lcom/baidu/bulletin/entity/ChannelItem;
    if-nez v3, :cond_1

    .line 110
    :cond_0
    :goto_0
    return v6

    .line 87
    :cond_1
    sget-object v7, Lcom/baidu/bulletin/DataSyncer;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "required = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", items length = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    move-object v0, v3

    .local v0, arr$:[Lcom/baidu/bulletin/entity/ChannelItem;
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v4, :cond_2

    aget-object v2, v0, v1

    .line 90
    .local v2, item:Lcom/baidu/bulletin/entity/ChannelItem;
    iget v7, v2, Lcom/baidu/bulletin/entity/ChannelItem;->pageID:I

    if-nez v7, :cond_4

    .line 91
    const/4 p1, 0x1

    .line 96
    .end local v2           #item:Lcom/baidu/bulletin/entity/ChannelItem;
    :cond_2
    if-eqz p1, :cond_0

    .line 97
    sget-object v6, Lcom/baidu/bulletin/DataSyncer;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "channels items size is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const/4 v5, 0x0

    .line 101
    .local v5, maxPageId:I
    invoke-direct {p0, v3}, Lcom/baidu/bulletin/DataSyncer;->separateMusicFromEachOther([Lcom/baidu/bulletin/entity/ChannelItem;)[Lcom/baidu/bulletin/entity/ChannelItem;

    move-result-object v3

    .line 102
    invoke-static {}, Lcom/baidu/bulletin/pager/BulletinPager;->isAvailable()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 103
    sget-object v6, Lcom/baidu/bulletin/DataSyncer;->TAG:Ljava/lang/String;

    const-string v7, "doPage"

    invoke-static {v6, v7}, Lcom/baidu/bulletin/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-static {}, Lcom/baidu/bulletin/pager/BulletinPager;->getInstance()Lcom/baidu/bulletin/pager/BulletinPager;

    move-result-object v6

    invoke-virtual {v6, v3, v5}, Lcom/baidu/bulletin/pager/BulletinPager;->doPage([Lcom/baidu/bulletin/entity/ChannelItem;I)V

    .line 106
    iget-object v6, p0, Lcom/baidu/bulletin/DataSyncer;->mDataRepository:Lcom/baidu/bulletin/DataRepository;

    invoke-virtual {v6, v3}, Lcom/baidu/bulletin/DataRepository;->update([Lcom/baidu/bulletin/entity/ChannelItem;)V

    .line 108
    :cond_3
    const/4 v6, 0x1

    goto :goto_0

    .line 89
    .end local v5           #maxPageId:I
    .restart local v2       #item:Lcom/baidu/bulletin/entity/ChannelItem;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private separateMusicFromEachOther([Lcom/baidu/bulletin/entity/ChannelItem;)[Lcom/baidu/bulletin/entity/ChannelItem;
    .locals 14
    .parameter "items"

    .prologue
    .line 115
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v6, music:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/entity/ChannelItem;>;"
    move-object v0, p1

    .local v0, arr$:[Lcom/baidu/bulletin/entity/ChannelItem;
    array-length v5, v0

    .local v5, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v5, :cond_1

    aget-object v4, v0, v1

    .line 117
    .local v4, item:Lcom/baidu/bulletin/entity/ChannelItem;
    const-string v12, "music"

    iget-object v13, v4, Lcom/baidu/bulletin/entity/ChannelItem;->channelId:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 118
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 122
    .end local v4           #item:Lcom/baidu/bulletin/entity/ChannelItem;
    :cond_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 123
    .local v7, musicCount:I
    if-nez v7, :cond_2

    .line 147
    .end local p1
    :goto_1
    return-object p1

    .line 127
    .restart local p1
    :cond_2
    array-length v12, p1

    new-array v8, v12, [Lcom/baidu/bulletin/entity/ChannelItem;

    .line 128
    .local v8, result:[Lcom/baidu/bulletin/entity/ChannelItem;
    array-length v12, p1

    sub-int v11, v12, v7

    .line 129
    .local v11, totalCount:I
    div-int v10, v11, v7

    .line 131
    .local v10, stepCount:I
    const/4 v2, 0x0

    .line 132
    .local v2, index:I
    const/4 v9, 0x0

    .line 133
    .local v9, step:I
    move-object v0, p1

    array-length v5, v0

    const/4 v1, 0x0

    move v3, v2

    .end local v2           #index:I
    .local v3, index:I
    :goto_2
    if-ge v1, v5, :cond_4

    aget-object v4, v0, v1

    .line 134
    .restart local v4       #item:Lcom/baidu/bulletin/entity/ChannelItem;
    const-string v12, "music"

    iget-object v13, v4, Lcom/baidu/bulletin/entity/ChannelItem;->channelId:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 135
    add-int/lit8 v2, v3, 0x1

    .end local v3           #index:I
    .restart local v2       #index:I
    aput-object v4, v8, v3

    .line 136
    add-int/lit8 v9, v9, 0x1

    move v3, v2

    .line 139
    .end local v2           #index:I
    .restart local v3       #index:I
    :cond_3
    if-lt v9, v10, :cond_6

    .line 140
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_5

    .line 141
    add-int/lit8 v2, v3, 0x1

    .end local v3           #index:I
    .restart local v2       #index:I
    const/4 v12, 0x0

    invoke-interface {v6, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/baidu/bulletin/entity/ChannelItem;

    aput-object v12, v8, v3

    .line 143
    :goto_3
    const/4 v9, 0x0

    .line 133
    :goto_4
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    .end local v2           #index:I
    .restart local v3       #index:I
    goto :goto_2

    .end local v4           #item:Lcom/baidu/bulletin/entity/ChannelItem;
    :cond_4
    move-object p1, v8

    .line 147
    goto :goto_1

    .restart local v4       #item:Lcom/baidu/bulletin/entity/ChannelItem;
    :cond_5
    move v2, v3

    .end local v3           #index:I
    .restart local v2       #index:I
    goto :goto_3

    .end local v2           #index:I
    .restart local v3       #index:I
    :cond_6
    move v2, v3

    .end local v3           #index:I
    .restart local v2       #index:I
    goto :goto_4
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/baidu/bulletin/DataSyncer;->mUpdateInfoDownloader:Lcom/baidu/bulletin/network/logic/UpdateInfoDownloader;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/baidu/bulletin/DataSyncer;->mUpdateInfoDownloader:Lcom/baidu/bulletin/network/logic/UpdateInfoDownloader;

    invoke-virtual {v0}, Lcom/baidu/bulletin/network/logic/UpdateInfoDownloader;->cancelAll()V

    .line 261
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/bulletin/DataSyncer;->mTaskCancelled:Z

    .line 263
    return-void
.end method

.method public downloadImgByPage(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 216
    new-instance v0, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloaderByPage;

    new-instance v1, Lcom/baidu/bulletin/DataSyncer$2;

    invoke-direct {v1, p0}, Lcom/baidu/bulletin/DataSyncer$2;-><init>(Lcom/baidu/bulletin/DataSyncer;)V

    invoke-direct {v0, v1}, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloaderByPage;-><init>(Lcom/baidu/bulletin/network/logic/DownloadObserverByPage;)V

    .line 229
    .local v0, mItemBriefImageDownloaderByPage:Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloaderByPage;
    invoke-virtual {v0, p1}, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloaderByPage;->download(I)V

    .line 230
    return-void
.end method

.method public getHistoryToday()Lcom/baidu/bulletin/entity/ChannelItem;
    .locals 4

    .prologue
    .line 239
    :try_start_0
    iget-object v2, p0, Lcom/baidu/bulletin/DataSyncer;->mDataRepository:Lcom/baidu/bulletin/DataRepository;

    const-string v3, "history"

    invoke-virtual {v2, v3}, Lcom/baidu/bulletin/DataRepository;->queryChannelItems(Ljava/lang/String;)[Lcom/baidu/bulletin/entity/ChannelItem;

    move-result-object v0

    .line 241
    .local v0, channelItems:[Lcom/baidu/bulletin/entity/ChannelItem;
    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    .line 242
    const/4 v2, 0x0

    aget-object v2, v0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    .end local v0           #channelItems:[Lcom/baidu/bulletin/entity/ChannelItem;
    :goto_0
    return-object v2

    .line 244
    :catch_0
    move-exception v1

    .line 246
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 249
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getPageCount()I
    .locals 1

    .prologue
    .line 233
    invoke-static {}, Lcom/baidu/bulletin/dao/PageCacheSerializable;->getPageCount()I

    move-result v0

    return v0
.end method

.method public getPageData(I)[Lcom/baidu/bulletin/entity/ChannelItem;
    .locals 1
    .parameter "position"

    .prologue
    .line 254
    invoke-static {p1}, Lcom/baidu/bulletin/dao/PageCacheSerializable;->getPageData(I)[Lcom/baidu/bulletin/entity/ChannelItem;

    move-result-object v0

    return-object v0
.end method

.method public handleBaiduPushEvent(ZLjava/lang/String;)V
    .locals 5
    .parameter "autoSync"
    .parameter "data"

    .prologue
    .line 162
    :try_start_0
    const-class v3, Lcom/baidu/bulletin/network/protocol/RawUpdate$Version;

    invoke-static {p2, v3}, Lcom/baidu/bulletin/utils/JsonUtil;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/bulletin/network/protocol/RawUpdate$Version;

    .line 163
    .local v2, version:Lcom/baidu/bulletin/network/protocol/RawUpdate$Version;
    iget-object v3, p0, Lcom/baidu/bulletin/DataSyncer;->mDataRepository:Lcom/baidu/bulletin/DataRepository;

    invoke-virtual {v3}, Lcom/baidu/bulletin/DataRepository;->channelVersion()Lcom/baidu/bulletin/DataRepository$ChannelVersion;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/baidu/bulletin/DataRepository$ChannelVersion;->update(Lcom/baidu/bulletin/network/protocol/RawUpdate$Version;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 164
    iget-object v3, p0, Lcom/baidu/bulletin/DataSyncer;->mDataRepository:Lcom/baidu/bulletin/DataRepository;

    invoke-virtual {v3}, Lcom/baidu/bulletin/DataRepository;->channelVersion()Lcom/baidu/bulletin/DataRepository$ChannelVersion;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/bulletin/DataRepository$ChannelVersion;->getCountToUpdate()I

    move-result v0

    .line 165
    .local v0, count:I
    if-lez v0, :cond_0

    .line 166
    if-eqz p1, :cond_1

    .line 167
    invoke-virtual {p0}, Lcom/baidu/bulletin/DataSyncer;->sync()V

    .line 176
    .end local v0           #count:I
    .end local v2           #version:Lcom/baidu/bulletin/network/protocol/RawUpdate$Version;
    :cond_0
    :goto_0
    return-void

    .line 169
    .restart local v0       #count:I
    .restart local v2       #version:Lcom/baidu/bulletin/network/protocol/RawUpdate$Version;
    :cond_1
    iget-object v3, p0, Lcom/baidu/bulletin/DataSyncer;->mSyncObserver:Lcom/baidu/bulletin/DataSyncer$SyncObserver;

    invoke-interface {v3, v0}, Lcom/baidu/bulletin/DataSyncer$SyncObserver;->onNewMessageNotified(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 173
    .end local v0           #count:I
    .end local v2           #version:Lcom/baidu/bulletin/network/protocol/RawUpdate$Version;
    :catch_0
    move-exception v1

    .line 174
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Lcom/baidu/bulletin/DataSyncer;->TAG:Ljava/lang/String;

    const-string v4, "set remote message count fail"

    invoke-static {v3, v4, v1}, Lcom/baidu/bulletin/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public refreshChannelContent()V
    .locals 3

    .prologue
    .line 202
    sget-object v1, Lcom/baidu/bulletin/DataSyncer;->TAG:Ljava/lang/String;

    const-string v2, "refreshChannelConotent"

    invoke-static {v1, v2}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v1, p0, Lcom/baidu/bulletin/DataSyncer;->mDataRepository:Lcom/baidu/bulletin/DataRepository;

    invoke-virtual {v1}, Lcom/baidu/bulletin/DataRepository;->refreshChannelContent()Z

    move-result v0

    .line 204
    .local v0, pageChanged:Z
    if-eqz v0, :cond_0

    .line 205
    invoke-direct {p0, v0}, Lcom/baidu/bulletin/DataSyncer;->pageChannelItems(Z)Z

    .line 206
    invoke-static {}, Lcom/baidu/bulletin/dao/PageCacheSerializable;->resetPageDataCache()V

    .line 209
    :cond_0
    iget-boolean v1, p0, Lcom/baidu/bulletin/DataSyncer;->mIsDownloadMode:Z

    if-nez v1, :cond_1

    .line 210
    iget-object v1, p0, Lcom/baidu/bulletin/DataSyncer;->mSyncObserver:Lcom/baidu/bulletin/DataSyncer$SyncObserver;

    const/4 v2, -0x1

    invoke-interface {v1, v0, v2}, Lcom/baidu/bulletin/DataSyncer$SyncObserver;->onSyncFinish(ZI)V

    .line 212
    :cond_1
    sget-object v1, Lcom/baidu/bulletin/DataSyncer;->TAG:Ljava/lang/String;

    const-string v2, "in refreshChannelContent(), channel changed>>>>>"

    invoke-static {v1, v2}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    return-void
.end method

.method public requestPage(Lcom/baidu/bulletin/entity/ChannelItem;)V
    .locals 3
    .parameter "channel"

    .prologue
    .line 266
    sget-object v0, Lcom/baidu/bulletin/DataSyncer;->TAG:Ljava/lang/String;

    const-string v1, "requestDetail >>> "

    invoke-static {v0, v1}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    if-eqz p1, :cond_1

    .line 269
    :try_start_0
    iget v0, p1, Lcom/baidu/bulletin/entity/ChannelItem;->detailDownloaded:I

    if-nez v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/baidu/bulletin/DataSyncer;->mDataRepository:Lcom/baidu/bulletin/DataRepository;

    invoke-virtual {p1}, Lcom/baidu/bulletin/entity/ChannelItem;->get_Id()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bulletin/DataRepository;->queryChannelItem(J)Lcom/baidu/bulletin/entity/ChannelItem;

    move-result-object p1

    .line 273
    :cond_0
    iget v0, p1, Lcom/baidu/bulletin/entity/ChannelItem;->detailDownloaded:I

    if-nez v0, :cond_2

    .line 274
    sget-object v0, Lcom/baidu/bulletin/DataSyncer;->TAG:Ljava/lang/String;

    const-string v1, "requestDetail single page"

    invoke-static {v0, v1}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    invoke-static {}, Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader;->getInstance()Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader;

    move-result-object v0

    new-instance v1, Lcom/baidu/bulletin/DataSyncer$PageDownloadObserver;

    invoke-direct {v1, p0}, Lcom/baidu/bulletin/DataSyncer$PageDownloadObserver;-><init>(Lcom/baidu/bulletin/DataSyncer;)V

    invoke-virtual {v0, p1, v1}, Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader;->downloadPage(Lcom/baidu/bulletin/entity/ChannelItem;Lcom/baidu/bulletin/network/logic/SingleTaskDownloadObserver;)V

    .line 287
    :cond_1
    :goto_0
    return-void

    .line 278
    :cond_2
    invoke-virtual {p1}, Lcom/baidu/bulletin/entity/ChannelItem;->getPage()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 279
    iget-object v0, p0, Lcom/baidu/bulletin/DataSyncer;->mDataRepository:Lcom/baidu/bulletin/DataRepository;

    invoke-virtual {v0, p1}, Lcom/baidu/bulletin/DataRepository;->queryChannelDetails(Lcom/baidu/bulletin/entity/ChannelItem;)Lcom/baidu/bulletin/entity/ChannelItem;

    move-result-object p1

    .line 282
    :cond_3
    sget-object v0, Lcom/baidu/bulletin/DataSyncer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "channel channel.channelDetails.size() is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/baidu/bulletin/entity/ChannelItem;->getPage()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/baidu/bulletin/DataSyncer;->mSyncObserver:Lcom/baidu/bulletin/DataSyncer$SyncObserver;

    invoke-interface {v0, p1}, Lcom/baidu/bulletin/DataSyncer$SyncObserver;->onPageLoaded(Lcom/baidu/bulletin/entity/ChannelItem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 285
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized sync()V
    .locals 2

    .prologue
    .line 186
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/baidu/bulletin/utils/SharedPreferencesUtils;->isFirstUse()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    invoke-static {}, Lcom/baidu/bulletin/utils/SharedPreferencesUtils;->notifyBulletinUsed()V

    .line 188
    :cond_0
    invoke-static {}, Lcom/baidu/bulletin/utils/SharedPreferencesUtils;->isGuideShown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 189
    invoke-static {}, Lcom/baidu/bulletin/utils/SharedPreferencesUtils;->saveGuideShown()V

    .line 190
    :cond_1
    iget-boolean v0, p0, Lcom/baidu/bulletin/DataSyncer;->mIsDownloadMode:Z

    if-nez v0, :cond_2

    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/bulletin/DataSyncer;->mIsDownloadMode:Z

    .line 192
    iget-object v0, p0, Lcom/baidu/bulletin/DataSyncer;->mSyncObserver:Lcom/baidu/bulletin/DataSyncer$SyncObserver;

    invoke-interface {v0}, Lcom/baidu/bulletin/DataSyncer$SyncObserver;->onSyncStart()V

    .line 193
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/bulletin/DataSyncer;->mTaskCancelled:Z

    .line 194
    new-instance v0, Lcom/baidu/bulletin/network/logic/UpdateInfoDownloader;

    iget-object v1, p0, Lcom/baidu/bulletin/DataSyncer;->mDownloadObserver:Lcom/baidu/bulletin/network/logic/DownloadObserver;

    invoke-direct {v0, v1}, Lcom/baidu/bulletin/network/logic/UpdateInfoDownloader;-><init>(Lcom/baidu/bulletin/network/logic/DownloadObserver;)V

    iput-object v0, p0, Lcom/baidu/bulletin/DataSyncer;->mUpdateInfoDownloader:Lcom/baidu/bulletin/network/logic/UpdateInfoDownloader;

    .line 195
    iget-object v0, p0, Lcom/baidu/bulletin/DataSyncer;->mUpdateInfoDownloader:Lcom/baidu/bulletin/network/logic/UpdateInfoDownloader;

    invoke-virtual {v0}, Lcom/baidu/bulletin/network/logic/UpdateInfoDownloader;->download()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    :goto_0
    monitor-exit p0

    return-void

    .line 197
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/baidu/bulletin/DataSyncer;->mSyncObserver:Lcom/baidu/bulletin/DataSyncer$SyncObserver;

    invoke-interface {v0}, Lcom/baidu/bulletin/DataSyncer$SyncObserver;->onAlreadySyncing()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 186
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
