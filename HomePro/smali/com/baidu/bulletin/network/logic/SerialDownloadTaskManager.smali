.class public abstract Lcom/baidu/bulletin/network/logic/SerialDownloadTaskManager;
.super Ljava/lang/Object;
.source "SerialDownloadTaskManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBackground:Z

.field private mDownloadList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bulletin/entity/ChannelItem;",
            ">;"
        }
    .end annotation
.end field

.field private mDownloadListInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bulletin/db/entity/ChannelItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mObserver:Lcom/baidu/bulletin/network/logic/DownloadObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/baidu/bulletin/network/logic/SerialDownloadTaskManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/bulletin/network/logic/SerialDownloadTaskManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lcom/baidu/bulletin/network/logic/DownloadObserver;Z)V
    .locals 1
    .parameter "observer"
    .parameter "background"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/bulletin/network/logic/SerialDownloadTaskManager;->mDownloadList:Ljava/util/List;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/bulletin/network/logic/SerialDownloadTaskManager;->mDownloadListInfo:Ljava/util/List;

    .line 22
    iput-object p1, p0, Lcom/baidu/bulletin/network/logic/SerialDownloadTaskManager;->mObserver:Lcom/baidu/bulletin/network/logic/DownloadObserver;

    .line 23
    iput-boolean p2, p0, Lcom/baidu/bulletin/network/logic/SerialDownloadTaskManager;->mBackground:Z

    .line 24
    return-void
.end method

.method private final download()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/baidu/bulletin/network/logic/SerialDownloadTaskManager;->mDownloadListInfo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 108
    invoke-direct {p0}, Lcom/baidu/bulletin/network/logic/SerialDownloadTaskManager;->shouldDownloadFollowEnviromentAndConfiguration()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/baidu/bulletin/network/logic/SerialDownloadTaskManager;->mDownloadListInfo:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    invoke-virtual {p0, v0}, Lcom/baidu/bulletin/network/logic/SerialDownloadTaskManager;->onDownload(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/baidu/bulletin/network/logic/SerialDownloadTaskManager;->mDownloadListInfo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method private final downloadExist(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)Z
    .locals 2
    .parameter "download"

    .prologue
    .line 129
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/baidu/bulletin/network/logic/SerialDownloadTaskManager;->mDownloadListInfo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 130
    iget-object v1, p0, Lcom/baidu/bulletin/network/logic/SerialDownloadTaskManager;->mDownloadListInfo:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    invoke-virtual {v1, p1}, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->isSame(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    const/4 v1, 0x1

    .line 134
    :goto_1
    return v1

    .line 129
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 134
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private final downloadExist(Lcom/baidu/bulletin/entity/ChannelItem;)Z
    .locals 2
    .parameter "download"

    .prologue
    .line 121
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/baidu/bulletin/network/logic/SerialDownloadTaskManager;->mDownloadList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 122
    iget-object v1, p0, Lcom/baidu/bulletin/network/logic/SerialDownloadTaskManager;->mDownloadList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/bulletin/entity/ChannelItem;

    invoke-virtual {v1, p1}, Lcom/baidu/bulletin/entity/ChannelItem;->isSame(Lcom/baidu/bulletin/entity/ChannelItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    const/4 v1, 0x1

    .line 126
    :goto_1
    return v1

    .line 121
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private notifyObserverIfIdel()V
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/baidu/bulletin/network/logic/SerialDownloadTaskManager;->isIdel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/baidu/bulletin/network/logic/SerialDownloadTaskManager;->mObserver:Lcom/baidu/bulletin/network/logic/DownloadObserver;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/baidu/bulletin/network/logic/SerialDownloadTaskManager;->mObserver:Lcom/baidu/bulletin/network/logic/DownloadObserver;

    invoke-interface {v0}, Lcom/baidu/bulletin/network/logic/DownloadObserver;->onFinished()V

    .line 143
    :cond_0
    return-void
.end method

.method private shouldDownloadFollowEnviromentAndConfiguration()Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/baidu/bulletin/network/logic/SerialDownloadTaskManager;->mBackground:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/baidu/bulletin/SyncScheduler;->shouldAutoSync()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/baidu/bulletin/network/logic/SerialDownloadTaskManager;->isIdel()Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/baidu/bulletin/network/logic/SerialDownloadTaskManager;->onCancel()V

    .line 76
    iget-object v0, p0, Lcom/baidu/bulletin/network/logic/SerialDownloadTaskManager;->mDownloadList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 77
    invoke-direct {p0}, Lcom/baidu/bulletin/network/logic/SerialDownloadTaskManager;->notifyObserverIfIdel()V

    .line 79
    :cond_0
    return-void
.end method

.method public final download([Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V
    .locals 6
    .parameter "downloadList"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/baidu/bulletin/network/logic/SerialDownloadTaskManager;->shouldDownloadFollowEnviromentAndConfiguration()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 55
    invoke-virtual {p0}, Lcom/baidu/bulletin/network/logic/SerialDownloadTaskManager;->isIdel()Z

    move-result v3

    .line 57
    .local v3, idelJustNow:Z
    if-eqz p1, :cond_1

    .line 58
    move-object v0, p1

    .local v0, arr$:[Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v1, v0, v2

    .line 59
    .local v1, download:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    invoke-direct {p0, v1}, Lcom/baidu/bulletin/network/logic/SerialDownloadTaskManager;->downloadExist(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0, v1}, Lcom/baidu/bulletin/network/logic/SerialDownloadTaskManager;->sholdDownload(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 60
    iget-object v5, p0, Lcom/baidu/bulletin/network/logic/SerialDownloadTaskManager;->mDownloadListInfo:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 65
    .end local v0           #arr$:[Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    .end local v1           #download:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    .end local v2           #i$:I
    .end local v4           #len$:I
    :cond_1
    invoke-virtual {p0}, Lcom/baidu/bulletin/network/logic/SerialDownloadTaskManager;->isIdel()Z

    move-result v5

    if-eq v5, v3, :cond_3

    .line 66
    invoke-direct {p0}, Lcom/baidu/bulletin/network/logic/SerialDownloadTaskManager;->download()V

    .line 71
    .end local v3           #idelJustNow:Z
    :cond_2
    :goto_1
    return-void

    .line 68
    .restart local v3       #idelJustNow:Z
    :cond_3
    invoke-direct {p0}, Lcom/baidu/bulletin/network/logic/SerialDownloadTaskManager;->notifyObserverIfIdel()V

    goto :goto_1
.end method

.method public final download([Lcom/baidu/bulletin/entity/ChannelItem;)V
    .locals 6
    .parameter "downloadList"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/baidu/bulletin/network/logic/SerialDownloadTaskManager;->shouldDownloadFollowEnviromentAndConfiguration()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 36
    invoke-virtual {p0}, Lcom/baidu/bulletin/network/logic/SerialDownloadTaskManager;->isIdel()Z

    move-result v3

    .line 38
    .local v3, idelJustNow:Z
    if-eqz p1, :cond_1

    .line 39
    move-object v0, p1

    .local v0, arr$:[Lcom/baidu/bulletin/entity/ChannelItem;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v1, v0, v2

    .line 40
    .local v1, download:Lcom/baidu/bulletin/entity/ChannelItem;
    invoke-direct {p0, v1}, Lcom/baidu/bulletin/network/logic/SerialDownloadTaskManager;->downloadExist(Lcom/baidu/bulletin/entity/ChannelItem;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0, v1}, Lcom/baidu/bulletin/network/logic/SerialDownloadTaskManager;->sholdDownload(Lcom/baidu/bulletin/entity/ChannelItem;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 41
    iget-object v5, p0, Lcom/baidu/bulletin/network/logic/SerialDownloadTaskManager;->mDownloadList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 46
    .end local v0           #arr$:[Lcom/baidu/bulletin/entity/ChannelItem;
    .end local v1           #download:Lcom/baidu/bulletin/entity/ChannelItem;
    .end local v2           #i$:I
    .end local v4           #len$:I
    :cond_1
    invoke-virtual {p0}, Lcom/baidu/bulletin/network/logic/SerialDownloadTaskManager;->isIdel()Z

    move-result v5

    if-eq v5, v3, :cond_3

    .line 47
    invoke-direct {p0}, Lcom/baidu/bulletin/network/logic/SerialDownloadTaskManager;->download()V

    .line 52
    .end local v3           #idelJustNow:Z
    :cond_2
    :goto_1
    return-void

    .line 49
    .restart local v3       #idelJustNow:Z
    :cond_3
    invoke-direct {p0}, Lcom/baidu/bulletin/network/logic/SerialDownloadTaskManager;->notifyObserverIfIdel()V

    goto :goto_1
.end method

.method protected final downloadNext()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/baidu/bulletin/network/logic/SerialDownloadTaskManager;->mDownloadListInfo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/baidu/bulletin/network/logic/SerialDownloadTaskManager;->mDownloadListInfo:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 95
    :cond_0
    invoke-direct {p0}, Lcom/baidu/bulletin/network/logic/SerialDownloadTaskManager;->download()V

    .line 96
    invoke-direct {p0}, Lcom/baidu/bulletin/network/logic/SerialDownloadTaskManager;->notifyObserverIfIdel()V

    .line 97
    return-void
.end method

.method public final isIdel()Z
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/baidu/bulletin/network/logic/SerialDownloadTaskManager;->mDownloadList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract onCancel()V
.end method

.method protected abstract onDownload(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V
.end method

.method protected abstract onDownload(Lcom/baidu/bulletin/entity/ChannelItem;)V
.end method

.method protected abstract sholdDownload(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)Z
.end method

.method protected abstract sholdDownload(Lcom/baidu/bulletin/entity/ChannelItem;)Z
.end method
