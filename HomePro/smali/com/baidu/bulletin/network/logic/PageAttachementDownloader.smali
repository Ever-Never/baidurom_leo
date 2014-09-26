.class public Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;
.super Lcom/baidu/bulletin/network/logic/SerialDownloadTaskManager;
.source "PageAttachementDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bulletin/network/logic/PageAttachementDownloader$Blacklist;
    }
.end annotation


# static fields
.field private static final MAX_TASK_COUNT:I = 0x3

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBlacklist:Lcom/baidu/bulletin/network/logic/PageAttachementDownloader$Blacklist;

.field private mDataRepository:Lcom/baidu/bulletin/DataRepository;

.field private mDownloadingEntities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bulletin/entity/ChannelItemPage$Entity;",
            ">;"
        }
    .end annotation
.end field

.field private mFileDownloader:Lcom/baidu/bulletin/network/FileDownloader;

.field private mImageObserver:Lcom/baidu/bulletin/network/FileDownloader$Observer;

.field private mPageTextObserver:Lcom/baidu/bulletin/network/protocol/ProtocolPackager$Observer;

.field private mProtocolPackager:Lcom/baidu/bulletin/network/protocol/ProtocolPackager;

.field private mSmartPreloadingImage:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/baidu/bulletin/network/logic/DownloadObserver;Z)V
    .locals 2
    .parameter "observer"
    .parameter "background"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/baidu/bulletin/network/logic/SerialDownloadTaskManager;-><init>(Lcom/baidu/bulletin/network/logic/DownloadObserver;Z)V

    .line 30
    new-instance v0, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader$Blacklist;

    invoke-direct {v0, p0}, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader$Blacklist;-><init>(Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;)V

    iput-object v0, p0, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;->mBlacklist:Lcom/baidu/bulletin/network/logic/PageAttachementDownloader$Blacklist;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;->mDownloadingEntities:Ljava/util/List;

    .line 136
    new-instance v0, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader$1;

    invoke-direct {v0, p0}, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader$1;-><init>(Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;)V

    iput-object v0, p0, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;->mPageTextObserver:Lcom/baidu/bulletin/network/protocol/ProtocolPackager$Observer;

    .line 188
    new-instance v0, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader$2;

    invoke-direct {v0, p0}, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader$2;-><init>(Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;)V

    iput-object v0, p0, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;->mImageObserver:Lcom/baidu/bulletin/network/FileDownloader$Observer;

    .line 36
    invoke-static {}, Lcom/baidu/bulletin/DataRepository;->getInstance()Lcom/baidu/bulletin/DataRepository;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;->mDataRepository:Lcom/baidu/bulletin/DataRepository;

    .line 37
    new-instance v0, Lcom/baidu/bulletin/network/FileDownloader;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/baidu/bulletin/network/FileDownloader;-><init>(I)V

    iput-object v0, p0, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;->mFileDownloader:Lcom/baidu/bulletin/network/FileDownloader;

    .line 38
    new-instance v0, Lcom/baidu/bulletin/network/protocol/ProtocolPackager;

    iget-object v1, p0, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;->mPageTextObserver:Lcom/baidu/bulletin/network/protocol/ProtocolPackager$Observer;

    invoke-direct {v0, v1}, Lcom/baidu/bulletin/network/protocol/ProtocolPackager;-><init>(Lcom/baidu/bulletin/network/protocol/ProtocolPackager$Observer;)V

    iput-object v0, p0, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;->mProtocolPackager:Lcom/baidu/bulletin/network/protocol/ProtocolPackager;

    .line 39
    return-void
.end method

.method static synthetic access$100(Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;)Lcom/baidu/bulletin/DataRepository;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;->mDataRepository:Lcom/baidu/bulletin/DataRepository;

    return-object v0
.end method

.method static synthetic access$200(Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;->mSmartPreloadingImage:Z

    return v0
.end method

.method static synthetic access$202(Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;->mSmartPreloadingImage:Z

    return p1
.end method

.method static synthetic access$300(Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;[Lcom/baidu/bulletin/entity/ChannelItemPage$Entity;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;->downloadImage([Lcom/baidu/bulletin/entity/ChannelItemPage$Entity;)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;[Lcom/baidu/bulletin/entity/ChannelItemPage$Entity;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;->downloadImageOrFinishDownloading([Lcom/baidu/bulletin/entity/ChannelItemPage$Entity;)V

    return-void
.end method

.method static synthetic access$500(Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;Ljava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;->downloadImageOrFinishDownloading(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$600(Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;->mDownloadingEntities:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;->checkAndCompletePage(J)V

    return-void
.end method

.method private checkAndCompletePage(J)V
    .locals 5
    .parameter "_id"

    .prologue
    .line 227
    :try_start_0
    iget-object v4, p0, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;->mDataRepository:Lcom/baidu/bulletin/DataRepository;

    invoke-virtual {v4, p1, p2}, Lcom/baidu/bulletin/DataRepository;->queryChannelItem(J)Lcom/baidu/bulletin/entity/ChannelItem;

    move-result-object v3

    .line 228
    .local v3, item:Lcom/baidu/bulletin/entity/ChannelItem;
    iget-object v4, p0, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;->mDataRepository:Lcom/baidu/bulletin/DataRepository;

    invoke-virtual {v4, v3}, Lcom/baidu/bulletin/DataRepository;->queryChannelDetails(Lcom/baidu/bulletin/entity/ChannelItem;)Lcom/baidu/bulletin/entity/ChannelItem;

    move-result-object v3

    .line 229
    invoke-virtual {v3}, Lcom/baidu/bulletin/entity/ChannelItem;->getPage()Ljava/util/List;

    move-result-object v0

    .line 230
    .local v0, entities:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/entity/ChannelItemPage$Entity;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 231
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/bulletin/entity/ChannelItemPage$Entity;

    .line 232
    .local v1, entity:Lcom/baidu/bulletin/entity/ChannelItemPage$Entity;
    invoke-virtual {v1}, Lcom/baidu/bulletin/entity/ChannelItemPage$Entity;->isImage()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lcom/baidu/bulletin/entity/ChannelItemPage$Entity;->isCompleted()Z

    move-result v4

    if-nez v4, :cond_0

    .line 233
    iget-object v4, p0, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;->mObserver:Lcom/baidu/bulletin/network/logic/DownloadObserver;

    invoke-static {v4, v3}, Lcom/baidu/bulletin/network/logic/SingleTaskDownloadObserver;->setResult(Lcom/baidu/bulletin/network/logic/DownloadObserver;Lcom/baidu/bulletin/entity/ChannelItem;)V

    .line 245
    .end local v0           #entities:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/entity/ChannelItemPage$Entity;>;"
    .end local v1           #entity:Lcom/baidu/bulletin/entity/ChannelItemPage$Entity;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #item:Lcom/baidu/bulletin/entity/ChannelItem;
    :cond_1
    :goto_0
    return-void

    .line 238
    .restart local v0       #entities:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/entity/ChannelItemPage$Entity;>;"
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #item:Lcom/baidu/bulletin/entity/ChannelItem;
    :cond_2
    const/4 v4, 0x1

    iput v4, v3, Lcom/baidu/bulletin/entity/ChannelItem;->detailDownloaded:I

    .line 239
    iget-object v4, p0, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;->mDataRepository:Lcom/baidu/bulletin/DataRepository;

    invoke-virtual {v4, v3}, Lcom/baidu/bulletin/DataRepository;->saveOrUpdate(Lcom/baidu/bulletin/entity/ChannelItem;)V

    .line 240
    invoke-static {v3}, Lcom/baidu/bulletin/dao/PageCacheSerializable;->refresh(Lcom/baidu/bulletin/entity/ChannelItem;)V

    .line 242
    iget-object v4, p0, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;->mObserver:Lcom/baidu/bulletin/network/logic/DownloadObserver;

    invoke-static {v4, v3}, Lcom/baidu/bulletin/network/logic/SingleTaskDownloadObserver;->setResult(Lcom/baidu/bulletin/network/logic/DownloadObserver;Lcom/baidu/bulletin/entity/ChannelItem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 244
    .end local v0           #entities:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/entity/ChannelItemPage$Entity;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #item:Lcom/baidu/bulletin/entity/ChannelItem;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private completePage(J)V
    .locals 4
    .parameter "_id"

    .prologue
    .line 125
    :try_start_0
    iget-object v2, p0, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;->mDataRepository:Lcom/baidu/bulletin/DataRepository;

    invoke-virtual {v2, p1, p2}, Lcom/baidu/bulletin/DataRepository;->queryChannelItem(J)Lcom/baidu/bulletin/entity/ChannelItem;

    move-result-object v1

    .line 126
    .local v1, item:Lcom/baidu/bulletin/entity/ChannelItem;
    if-eqz v1, :cond_0

    .line 127
    const/4 v2, 0x1

    iput v2, v1, Lcom/baidu/bulletin/entity/ChannelItem;->detailDownloaded:I

    .line 128
    iget-object v2, p0, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;->mDataRepository:Lcom/baidu/bulletin/DataRepository;

    invoke-virtual {v2, v1}, Lcom/baidu/bulletin/DataRepository;->saveOrUpdate(Lcom/baidu/bulletin/entity/ChannelItem;)V

    .line 129
    invoke-static {v1}, Lcom/baidu/bulletin/dao/PageCacheSerializable;->refresh(Lcom/baidu/bulletin/entity/ChannelItem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .end local v1           #item:Lcom/baidu/bulletin/entity/ChannelItem;
    :cond_0
    :goto_0
    return-void

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;->TAG:Ljava/lang/String;

    const-string v3, "In completePage error"

    invoke-static {v2, v3, v0}, Lcom/baidu/bulletin/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private downloadImage([Lcom/baidu/bulletin/entity/ChannelItemPage$Entity;)I
    .locals 11
    .parameter "entities"

    .prologue
    .line 94
    const/4 v1, 0x0

    .line 96
    .local v1, count:I
    invoke-static {}, Lcom/baidu/bulletin/utils/MediaMonitor;->isStorageAvailable()Z

    move-result v9

    if-nez v9, :cond_0

    move v2, v1

    .line 120
    .end local v1           #count:I
    .local v2, count:I
    :goto_0
    return v2

    .line 99
    .end local v2           #count:I
    .restart local v1       #count:I
    :cond_0
    if-eqz p1, :cond_3

    array-length v9, p1

    if-lez v9, :cond_3

    .line 100
    array-length v9, p1

    new-array v6, v9, [Lcom/baidu/bulletin/entity/ChannelItemPage$Entity;

    .line 104
    .local v6, imgEntities:[Lcom/baidu/bulletin/entity/ChannelItemPage$Entity;
    move-object v0, p1

    .local v0, arr$:[Lcom/baidu/bulletin/entity/ChannelItemPage$Entity;
    array-length v7, v0

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    move v2, v1

    .end local v1           #count:I
    .restart local v2       #count:I
    :goto_1
    if-ge v5, v7, :cond_1

    aget-object v3, v0, v5

    .line 105
    .local v3, entity:Lcom/baidu/bulletin/entity/ChannelItemPage$Entity;
    invoke-virtual {v3}, Lcom/baidu/bulletin/entity/ChannelItemPage$Entity;->isImage()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v3}, Lcom/baidu/bulletin/entity/ChannelItemPage$Entity;->isCompleted()Z

    move-result v9

    if-nez v9, :cond_4

    .line 106
    iget-object v9, p0, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;->mDownloadingEntities:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    add-int/lit8 v1, v2, 0x1

    .end local v2           #count:I
    .restart local v1       #count:I
    aput-object v3, v6, v2

    .line 104
    :goto_2
    add-int/lit8 v5, v5, 0x1

    move v2, v1

    .end local v1           #count:I
    .restart local v2       #count:I
    goto :goto_1

    .line 112
    .end local v3           #entity:Lcom/baidu/bulletin/entity/ChannelItemPage$Entity;
    :cond_1
    const/4 v4, 0x0

    .local v4, i:I
    :goto_3
    if-ge v4, v2, :cond_2

    .line 113
    new-instance v8, Lcom/baidu/bulletin/network/FileDownloader$Request;

    invoke-direct {v8}, Lcom/baidu/bulletin/network/FileDownloader$Request;-><init>()V

    .line 114
    .local v8, request:Lcom/baidu/bulletin/network/FileDownloader$Request;
    aget-object v9, v6, v4

    iget-object v9, v9, Lcom/baidu/bulletin/entity/ChannelItemPage$Entity;->data:Ljava/lang/String;

    iput-object v9, v8, Lcom/baidu/bulletin/network/FileDownloader$Request;->downloadUrl:Ljava/lang/String;

    .line 115
    aget-object v9, v6, v4

    iput-object v9, v8, Lcom/baidu/bulletin/network/FileDownloader$Request;->obj:Ljava/lang/Object;

    .line 116
    iget-object v9, p0, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;->mFileDownloader:Lcom/baidu/bulletin/network/FileDownloader;

    iget-object v10, p0, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;->mImageObserver:Lcom/baidu/bulletin/network/FileDownloader$Observer;

    invoke-virtual {v9, v8, v10}, Lcom/baidu/bulletin/network/FileDownloader;->downloadFile(Lcom/baidu/bulletin/network/FileDownloader$Request;Lcom/baidu/bulletin/network/FileDownloader$Observer;)V

    .line 112
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .end local v8           #request:Lcom/baidu/bulletin/network/FileDownloader$Request;
    :cond_2
    move v1, v2

    .end local v0           #arr$:[Lcom/baidu/bulletin/entity/ChannelItemPage$Entity;
    .end local v2           #count:I
    .end local v4           #i:I
    .end local v5           #i$:I
    .end local v6           #imgEntities:[Lcom/baidu/bulletin/entity/ChannelItemPage$Entity;
    .end local v7           #len$:I
    .restart local v1       #count:I
    :cond_3
    move v2, v1

    .line 120
    .end local v1           #count:I
    .restart local v2       #count:I
    goto :goto_0

    .restart local v0       #arr$:[Lcom/baidu/bulletin/entity/ChannelItemPage$Entity;
    .restart local v3       #entity:Lcom/baidu/bulletin/entity/ChannelItemPage$Entity;
    .restart local v5       #i$:I
    .restart local v6       #imgEntities:[Lcom/baidu/bulletin/entity/ChannelItemPage$Entity;
    .restart local v7       #len$:I
    :cond_4
    move v1, v2

    .end local v2           #count:I
    .restart local v1       #count:I
    goto :goto_2
.end method

.method private downloadImageOrFinishDownloading(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bulletin/entity/ChannelItemPage$Entity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, entities:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/entity/ChannelItemPage$Entity;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v0, v1, [Lcom/baidu/bulletin/entity/ChannelItemPage$Entity;

    .line 79
    .local v0, entityArray:[Lcom/baidu/bulletin/entity/ChannelItemPage$Entity;
    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/baidu/bulletin/entity/ChannelItemPage$Entity;

    invoke-direct {p0, v1}, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;->downloadImageOrFinishDownloading([Lcom/baidu/bulletin/entity/ChannelItemPage$Entity;)V

    .line 80
    return-void
.end method

.method private downloadImageOrFinishDownloading([Lcom/baidu/bulletin/entity/ChannelItemPage$Entity;)V
    .locals 2
    .parameter "entities"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;->downloadImage([Lcom/baidu/bulletin/entity/ChannelItemPage$Entity;)I

    move-result v0

    if-nez v0, :cond_0

    .line 87
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iget-wide v0, v0, Lcom/baidu/bulletin/entity/ChannelItemPage$Entity;->channelId:J

    invoke-direct {p0, v0, v1}, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;->checkAndCompletePage(J)V

    .line 88
    invoke-virtual {p0}, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;->downloadNext()V

    .line 91
    :cond_0
    return-void
.end method

.method private downloadPageText(Lcom/baidu/bulletin/entity/ChannelItem;)V
    .locals 2
    .parameter "download"

    .prologue
    .line 69
    new-instance v0, Lcom/baidu/bulletin/network/protocol/RawNativePage$Request;

    invoke-direct {v0}, Lcom/baidu/bulletin/network/protocol/RawNativePage$Request;-><init>()V

    .line 70
    .local v0, request:Lcom/baidu/bulletin/network/protocol/RawNativePage$Request;
    iget-object v1, p1, Lcom/baidu/bulletin/entity/ChannelItem;->content:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/bulletin/network/protocol/RawNativePage$Request;->url:Ljava/lang/String;

    .line 71
    iput-object p1, v0, Lcom/baidu/bulletin/network/protocol/RawNativePage$Request;->owner:Lcom/baidu/bulletin/entity/ChannelItem;

    .line 72
    iget-object v1, p0, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;->mProtocolPackager:Lcom/baidu/bulletin/network/protocol/ProtocolPackager;

    invoke-virtual {v1, v0}, Lcom/baidu/bulletin/network/protocol/ProtocolPackager;->requestNativePage(Lcom/baidu/bulletin/network/protocol/RawNativePage$Request;)V

    .line 74
    iget-object v1, p0, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;->mObserver:Lcom/baidu/bulletin/network/logic/DownloadObserver;

    invoke-static {v1, p1}, Lcom/baidu/bulletin/network/logic/SingleTaskDownloadObserver;->setResult(Lcom/baidu/bulletin/network/logic/DownloadObserver;Lcom/baidu/bulletin/entity/ChannelItem;)V

    .line 75
    return-void
.end method


# virtual methods
.method public blacklist()Lcom/baidu/bulletin/network/logic/PageAttachementDownloader$Blacklist;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;->mBlacklist:Lcom/baidu/bulletin/network/logic/PageAttachementDownloader$Blacklist;

    return-object v0
.end method

.method protected onCancel()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;->mProtocolPackager:Lcom/baidu/bulletin/network/protocol/ProtocolPackager;

    invoke-virtual {v0}, Lcom/baidu/bulletin/network/protocol/ProtocolPackager;->cancelAll()V

    .line 65
    iget-object v0, p0, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;->mFileDownloader:Lcom/baidu/bulletin/network/FileDownloader;

    invoke-virtual {v0}, Lcom/baidu/bulletin/network/FileDownloader;->cancelAllTask()V

    .line 66
    return-void
.end method

.method protected onDownload(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V
    .locals 0
    .parameter "download"

    .prologue
    .line 295
    return-void
.end method

.method protected onDownload(Lcom/baidu/bulletin/entity/ChannelItem;)V
    .locals 4
    .parameter "download"

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;->blacklist()Lcom/baidu/bulletin/network/logic/PageAttachementDownloader$Blacklist;

    move-result-object v1

    invoke-virtual {p1}, Lcom/baidu/bulletin/entity/ChannelItem;->get_Id()J

    move-result-wide v2

    #calls: Lcom/baidu/bulletin/network/logic/PageAttachementDownloader$Blacklist;->exist(J)Z
    invoke-static {v1, v2, v3}, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader$Blacklist;->access$000(Lcom/baidu/bulletin/network/logic/PageAttachementDownloader$Blacklist;J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;->downloadNext()V

    .line 60
    :goto_0
    return-void

    .line 51
    :cond_0
    iget-object v1, p0, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;->mDataRepository:Lcom/baidu/bulletin/DataRepository;

    invoke-virtual {v1, p1}, Lcom/baidu/bulletin/DataRepository;->queryChannelDetails(Lcom/baidu/bulletin/entity/ChannelItem;)Lcom/baidu/bulletin/entity/ChannelItem;

    move-result-object p1

    .line 52
    invoke-virtual {p1}, Lcom/baidu/bulletin/entity/ChannelItem;->getPage()Ljava/util/List;

    move-result-object v0

    .line 54
    .local v0, entities:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/entity/ChannelItemPage$Entity;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 55
    :cond_1
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;->downloadPageText(Lcom/baidu/bulletin/entity/ChannelItem;)V

    goto :goto_0

    .line 57
    :cond_2
    invoke-direct {p0, v0}, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;->downloadImageOrFinishDownloading(Ljava/util/List;)V

    goto :goto_0
.end method

.method protected sholdDownload(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)Z
    .locals 1
    .parameter "download"

    .prologue
    .line 300
    const/4 v0, 0x0

    return v0
.end method

.method protected sholdDownload(Lcom/baidu/bulletin/entity/ChannelItem;)Z
    .locals 2
    .parameter "download"

    .prologue
    .line 43
    if-eqz p1, :cond_0

    const-string v0, "native"

    iget-object v1, p1, Lcom/baidu/bulletin/entity/ChannelItem;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/baidu/bulletin/entity/ChannelItem;->channelId:Ljava/lang/String;

    const-string v1, "history"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
