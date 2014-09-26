.class public Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader;
.super Ljava/lang/Object;
.source "ItemAttachementDownloader.java"

# interfaces
.implements Lcom/baidu/bulletin/utils/ChangeNotifyManager$Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader$PageDownloadObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mSingleton:Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader;


# instance fields
.field private mBatchMusicDownloader:Lcom/baidu/bulletin/network/logic/MusicAttachementDownloader;

.field private mBatchPageDownloader:Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;

.field private mSinglePageDownloader:Lcom/baidu/bulletin/network/logic/SerialDownloadTaskManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/baidu/bulletin/network/logic/MusicAttachementDownloader;

    invoke-direct {v0, v2, v1}, Lcom/baidu/bulletin/network/logic/MusicAttachementDownloader;-><init>(Lcom/baidu/bulletin/network/logic/DownloadObserver;Z)V

    iput-object v0, p0, Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader;->mBatchMusicDownloader:Lcom/baidu/bulletin/network/logic/MusicAttachementDownloader;

    .line 39
    new-instance v0, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;

    invoke-direct {v0, v2, v1}, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;-><init>(Lcom/baidu/bulletin/network/logic/DownloadObserver;Z)V

    iput-object v0, p0, Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader;->mBatchPageDownloader:Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;

    .line 40
    sget-object v0, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;->MediaMountChange:Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;

    invoke-static {v0, p0}, Lcom/baidu/bulletin/utils/ChangeNotifyManager;->register(Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;Lcom/baidu/bulletin/utils/ChangeNotifyManager$Observer;)V

    .line 41
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader;)Lcom/baidu/bulletin/network/logic/MusicAttachementDownloader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader;->mBatchMusicDownloader:Lcom/baidu/bulletin/network/logic/MusicAttachementDownloader;

    return-object v0
.end method

.method static synthetic access$200(Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader;)Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader;->mBatchPageDownloader:Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;

    return-object v0
.end method

.method static synthetic access$302(Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader;Lcom/baidu/bulletin/network/logic/SerialDownloadTaskManager;)Lcom/baidu/bulletin/network/logic/SerialDownloadTaskManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput-object p1, p0, Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader;->mSinglePageDownloader:Lcom/baidu/bulletin/network/logic/SerialDownloadTaskManager;

    return-object p1
.end method

.method public static close()V
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader;->mSingleton:Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader;

    if-eqz v0, :cond_0

    .line 32
    sget-object v0, Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader;->mSingleton:Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader;

    invoke-virtual {v0}, Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader;->cancelAll()V

    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader;->mSingleton:Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader;

    .line 35
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader;->mSingleton:Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader;

    invoke-direct {v0}, Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader;-><init>()V

    sput-object v0, Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader;->mSingleton:Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader;

    .line 27
    :cond_0
    sget-object v0, Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader;->mSingleton:Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader;

    return-object v0
.end method


# virtual methods
.method public cancelAll()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader;->mBatchMusicDownloader:Lcom/baidu/bulletin/network/logic/MusicAttachementDownloader;

    invoke-virtual {v0}, Lcom/baidu/bulletin/network/logic/MusicAttachementDownloader;->cancel()V

    .line 70
    iget-object v0, p0, Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader;->mBatchPageDownloader:Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;

    invoke-virtual {v0}, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;->cancel()V

    .line 71
    invoke-virtual {p0}, Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader;->cancelPageDownload()V

    .line 72
    return-void
.end method

.method public cancelPageDownload()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader;->mSinglePageDownloader:Lcom/baidu/bulletin/network/logic/SerialDownloadTaskManager;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader;->mSinglePageDownloader:Lcom/baidu/bulletin/network/logic/SerialDownloadTaskManager;

    invoke-virtual {v0}, Lcom/baidu/bulletin/network/logic/SerialDownloadTaskManager;->cancel()V

    .line 137
    :cond_0
    return-void
.end method

.method public downloadAll()V
    .locals 1

    .prologue
    .line 53
    invoke-static {}, Lcom/baidu/bulletin/SyncScheduler;->shouldAutoSync()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    new-instance v0, Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader$1;

    invoke-direct {v0, p0}, Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader$1;-><init>(Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader;)V

    invoke-virtual {v0}, Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader$1;->start()V

    .line 66
    :cond_0
    return-void
.end method

.method public downloadPage(Lcom/baidu/bulletin/entity/ChannelItem;Lcom/baidu/bulletin/network/logic/SingleTaskDownloadObserver;)V
    .locals 4
    .parameter "item"
    .parameter "observer"

    .prologue
    .line 75
    if-eqz p1, :cond_1

    .line 76
    const-string v1, "native"

    iget-object v2, p1, Lcom/baidu/bulletin/entity/ChannelItem;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    sget-object v1, Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "------------item.CHANNElID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/baidu/bulletin/entity/ChannelItem;->channelId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v1, p1, Lcom/baidu/bulletin/entity/ChannelItem;->channelId:Ljava/lang/String;

    const-string v2, "history"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 84
    :try_start_0
    invoke-static {}, Lcom/baidu/bulletin/DataRepository;->getInstance()Lcom/baidu/bulletin/DataRepository;

    move-result-object v1

    invoke-virtual {p1}, Lcom/baidu/bulletin/entity/ChannelItem;->get_Id()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/baidu/bulletin/DataRepository;->queryChannelItem(J)Lcom/baidu/bulletin/entity/ChannelItem;

    move-result-object p1

    .line 86
    if-eqz p1, :cond_1

    iget v1, p1, Lcom/baidu/bulletin/entity/ChannelItem;->detailDownloaded:I

    if-nez v1, :cond_1

    .line 87
    sget-object v1, Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downloadPage : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/baidu/bulletin/entity/ChannelItem;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader;->cancelPageDownload()V

    .line 93
    new-instance v1, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;

    new-instance v2, Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader$PageDownloadObserver;

    invoke-direct {v2, p0, p1, p2}, Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader$PageDownloadObserver;-><init>(Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader;Lcom/baidu/bulletin/entity/ChannelItem;Lcom/baidu/bulletin/network/logic/SingleTaskDownloadObserver;)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;-><init>(Lcom/baidu/bulletin/network/logic/DownloadObserver;Z)V

    iput-object v1, p0, Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader;->mSinglePageDownloader:Lcom/baidu/bulletin/network/logic/SerialDownloadTaskManager;

    .line 96
    iget-object v1, p0, Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader;->mSinglePageDownloader:Lcom/baidu/bulletin/network/logic/SerialDownloadTaskManager;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/baidu/bulletin/entity/ChannelItem;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Lcom/baidu/bulletin/network/logic/SerialDownloadTaskManager;->download([Lcom/baidu/bulletin/entity/ChannelItem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 131
    :goto_0
    return-void

    .line 106
    :cond_0
    const-string v1, "app"

    iget-object v2, p1, Lcom/baidu/bulletin/entity/ChannelItem;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    :try_start_1
    invoke-static {}, Lcom/baidu/bulletin/DataRepository;->getInstance()Lcom/baidu/bulletin/DataRepository;

    move-result-object v1

    invoke-virtual {p1}, Lcom/baidu/bulletin/entity/ChannelItem;->get_Id()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/baidu/bulletin/DataRepository;->queryChannelItem(J)Lcom/baidu/bulletin/entity/ChannelItem;

    move-result-object p1

    .line 110
    if-eqz p1, :cond_1

    iget v1, p1, Lcom/baidu/bulletin/entity/ChannelItem;->detailDownloaded:I

    if-nez v1, :cond_1

    .line 111
    sget-object v1, Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downloadPage : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/baidu/bulletin/entity/ChannelItem;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader;->cancelPageDownload()V

    .line 117
    new-instance v1, Lcom/baidu/bulletin/network/logic/AppListDownloader;

    new-instance v2, Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader$PageDownloadObserver;

    invoke-direct {v2, p0, p1, p2}, Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader$PageDownloadObserver;-><init>(Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader;Lcom/baidu/bulletin/entity/ChannelItem;Lcom/baidu/bulletin/network/logic/SingleTaskDownloadObserver;)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/baidu/bulletin/network/logic/AppListDownloader;-><init>(Lcom/baidu/bulletin/network/logic/DownloadObserver;Z)V

    iput-object v1, p0, Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader;->mSinglePageDownloader:Lcom/baidu/bulletin/network/logic/SerialDownloadTaskManager;

    .line 118
    iget-object v1, p0, Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader;->mSinglePageDownloader:Lcom/baidu/bulletin/network/logic/SerialDownloadTaskManager;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/baidu/bulletin/entity/ChannelItem;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Lcom/baidu/bulletin/network/logic/SerialDownloadTaskManager;->download([Lcom/baidu/bulletin/entity/ChannelItem;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    .line 125
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 130
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    :goto_1
    invoke-virtual {p2}, Lcom/baidu/bulletin/network/logic/SingleTaskDownloadObserver;->onFinished()V

    goto :goto_0

    .line 102
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public onChanged(Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;Ljava/lang/Object;)V
    .locals 1
    .parameter "event"
    .parameter "data"

    .prologue
    .line 45
    invoke-static {}, Lcom/baidu/bulletin/utils/MediaMonitor;->isStorageAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader;->downloadAll()V

    .line 50
    :goto_0
    return-void

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader;->cancelAll()V

    goto :goto_0
.end method
