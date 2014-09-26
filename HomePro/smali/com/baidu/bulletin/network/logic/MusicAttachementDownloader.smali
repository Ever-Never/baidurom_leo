.class public Lcom/baidu/bulletin/network/logic/MusicAttachementDownloader;
.super Lcom/baidu/bulletin/network/logic/SerialDownloadTaskManager;
.source "MusicAttachementDownloader.java"


# static fields
.field private static final MAX_TASK_COUNT:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mMusicDownloader:Lcom/baidu/bulletin/network/FileDownloader;

.field private mMusicFileObserver:Lcom/baidu/bulletin/network/FileDownloader$Observer;

.field private mRequestAccessTokenManager:Lcom/baidu/bulletin/network/RequestAccessTokenManager;

.field private mRequestObserver:Lcom/baidu/bulletin/network/RequestAccessTokenManager$TokenObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/baidu/bulletin/network/logic/MusicAttachementDownloader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/bulletin/network/logic/MusicAttachementDownloader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/baidu/bulletin/network/logic/DownloadObserver;Z)V
    .locals 2
    .parameter "observer"
    .parameter "background"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/baidu/bulletin/network/logic/SerialDownloadTaskManager;-><init>(Lcom/baidu/bulletin/network/logic/DownloadObserver;Z)V

    .line 42
    new-instance v0, Lcom/baidu/bulletin/network/logic/MusicAttachementDownloader$1;

    invoke-direct {v0, p0}, Lcom/baidu/bulletin/network/logic/MusicAttachementDownloader$1;-><init>(Lcom/baidu/bulletin/network/logic/MusicAttachementDownloader;)V

    iput-object v0, p0, Lcom/baidu/bulletin/network/logic/MusicAttachementDownloader;->mRequestObserver:Lcom/baidu/bulletin/network/RequestAccessTokenManager$TokenObserver;

    .line 96
    new-instance v0, Lcom/baidu/bulletin/network/logic/MusicAttachementDownloader$2;

    invoke-direct {v0, p0}, Lcom/baidu/bulletin/network/logic/MusicAttachementDownloader$2;-><init>(Lcom/baidu/bulletin/network/logic/MusicAttachementDownloader;)V

    iput-object v0, p0, Lcom/baidu/bulletin/network/logic/MusicAttachementDownloader;->mMusicFileObserver:Lcom/baidu/bulletin/network/FileDownloader$Observer;

    .line 24
    new-instance v0, Lcom/baidu/bulletin/network/FileDownloader;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/baidu/bulletin/network/FileDownloader;-><init>(I)V

    iput-object v0, p0, Lcom/baidu/bulletin/network/logic/MusicAttachementDownloader;->mMusicDownloader:Lcom/baidu/bulletin/network/FileDownloader;

    .line 25
    new-instance v0, Lcom/baidu/bulletin/network/RequestAccessTokenManager;

    iget-object v1, p0, Lcom/baidu/bulletin/network/logic/MusicAttachementDownloader;->mRequestObserver:Lcom/baidu/bulletin/network/RequestAccessTokenManager$TokenObserver;

    invoke-direct {v0, v1}, Lcom/baidu/bulletin/network/RequestAccessTokenManager;-><init>(Lcom/baidu/bulletin/network/RequestAccessTokenManager$TokenObserver;)V

    iput-object v0, p0, Lcom/baidu/bulletin/network/logic/MusicAttachementDownloader;->mRequestAccessTokenManager:Lcom/baidu/bulletin/network/RequestAccessTokenManager;

    .line 26
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/baidu/bulletin/network/logic/MusicAttachementDownloader;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/baidu/bulletin/network/logic/MusicAttachementDownloader;)Lcom/baidu/bulletin/network/FileDownloader$Observer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/baidu/bulletin/network/logic/MusicAttachementDownloader;->mMusicFileObserver:Lcom/baidu/bulletin/network/FileDownloader$Observer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/baidu/bulletin/network/logic/MusicAttachementDownloader;)Lcom/baidu/bulletin/network/FileDownloader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/baidu/bulletin/network/logic/MusicAttachementDownloader;->mMusicDownloader:Lcom/baidu/bulletin/network/FileDownloader;

    return-object v0
.end method


# virtual methods
.method protected onCancel()V
    .locals 0

    .prologue
    .line 40
    return-void
.end method

.method protected onDownload(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V
    .locals 1
    .parameter "download"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/baidu/bulletin/network/logic/MusicAttachementDownloader;->mRequestAccessTokenManager:Lcom/baidu/bulletin/network/RequestAccessTokenManager;

    invoke-virtual {v0, p1}, Lcom/baidu/bulletin/network/RequestAccessTokenManager;->downloadToken(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V

    .line 131
    return-void
.end method

.method protected onDownload(Lcom/baidu/bulletin/entity/ChannelItem;)V
    .locals 1
    .parameter "download"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/baidu/bulletin/network/logic/MusicAttachementDownloader;->mRequestAccessTokenManager:Lcom/baidu/bulletin/network/RequestAccessTokenManager;

    invoke-virtual {v0, p1}, Lcom/baidu/bulletin/network/RequestAccessTokenManager;->downloadToken(Lcom/baidu/bulletin/entity/ChannelItem;)V

    .line 36
    return-void
.end method

.method protected sholdDownload(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)Z
    .locals 2
    .parameter "download"

    .prologue
    .line 136
    if-eqz p1, :cond_0

    iget v0, p1, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->channelId:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_0

    iget v0, p1, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->channelId:I

    const/16 v1, 0xbb8

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected sholdDownload(Lcom/baidu/bulletin/entity/ChannelItem;)Z
    .locals 2
    .parameter "download"

    .prologue
    .line 30
    if-eqz p1, :cond_0

    const-string v0, "mp3"

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
