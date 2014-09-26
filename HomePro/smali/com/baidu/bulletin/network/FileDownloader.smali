.class public Lcom/baidu/bulletin/network/FileDownloader;
.super Ljava/lang/Object;
.source "FileDownloader.java"

# interfaces
.implements Lcom/baidu/bulletin/utils/ChangeNotifyManager$Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bulletin/network/FileDownloader$FileItem;,
        Lcom/baidu/bulletin/network/FileDownloader$Response;,
        Lcom/baidu/bulletin/network/FileDownloader$Request;,
        Lcom/baidu/bulletin/network/FileDownloader$Observer;
    }
.end annotation


# static fields
.field private static final BAIDU_STYLE_LAUNCHER2_DIRECTORY_NAME:Ljava/lang/String; = "baidu/bulletin"

.field private static final BAIDU_STYLE_LAUNCHER2_IMAGE_DIRECTORY_NAME:Ljava/lang/String; = "image"

.field private static final BAIDU_STYLE_LAUNCHER2_MUSIC_DIRECTORY_NAME:Ljava/lang/String; = "music"

.field private static final BAIDU_STYLE_LAUNCHER2_NO_MEDIA:Ljava/lang/String; = ".nomedia"

.field private static final BAIDU_STYLE_LAUNCHER2_TMP_DIRECTORY_NAME:Ljava/lang/String; = "tmp"

.field private static final SIZE_PER_REQUEST:I = 0xc800

.field private static final TAG:Ljava/lang/String; = null

.field private static final TMP_DIRECTORY_MAX_SIZE:J = 0x1400000L

.field private static mDownloadingTaskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bulletin/network/FileDownloader$FileItem;",
            ">;"
        }
    .end annotation
.end field

.field private static mDuplicatedTaskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bulletin/network/FileDownloader$FileItem;",
            ">;"
        }
    .end annotation
.end field

.field private static mNotEnoughFreeStorgeSpaceFlag:Z


# instance fields
.field private mConnection:Lcom/baidu/bulletin/http/HttpConnection;

.field private mImageDirectory:Ljava/io/File;

.field private mMaxTaskCount:I

.field private mMusicDirectory:Ljava/io/File;

.field private mRepository:Ljava/io/File;

.field private mTaskCancelledFlag:Z

.field private mTmpDirectory:Ljava/io/File;

.field private mWaitingTaskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bulletin/network/FileDownloader$FileItem;",
            ">;"
        }
    .end annotation
.end field

.field private workingTaskCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/baidu/bulletin/network/FileDownloader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/bulletin/network/FileDownloader;->TAG:Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/baidu/bulletin/network/FileDownloader;->mDownloadingTaskList:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/baidu/bulletin/network/FileDownloader;->mDuplicatedTaskList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "maxTaskCount"

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bulletin/network/FileDownloader;->mWaitingTaskList:Ljava/util/List;

    .line 82
    iput p1, p0, Lcom/baidu/bulletin/network/FileDownloader;->mMaxTaskCount:I

    .line 83
    new-instance v0, Lcom/baidu/bulletin/http/HttpConnection;

    invoke-direct {v0}, Lcom/baidu/bulletin/http/HttpConnection;-><init>()V

    iput-object v0, p0, Lcom/baidu/bulletin/network/FileDownloader;->mConnection:Lcom/baidu/bulletin/http/HttpConnection;

    .line 84
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/baidu/bulletin/network/FileDownloader;->setNotEnoughFreeStorgeSpaceFlag(Z)V

    .line 85
    sget-object v0, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;->MediaMountChange:Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;

    invoke-static {v0, p0}, Lcom/baidu/bulletin/utils/ChangeNotifyManager;->register(Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;Lcom/baidu/bulletin/utils/ChangeNotifyManager$Observer;)V

    .line 86
    invoke-static {}, Lcom/baidu/bulletin/utils/MediaMonitor;->isStorageAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-direct {p0}, Lcom/baidu/bulletin/network/FileDownloader;->CreatDownloadFiles()V

    .line 89
    :cond_0
    return-void
.end method

.method private CreatDownloadFiles()V
    .locals 5

    .prologue
    .line 92
    iget-object v2, p0, Lcom/baidu/bulletin/network/FileDownloader;->mRepository:Ljava/io/File;

    if-nez v2, :cond_2

    .line 93
    new-instance v2, Ljava/io/File;

    const-string v3, "baidu/bulletin"

    invoke-static {}, Lcom/baidu/bulletin/utils/DeviceEnv$Storage;->getDirectory()Ljava/io/File;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/baidu/bulletin/network/FileDownloader;->getSubdirectoryPath(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/baidu/bulletin/network/FileDownloader;->mRepository:Ljava/io/File;

    .line 96
    iget-object v2, p0, Lcom/baidu/bulletin/network/FileDownloader;->mRepository:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 97
    iget-object v2, p0, Lcom/baidu/bulletin/network/FileDownloader;->mRepository:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 101
    :cond_0
    :try_start_0
    const-string v2, ".nomedia"

    iget-object v3, p0, Lcom/baidu/bulletin/network/FileDownloader;->mRepository:Ljava/io/File;

    invoke-direct {p0, v2, v3}, Lcom/baidu/bulletin/network/FileDownloader;->getSubdirectoryPath(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, nomediafile:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/baidu/bulletin/network/FileDownloader;->createFile(Ljava/lang/String;)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .end local v1           #nomediafile:Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/io/File;

    const-string v3, "tmp"

    iget-object v4, p0, Lcom/baidu/bulletin/network/FileDownloader;->mRepository:Ljava/io/File;

    invoke-direct {p0, v3, v4}, Lcom/baidu/bulletin/network/FileDownloader;->getSubdirectoryPath(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/baidu/bulletin/network/FileDownloader;->mTmpDirectory:Ljava/io/File;

    .line 111
    iget-object v2, p0, Lcom/baidu/bulletin/network/FileDownloader;->mTmpDirectory:Ljava/io/File;

    invoke-direct {p0, v2}, Lcom/baidu/bulletin/network/FileDownloader;->creatTmpDirectory(Ljava/io/File;)V

    .line 113
    new-instance v2, Ljava/io/File;

    const-string v3, "image"

    iget-object v4, p0, Lcom/baidu/bulletin/network/FileDownloader;->mRepository:Ljava/io/File;

    invoke-direct {p0, v3, v4}, Lcom/baidu/bulletin/network/FileDownloader;->getSubdirectoryPath(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/baidu/bulletin/network/FileDownloader;->mImageDirectory:Ljava/io/File;

    .line 115
    iget-object v2, p0, Lcom/baidu/bulletin/network/FileDownloader;->mImageDirectory:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 116
    iget-object v2, p0, Lcom/baidu/bulletin/network/FileDownloader;->mImageDirectory:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 119
    :cond_1
    new-instance v2, Ljava/io/File;

    const-string v3, "music"

    iget-object v4, p0, Lcom/baidu/bulletin/network/FileDownloader;->mRepository:Ljava/io/File;

    invoke-direct {p0, v3, v4}, Lcom/baidu/bulletin/network/FileDownloader;->getSubdirectoryPath(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/baidu/bulletin/network/FileDownloader;->mMusicDirectory:Ljava/io/File;

    .line 121
    iget-object v2, p0, Lcom/baidu/bulletin/network/FileDownloader;->mMusicDirectory:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 122
    iget-object v2, p0, Lcom/baidu/bulletin/network/FileDownloader;->mMusicDirectory:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 126
    :cond_2
    return-void

    .line 104
    :catch_0
    move-exception v0

    .line 106
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private IsRequestFileExistInRepo(Lcom/baidu/bulletin/network/FileDownloader$Request;Lcom/baidu/bulletin/network/FileDownloader$Observer;)Z
    .locals 4
    .parameter "request"
    .parameter "observer"

    .prologue
    .line 698
    iget-boolean v2, p1, Lcom/baidu/bulletin/network/FileDownloader$Request;->MusciFileFlag:Z

    if-nez v2, :cond_0

    .line 699
    iget-object v2, p0, Lcom/baidu/bulletin/network/FileDownloader;->mImageDirectory:Ljava/io/File;

    invoke-direct {p0, p1, v2}, Lcom/baidu/bulletin/network/FileDownloader;->getFilePathfromRequest(Lcom/baidu/bulletin/network/FileDownloader$Request;Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 704
    .local v1, savedFilePath:Ljava/lang/String;
    :goto_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 705
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 706
    sget-object v2, Lcom/baidu/bulletin/network/FileDownloader;->TAG:Ljava/lang/String;

    const-string v3, "Request file already exist, createExistResponse..."

    invoke-static {v2, v3}, Lcom/baidu/bulletin/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    invoke-direct {p0, p1, v1}, Lcom/baidu/bulletin/network/FileDownloader;->createExistResponse(Lcom/baidu/bulletin/network/FileDownloader$Request;Ljava/lang/String;)Lcom/baidu/bulletin/network/FileDownloader$Response;

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/baidu/bulletin/network/FileDownloader$Observer;->onDownloadFileProgressed(Lcom/baidu/bulletin/network/FileDownloader$Response;)V

    .line 709
    const/4 v2, 0x1

    .line 711
    :goto_1
    return v2

    .line 701
    .end local v0           #file:Ljava/io/File;
    .end local v1           #savedFilePath:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/baidu/bulletin/network/FileDownloader;->mMusicDirectory:Ljava/io/File;

    invoke-direct {p0, p1, v2}, Lcom/baidu/bulletin/network/FileDownloader;->getFilePathfromRequest(Lcom/baidu/bulletin/network/FileDownloader$Request;Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #savedFilePath:Ljava/lang/String;
    goto :goto_0

    .line 711
    .restart local v0       #file:Ljava/io/File;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method static synthetic access$1000(Lcom/baidu/bulletin/network/FileDownloader;)Lcom/baidu/bulletin/http/HttpConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/baidu/bulletin/network/FileDownloader;->mConnection:Lcom/baidu/bulletin/http/HttpConnection;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/baidu/bulletin/network/FileDownloader;Lcom/baidu/bulletin/network/FileDownloader$FileItem;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/network/FileDownloader;->handledTaskFinshed(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/baidu/bulletin/network/FileDownloader;)Ljava/io/File;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/baidu/bulletin/network/FileDownloader;->mTmpDirectory:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/baidu/bulletin/network/FileDownloader;Lcom/baidu/bulletin/network/FileDownloader$Request;Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/baidu/bulletin/network/FileDownloader;->getFilePathfromRequest(Lcom/baidu/bulletin/network/FileDownloader$Request;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/baidu/bulletin/network/FileDownloader;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/network/FileDownloader;->createFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/baidu/bulletin/network/FileDownloader;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/baidu/bulletin/network/FileDownloader;->hasFreeStorageSpace()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/baidu/bulletin/network/FileDownloader;[BJLcom/baidu/bulletin/network/FileDownloader$FileItem;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/baidu/bulletin/network/FileDownloader;->handleRequestFinished([BJLcom/baidu/bulletin/network/FileDownloader$FileItem;)V

    return-void
.end method

.method static synthetic access$600(Lcom/baidu/bulletin/network/FileDownloader;Lcom/baidu/bulletin/network/FileDownloader$FileItem;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/network/FileDownloader;->handledTaskFailed(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)V

    return-void
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/baidu/bulletin/network/FileDownloader;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/baidu/bulletin/network/FileDownloader;Lcom/baidu/bulletin/network/FileDownloader$FileItem;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/network/FileDownloader;->handleDownloadProgressing(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)V

    return-void
.end method

.method private declared-synchronized checkIsDownloading(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)Z
    .locals 5
    .parameter "fileitem"

    .prologue
    const/4 v2, 0x1

    .line 746
    monitor-enter p0

    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    sget-object v3, Lcom/baidu/bulletin/network/FileDownloader;->mDownloadingTaskList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 747
    sget-object v3, Lcom/baidu/bulletin/network/FileDownloader;->mDownloadingTaskList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/network/FileDownloader$FileItem;

    .line 748
    .local v0, fm:Lcom/baidu/bulletin/network/FileDownloader$FileItem;
    #getter for: Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mRequest:Lcom/baidu/bulletin/network/FileDownloader$Request;
    invoke-static {p1}, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->access$800(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)Lcom/baidu/bulletin/network/FileDownloader$Request;

    move-result-object v3

    iget-boolean v3, v3, Lcom/baidu/bulletin/network/FileDownloader$Request;->MusciFileFlag:Z

    if-nez v3, :cond_0

    .line 749
    #getter for: Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mDownloadUrl:Ljava/lang/String;
    invoke-static {p1}, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->access$1200(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)Ljava/lang/String;

    move-result-object v3

    #getter for: Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mDownloadUrl:Ljava/lang/String;
    invoke-static {v0}, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->access$1200(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 750
    sget-object v3, Lcom/baidu/bulletin/network/FileDownloader;->mDuplicatedTaskList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 764
    .end local v0           #fm:Lcom/baidu/bulletin/network/FileDownloader$FileItem;
    :goto_1
    monitor-exit p0

    return v2

    .line 754
    .restart local v0       #fm:Lcom/baidu/bulletin/network/FileDownloader$FileItem;
    :cond_0
    :try_start_1
    #getter for: Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mRequest:Lcom/baidu/bulletin/network/FileDownloader$Request;
    invoke-static {p1}, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->access$800(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)Lcom/baidu/bulletin/network/FileDownloader$Request;

    move-result-object v3

    iget-object v3, v3, Lcom/baidu/bulletin/network/FileDownloader$Request;->songid:Ljava/lang/String;

    #getter for: Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mRequest:Lcom/baidu/bulletin/network/FileDownloader$Request;
    invoke-static {v0}, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->access$800(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)Lcom/baidu/bulletin/network/FileDownloader$Request;

    move-result-object v4

    iget-object v4, v4, Lcom/baidu/bulletin/network/FileDownloader$Request;->songid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 755
    #getter for: Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mDownloadUrl:Ljava/lang/String;
    invoke-static {v0}, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->access$1200(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mDownloadUrl:Ljava/lang/String;
    invoke-static {p1, v3}, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->access$1202(Lcom/baidu/bulletin/network/FileDownloader$FileItem;Ljava/lang/String;)Ljava/lang/String;

    .line 756
    #getter for: Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mRequest:Lcom/baidu/bulletin/network/FileDownloader$Request;
    invoke-static {p1}, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->access$800(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)Lcom/baidu/bulletin/network/FileDownloader$Request;

    move-result-object v3

    iget-boolean v3, v3, Lcom/baidu/bulletin/network/FileDownloader$Request;->StreamingFileFlag:Z

    if-eqz v3, :cond_1

    .line 757
    #getter for: Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mRequest:Lcom/baidu/bulletin/network/FileDownloader$Request;
    invoke-static {v0}, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->access$800(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)Lcom/baidu/bulletin/network/FileDownloader$Request;

    move-result-object v3

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/baidu/bulletin/network/FileDownloader$Request;->StreamingFileFlag:Z

    .line 759
    :cond_1
    sget-object v3, Lcom/baidu/bulletin/network/FileDownloader;->mDuplicatedTaskList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 746
    .end local v0           #fm:Lcom/baidu/bulletin/network/FileDownloader$FileItem;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .restart local v0       #fm:Lcom/baidu/bulletin/network/FileDownloader$FileItem;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 764
    .end local v0           #fm:Lcom/baidu/bulletin/network/FileDownloader$FileItem;
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private creatTmpDirectory(Ljava/io/File;)V
    .locals 4
    .parameter "file"

    .prologue
    .line 136
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/network/FileDownloader;->getDirectorySize(Ljava/io/File;)J

    move-result-wide v0

    const-wide/32 v2, 0x1400000

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 138
    sget-object v0, Lcom/baidu/bulletin/network/FileDownloader;->TAG:Ljava/lang/String;

    const-string v1, "delete tmp file"

    invoke-static {v0, v1}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/network/FileDownloader;->deleteFile(Ljava/io/File;)V

    .line 140
    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    goto :goto_0
.end method

.method private createErrorResponse(Lcom/baidu/bulletin/network/FileDownloader$Request;)Lcom/baidu/bulletin/network/FileDownloader$Response;
    .locals 2
    .parameter "request"

    .prologue
    .line 537
    new-instance v0, Lcom/baidu/bulletin/network/FileDownloader$Response;

    invoke-direct {v0}, Lcom/baidu/bulletin/network/FileDownloader$Response;-><init>()V

    .line 538
    .local v0, respone:Lcom/baidu/bulletin/network/FileDownloader$Response;
    iget-object v1, p1, Lcom/baidu/bulletin/network/FileDownloader$Request;->obj:Ljava/lang/Object;

    iput-object v1, v0, Lcom/baidu/bulletin/network/FileDownloader$Response;->obj:Ljava/lang/Object;

    .line 539
    iget-object v1, p1, Lcom/baidu/bulletin/network/FileDownloader$Request;->imageInfoCallback:Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;

    iput-object v1, v0, Lcom/baidu/bulletin/network/FileDownloader$Response;->imageInfoCallback:Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;

    .line 540
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/baidu/bulletin/network/FileDownloader$Response;->downloadPath:Ljava/lang/String;

    .line 541
    return-object v0
.end method

.method private createExistResponse(Lcom/baidu/bulletin/network/FileDownloader$Request;Ljava/lang/String;)Lcom/baidu/bulletin/network/FileDownloader$Response;
    .locals 2
    .parameter "request"
    .parameter "filepath"

    .prologue
    .line 529
    new-instance v0, Lcom/baidu/bulletin/network/FileDownloader$Response;

    invoke-direct {v0}, Lcom/baidu/bulletin/network/FileDownloader$Response;-><init>()V

    .line 530
    .local v0, respone:Lcom/baidu/bulletin/network/FileDownloader$Response;
    iget-object v1, p1, Lcom/baidu/bulletin/network/FileDownloader$Request;->obj:Ljava/lang/Object;

    iput-object v1, v0, Lcom/baidu/bulletin/network/FileDownloader$Response;->obj:Ljava/lang/Object;

    .line 531
    iget-object v1, p1, Lcom/baidu/bulletin/network/FileDownloader$Request;->imageInfoCallback:Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;

    iput-object v1, v0, Lcom/baidu/bulletin/network/FileDownloader$Response;->imageInfoCallback:Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;

    .line 532
    iput-object p2, v0, Lcom/baidu/bulletin/network/FileDownloader$Response;->downloadPath:Ljava/lang/String;

    .line 533
    return-object v0
.end method

.method private createFile(Ljava/lang/String;)Ljava/io/File;
    .locals 5
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 613
    const/4 v3, 0x0

    const-string v4, "/"

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 614
    .local v1, dirName:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 615
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 616
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 618
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 619
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 620
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 622
    :cond_1
    return-object v2
.end method

.method private createResponse(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)Lcom/baidu/bulletin/network/FileDownloader$Response;
    .locals 7
    .parameter "fileitem"

    .prologue
    const-wide/16 v5, 0x0

    .line 515
    new-instance v0, Lcom/baidu/bulletin/network/FileDownloader$Response;

    invoke-direct {v0}, Lcom/baidu/bulletin/network/FileDownloader$Response;-><init>()V

    .line 516
    .local v0, respone:Lcom/baidu/bulletin/network/FileDownloader$Response;
    #getter for: Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mRequest:Lcom/baidu/bulletin/network/FileDownloader$Request;
    invoke-static {p1}, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->access$800(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)Lcom/baidu/bulletin/network/FileDownloader$Request;

    move-result-object v1

    iget-object v1, v1, Lcom/baidu/bulletin/network/FileDownloader$Request;->obj:Ljava/lang/Object;

    iput-object v1, v0, Lcom/baidu/bulletin/network/FileDownloader$Response;->obj:Ljava/lang/Object;

    .line 517
    #getter for: Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mRequest:Lcom/baidu/bulletin/network/FileDownloader$Request;
    invoke-static {p1}, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->access$800(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)Lcom/baidu/bulletin/network/FileDownloader$Request;

    move-result-object v1

    iget-object v1, v1, Lcom/baidu/bulletin/network/FileDownloader$Request;->imageInfoCallback:Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;

    iput-object v1, v0, Lcom/baidu/bulletin/network/FileDownloader$Response;->imageInfoCallback:Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;

    .line 518
    iget-wide v1, p1, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mFinished:J

    iget-wide v3, p1, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mFileSize:J

    sub-long/2addr v1, v3

    cmp-long v1, v1, v5

    if-ltz v1, :cond_0

    iget-wide v1, p1, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mFinished:J

    cmp-long v1, v5, v1

    if-nez v1, :cond_1

    iget-wide v1, p1, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mFileSize:J

    cmp-long v1, v5, v1

    if-nez v1, :cond_1

    .line 520
    :cond_0
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/baidu/bulletin/network/FileDownloader$Response;->downloadPath:Ljava/lang/String;

    .line 524
    :goto_0
    sget-object v1, Lcom/baidu/bulletin/network/FileDownloader;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createResponse, file path:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/baidu/bulletin/network/FileDownloader$Response;->downloadPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    return-object v0

    .line 522
    :cond_1
    #getter for: Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mDownloadFilePath:Ljava/lang/String;
    invoke-static {p1}, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->access$300(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/bulletin/network/FileDownloader$Response;->downloadPath:Ljava/lang/String;

    goto :goto_0
.end method

.method private deleteFile(Ljava/io/File;)V
    .locals 3
    .parameter "file"

    .prologue
    .line 662
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 663
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 679
    :cond_0
    :goto_0
    return-void

    .line 667
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 668
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 669
    .local v0, childFiles:[Ljava/io/File;
    if-eqz v0, :cond_2

    array-length v2, v0

    if-nez v2, :cond_3

    .line 670
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 674
    :cond_3
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_4

    .line 675
    aget-object v2, v0, v1

    invoke-direct {p0, v2}, Lcom/baidu/bulletin/network/FileDownloader;->deleteFile(Ljava/io/File;)V

    .line 674
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 677
    :cond_4
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method private getDirectorySize(Ljava/io/File;)J
    .locals 6
    .parameter "file"

    .prologue
    .line 682
    const-wide/16 v2, 0x0

    .line 683
    .local v2, size:J
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 684
    .local v0, flist:[Ljava/io/File;
    if-nez v0, :cond_0

    .line 685
    const-wide/16 v4, 0x0

    .line 693
    :goto_0
    return-wide v4

    .line 686
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v4, v0

    if-ge v1, v4, :cond_2

    .line 687
    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 688
    aget-object v4, v0, v1

    invoke-direct {p0, v4}, Lcom/baidu/bulletin/network/FileDownloader;->getDirectorySize(Ljava/io/File;)J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 686
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 690
    :cond_1
    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    add-long/2addr v2, v4

    goto :goto_2

    :cond_2
    move-wide v4, v2

    .line 693
    goto :goto_0
.end method

.method private getFileExistInTmpSize(Lcom/baidu/bulletin/network/FileDownloader$Request;)J
    .locals 4
    .parameter "request"

    .prologue
    .line 716
    iget-object v2, p0, Lcom/baidu/bulletin/network/FileDownloader;->mTmpDirectory:Ljava/io/File;

    invoke-direct {p0, p1, v2}, Lcom/baidu/bulletin/network/FileDownloader;->getFilePathfromRequest(Lcom/baidu/bulletin/network/FileDownloader$Request;Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 717
    .local v1, tmpFilePath:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 718
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 719
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 721
    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method private getFilePathfromRequest(Lcom/baidu/bulletin/network/FileDownloader$Request;Ljava/io/File;)Ljava/lang/String;
    .locals 3
    .parameter "request"
    .parameter "folder"

    .prologue
    .line 582
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 583
    :cond_0
    const/4 v1, 0x0

    .line 602
    :goto_0
    return-object v1

    .line 586
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 587
    .local v0, filename:Ljava/lang/StringBuilder;
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    iget-boolean v1, p1, Lcom/baidu/bulletin/network/FileDownloader$Request;->MusciFileFlag:Z

    if-nez v1, :cond_5

    .line 589
    iget-object v1, p1, Lcom/baidu/bulletin/network/FileDownloader$Request;->downloadUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/baidu/bulletin/network/FileDownloader;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    iget-object v1, p1, Lcom/baidu/bulletin/network/FileDownloader$Request;->downloadUrl:Ljava/lang/String;

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 591
    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 592
    :cond_2
    iget-object v1, p1, Lcom/baidu/bulletin/network/FileDownloader$Request;->downloadUrl:Ljava/lang/String;

    const-string v2, ".jpeg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 593
    const-string v1, ".jpeg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 594
    :cond_3
    iget-object v1, p1, Lcom/baidu/bulletin/network/FileDownloader$Request;->downloadUrl:Ljava/lang/String;

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 595
    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 597
    :cond_4
    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 600
    :cond_5
    iget-object v1, p1, Lcom/baidu/bulletin/network/FileDownloader$Request;->songid:Ljava/lang/String;

    invoke-static {v1}, Lcom/baidu/bulletin/network/FileDownloader;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private static getHashString(Ljava/security/MessageDigest;)Ljava/lang/String;
    .locals 6
    .parameter "digest"

    .prologue
    .line 737
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 738
    .local v2, builder:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .local v0, arr$:[B
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-byte v1, v0, v3

    .line 739
    .local v1, b:B
    shr-int/lit8 v5, v1, 0x4

    and-int/lit8 v5, v5, 0xf

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 740
    and-int/lit8 v5, v1, 0xf

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 742
    .end local v1           #b:B
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private static getMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "content"

    .prologue
    .line 727
    :try_start_0
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 728
    .local v0, digest:Ljava/security/MessageDigest;
    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 729
    invoke-static {v0}, Lcom/baidu/bulletin/network/FileDownloader;->getHashString(Ljava/security/MessageDigest;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 733
    .end local v0           #digest:Ljava/security/MessageDigest;
    :goto_0
    return-object v2

    .line 730
    :catch_0
    move-exception v1

    .line 731
    .local v1, e:Ljava/lang/Exception;
    sget-object v2, Lcom/baidu/bulletin/network/FileDownloader;->TAG:Ljava/lang/String;

    const-string v3, "url to MD5 error"

    invoke-static {v2, v3, v1}, Lcom/baidu/bulletin/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 733
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getSubdirectoryPath(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;
    .locals 3
    .parameter "name"
    .parameter "parentdirectory"

    .prologue
    .line 606
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 609
    .local v0, FilePath:Ljava/lang/String;
    return-object v0
.end method

.method private handleDownloadProgressing(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)V
    .locals 4
    .parameter "fileitem"

    .prologue
    .line 337
    #getter for: Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mObserver:Lcom/baidu/bulletin/network/FileDownloader$Observer;
    invoke-static {p1}, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->access$100(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)Lcom/baidu/bulletin/network/FileDownloader$Observer;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/baidu/bulletin/network/FileDownloader$Observer;->onDownloadFileProgressing(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)V

    .line 338
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v2, Lcom/baidu/bulletin/network/FileDownloader;->mDuplicatedTaskList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 339
    sget-object v2, Lcom/baidu/bulletin/network/FileDownloader;->mDuplicatedTaskList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/network/FileDownloader$FileItem;

    .line 340
    .local v0, fm:Lcom/baidu/bulletin/network/FileDownloader$FileItem;
    #getter for: Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mDownloadUrl:Ljava/lang/String;
    invoke-static {p1}, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->access$1200(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)Ljava/lang/String;

    move-result-object v2

    #getter for: Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mDownloadUrl:Ljava/lang/String;
    invoke-static {v0}, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->access$1200(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 341
    iget-wide v2, p1, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mFileSize:J

    iput-wide v2, v0, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mFileSize:J

    .line 342
    iget-wide v2, p1, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mFinished:J

    iput-wide v2, v0, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mFinished:J

    .line 343
    iget-object v2, p1, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mTmpFilePath:Ljava/lang/String;

    iput-object v2, v0, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mTmpFilePath:Ljava/lang/String;

    .line 344
    #getter for: Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mObserver:Lcom/baidu/bulletin/network/FileDownloader$Observer;
    invoke-static {v0}, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->access$100(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)Lcom/baidu/bulletin/network/FileDownloader$Observer;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/baidu/bulletin/network/FileDownloader$Observer;->onDownloadFileProgressing(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)V

    .line 338
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 347
    .end local v0           #fm:Lcom/baidu/bulletin/network/FileDownloader$FileItem;
    :cond_1
    return-void
.end method

.method private handleRequestFinished([BJLcom/baidu/bulletin/network/FileDownloader$FileItem;)V
    .locals 4
    .parameter "buffer"
    .parameter "newfinished"
    .parameter "fileitem"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 316
    if-nez p4, :cond_0

    .line 317
    const-string v2, "yangyang"

    const-string v3, "fileitem == null"

    invoke-static {v2, v3}, Lcom/baidu/bulletin/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    :cond_0
    #getter for: Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mTmpFile:Ljava/io/File;
    invoke-static {p4}, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->access$1300(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_1

    .line 319
    const-string v2, "yangyang"

    const-string v3, "fileitem.mTmpFIle == null"

    invoke-static {v2, v3}, Lcom/baidu/bulletin/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    :cond_1
    const/4 v0, 0x0

    .line 322
    .local v0, randomfile:Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    #getter for: Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mTmpFile:Ljava/io/File;
    invoke-static {p4}, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->access$1300(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)Ljava/io/File;

    move-result-object v2

    const-string v3, "rwd"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    .end local v0           #randomfile:Ljava/io/RandomAccessFile;
    .local v1, randomfile:Ljava/io/RandomAccessFile;
    :try_start_1
    iget-wide v2, p4, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mFinished:J

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 325
    const/4 v2, 0x0

    long-to-int v3, p2

    invoke-virtual {v1, p1, v2, v3}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 326
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 331
    if-eqz v1, :cond_2

    .line 332
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    :cond_2
    move-object v0, v1

    .line 334
    .end local v1           #randomfile:Ljava/io/RandomAccessFile;
    .restart local v0       #randomfile:Ljava/io/RandomAccessFile;
    :cond_3
    :goto_0
    return-void

    .line 331
    :catchall_0
    move-exception v2

    :goto_1
    if-eqz v0, :cond_4

    .line 332
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 331
    :cond_4
    throw v2

    .line 328
    :catch_0
    move-exception v2

    .line 331
    :goto_2
    if-eqz v0, :cond_3

    .line 332
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_0

    .line 331
    .end local v0           #randomfile:Ljava/io/RandomAccessFile;
    .restart local v1       #randomfile:Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1           #randomfile:Ljava/io/RandomAccessFile;
    .restart local v0       #randomfile:Ljava/io/RandomAccessFile;
    goto :goto_1

    .line 328
    .end local v0           #randomfile:Ljava/io/RandomAccessFile;
    .restart local v1       #randomfile:Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1           #randomfile:Ljava/io/RandomAccessFile;
    .restart local v0       #randomfile:Ljava/io/RandomAccessFile;
    goto :goto_2
.end method

.method private handledTaskFailed(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)V
    .locals 2
    .parameter "fileitem"

    .prologue
    .line 389
    sget-object v0, Lcom/baidu/bulletin/network/FileDownloader;->TAG:Ljava/lang/String;

    const-string v1, "handledTaskFailed >>> "

    invoke-static {v0, v1}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    iget v0, p0, Lcom/baidu/bulletin/network/FileDownloader;->workingTaskCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/baidu/bulletin/network/FileDownloader;->workingTaskCount:I

    .line 391
    #getter for: Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mObserver:Lcom/baidu/bulletin/network/FileDownloader$Observer;
    invoke-static {p1}, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->access$100(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)Lcom/baidu/bulletin/network/FileDownloader$Observer;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/baidu/bulletin/network/FileDownloader;->createResponse(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)Lcom/baidu/bulletin/network/FileDownloader$Response;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/baidu/bulletin/network/FileDownloader$Observer;->onDownloadFileProgressed(Lcom/baidu/bulletin/network/FileDownloader$Response;)V

    .line 393
    sget-object v0, Lcom/baidu/bulletin/network/FileDownloader;->mDownloadingTaskList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 394
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/network/FileDownloader;->sendWaitingTaskAfterFailed(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)V

    .line 395
    return-void
.end method

.method private handledTaskFinshed(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)V
    .locals 4
    .parameter "fileitem"

    .prologue
    .line 350
    sget-object v1, Lcom/baidu/bulletin/network/FileDownloader;->TAG:Ljava/lang/String;

    const-string v2, "handledTaskFinshed >>> "

    invoke-static {v1, v2}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    :try_start_0
    #getter for: Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mRequest:Lcom/baidu/bulletin/network/FileDownloader$Request;
    invoke-static {p1}, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->access$800(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)Lcom/baidu/bulletin/network/FileDownloader$Request;

    move-result-object v1

    iget-boolean v1, v1, Lcom/baidu/bulletin/network/FileDownloader$Request;->MusciFileFlag:Z

    if-nez v1, :cond_0

    .line 356
    #getter for: Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mRequest:Lcom/baidu/bulletin/network/FileDownloader$Request;
    invoke-static {p1}, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->access$800(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)Lcom/baidu/bulletin/network/FileDownloader$Request;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bulletin/network/FileDownloader;->mImageDirectory:Ljava/io/File;

    invoke-direct {p0, v1, v2}, Lcom/baidu/bulletin/network/FileDownloader;->getFilePathfromRequest(Lcom/baidu/bulletin/network/FileDownloader$Request;Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mDownloadFilePath:Ljava/lang/String;
    invoke-static {p1, v1}, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->access$302(Lcom/baidu/bulletin/network/FileDownloader$FileItem;Ljava/lang/String;)Ljava/lang/String;

    .line 363
    :goto_0
    #getter for: Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mDownloadFilePath:Ljava/lang/String;
    invoke-static {p1}, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->access$300(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/baidu/bulletin/network/FileDownloader;->createFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    #setter for: Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mDownloadFile:Ljava/io/File;
    invoke-static {p1, v1}, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->access$1402(Lcom/baidu/bulletin/network/FileDownloader$FileItem;Ljava/io/File;)Ljava/io/File;

    .line 365
    #getter for: Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mRequest:Lcom/baidu/bulletin/network/FileDownloader$Request;
    invoke-static {p1}, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->access$800(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)Lcom/baidu/bulletin/network/FileDownloader$Request;

    move-result-object v1

    iget-boolean v1, v1, Lcom/baidu/bulletin/network/FileDownloader$Request;->StreamingFileFlag:Z

    if-nez v1, :cond_1

    .line 366
    #getter for: Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mTmpFile:Ljava/io/File;
    invoke-static {p1}, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->access$1300(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)Ljava/io/File;

    move-result-object v1

    #getter for: Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mDownloadFile:Ljava/io/File;
    invoke-static {p1}, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->access$1400(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 367
    sget-object v1, Lcom/baidu/bulletin/network/FileDownloader;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rename tmpfile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mTmpFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " local: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    #getter for: Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mDownloadFilePath:Ljava/lang/String;
    invoke-static {p1}, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->access$300(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    :goto_1
    iget v1, p0, Lcom/baidu/bulletin/network/FileDownloader;->workingTaskCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/baidu/bulletin/network/FileDownloader;->workingTaskCount:I

    .line 379
    #getter for: Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mObserver:Lcom/baidu/bulletin/network/FileDownloader$Observer;
    invoke-static {p1}, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->access$100(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)Lcom/baidu/bulletin/network/FileDownloader$Observer;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/baidu/bulletin/network/FileDownloader;->createResponse(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)Lcom/baidu/bulletin/network/FileDownloader$Response;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/baidu/bulletin/network/FileDownloader$Observer;->onDownloadFileProgressed(Lcom/baidu/bulletin/network/FileDownloader$Response;)V

    .line 381
    sget-object v1, Lcom/baidu/bulletin/network/FileDownloader;->mDownloadingTaskList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 382
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/network/FileDownloader;->sendWaitingTask(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)V

    .line 383
    return-void

    .line 359
    :cond_0
    :try_start_1
    #getter for: Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mRequest:Lcom/baidu/bulletin/network/FileDownloader$Request;
    invoke-static {p1}, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->access$800(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)Lcom/baidu/bulletin/network/FileDownloader$Request;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bulletin/network/FileDownloader;->mMusicDirectory:Ljava/io/File;

    invoke-direct {p0, v1, v2}, Lcom/baidu/bulletin/network/FileDownloader;->getFilePathfromRequest(Lcom/baidu/bulletin/network/FileDownloader$Request;Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mDownloadFilePath:Ljava/lang/String;
    invoke-static {p1, v1}, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->access$302(Lcom/baidu/bulletin/network/FileDownloader$FileItem;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 372
    :catch_0
    move-exception v0

    .line 373
    .local v0, e:Ljava/io/IOException;
    sget-object v1, Lcom/baidu/bulletin/network/FileDownloader;->TAG:Ljava/lang/String;

    const-string v2, "move file in FileDownLoader error"

    invoke-static {v1, v2, v0}, Lcom/baidu/bulletin/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 369
    .end local v0           #e:Ljava/io/IOException;
    :cond_1
    :try_start_2
    sget-object v1, Lcom/baidu/bulletin/network/FileDownloader;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "move tmpfile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mTmpFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " local: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    #getter for: Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mDownloadFilePath:Ljava/lang/String;
    invoke-static {p1}, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->access$300(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    #getter for: Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mTmpFile:Ljava/io/File;
    invoke-static {p1}, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->access$1300(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)Ljava/io/File;

    move-result-object v1

    #getter for: Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mDownloadFile:Ljava/io/File;
    invoke-static {p1}, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->access$1400(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)Ljava/io/File;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/baidu/bulletin/network/FileDownloader;->moveFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method private hasFreeItemTask()Z
    .locals 2

    .prologue
    .line 578
    iget v0, p0, Lcom/baidu/bulletin/network/FileDownloader;->workingTaskCount:I

    iget v1, p0, Lcom/baidu/bulletin/network/FileDownloader;->mMaxTaskCount:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasFreeStorageSpace()Z
    .locals 1

    .prologue
    .line 189
    invoke-static {}, Lcom/baidu/bulletin/utils/DeviceEnv$Storage;->isHasFreeStorageSpace()Z

    move-result v0

    return v0
.end method

.method private hasWaitingTask()Z
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/baidu/bulletin/network/FileDownloader;->mWaitingTaskList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isAvailable(Lcom/baidu/bulletin/network/FileDownloader$Request;)Z
    .locals 1
    .parameter "request"

    .prologue
    .line 573
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/baidu/bulletin/network/FileDownloader$Request;->downloadUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/baidu/bulletin/network/FileDownloader$Request;->downloadUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private moveFile(Ljava/io/File;Ljava/io/File;)V
    .locals 9
    .parameter "source"
    .parameter "destination"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 626
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 627
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 629
    .local v3, reader:Ljava/io/BufferedInputStream;
    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p2, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 632
    .local v4, writer:Ljava/io/BufferedOutputStream;
    const/4 v2, 0x0

    .line 633
    .local v2, len:I
    const/16 v5, 0x2000

    :try_start_0
    new-array v0, v5, [B

    .line 634
    .local v0, buf:[B
    :goto_0
    const/4 v5, 0x0

    array-length v6, v0

    invoke-virtual {v3, v0, v5, v6}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_2

    .line 635
    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v2}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 637
    .end local v0           #buf:[B
    :catch_0
    move-exception v1

    .line 638
    .local v1, ex:Ljava/io/IOException;
    :try_start_1
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException when transferring "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 641
    .end local v1           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 642
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V

    .line 643
    if-eqz v3, :cond_0

    .line 644
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V

    .line 645
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 641
    :cond_0
    :goto_1
    throw v5

    .line 655
    .end local v2           #len:I
    .end local v3           #reader:Ljava/io/BufferedInputStream;
    .end local v4           #writer:Ljava/io/BufferedOutputStream;
    :cond_1
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Source file does not exist when transferring "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 642
    .restart local v0       #buf:[B
    .restart local v2       #len:I
    .restart local v3       #reader:Ljava/io/BufferedInputStream;
    .restart local v4       #writer:Ljava/io/BufferedOutputStream;
    :cond_2
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V

    .line 643
    if-eqz v3, :cond_3

    .line 644
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V

    .line 645
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 659
    :cond_3
    :goto_2
    return-void

    .line 647
    .end local v0           #buf:[B
    :catch_1
    move-exception v1

    .line 648
    .restart local v1       #ex:Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error closing files when transferring "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/baidu/bulletin/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 647
    .end local v1           #ex:Ljava/io/IOException;
    .restart local v0       #buf:[B
    :catch_2
    move-exception v1

    .line 648
    .restart local v1       #ex:Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error closing files when transferring "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baidu/bulletin/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static nofityStorageSpaceNotEnoughChange()V
    .locals 2

    .prologue
    .line 193
    sget-boolean v0, Lcom/baidu/bulletin/network/FileDownloader;->mNotEnoughFreeStorgeSpaceFlag:Z

    if-nez v0, :cond_0

    .line 194
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/baidu/bulletin/network/FileDownloader;->setNotEnoughFreeStorgeSpaceFlag(Z)V

    .line 195
    sget-object v0, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;->StorageSpaceNotEnough:Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;

    sget-boolean v1, Lcom/baidu/bulletin/network/FileDownloader;->mNotEnoughFreeStorgeSpaceFlag:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bulletin/utils/ChangeNotifyManager;->nofityChange(Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;Ljava/lang/Object;)V

    .line 196
    sget-object v0, Lcom/baidu/bulletin/network/FileDownloader;->TAG:Ljava/lang/String;

    const-string v1, "FileDownloader nofityChange called"

    invoke-static {v0, v1}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    :cond_0
    return-void
.end method

.method public static release()V
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/baidu/bulletin/network/FileDownloader;->mDownloadingTaskList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 58
    sget-object v0, Lcom/baidu/bulletin/network/FileDownloader;->mDuplicatedTaskList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 59
    return-void
.end method

.method private declared-synchronized sendWaitingTask(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)V
    .locals 8
    .parameter "fileitem"

    .prologue
    .line 460
    monitor-enter p0

    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 461
    .local v4, sameUrlItems:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/network/FileDownloader$FileItem;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v6, Lcom/baidu/bulletin/network/FileDownloader;->mDuplicatedTaskList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 462
    sget-object v6, Lcom/baidu/bulletin/network/FileDownloader;->mDuplicatedTaskList:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/network/FileDownloader$FileItem;

    .line 463
    .local v0, fm:Lcom/baidu/bulletin/network/FileDownloader$FileItem;
    #getter for: Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mDownloadUrl:Ljava/lang/String;
    invoke-static {p1}, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->access$1200(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)Ljava/lang/String;

    move-result-object v6

    #getter for: Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mDownloadUrl:Ljava/lang/String;
    invoke-static {v0}, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->access$1200(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 464
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 465
    sget-object v6, Lcom/baidu/bulletin/network/FileDownloader;->TAG:Ljava/lang/String;

    const-string v7, "has same task in mDuplicatedTaskList, onDownloadFileProgressed called!!!"

    invoke-static {v6, v7}, Lcom/baidu/bulletin/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 470
    .end local v0           #fm:Lcom/baidu/bulletin/network/FileDownloader$FileItem;
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/bulletin/network/FileDownloader$FileItem;

    .line 471
    .local v3, item:Lcom/baidu/bulletin/network/FileDownloader$FileItem;
    sget-object v6, Lcom/baidu/bulletin/network/FileDownloader;->mDuplicatedTaskList:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 472
    iget-wide v6, p1, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mFileSize:J

    iput-wide v6, v3, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mFileSize:J

    .line 473
    iget-wide v6, p1, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mFinished:J

    iput-wide v6, v3, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mFinished:J

    .line 474
    #getter for: Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mDownloadFilePath:Ljava/lang/String;
    invoke-static {p1}, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->access$300(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)Ljava/lang/String;

    move-result-object v6

    #setter for: Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mDownloadFilePath:Ljava/lang/String;
    invoke-static {v3, v6}, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->access$302(Lcom/baidu/bulletin/network/FileDownloader$FileItem;Ljava/lang/String;)Ljava/lang/String;

    .line 475
    #getter for: Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mObserver:Lcom/baidu/bulletin/network/FileDownloader$Observer;
    invoke-static {v3}, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->access$100(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)Lcom/baidu/bulletin/network/FileDownloader$Observer;

    move-result-object v6

    invoke-direct {p0, v3}, Lcom/baidu/bulletin/network/FileDownloader;->createResponse(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)Lcom/baidu/bulletin/network/FileDownloader$Response;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/baidu/bulletin/network/FileDownloader$Observer;->onDownloadFileProgressed(Lcom/baidu/bulletin/network/FileDownloader$Response;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 460
    .end local v1           #i:I
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #item:Lcom/baidu/bulletin/network/FileDownloader$FileItem;
    .end local v4           #sameUrlItems:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/network/FileDownloader$FileItem;>;"
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 478
    .restart local v1       #i:I
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #sameUrlItems:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/network/FileDownloader$FileItem;>;"
    :cond_2
    :try_start_1
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 480
    const/4 v1, 0x0

    :goto_2
    iget-object v6, p0, Lcom/baidu/bulletin/network/FileDownloader;->mWaitingTaskList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_4

    .line 481
    iget-object v6, p0, Lcom/baidu/bulletin/network/FileDownloader;->mWaitingTaskList:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/network/FileDownloader$FileItem;

    .line 482
    .restart local v0       #fm:Lcom/baidu/bulletin/network/FileDownloader$FileItem;
    #getter for: Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mDownloadUrl:Ljava/lang/String;
    invoke-static {p1}, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->access$1200(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)Ljava/lang/String;

    move-result-object v6

    #getter for: Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mDownloadUrl:Ljava/lang/String;
    invoke-static {v0}, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->access$1200(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 483
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 484
    sget-object v6, Lcom/baidu/bulletin/network/FileDownloader;->TAG:Ljava/lang/String;

    const-string v7, "has same task in WaitingTaskList, onDownloadFileProgressed called!!!"

    invoke-static {v6, v7}, Lcom/baidu/bulletin/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 489
    .end local v0           #fm:Lcom/baidu/bulletin/network/FileDownloader$FileItem;
    :cond_4
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/bulletin/network/FileDownloader$FileItem;

    .line 490
    .restart local v3       #item:Lcom/baidu/bulletin/network/FileDownloader$FileItem;
    iget-object v6, p0, Lcom/baidu/bulletin/network/FileDownloader;->mWaitingTaskList:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 491
    iget-wide v6, p1, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mFileSize:J

    iput-wide v6, v3, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mFileSize:J

    .line 492
    iget-wide v6, p1, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mFinished:J

    iput-wide v6, v3, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mFinished:J

    .line 493
    #getter for: Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mDownloadFilePath:Ljava/lang/String;
    invoke-static {p1}, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->access$300(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)Ljava/lang/String;

    move-result-object v6

    #setter for: Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mDownloadFilePath:Ljava/lang/String;
    invoke-static {v3, v6}, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->access$302(Lcom/baidu/bulletin/network/FileDownloader$FileItem;Ljava/lang/String;)Ljava/lang/String;

    .line 494
    #getter for: Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mObserver:Lcom/baidu/bulletin/network/FileDownloader$Observer;
    invoke-static {v3}, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->access$100(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)Lcom/baidu/bulletin/network/FileDownloader$Observer;

    move-result-object v6

    invoke-direct {p0, v3}, Lcom/baidu/bulletin/network/FileDownloader;->createResponse(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)Lcom/baidu/bulletin/network/FileDownloader$Response;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/baidu/bulletin/network/FileDownloader$Observer;->onDownloadFileProgressed(Lcom/baidu/bulletin/network/FileDownloader$Response;)V

    goto :goto_3

    .line 497
    .end local v3           #item:Lcom/baidu/bulletin/network/FileDownloader$FileItem;
    :cond_5
    :goto_4
    invoke-direct {p0}, Lcom/baidu/bulletin/network/FileDownloader;->hasWaitingTask()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-direct {p0}, Lcom/baidu/bulletin/network/FileDownloader;->hasFreeItemTask()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 498
    iget-object v6, p0, Lcom/baidu/bulletin/network/FileDownloader;->mWaitingTaskList:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/bulletin/network/FileDownloader$FileItem;

    .line 499
    .local v5, waitingfm:Lcom/baidu/bulletin/network/FileDownloader$FileItem;
    sget-boolean v6, Lcom/baidu/bulletin/network/FileDownloader;->mNotEnoughFreeStorgeSpaceFlag:Z

    if-nez v6, :cond_7

    .line 500
    invoke-direct {p0, v5}, Lcom/baidu/bulletin/network/FileDownloader;->checkIsDownloading(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 501
    invoke-virtual {p0, v5}, Lcom/baidu/bulletin/network/FileDownloader;->downloadWithNewHttptask(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)V

    .line 502
    sget-object v6, Lcom/baidu/bulletin/network/FileDownloader;->TAG:Ljava/lang/String;

    const-string v7, "new task sent..."

    invoke-static {v6, v7}, Lcom/baidu/bulletin/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 504
    :cond_6
    sget-object v6, Lcom/baidu/bulletin/network/FileDownloader;->TAG:Ljava/lang/String;

    const-string v7, "has same task, add the task to WaitingTaskList already"

    invoke-static {v6, v7}, Lcom/baidu/bulletin/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 507
    :cond_7
    sget-object v6, Lcom/baidu/bulletin/network/FileDownloader;->TAG:Ljava/lang/String;

    const-string v7, "in sendWaitingTask(), Storage Has no more Free Space!"

    invoke-static {v6, v7}, Lcom/baidu/bulletin/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    #getter for: Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mObserver:Lcom/baidu/bulletin/network/FileDownloader$Observer;
    invoke-static {v5}, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->access$100(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)Lcom/baidu/bulletin/network/FileDownloader$Observer;

    move-result-object v6

    #getter for: Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mRequest:Lcom/baidu/bulletin/network/FileDownloader$Request;
    invoke-static {v5}, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->access$800(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)Lcom/baidu/bulletin/network/FileDownloader$Request;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/baidu/bulletin/network/FileDownloader;->createErrorResponse(Lcom/baidu/bulletin/network/FileDownloader$Request;)Lcom/baidu/bulletin/network/FileDownloader$Response;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/baidu/bulletin/network/FileDownloader$Observer;->onDownloadFileProgressed(Lcom/baidu/bulletin/network/FileDownloader$Response;)V

    .line 509
    invoke-static {}, Lcom/baidu/bulletin/network/FileDownloader;->nofityStorageSpaceNotEnoughChange()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 512
    .end local v5           #waitingfm:Lcom/baidu/bulletin/network/FileDownloader$FileItem;
    :cond_8
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized sendWaitingTaskAfterFailed(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)V
    .locals 8
    .parameter "fileitem"

    .prologue
    .line 402
    monitor-enter p0

    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 403
    .local v5, sameUrlItems:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/network/FileDownloader$FileItem;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    sget-object v6, Lcom/baidu/bulletin/network/FileDownloader;->mDuplicatedTaskList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 404
    sget-object v6, Lcom/baidu/bulletin/network/FileDownloader;->mDuplicatedTaskList:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/bulletin/network/FileDownloader$FileItem;

    .line 405
    .local v1, fm:Lcom/baidu/bulletin/network/FileDownloader$FileItem;
    #getter for: Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mDownloadUrl:Ljava/lang/String;
    invoke-static {p1}, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->access$1200(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)Ljava/lang/String;

    move-result-object v6

    #getter for: Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mDownloadUrl:Ljava/lang/String;
    invoke-static {v1}, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->access$1200(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 406
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    sget-object v6, Lcom/baidu/bulletin/network/FileDownloader;->TAG:Ljava/lang/String;

    const-string v7, "has same task in mDuplicatedTaskList, onDownloadFileProgressed called!!!"

    invoke-static {v6, v7}, Lcom/baidu/bulletin/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 411
    .end local v1           #fm:Lcom/baidu/bulletin/network/FileDownloader$FileItem;
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/bulletin/network/FileDownloader$FileItem;

    .line 412
    .local v4, item:Lcom/baidu/bulletin/network/FileDownloader$FileItem;
    sget-object v6, Lcom/baidu/bulletin/network/FileDownloader;->mDuplicatedTaskList:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 413
    iget-wide v6, p1, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mFileSize:J

    iput-wide v6, v4, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mFileSize:J

    .line 414
    iget-wide v6, p1, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mFinished:J

    iput-wide v6, v4, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mFinished:J

    .line 415
    const/4 v6, 0x0

    #setter for: Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mDownloadFilePath:Ljava/lang/String;
    invoke-static {v4, v6}, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->access$302(Lcom/baidu/bulletin/network/FileDownloader$FileItem;Ljava/lang/String;)Ljava/lang/String;

    .line 416
    #getter for: Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mObserver:Lcom/baidu/bulletin/network/FileDownloader$Observer;
    invoke-static {v4}, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->access$100(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)Lcom/baidu/bulletin/network/FileDownloader$Observer;

    move-result-object v6

    invoke-direct {p0, v4}, Lcom/baidu/bulletin/network/FileDownloader;->createResponse(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)Lcom/baidu/bulletin/network/FileDownloader$Response;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/baidu/bulletin/network/FileDownloader$Observer;->onDownloadFileProgressed(Lcom/baidu/bulletin/network/FileDownloader$Response;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 402
    .end local v2           #i:I
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #item:Lcom/baidu/bulletin/network/FileDownloader$FileItem;
    .end local v5           #sameUrlItems:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/network/FileDownloader$FileItem;>;"
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 419
    .restart local v2       #i:I
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v5       #sameUrlItems:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/network/FileDownloader$FileItem;>;"
    :cond_2
    :try_start_1
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 421
    const/4 v2, 0x0

    :goto_2
    iget-object v6, p0, Lcom/baidu/bulletin/network/FileDownloader;->mWaitingTaskList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_4

    .line 422
    iget-object v6, p0, Lcom/baidu/bulletin/network/FileDownloader;->mWaitingTaskList:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/bulletin/network/FileDownloader$FileItem;

    .line 423
    .restart local v1       #fm:Lcom/baidu/bulletin/network/FileDownloader$FileItem;
    #getter for: Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mDownloadUrl:Ljava/lang/String;
    invoke-static {p1}, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->access$1200(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)Ljava/lang/String;

    move-result-object v6

    #getter for: Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mDownloadUrl:Ljava/lang/String;
    invoke-static {v1}, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->access$1200(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 424
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 425
    sget-object v6, Lcom/baidu/bulletin/network/FileDownloader;->TAG:Ljava/lang/String;

    const-string v7, "has same task in WaitingTaskList, onDownloadFileProgressed called!!!"

    invoke-static {v6, v7}, Lcom/baidu/bulletin/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 430
    .end local v1           #fm:Lcom/baidu/bulletin/network/FileDownloader$FileItem;
    :cond_4
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/bulletin/network/FileDownloader$FileItem;

    .line 431
    .restart local v4       #item:Lcom/baidu/bulletin/network/FileDownloader$FileItem;
    iget-object v6, p0, Lcom/baidu/bulletin/network/FileDownloader;->mWaitingTaskList:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 432
    iget-wide v6, p1, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mFileSize:J

    iput-wide v6, v4, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mFileSize:J

    .line 433
    iget-wide v6, p1, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mFinished:J

    iput-wide v6, v4, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mFinished:J

    .line 434
    const/4 v6, 0x0

    #setter for: Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mDownloadFilePath:Ljava/lang/String;
    invoke-static {v4, v6}, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->access$302(Lcom/baidu/bulletin/network/FileDownloader$FileItem;Ljava/lang/String;)Ljava/lang/String;

    .line 435
    #getter for: Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mObserver:Lcom/baidu/bulletin/network/FileDownloader$Observer;
    invoke-static {v4}, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->access$100(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)Lcom/baidu/bulletin/network/FileDownloader$Observer;

    move-result-object v6

    invoke-direct {p0, v4}, Lcom/baidu/bulletin/network/FileDownloader;->createResponse(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)Lcom/baidu/bulletin/network/FileDownloader$Response;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/baidu/bulletin/network/FileDownloader$Observer;->onDownloadFileProgressed(Lcom/baidu/bulletin/network/FileDownloader$Response;)V

    goto :goto_3

    .line 438
    .end local v4           #item:Lcom/baidu/bulletin/network/FileDownloader$FileItem;
    :cond_5
    :goto_4
    invoke-direct {p0}, Lcom/baidu/bulletin/network/FileDownloader;->hasWaitingTask()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-direct {p0}, Lcom/baidu/bulletin/network/FileDownloader;->hasFreeItemTask()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 439
    iget-object v6, p0, Lcom/baidu/bulletin/network/FileDownloader;->mWaitingTaskList:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/network/FileDownloader$FileItem;

    .line 440
    .local v0, fileiten:Lcom/baidu/bulletin/network/FileDownloader$FileItem;
    sget-boolean v6, Lcom/baidu/bulletin/network/FileDownloader;->mNotEnoughFreeStorgeSpaceFlag:Z

    if-nez v6, :cond_7

    .line 441
    invoke-direct {p0, v0}, Lcom/baidu/bulletin/network/FileDownloader;->checkIsDownloading(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 442
    invoke-virtual {p0, v0}, Lcom/baidu/bulletin/network/FileDownloader;->downloadWithNewHttptask(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)V

    .line 443
    sget-object v6, Lcom/baidu/bulletin/network/FileDownloader;->TAG:Ljava/lang/String;

    const-string v7, "new task sent..."

    invoke-static {v6, v7}, Lcom/baidu/bulletin/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 445
    :cond_6
    sget-object v6, Lcom/baidu/bulletin/network/FileDownloader;->TAG:Ljava/lang/String;

    const-string v7, "has same task, add the task to WaitingTaskList already"

    invoke-static {v6, v7}, Lcom/baidu/bulletin/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 448
    :cond_7
    sget-object v6, Lcom/baidu/bulletin/network/FileDownloader;->TAG:Ljava/lang/String;

    const-string v7, "in sendWaitingTaskAfterFailed(), Storage Has no more Free Space!"

    invoke-static {v6, v7}, Lcom/baidu/bulletin/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    #getter for: Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mObserver:Lcom/baidu/bulletin/network/FileDownloader$Observer;
    invoke-static {v0}, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->access$100(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)Lcom/baidu/bulletin/network/FileDownloader$Observer;

    move-result-object v6

    #getter for: Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mRequest:Lcom/baidu/bulletin/network/FileDownloader$Request;
    invoke-static {v0}, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->access$800(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)Lcom/baidu/bulletin/network/FileDownloader$Request;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/baidu/bulletin/network/FileDownloader;->createErrorResponse(Lcom/baidu/bulletin/network/FileDownloader$Request;)Lcom/baidu/bulletin/network/FileDownloader$Response;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/baidu/bulletin/network/FileDownloader$Observer;->onDownloadFileProgressed(Lcom/baidu/bulletin/network/FileDownloader$Response;)V

    .line 450
    invoke-static {}, Lcom/baidu/bulletin/network/FileDownloader;->nofityStorageSpaceNotEnoughChange()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 453
    .end local v0           #fileiten:Lcom/baidu/bulletin/network/FileDownloader$FileItem;
    :cond_8
    monitor-exit p0

    return-void
.end method

.method private static setNotEnoughFreeStorgeSpaceFlag(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 201
    sput-boolean p0, Lcom/baidu/bulletin/network/FileDownloader;->mNotEnoughFreeStorgeSpaceFlag:Z

    .line 202
    return-void
.end method


# virtual methods
.method public cancelAllTask()V
    .locals 4

    .prologue
    .line 205
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/baidu/bulletin/network/FileDownloader;->mTaskCancelledFlag:Z

    .line 206
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/baidu/bulletin/network/FileDownloader;->mWaitingTaskList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 207
    iget-object v2, p0, Lcom/baidu/bulletin/network/FileDownloader;->mWaitingTaskList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/network/FileDownloader$FileItem;

    .line 208
    .local v0, fm:Lcom/baidu/bulletin/network/FileDownloader$FileItem;
    #getter for: Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mObserver:Lcom/baidu/bulletin/network/FileDownloader$Observer;
    invoke-static {v0}, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->access$100(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)Lcom/baidu/bulletin/network/FileDownloader$Observer;

    move-result-object v2

    invoke-direct {p0, v0}, Lcom/baidu/bulletin/network/FileDownloader;->createResponse(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)Lcom/baidu/bulletin/network/FileDownloader$Response;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/baidu/bulletin/network/FileDownloader$Observer;->onDownloadFileProgressed(Lcom/baidu/bulletin/network/FileDownloader$Response;)V

    .line 206
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 210
    .end local v0           #fm:Lcom/baidu/bulletin/network/FileDownloader$FileItem;
    :cond_0
    iget-object v2, p0, Lcom/baidu/bulletin/network/FileDownloader;->mWaitingTaskList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 212
    iget-object v2, p0, Lcom/baidu/bulletin/network/FileDownloader;->mConnection:Lcom/baidu/bulletin/http/HttpConnection;

    invoke-virtual {v2}, Lcom/baidu/bulletin/http/HttpConnection;->cancelAll()V

    .line 213
    return-void
.end method

.method public cancelStreamMusic(Lcom/baidu/bulletin/network/FileDownloader$Observer;)V
    .locals 8
    .parameter "observer"

    .prologue
    const/4 v7, 0x1

    .line 216
    iput-boolean v7, p0, Lcom/baidu/bulletin/network/FileDownloader;->mTaskCancelledFlag:Z

    .line 217
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v5, p0, Lcom/baidu/bulletin/network/FileDownloader;->mWaitingTaskList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 218
    iget-object v5, p0, Lcom/baidu/bulletin/network/FileDownloader;->mWaitingTaskList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/network/FileDownloader$FileItem;

    .line 219
    .local v0, fm:Lcom/baidu/bulletin/network/FileDownloader$FileItem;
    #getter for: Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mObserver:Lcom/baidu/bulletin/network/FileDownloader$Observer;
    invoke-static {v0}, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->access$100(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)Lcom/baidu/bulletin/network/FileDownloader$Observer;

    move-result-object v5

    invoke-direct {p0, v0}, Lcom/baidu/bulletin/network/FileDownloader;->createResponse(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)Lcom/baidu/bulletin/network/FileDownloader$Response;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/baidu/bulletin/network/FileDownloader$Observer;->onDownloadFileProgressed(Lcom/baidu/bulletin/network/FileDownloader$Response;)V

    .line 217
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 221
    .end local v0           #fm:Lcom/baidu/bulletin/network/FileDownloader$FileItem;
    :cond_0
    iget-object v5, p0, Lcom/baidu/bulletin/network/FileDownloader;->mWaitingTaskList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 223
    const/4 v1, 0x0

    :goto_1
    sget-object v5, Lcom/baidu/bulletin/network/FileDownloader;->mDownloadingTaskList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 224
    sget-object v5, Lcom/baidu/bulletin/network/FileDownloader;->mDownloadingTaskList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/network/FileDownloader$FileItem;

    .line 225
    .restart local v0       #fm:Lcom/baidu/bulletin/network/FileDownloader$FileItem;
    #getter for: Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mObserver:Lcom/baidu/bulletin/network/FileDownloader$Observer;
    invoke-static {v0}, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->access$100(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)Lcom/baidu/bulletin/network/FileDownloader$Observer;

    move-result-object v5

    if-ne v5, p1, :cond_1

    .line 226
    #setter for: Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mFileItemCancelled:Z
    invoke-static {v0, v7}, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->access$202(Lcom/baidu/bulletin/network/FileDownloader$FileItem;Z)Z

    .line 223
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 230
    .end local v0           #fm:Lcom/baidu/bulletin/network/FileDownloader$FileItem;
    :cond_2
    iget-object v5, p0, Lcom/baidu/bulletin/network/FileDownloader;->mConnection:Lcom/baidu/bulletin/http/HttpConnection;

    invoke-virtual {v5}, Lcom/baidu/bulletin/http/HttpConnection;->cancelAll()V

    .line 232
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 233
    .local v4, sameUrlItems:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/network/FileDownloader$FileItem;>;"
    const/4 v1, 0x0

    :goto_2
    sget-object v5, Lcom/baidu/bulletin/network/FileDownloader;->mDuplicatedTaskList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_4

    .line 234
    sget-object v5, Lcom/baidu/bulletin/network/FileDownloader;->mDuplicatedTaskList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/network/FileDownloader$FileItem;

    .line 235
    .restart local v0       #fm:Lcom/baidu/bulletin/network/FileDownloader$FileItem;
    #getter for: Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mObserver:Lcom/baidu/bulletin/network/FileDownloader$Observer;
    invoke-static {v0}, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->access$100(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)Lcom/baidu/bulletin/network/FileDownloader$Observer;

    move-result-object v5

    if-ne v5, p1, :cond_3

    .line 236
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 239
    .end local v0           #fm:Lcom/baidu/bulletin/network/FileDownloader$FileItem;
    :cond_4
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/bulletin/network/FileDownloader$FileItem;

    .line 240
    .local v3, item:Lcom/baidu/bulletin/network/FileDownloader$FileItem;
    sget-object v5, Lcom/baidu/bulletin/network/FileDownloader;->mDuplicatedTaskList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 241
    const/4 v5, 0x0

    #setter for: Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mDownloadFilePath:Ljava/lang/String;
    invoke-static {v3, v5}, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->access$302(Lcom/baidu/bulletin/network/FileDownloader$FileItem;Ljava/lang/String;)Ljava/lang/String;

    .line 242
    #getter for: Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mObserver:Lcom/baidu/bulletin/network/FileDownloader$Observer;
    invoke-static {v3}, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->access$100(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)Lcom/baidu/bulletin/network/FileDownloader$Observer;

    move-result-object v5

    invoke-direct {p0, v3}, Lcom/baidu/bulletin/network/FileDownloader;->createResponse(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)Lcom/baidu/bulletin/network/FileDownloader$Response;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/baidu/bulletin/network/FileDownloader$Observer;->onDownloadFileProgressed(Lcom/baidu/bulletin/network/FileDownloader$Response;)V

    goto :goto_3

    .line 244
    .end local v3           #item:Lcom/baidu/bulletin/network/FileDownloader$FileItem;
    :cond_5
    return-void
.end method

.method public downloadFile(Lcom/baidu/bulletin/network/FileDownloader$Request;Lcom/baidu/bulletin/network/FileDownloader$Observer;)V
    .locals 5
    .parameter "request"
    .parameter "observer"

    .prologue
    const/4 v4, 0x0

    .line 148
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/network/FileDownloader;->isAvailable(Lcom/baidu/bulletin/network/FileDownloader$Request;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 149
    iput-boolean v4, p0, Lcom/baidu/bulletin/network/FileDownloader;->mTaskCancelledFlag:Z

    .line 150
    invoke-direct {p0, p1, p2}, Lcom/baidu/bulletin/network/FileDownloader;->IsRequestFileExistInRepo(Lcom/baidu/bulletin/network/FileDownloader$Request;Lcom/baidu/bulletin/network/FileDownloader$Observer;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 151
    invoke-direct {p0}, Lcom/baidu/bulletin/network/FileDownloader;->hasFreeStorageSpace()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 155
    invoke-static {v4}, Lcom/baidu/bulletin/network/FileDownloader;->setNotEnoughFreeStorgeSpaceFlag(Z)V

    .line 157
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/network/FileDownloader;->getFileExistInTmpSize(Lcom/baidu/bulletin/network/FileDownloader$Request;)J

    move-result-wide v1

    .line 158
    .local v1, tmpFileSize:J
    new-instance v0, Lcom/baidu/bulletin/network/FileDownloader$FileItem;

    const/4 v3, 0x0

    invoke-direct {v0, p0, p1, p2, v3}, Lcom/baidu/bulletin/network/FileDownloader$FileItem;-><init>(Lcom/baidu/bulletin/network/FileDownloader;Lcom/baidu/bulletin/network/FileDownloader$Request;Lcom/baidu/bulletin/network/FileDownloader$Observer;Lcom/baidu/bulletin/network/FileDownloader$1;)V

    .line 159
    .local v0, fileitem:Lcom/baidu/bulletin/network/FileDownloader$FileItem;
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 160
    iput-wide v1, v0, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mFinished:J

    .line 163
    :cond_0
    invoke-direct {p0, v0}, Lcom/baidu/bulletin/network/FileDownloader;->checkIsDownloading(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 164
    invoke-direct {p0}, Lcom/baidu/bulletin/network/FileDownloader;->hasFreeItemTask()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 165
    iget-boolean v3, p0, Lcom/baidu/bulletin/network/FileDownloader;->mTaskCancelledFlag:Z

    if-nez v3, :cond_1

    .line 166
    invoke-virtual {p0, v0}, Lcom/baidu/bulletin/network/FileDownloader;->downloadWithNewHttptask(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)V

    .line 167
    sget-object v3, Lcom/baidu/bulletin/network/FileDownloader;->TAG:Ljava/lang/String;

    const-string v4, "START task!"

    invoke-static {v3, v4}, Lcom/baidu/bulletin/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .end local v0           #fileitem:Lcom/baidu/bulletin/network/FileDownloader$FileItem;
    .end local v1           #tmpFileSize:J
    :cond_1
    :goto_0
    return-void

    .line 170
    .restart local v0       #fileitem:Lcom/baidu/bulletin/network/FileDownloader$FileItem;
    .restart local v1       #tmpFileSize:J
    :cond_2
    sget-object v3, Lcom/baidu/bulletin/network/FileDownloader;->TAG:Ljava/lang/String;

    const-string v4, "no FreeItemTask, add task to mWaitingTaskList"

    invoke-static {v3, v4}, Lcom/baidu/bulletin/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v3, p0, Lcom/baidu/bulletin/network/FileDownloader;->mWaitingTaskList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 174
    :cond_3
    sget-object v3, Lcom/baidu/bulletin/network/FileDownloader;->TAG:Ljava/lang/String;

    const-string v4, "has same task, add the task to mDuplicatedTaskList already"

    invoke-static {v3, v4}, Lcom/baidu/bulletin/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 177
    .end local v0           #fileitem:Lcom/baidu/bulletin/network/FileDownloader$FileItem;
    .end local v1           #tmpFileSize:J
    :cond_4
    sget-object v3, Lcom/baidu/bulletin/network/FileDownloader;->TAG:Ljava/lang/String;

    const-string v4, "Storage Has no more Free Space!"

    invoke-static {v3, v4}, Lcom/baidu/bulletin/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/network/FileDownloader;->createErrorResponse(Lcom/baidu/bulletin/network/FileDownloader$Request;)Lcom/baidu/bulletin/network/FileDownloader$Response;

    move-result-object v3

    invoke-interface {p2, v3}, Lcom/baidu/bulletin/network/FileDownloader$Observer;->onDownloadFileProgressed(Lcom/baidu/bulletin/network/FileDownloader$Response;)V

    .line 179
    invoke-static {}, Lcom/baidu/bulletin/network/FileDownloader;->nofityStorageSpaceNotEnoughChange()V

    goto :goto_0

    .line 183
    :cond_5
    sget-object v3, Lcom/baidu/bulletin/network/FileDownloader;->TAG:Ljava/lang/String;

    const-string v4, "error download URL!"

    invoke-static {v3, v4}, Lcom/baidu/bulletin/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/network/FileDownloader;->createErrorResponse(Lcom/baidu/bulletin/network/FileDownloader$Request;)Lcom/baidu/bulletin/network/FileDownloader$Response;

    move-result-object v3

    invoke-interface {p2, v3}, Lcom/baidu/bulletin/network/FileDownloader$Observer;->onDownloadFileProgressed(Lcom/baidu/bulletin/network/FileDownloader$Response;)V

    goto :goto_0
.end method

.method public downloadWithNewHttptask(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)V
    .locals 6
    .parameter "fileitem"

    .prologue
    .line 247
    iget v1, p0, Lcom/baidu/bulletin/network/FileDownloader;->workingTaskCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/baidu/bulletin/network/FileDownloader;->workingTaskCount:I

    .line 248
    sget-object v1, Lcom/baidu/bulletin/network/FileDownloader;->mDownloadingTaskList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    new-instance v0, Lcom/baidu/bulletin/network/FileDownloader$1;

    invoke-direct {v0, p0, p1}, Lcom/baidu/bulletin/network/FileDownloader$1;-><init>(Lcom/baidu/bulletin/network/FileDownloader;Lcom/baidu/bulletin/network/FileDownloader$FileItem;)V

    .line 300
    .local v0, task:Lcom/baidu/bulletin/http/HttpTask;
    #getter for: Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mRequest:Lcom/baidu/bulletin/network/FileDownloader$Request;
    invoke-static {p1}, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->access$800(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)Lcom/baidu/bulletin/network/FileDownloader$Request;

    move-result-object v1

    iget-boolean v1, v1, Lcom/baidu/bulletin/network/FileDownloader$Request;->MusciFileFlag:Z

    if-eqz v1, :cond_0

    .line 301
    iget-object v1, v0, Lcom/baidu/bulletin/http/HttpTask;->mRequest:Lcom/baidu/bulletin/http/HttpParam$Request;

    iget-object v1, v1, Lcom/baidu/bulletin/http/HttpParam$Request;->range:Lcom/baidu/bulletin/http/HttpParam$Range;

    iget-wide v2, p1, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mFinished:J

    const-wide/32 v4, 0xc800

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/baidu/bulletin/http/HttpParam$Range;->set(JJ)V

    .line 309
    :cond_0
    iget-object v1, v0, Lcom/baidu/bulletin/http/HttpTask;->mRequest:Lcom/baidu/bulletin/http/HttpParam$Request;

    #getter for: Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mDownloadUrl:Ljava/lang/String;
    invoke-static {p1}, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->access$1200(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/baidu/bulletin/http/HttpParam$Request;->host:Ljava/lang/String;

    .line 310
    iget-object v1, p0, Lcom/baidu/bulletin/network/FileDownloader;->mConnection:Lcom/baidu/bulletin/http/HttpConnection;

    invoke-virtual {v1, v0}, Lcom/baidu/bulletin/http/HttpConnection;->send(Lcom/baidu/bulletin/http/HttpTask;)Z

    .line 312
    return-void
.end method

.method public onChanged(Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;Ljava/lang/Object;)V
    .locals 1
    .parameter "event"
    .parameter "data"

    .prologue
    .line 130
    invoke-static {}, Lcom/baidu/bulletin/utils/MediaMonitor;->isStorageAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    invoke-direct {p0}, Lcom/baidu/bulletin/network/FileDownloader;->CreatDownloadFiles()V

    .line 133
    :cond_0
    return-void
.end method
