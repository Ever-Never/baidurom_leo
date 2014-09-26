.class public Lcom/baidu/bulletin/utils/imageloader/NetWorkImageLoader;
.super Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader;
.source "NetWorkImageLoader.java"


# static fields
.field private static final MAX_TASK_COUNT:I = 0x8


# instance fields
.field private mDatabaseManager:Lcom/baidu/bulletin/db/manager/DatabaseManager;

.field private mFileDownloader:Lcom/baidu/bulletin/network/FileDownloader;

.field private mFileDownloaderObserver:Lcom/baidu/bulletin/network/FileDownloader$Observer;

.field private mTaskCancelled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader;-><init>()V

    .line 49
    new-instance v0, Lcom/baidu/bulletin/utils/imageloader/NetWorkImageLoader$1;

    invoke-direct {v0, p0}, Lcom/baidu/bulletin/utils/imageloader/NetWorkImageLoader$1;-><init>(Lcom/baidu/bulletin/utils/imageloader/NetWorkImageLoader;)V

    iput-object v0, p0, Lcom/baidu/bulletin/utils/imageloader/NetWorkImageLoader;->mFileDownloaderObserver:Lcom/baidu/bulletin/network/FileDownloader$Observer;

    .line 20
    invoke-static {}, Lcom/baidu/bulletin/db/manager/DatabaseManager;->getInstance()Lcom/baidu/bulletin/db/manager/DatabaseManager;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bulletin/utils/imageloader/NetWorkImageLoader;->mDatabaseManager:Lcom/baidu/bulletin/db/manager/DatabaseManager;

    .line 21
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/bulletin/utils/imageloader/NetWorkImageLoader;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/baidu/bulletin/utils/imageloader/NetWorkImageLoader;->mTaskCancelled:Z

    return v0
.end method

.method static synthetic access$100(Lcom/baidu/bulletin/utils/imageloader/NetWorkImageLoader;)Lcom/baidu/bulletin/db/manager/DatabaseManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/baidu/bulletin/utils/imageloader/NetWorkImageLoader;->mDatabaseManager:Lcom/baidu/bulletin/db/manager/DatabaseManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/baidu/bulletin/utils/imageloader/NetWorkImageLoader;Ljava/lang/String;)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/utils/imageloader/NetWorkImageLoader;->getImageSize(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private getImageSize(Ljava/lang/String;)J
    .locals 3
    .parameter "path"

    .prologue
    .line 41
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 42
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 45
    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cancelAll()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/bulletin/utils/imageloader/NetWorkImageLoader;->mTaskCancelled:Z

    .line 91
    iget-object v0, p0, Lcom/baidu/bulletin/utils/imageloader/NetWorkImageLoader;->mFileDownloader:Lcom/baidu/bulletin/network/FileDownloader;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/baidu/bulletin/utils/imageloader/NetWorkImageLoader;->mFileDownloader:Lcom/baidu/bulletin/network/FileDownloader;

    invoke-virtual {v0}, Lcom/baidu/bulletin/network/FileDownloader;->cancelAllTask()V

    .line 94
    :cond_0
    return-void
.end method

.method public loadImage(Lcom/baidu/bulletin/db/entity/ImageInfo;Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;)V
    .locals 4
    .parameter "imageInfo"
    .parameter "callback"

    .prologue
    .line 25
    const-string v1, "AsyncImageLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load from NETWORK: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    iget-object v1, p0, Lcom/baidu/bulletin/utils/imageloader/NetWorkImageLoader;->mFileDownloader:Lcom/baidu/bulletin/network/FileDownloader;

    if-nez v1, :cond_0

    .line 28
    new-instance v1, Lcom/baidu/bulletin/network/FileDownloader;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lcom/baidu/bulletin/network/FileDownloader;-><init>(I)V

    iput-object v1, p0, Lcom/baidu/bulletin/utils/imageloader/NetWorkImageLoader;->mFileDownloader:Lcom/baidu/bulletin/network/FileDownloader;

    .line 30
    :cond_0
    new-instance v0, Lcom/baidu/bulletin/network/FileDownloader$Request;

    invoke-direct {v0}, Lcom/baidu/bulletin/network/FileDownloader$Request;-><init>()V

    .line 31
    .local v0, request:Lcom/baidu/bulletin/network/FileDownloader$Request;
    if-eqz p1, :cond_1

    .line 32
    iput-object p1, v0, Lcom/baidu/bulletin/network/FileDownloader$Request;->obj:Ljava/lang/Object;

    .line 33
    iget-object v1, p1, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/bulletin/network/FileDownloader$Request;->downloadUrl:Ljava/lang/String;

    .line 34
    iput-object p2, v0, Lcom/baidu/bulletin/network/FileDownloader$Request;->imageInfoCallback:Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;

    .line 36
    :cond_1
    iget-object v1, p0, Lcom/baidu/bulletin/utils/imageloader/NetWorkImageLoader;->mFileDownloader:Lcom/baidu/bulletin/network/FileDownloader;

    iget-object v2, p0, Lcom/baidu/bulletin/utils/imageloader/NetWorkImageLoader;->mFileDownloaderObserver:Lcom/baidu/bulletin/network/FileDownloader$Observer;

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bulletin/network/FileDownloader;->downloadFile(Lcom/baidu/bulletin/network/FileDownloader$Request;Lcom/baidu/bulletin/network/FileDownloader$Observer;)V

    .line 38
    return-void
.end method
