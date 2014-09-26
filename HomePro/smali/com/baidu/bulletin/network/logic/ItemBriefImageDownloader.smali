.class public Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloader;
.super Ljava/lang/Object;
.source "ItemBriefImageDownloader.java"


# static fields
.field private static final MAX_TASK_COUNT:I = 0x8

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDataRepository:Lcom/baidu/bulletin/DataRepository;

.field private mDownloadCounter:I

.field private mFileDownloader:Lcom/baidu/bulletin/network/FileDownloader;

.field private mFileDownloaderObserver:Lcom/baidu/bulletin/network/FileDownloader$Observer;

.field private mObserver:Lcom/baidu/bulletin/network/logic/DownloadObserver;

.field private mTaskCancelled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/baidu/bulletin/network/logic/DownloadObserver;)V
    .locals 2
    .parameter "observer"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloader$2;

    invoke-direct {v0, p0}, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloader$2;-><init>(Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloader;)V

    iput-object v0, p0, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloader;->mFileDownloaderObserver:Lcom/baidu/bulletin/network/FileDownloader$Observer;

    .line 25
    iput-object p1, p0, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloader;->mObserver:Lcom/baidu/bulletin/network/logic/DownloadObserver;

    .line 26
    invoke-static {}, Lcom/baidu/bulletin/DataRepository;->getInstance()Lcom/baidu/bulletin/DataRepository;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloader;->mDataRepository:Lcom/baidu/bulletin/DataRepository;

    .line 27
    new-instance v0, Lcom/baidu/bulletin/network/FileDownloader;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/baidu/bulletin/network/FileDownloader;-><init>(I)V

    iput-object v0, p0, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloader;->mFileDownloader:Lcom/baidu/bulletin/network/FileDownloader;

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloader;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget v0, p0, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloader;->mDownloadCounter:I

    return v0
.end method

.method static synthetic access$010(Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloader;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 11
    iget v0, p0, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloader;->mDownloadCounter:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloader;->mDownloadCounter:I

    return v0
.end method

.method static synthetic access$100(Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloader;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget-boolean v0, p0, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloader;->mTaskCancelled:Z

    return v0
.end method

.method static synthetic access$200(Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloader;)Lcom/baidu/bulletin/DataRepository;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget-object v0, p0, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloader;->mDataRepository:Lcom/baidu/bulletin/DataRepository;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloader;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloader;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloader;->notifyObserverIfNoMore()V

    return-void
.end method

.method private notifyObserverIfNoMore()V
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloader;->mDownloadCounter:I

    if-nez v0, :cond_0

    .line 95
    iget v0, p0, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloader;->mDownloadCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloader;->mDownloadCounter:I

    .line 96
    iget-object v0, p0, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloader;->mObserver:Lcom/baidu/bulletin/network/logic/DownloadObserver;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloader;->mObserver:Lcom/baidu/bulletin/network/logic/DownloadObserver;

    invoke-interface {v0}, Lcom/baidu/bulletin/network/logic/DownloadObserver;->onFinished()V

    .line 100
    :cond_0
    return-void
.end method


# virtual methods
.method public cancelAll()V
    .locals 2

    .prologue
    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloader;->mTaskCancelled:Z

    .line 104
    iget-object v0, p0, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloader;->mFileDownloader:Lcom/baidu/bulletin/network/FileDownloader;

    invoke-virtual {v0}, Lcom/baidu/bulletin/network/FileDownloader;->cancelAllTask()V

    .line 105
    sget-object v0, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloader;->TAG:Ljava/lang/String;

    const-string v1, "wws: ItemBriefImageDownloader cancelAll()"

    invoke-static {v0, v1}, Lcom/baidu/bulletin/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public download()V
    .locals 8

    .prologue
    .line 31
    iget-object v6, p0, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloader;->mDataRepository:Lcom/baidu/bulletin/DataRepository;

    invoke-virtual {v6}, Lcom/baidu/bulletin/DataRepository;->queryNeedBriefImageChannelItem()[Lcom/baidu/bulletin/entity/ChannelItem;

    move-result-object v2

    .line 33
    .local v2, channelItems:[Lcom/baidu/bulletin/entity/ChannelItem;
    if-eqz v2, :cond_1

    .line 34
    array-length v6, v2

    iput v6, p0, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloader;->mDownloadCounter:I

    .line 35
    move-object v0, v2

    .local v0, arr$:[Lcom/baidu/bulletin/entity/ChannelItem;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 36
    .local v1, channel:Lcom/baidu/bulletin/entity/ChannelItem;
    iget-object v6, v1, Lcom/baidu/bulletin/entity/ChannelItem;->img:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloader;->mTaskCancelled:Z

    if-nez v6, :cond_0

    .line 37
    new-instance v5, Lcom/baidu/bulletin/network/FileDownloader$Request;

    invoke-direct {v5}, Lcom/baidu/bulletin/network/FileDownloader$Request;-><init>()V

    .line 38
    .local v5, request:Lcom/baidu/bulletin/network/FileDownloader$Request;
    iget-object v6, v1, Lcom/baidu/bulletin/entity/ChannelItem;->img:Ljava/lang/String;

    iput-object v6, v5, Lcom/baidu/bulletin/network/FileDownloader$Request;->downloadUrl:Ljava/lang/String;

    .line 39
    iput-object v1, v5, Lcom/baidu/bulletin/network/FileDownloader$Request;->obj:Ljava/lang/Object;

    .line 40
    iget-object v6, p0, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloader;->mFileDownloader:Lcom/baidu/bulletin/network/FileDownloader;

    iget-object v7, p0, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloader;->mFileDownloaderObserver:Lcom/baidu/bulletin/network/FileDownloader$Observer;

    invoke-virtual {v6, v5, v7}, Lcom/baidu/bulletin/network/FileDownloader;->downloadFile(Lcom/baidu/bulletin/network/FileDownloader$Request;Lcom/baidu/bulletin/network/FileDownloader$Observer;)V

    .line 35
    .end local v5           #request:Lcom/baidu/bulletin/network/FileDownloader$Request;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 42
    :cond_0
    iget v6, p0, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloader;->mDownloadCounter:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloader;->mDownloadCounter:I

    goto :goto_1

    .line 47
    .end local v0           #arr$:[Lcom/baidu/bulletin/entity/ChannelItem;
    .end local v1           #channel:Lcom/baidu/bulletin/entity/ChannelItem;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_1
    invoke-direct {p0}, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloader;->notifyObserverIfNoMore()V

    .line 48
    return-void
.end method

.method public downloadAll()V
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Lcom/baidu/bulletin/SyncScheduler;->shouldAutoSync()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    new-instance v0, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloader$1;

    invoke-direct {v0, p0}, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloader$1;-><init>(Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloader;)V

    invoke-virtual {v0}, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloader$1;->start()V

    .line 59
    :cond_0
    return-void
.end method
