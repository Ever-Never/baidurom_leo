.class public Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloaderByPage;
.super Ljava/lang/Object;
.source "ItemBriefImageDownloaderByPage.java"


# static fields
.field private static final MAX_TASK_COUNT:I = 0x8

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDataRepository:Lcom/baidu/bulletin/DataRepository;

.field private mDownloadCounter:I

.field private mDownloadPosition:I

.field private mFileDownloader:Lcom/baidu/bulletin/network/FileDownloader;

.field private mFileDownloaderObserver:Lcom/baidu/bulletin/network/FileDownloader$Observer;

.field private mObserver:Lcom/baidu/bulletin/network/logic/DownloadObserverByPage;

.field private mTaskCancelled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloaderByPage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloaderByPage;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/baidu/bulletin/network/logic/DownloadObserverByPage;)V
    .locals 2
    .parameter "observer"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloaderByPage$1;

    invoke-direct {v0, p0}, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloaderByPage$1;-><init>(Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloaderByPage;)V

    iput-object v0, p0, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloaderByPage;->mFileDownloaderObserver:Lcom/baidu/bulletin/network/FileDownloader$Observer;

    .line 31
    iput-object p1, p0, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloaderByPage;->mObserver:Lcom/baidu/bulletin/network/logic/DownloadObserverByPage;

    .line 32
    invoke-static {}, Lcom/baidu/bulletin/DataRepository;->getInstance()Lcom/baidu/bulletin/DataRepository;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloaderByPage;->mDataRepository:Lcom/baidu/bulletin/DataRepository;

    .line 33
    new-instance v0, Lcom/baidu/bulletin/network/FileDownloader;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/baidu/bulletin/network/FileDownloader;-><init>(I)V

    iput-object v0, p0, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloaderByPage;->mFileDownloader:Lcom/baidu/bulletin/network/FileDownloader;

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloaderByPage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget v0, p0, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloaderByPage;->mDownloadCounter:I

    return v0
.end method

.method static synthetic access$010(Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloaderByPage;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 16
    iget v0, p0, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloaderByPage;->mDownloadCounter:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloaderByPage;->mDownloadCounter:I

    return v0
.end method

.method static synthetic access$100(Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloaderByPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloaderByPage;->mTaskCancelled:Z

    return v0
.end method

.method static synthetic access$200(Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloaderByPage;)Lcom/baidu/bulletin/DataRepository;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloaderByPage;->mDataRepository:Lcom/baidu/bulletin/DataRepository;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloaderByPage;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloaderByPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloaderByPage;->notifyObserverIfNoMore()V

    return-void
.end method

.method private notifyObserverIfNoMore()V
    .locals 2

    .prologue
    .line 91
    iget v0, p0, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloaderByPage;->mDownloadCounter:I

    if-nez v0, :cond_0

    .line 92
    iget v0, p0, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloaderByPage;->mDownloadCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloaderByPage;->mDownloadCounter:I

    .line 93
    iget-object v0, p0, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloaderByPage;->mObserver:Lcom/baidu/bulletin/network/logic/DownloadObserverByPage;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloaderByPage;->mObserver:Lcom/baidu/bulletin/network/logic/DownloadObserverByPage;

    iget v1, p0, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloaderByPage;->mDownloadPosition:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/baidu/bulletin/network/logic/DownloadObserverByPage;->onFinished(Ljava/lang/Object;)V

    .line 97
    :cond_0
    return-void
.end method


# virtual methods
.method public cancelAll()V
    .locals 2

    .prologue
    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloaderByPage;->mTaskCancelled:Z

    .line 101
    iget-object v0, p0, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloaderByPage;->mFileDownloader:Lcom/baidu/bulletin/network/FileDownloader;

    invoke-virtual {v0}, Lcom/baidu/bulletin/network/FileDownloader;->cancelAllTask()V

    .line 102
    sget-object v0, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloaderByPage;->TAG:Ljava/lang/String;

    const-string v1, "wws: ItemBriefImageDownloader cancelAll()"

    invoke-static {v0, v1}, Lcom/baidu/bulletin/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public download(I)V
    .locals 8
    .parameter "position"

    .prologue
    .line 37
    iput p1, p0, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloaderByPage;->mDownloadPosition:I

    .line 39
    invoke-static {}, Lcom/baidu/bulletin/BulletinPresentation;->getInstance()Lcom/baidu/bulletin/BulletinPresentation;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/baidu/bulletin/BulletinPresentation;->getPageData(I)[Lcom/baidu/bulletin/entity/ChannelItem;

    move-result-object v1

    .line 41
    .local v1, channelItems:[Lcom/baidu/bulletin/entity/ChannelItem;
    if-eqz v1, :cond_1

    .line 42
    array-length v6, v1

    iput v6, p0, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloaderByPage;->mDownloadCounter:I

    .line 43
    move-object v0, v1

    .local v0, arr$:[Lcom/baidu/bulletin/entity/ChannelItem;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v3, v0, v2

    .line 44
    .local v3, item:Lcom/baidu/bulletin/entity/ChannelItem;
    iget-object v6, v3, Lcom/baidu/bulletin/entity/ChannelItem;->img:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloaderByPage;->mTaskCancelled:Z

    if-nez v6, :cond_0

    .line 45
    new-instance v5, Lcom/baidu/bulletin/network/FileDownloader$Request;

    invoke-direct {v5}, Lcom/baidu/bulletin/network/FileDownloader$Request;-><init>()V

    .line 46
    .local v5, request:Lcom/baidu/bulletin/network/FileDownloader$Request;
    iget-object v6, v3, Lcom/baidu/bulletin/entity/ChannelItem;->img:Ljava/lang/String;

    iput-object v6, v5, Lcom/baidu/bulletin/network/FileDownloader$Request;->downloadUrl:Ljava/lang/String;

    .line 47
    iput-object v3, v5, Lcom/baidu/bulletin/network/FileDownloader$Request;->obj:Ljava/lang/Object;

    .line 48
    iget-object v6, p0, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloaderByPage;->mFileDownloader:Lcom/baidu/bulletin/network/FileDownloader;

    iget-object v7, p0, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloaderByPage;->mFileDownloaderObserver:Lcom/baidu/bulletin/network/FileDownloader$Observer;

    invoke-virtual {v6, v5, v7}, Lcom/baidu/bulletin/network/FileDownloader;->downloadFile(Lcom/baidu/bulletin/network/FileDownloader$Request;Lcom/baidu/bulletin/network/FileDownloader$Observer;)V

    .line 43
    .end local v5           #request:Lcom/baidu/bulletin/network/FileDownloader$Request;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 50
    :cond_0
    iget v6, p0, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloaderByPage;->mDownloadCounter:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloaderByPage;->mDownloadCounter:I

    goto :goto_1

    .line 55
    .end local v0           #arr$:[Lcom/baidu/bulletin/entity/ChannelItem;
    .end local v2           #i$:I
    .end local v3           #item:Lcom/baidu/bulletin/entity/ChannelItem;
    .end local v4           #len$:I
    :cond_1
    invoke-direct {p0}, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloaderByPage;->notifyObserverIfNoMore()V

    .line 56
    return-void
.end method
