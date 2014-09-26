.class public Lcom/baidu/bulletin/network/logic/AppListDownloader;
.super Lcom/baidu/bulletin/network/logic/SerialDownloadTaskManager;
.source "AppListDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bulletin/network/logic/AppListDownloader$AppProtocolPackagerObserver;
    }
.end annotation


# static fields
.field private static final MAX_TASK_COUNT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "AppListDownloader"


# instance fields
.field private mDataRepository:Lcom/baidu/bulletin/DataRepository;

.field private mDownloadingEntities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bulletin/entity/ChannelItemAppList$Entity;",
            ">;"
        }
    .end annotation
.end field

.field private mFileDownloader:Lcom/baidu/bulletin/network/FileDownloader;

.field private mImageObserver:Lcom/baidu/bulletin/network/FileDownloader$Observer;

.field private mProtocolPackager:Lcom/baidu/bulletin/network/protocol/IProtocolPakager;

.field private mSmartPreloadingImage:Z


# direct methods
.method protected constructor <init>(Lcom/baidu/bulletin/network/logic/DownloadObserver;Z)V
    .locals 2
    .parameter "observer"
    .parameter "background"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/baidu/bulletin/network/logic/SerialDownloadTaskManager;-><init>(Lcom/baidu/bulletin/network/logic/DownloadObserver;Z)V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/bulletin/network/logic/AppListDownloader;->mDownloadingEntities:Ljava/util/List;

    .line 131
    new-instance v0, Lcom/baidu/bulletin/network/logic/AppListDownloader$1;

    invoke-direct {v0, p0}, Lcom/baidu/bulletin/network/logic/AppListDownloader$1;-><init>(Lcom/baidu/bulletin/network/logic/AppListDownloader;)V

    iput-object v0, p0, Lcom/baidu/bulletin/network/logic/AppListDownloader;->mImageObserver:Lcom/baidu/bulletin/network/FileDownloader$Observer;

    .line 38
    invoke-static {}, Lcom/baidu/bulletin/DataRepository;->getInstance()Lcom/baidu/bulletin/DataRepository;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bulletin/network/logic/AppListDownloader;->mDataRepository:Lcom/baidu/bulletin/DataRepository;

    .line 41
    new-instance v0, Lcom/baidu/bulletin/network/FileDownloader;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/baidu/bulletin/network/FileDownloader;-><init>(I)V

    iput-object v0, p0, Lcom/baidu/bulletin/network/logic/AppListDownloader;->mFileDownloader:Lcom/baidu/bulletin/network/FileDownloader;

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/bulletin/network/logic/AppListDownloader;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/baidu/bulletin/network/logic/AppListDownloader;->mDownloadingEntities:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/baidu/bulletin/network/logic/AppListDownloader;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/baidu/bulletin/network/logic/AppListDownloader;->mSmartPreloadingImage:Z

    return v0
.end method

.method static synthetic access$102(Lcom/baidu/bulletin/network/logic/AppListDownloader;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/baidu/bulletin/network/logic/AppListDownloader;->mSmartPreloadingImage:Z

    return p1
.end method

.method static synthetic access$200(Lcom/baidu/bulletin/network/logic/AppListDownloader;Lcom/baidu/bulletin/entity/ChannelItemAppList$Entity;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/network/logic/AppListDownloader;->udpateDetail(Lcom/baidu/bulletin/entity/ChannelItemAppList$Entity;)V

    return-void
.end method

.method static synthetic access$300(Lcom/baidu/bulletin/network/logic/AppListDownloader;)Lcom/baidu/bulletin/DataRepository;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/baidu/bulletin/network/logic/AppListDownloader;->mDataRepository:Lcom/baidu/bulletin/DataRepository;

    return-object v0
.end method

.method static synthetic access$400(Lcom/baidu/bulletin/network/logic/AppListDownloader;Lcom/baidu/bulletin/entity/ChannelItem;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/network/logic/AppListDownloader;->downloadImage(Lcom/baidu/bulletin/entity/ChannelItem;)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/baidu/bulletin/network/logic/AppListDownloader;Ljava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/network/logic/AppListDownloader;->downloadImageOrFinishDownloading(Ljava/util/List;)V

    return-void
.end method

.method private completePage(J)V
    .locals 4
    .parameter "_id"

    .prologue
    .line 86
    :try_start_0
    iget-object v2, p0, Lcom/baidu/bulletin/network/logic/AppListDownloader;->mDataRepository:Lcom/baidu/bulletin/DataRepository;

    invoke-virtual {v2, p1, p2}, Lcom/baidu/bulletin/DataRepository;->queryChannelItem(J)Lcom/baidu/bulletin/entity/ChannelItem;

    move-result-object v1

    .line 87
    .local v1, item:Lcom/baidu/bulletin/entity/ChannelItem;
    if-eqz v1, :cond_0

    .line 88
    const/4 v2, 0x1

    iput v2, v1, Lcom/baidu/bulletin/entity/ChannelItem;->detailDownloaded:I

    .line 89
    iget-object v2, p0, Lcom/baidu/bulletin/network/logic/AppListDownloader;->mDataRepository:Lcom/baidu/bulletin/DataRepository;

    invoke-virtual {v2, v1}, Lcom/baidu/bulletin/DataRepository;->saveOrUpdate(Lcom/baidu/bulletin/entity/ChannelItem;)V

    .line 90
    invoke-static {v1}, Lcom/baidu/bulletin/dao/PageCacheSerializable;->refresh(Lcom/baidu/bulletin/entity/ChannelItem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .end local v1           #item:Lcom/baidu/bulletin/entity/ChannelItem;
    :cond_0
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "AppListDownloader"

    const-string v3, "In completePage error"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private downloadImage(Lcom/baidu/bulletin/entity/ChannelItem;)I
    .locals 2
    .parameter "channelItem"

    .prologue
    .line 122
    invoke-virtual {p1}, Lcom/baidu/bulletin/entity/ChannelItem;->getAppList()Ljava/util/List;

    move-result-object v0

    .line 124
    .local v0, appEntities:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/entity/ChannelItemAppList$Entity;>;"
    invoke-direct {p0, v0}, Lcom/baidu/bulletin/network/logic/AppListDownloader;->downloadImage(Ljava/util/List;)I

    move-result v1

    return v1
.end method

.method private downloadImage(Ljava/util/List;)I
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bulletin/entity/ChannelItemAppList$Entity;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 105
    .local p1, entities:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/entity/ChannelItemAppList$Entity;>;"
    const/4 v0, 0x0

    .line 107
    .local v0, count:I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/bulletin/entity/ChannelItemAppList$Entity;

    .line 108
    .local v1, entity:Lcom/baidu/bulletin/entity/ChannelItemAppList$Entity;
    invoke-virtual {v1}, Lcom/baidu/bulletin/entity/ChannelItemAppList$Entity;->isCompleted()Z

    move-result v4

    if-nez v4, :cond_0

    .line 109
    add-int/lit8 v0, v0, 0x1

    .line 110
    iget-object v4, p0, Lcom/baidu/bulletin/network/logic/AppListDownloader;->mDownloadingEntities:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    new-instance v3, Lcom/baidu/bulletin/network/FileDownloader$Request;

    invoke-direct {v3}, Lcom/baidu/bulletin/network/FileDownloader$Request;-><init>()V

    .line 113
    .local v3, request:Lcom/baidu/bulletin/network/FileDownloader$Request;
    iget-object v4, v1, Lcom/baidu/bulletin/entity/ChannelItemAppList$Entity;->icon:Ljava/lang/String;

    iput-object v4, v3, Lcom/baidu/bulletin/network/FileDownloader$Request;->downloadUrl:Ljava/lang/String;

    .line 114
    iput-object v1, v3, Lcom/baidu/bulletin/network/FileDownloader$Request;->obj:Ljava/lang/Object;

    .line 115
    iget-object v4, p0, Lcom/baidu/bulletin/network/logic/AppListDownloader;->mFileDownloader:Lcom/baidu/bulletin/network/FileDownloader;

    iget-object v5, p0, Lcom/baidu/bulletin/network/logic/AppListDownloader;->mImageObserver:Lcom/baidu/bulletin/network/FileDownloader$Observer;

    invoke-virtual {v4, v3, v5}, Lcom/baidu/bulletin/network/FileDownloader;->downloadFile(Lcom/baidu/bulletin/network/FileDownloader$Request;Lcom/baidu/bulletin/network/FileDownloader$Observer;)V

    goto :goto_0

    .line 119
    .end local v1           #entity:Lcom/baidu/bulletin/entity/ChannelItemAppList$Entity;
    .end local v3           #request:Lcom/baidu/bulletin/network/FileDownloader$Request;
    :cond_1
    return v0
.end method

.method private downloadImageOrFinishDownloading(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bulletin/entity/ChannelItemAppList$Entity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, entities:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/entity/ChannelItemAppList$Entity;>;"
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/network/logic/AppListDownloader;->downloadImage(Ljava/util/List;)I

    move-result v0

    if-nez v0, :cond_0

    .line 79
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/entity/ChannelItemAppList$Entity;

    iget-wide v0, v0, Lcom/baidu/bulletin/entity/ChannelItemAppList$Entity;->channelId:J

    invoke-direct {p0, v0, v1}, Lcom/baidu/bulletin/network/logic/AppListDownloader;->completePage(J)V

    .line 80
    invoke-virtual {p0}, Lcom/baidu/bulletin/network/logic/AppListDownloader;->downloadNext()V

    .line 82
    :cond_0
    return-void
.end method

.method private udpateDetail(Lcom/baidu/bulletin/entity/ChannelItemAppList$Entity;)V
    .locals 1
    .parameter "entity"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/baidu/bulletin/network/logic/AppListDownloader;->mDataRepository:Lcom/baidu/bulletin/DataRepository;

    invoke-virtual {v0, p1}, Lcom/baidu/bulletin/DataRepository;->updateDetail(Lcom/baidu/bulletin/entity/AbstractDetailEntity;)V

    .line 129
    return-void
.end method


# virtual methods
.method protected onCancel()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/baidu/bulletin/network/logic/AppListDownloader;->mProtocolPackager:Lcom/baidu/bulletin/network/protocol/IProtocolPakager;

    invoke-interface {v0}, Lcom/baidu/bulletin/network/protocol/IProtocolPakager;->cancelAll()V

    .line 100
    iget-object v0, p0, Lcom/baidu/bulletin/network/logic/AppListDownloader;->mFileDownloader:Lcom/baidu/bulletin/network/FileDownloader;

    invoke-virtual {v0}, Lcom/baidu/bulletin/network/FileDownloader;->cancelAllTask()V

    .line 101
    return-void
.end method

.method protected onDownload(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V
    .locals 0
    .parameter "download"

    .prologue
    .line 282
    return-void
.end method

.method protected onDownload(Lcom/baidu/bulletin/entity/ChannelItem;)V
    .locals 8
    .parameter "download"

    .prologue
    .line 53
    iget-object v3, p0, Lcom/baidu/bulletin/network/logic/AppListDownloader;->mDataRepository:Lcom/baidu/bulletin/DataRepository;

    invoke-virtual {v3, p1}, Lcom/baidu/bulletin/DataRepository;->queryChannelDetails(Lcom/baidu/bulletin/entity/ChannelItem;)Lcom/baidu/bulletin/entity/ChannelItem;

    move-result-object p1

    .line 54
    invoke-virtual {p1}, Lcom/baidu/bulletin/entity/ChannelItem;->getAppList()Ljava/util/List;

    move-result-object v1

    .line 56
    .local v1, entities:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/entity/ChannelItemAppList$Entity;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 58
    :cond_0
    new-instance v2, Lcom/baidu/bulletin/network/protocol/RawAppList$Request;

    invoke-direct {v2}, Lcom/baidu/bulletin/network/protocol/RawAppList$Request;-><init>()V

    .line 59
    .local v2, request:Lcom/baidu/bulletin/network/protocol/RawAppList$Request;
    iput-object p1, v2, Lcom/baidu/bulletin/network/protocol/RawAppList$Request;->owner:Lcom/baidu/bulletin/entity/ChannelItem;

    .line 60
    const-string v3, "%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-wide v6, p1, Lcom/baidu/bulletin/entity/ChannelItem;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/baidu/bulletin/network/protocol/RawAppList$Request;->id:Ljava/lang/String;

    .line 62
    new-instance v0, Lcom/baidu/bulletin/network/logic/AppListDownloader$AppProtocolPackagerObserver;

    invoke-direct {v0, p0, p1}, Lcom/baidu/bulletin/network/logic/AppListDownloader$AppProtocolPackagerObserver;-><init>(Lcom/baidu/bulletin/network/logic/AppListDownloader;Lcom/baidu/bulletin/entity/ChannelItem;)V

    .line 65
    .local v0, appProtocolPackagerObserver:Lcom/baidu/bulletin/network/logic/AppListDownloader$AppProtocolPackagerObserver;
    new-instance v3, Lcom/baidu/bulletin/network/protocol/AppProtocolPackager;

    invoke-direct {v3, v2, v0}, Lcom/baidu/bulletin/network/protocol/AppProtocolPackager;-><init>(Lcom/baidu/bulletin/network/protocol/RawAppList$Request;Lcom/baidu/bulletin/network/protocol/IProtocolPakager$IObserver;)V

    iput-object v3, p0, Lcom/baidu/bulletin/network/logic/AppListDownloader;->mProtocolPackager:Lcom/baidu/bulletin/network/protocol/IProtocolPakager;

    .line 67
    iget-object v3, p0, Lcom/baidu/bulletin/network/logic/AppListDownloader;->mProtocolPackager:Lcom/baidu/bulletin/network/protocol/IProtocolPakager;

    invoke-interface {v3}, Lcom/baidu/bulletin/network/protocol/IProtocolPakager;->request()V

    .line 69
    iget-object v3, p0, Lcom/baidu/bulletin/network/logic/AppListDownloader;->mObserver:Lcom/baidu/bulletin/network/logic/DownloadObserver;

    invoke-static {v3, p1}, Lcom/baidu/bulletin/network/logic/SingleTaskDownloadObserver;->setResult(Lcom/baidu/bulletin/network/logic/DownloadObserver;Lcom/baidu/bulletin/entity/ChannelItem;)V

    .line 73
    .end local v0           #appProtocolPackagerObserver:Lcom/baidu/bulletin/network/logic/AppListDownloader$AppProtocolPackagerObserver;
    .end local v2           #request:Lcom/baidu/bulletin/network/protocol/RawAppList$Request;
    :goto_0
    return-void

    .line 71
    :cond_1
    invoke-direct {p0, v1}, Lcom/baidu/bulletin/network/logic/AppListDownloader;->downloadImageOrFinishDownloading(Ljava/util/List;)V

    goto :goto_0
.end method

.method protected sholdDownload(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)Z
    .locals 1
    .parameter "download"

    .prologue
    .line 287
    const/4 v0, 0x0

    return v0
.end method

.method protected sholdDownload(Lcom/baidu/bulletin/entity/ChannelItem;)Z
    .locals 2
    .parameter "download"

    .prologue
    .line 47
    if-eqz p1, :cond_0

    const-string v0, "app"

    iget-object v1, p1, Lcom/baidu/bulletin/entity/ChannelItem;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
