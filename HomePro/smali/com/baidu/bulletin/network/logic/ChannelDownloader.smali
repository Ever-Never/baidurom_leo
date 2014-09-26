.class public Lcom/baidu/bulletin/network/logic/ChannelDownloader;
.super Ljava/lang/Object;
.source "ChannelDownloader.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mChannelBriefImageObserver:Lcom/baidu/bulletin/network/logic/DownloadObserver;

.field private mDownloadCounter:I

.field private mItemBriefImageDownloader:Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloader;

.field private mObserver:Lcom/baidu/bulletin/network/logic/DownloadObserver;

.field private mProtocolPackager:Lcom/baidu/bulletin/network/protocol/ProtocolPackager;

.field private mProtocolPackagerObserver:Lcom/baidu/bulletin/network/protocol/ProtocolPackager$Observer;

.field private mTaskCancelled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/baidu/bulletin/network/logic/ChannelDownloader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/bulletin/network/logic/ChannelDownloader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/baidu/bulletin/network/logic/DownloadObserver;)V
    .locals 2
    .parameter "observer"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lcom/baidu/bulletin/network/logic/ChannelDownloader$1;

    invoke-direct {v0, p0}, Lcom/baidu/bulletin/network/logic/ChannelDownloader$1;-><init>(Lcom/baidu/bulletin/network/logic/ChannelDownloader;)V

    iput-object v0, p0, Lcom/baidu/bulletin/network/logic/ChannelDownloader;->mProtocolPackagerObserver:Lcom/baidu/bulletin/network/protocol/ProtocolPackager$Observer;

    .line 81
    new-instance v0, Lcom/baidu/bulletin/network/logic/ChannelDownloader$2;

    invoke-direct {v0, p0}, Lcom/baidu/bulletin/network/logic/ChannelDownloader$2;-><init>(Lcom/baidu/bulletin/network/logic/ChannelDownloader;)V

    iput-object v0, p0, Lcom/baidu/bulletin/network/logic/ChannelDownloader;->mChannelBriefImageObserver:Lcom/baidu/bulletin/network/logic/DownloadObserver;

    .line 26
    iput-object p1, p0, Lcom/baidu/bulletin/network/logic/ChannelDownloader;->mObserver:Lcom/baidu/bulletin/network/logic/DownloadObserver;

    .line 27
    new-instance v0, Lcom/baidu/bulletin/network/protocol/ProtocolPackager;

    iget-object v1, p0, Lcom/baidu/bulletin/network/logic/ChannelDownloader;->mProtocolPackagerObserver:Lcom/baidu/bulletin/network/protocol/ProtocolPackager$Observer;

    invoke-direct {v0, v1}, Lcom/baidu/bulletin/network/protocol/ProtocolPackager;-><init>(Lcom/baidu/bulletin/network/protocol/ProtocolPackager$Observer;)V

    iput-object v0, p0, Lcom/baidu/bulletin/network/logic/ChannelDownloader;->mProtocolPackager:Lcom/baidu/bulletin/network/protocol/ProtocolPackager;

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/bulletin/network/logic/ChannelDownloader;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/baidu/bulletin/network/logic/ChannelDownloader;->mTaskCancelled:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/baidu/bulletin/network/logic/ChannelDownloader;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$210(Lcom/baidu/bulletin/network/logic/ChannelDownloader;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 14
    iget v0, p0, Lcom/baidu/bulletin/network/logic/ChannelDownloader;->mDownloadCounter:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/baidu/bulletin/network/logic/ChannelDownloader;->mDownloadCounter:I

    return v0
.end method

.method static synthetic access$300(Lcom/baidu/bulletin/network/logic/ChannelDownloader;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/baidu/bulletin/network/logic/ChannelDownloader;->notifyObserverIfNoMore()V

    return-void
.end method

.method static synthetic access$400(Lcom/baidu/bulletin/network/logic/ChannelDownloader;)Lcom/baidu/bulletin/network/logic/DownloadObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/baidu/bulletin/network/logic/ChannelDownloader;->mObserver:Lcom/baidu/bulletin/network/logic/DownloadObserver;

    return-object v0
.end method

.method private downloadBriefImageIfNoMore()V
    .locals 2

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/baidu/bulletin/network/logic/ChannelDownloader;->mTaskCancelled:Z

    if-eqz v0, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    iget v0, p0, Lcom/baidu/bulletin/network/logic/ChannelDownloader;->mDownloadCounter:I

    if-nez v0, :cond_0

    .line 75
    iget v0, p0, Lcom/baidu/bulletin/network/logic/ChannelDownloader;->mDownloadCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/baidu/bulletin/network/logic/ChannelDownloader;->mDownloadCounter:I

    .line 76
    new-instance v0, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloader;

    iget-object v1, p0, Lcom/baidu/bulletin/network/logic/ChannelDownloader;->mChannelBriefImageObserver:Lcom/baidu/bulletin/network/logic/DownloadObserver;

    invoke-direct {v0, v1}, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloader;-><init>(Lcom/baidu/bulletin/network/logic/DownloadObserver;)V

    iput-object v0, p0, Lcom/baidu/bulletin/network/logic/ChannelDownloader;->mItemBriefImageDownloader:Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloader;

    .line 77
    iget-object v0, p0, Lcom/baidu/bulletin/network/logic/ChannelDownloader;->mItemBriefImageDownloader:Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloader;

    invoke-virtual {v0}, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloader;->download()V

    goto :goto_0
.end method

.method private notifyObserverIfNoMore()V
    .locals 2

    .prologue
    .line 103
    iget v1, p0, Lcom/baidu/bulletin/network/logic/ChannelDownloader;->mDownloadCounter:I

    if-nez v1, :cond_1

    .line 104
    iget v1, p0, Lcom/baidu/bulletin/network/logic/ChannelDownloader;->mDownloadCounter:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/baidu/bulletin/network/logic/ChannelDownloader;->mDownloadCounter:I

    .line 105
    iget-object v1, p0, Lcom/baidu/bulletin/network/logic/ChannelDownloader;->mObserver:Lcom/baidu/bulletin/network/logic/DownloadObserver;

    if-eqz v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/baidu/bulletin/network/logic/ChannelDownloader;->mObserver:Lcom/baidu/bulletin/network/logic/DownloadObserver;

    invoke-interface {v1}, Lcom/baidu/bulletin/network/logic/DownloadObserver;->onFinished()V

    .line 109
    :cond_0
    iget-boolean v1, p0, Lcom/baidu/bulletin/network/logic/ChannelDownloader;->mTaskCancelled:Z

    if-nez v1, :cond_1

    .line 111
    new-instance v0, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloader;

    new-instance v1, Lcom/baidu/bulletin/network/logic/ChannelDownloader$3;

    invoke-direct {v1, p0}, Lcom/baidu/bulletin/network/logic/ChannelDownloader$3;-><init>(Lcom/baidu/bulletin/network/logic/ChannelDownloader;)V

    invoke-direct {v0, v1}, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloader;-><init>(Lcom/baidu/bulletin/network/logic/DownloadObserver;)V

    .line 122
    .local v0, itemBriefImageDownloaderAll:Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloader;
    invoke-virtual {v0}, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloader;->downloadAll()V

    .line 128
    .end local v0           #itemBriefImageDownloaderAll:Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloader;
    :cond_1
    return-void
.end method


# virtual methods
.method public cancelAll()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/baidu/bulletin/network/logic/ChannelDownloader;->mProtocolPackager:Lcom/baidu/bulletin/network/protocol/ProtocolPackager;

    invoke-virtual {v0}, Lcom/baidu/bulletin/network/protocol/ProtocolPackager;->cancelAll()V

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/bulletin/network/logic/ChannelDownloader;->mTaskCancelled:Z

    .line 97
    iget-object v0, p0, Lcom/baidu/bulletin/network/logic/ChannelDownloader;->mItemBriefImageDownloader:Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloader;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/baidu/bulletin/network/logic/ChannelDownloader;->mItemBriefImageDownloader:Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloader;

    invoke-virtual {v0}, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloader;->cancelAll()V

    .line 100
    :cond_0
    return-void
.end method

.method public download(Ljava/util/List;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bulletin/network/protocol/RawUpdate$Version;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, updates:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/network/protocol/RawUpdate$Version;>;"
    if-eqz p1, :cond_2

    .line 32
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    iput v6, p0, Lcom/baidu/bulletin/network/logic/ChannelDownloader;->mDownloadCounter:I

    .line 34
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/bulletin/network/protocol/RawUpdate$Version;

    .line 35
    .local v4, update:Lcom/baidu/bulletin/network/protocol/RawUpdate$Version;
    invoke-static {}, Lcom/baidu/bulletin/DataRepository;->getInstance()Lcom/baidu/bulletin/DataRepository;

    move-result-object v6

    invoke-virtual {v6}, Lcom/baidu/bulletin/DataRepository;->channelVersion()Lcom/baidu/bulletin/DataRepository$ChannelVersion;

    move-result-object v6

    iget-object v7, v4, Lcom/baidu/bulletin/network/protocol/RawUpdate$Version;->channel:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/baidu/bulletin/DataRepository$ChannelVersion;->get(Ljava/lang/String;)Lcom/baidu/bulletin/entity/Channel$Version;

    move-result-object v5

    .line 36
    .local v5, version:Lcom/baidu/bulletin/entity/Channel$Version;
    if-nez v5, :cond_0

    const-wide/16 v0, 0x0

    .line 38
    .local v0, current:J
    :goto_1
    iget-wide v6, v4, Lcom/baidu/bulletin/network/protocol/RawUpdate$Version;->up:J

    cmp-long v6, v6, v0

    if-lez v6, :cond_1

    .line 39
    new-instance v3, Lcom/baidu/bulletin/network/protocol/RawChannel$Request;

    invoke-direct {v3}, Lcom/baidu/bulletin/network/protocol/RawChannel$Request;-><init>()V

    .line 40
    .local v3, request:Lcom/baidu/bulletin/network/protocol/RawChannel$Request;
    iget-object v6, v4, Lcom/baidu/bulletin/network/protocol/RawUpdate$Version;->channel:Ljava/lang/String;

    iput-object v6, v3, Lcom/baidu/bulletin/network/protocol/RawChannel$Request;->id:Ljava/lang/String;

    .line 41
    iput-wide v0, v3, Lcom/baidu/bulletin/network/protocol/RawChannel$Request;->version:J

    .line 43
    iget-object v6, p0, Lcom/baidu/bulletin/network/logic/ChannelDownloader;->mProtocolPackager:Lcom/baidu/bulletin/network/protocol/ProtocolPackager;

    invoke-virtual {v6, v3}, Lcom/baidu/bulletin/network/protocol/ProtocolPackager;->requestChannelItems(Lcom/baidu/bulletin/network/protocol/RawChannel$Request;)V

    goto :goto_0

    .line 36
    .end local v0           #current:J
    .end local v3           #request:Lcom/baidu/bulletin/network/protocol/RawChannel$Request;
    :cond_0
    invoke-virtual {v5}, Lcom/baidu/bulletin/entity/Channel$Version;->current()J

    move-result-wide v0

    goto :goto_1

    .line 45
    .restart local v0       #current:J
    :cond_1
    iget v6, p0, Lcom/baidu/bulletin/network/logic/ChannelDownloader;->mDownloadCounter:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/baidu/bulletin/network/logic/ChannelDownloader;->mDownloadCounter:I

    goto :goto_0

    .line 50
    .end local v0           #current:J
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #update:Lcom/baidu/bulletin/network/protocol/RawUpdate$Version;
    .end local v5           #version:Lcom/baidu/bulletin/entity/Channel$Version;
    :cond_2
    invoke-direct {p0}, Lcom/baidu/bulletin/network/logic/ChannelDownloader;->notifyObserverIfNoMore()V

    .line 51
    return-void
.end method
