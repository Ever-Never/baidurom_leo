.class public Lcom/baidu/bulletin/network/FileDownloader$FileItem;
.super Ljava/lang/Object;
.source "FileDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/network/FileDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FileItem"
.end annotation


# instance fields
.field private mDownloadFile:Ljava/io/File;

.field private mDownloadFilePath:Ljava/lang/String;

.field private mDownloadUrl:Ljava/lang/String;

.field private mFileItemCancelled:Z

.field public mFileSize:J

.field public mFinished:J

.field private mObserver:Lcom/baidu/bulletin/network/FileDownloader$Observer;

.field private mRequest:Lcom/baidu/bulletin/network/FileDownloader$Request;

.field private mTmpFile:Ljava/io/File;

.field public mTmpFilePath:Ljava/lang/String;

.field final synthetic this$0:Lcom/baidu/bulletin/network/FileDownloader;


# direct methods
.method private constructor <init>(Lcom/baidu/bulletin/network/FileDownloader;Lcom/baidu/bulletin/network/FileDownloader$Request;Lcom/baidu/bulletin/network/FileDownloader$Observer;)V
    .locals 4
    .parameter
    .parameter "request"
    .parameter "observer"

    .prologue
    const/4 v3, 0x0

    .line 556
    iput-object p1, p0, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->this$0:Lcom/baidu/bulletin/network/FileDownloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 545
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mFileSize:J

    .line 546
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mFinished:J

    .line 547
    iput-object v3, p0, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mDownloadUrl:Ljava/lang/String;

    .line 548
    iput-object v3, p0, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mTmpFilePath:Ljava/lang/String;

    .line 549
    iput-object v3, p0, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mTmpFile:Ljava/io/File;

    .line 550
    iput-object v3, p0, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mDownloadFilePath:Ljava/lang/String;

    .line 551
    iput-object v3, p0, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mDownloadFile:Ljava/io/File;

    .line 557
    iput-object p3, p0, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mObserver:Lcom/baidu/bulletin/network/FileDownloader$Observer;

    .line 558
    iput-object p2, p0, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mRequest:Lcom/baidu/bulletin/network/FileDownloader$Request;

    .line 559
    iget-object v1, p2, Lcom/baidu/bulletin/network/FileDownloader$Request;->downloadUrl:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mDownloadUrl:Ljava/lang/String;

    .line 561
    #getter for: Lcom/baidu/bulletin/network/FileDownloader;->mTmpDirectory:Ljava/io/File;
    invoke-static {p1}, Lcom/baidu/bulletin/network/FileDownloader;->access$1500(Lcom/baidu/bulletin/network/FileDownloader;)Ljava/io/File;

    move-result-object v1

    #calls: Lcom/baidu/bulletin/network/FileDownloader;->getFilePathfromRequest(Lcom/baidu/bulletin/network/FileDownloader$Request;Ljava/io/File;)Ljava/lang/String;
    invoke-static {p1, p2, v1}, Lcom/baidu/bulletin/network/FileDownloader;->access$1600(Lcom/baidu/bulletin/network/FileDownloader;Lcom/baidu/bulletin/network/FileDownloader$Request;Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mTmpFilePath:Ljava/lang/String;

    .line 563
    :try_start_0
    iget-object v1, p0, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mTmpFilePath:Ljava/lang/String;

    #calls: Lcom/baidu/bulletin/network/FileDownloader;->createFile(Ljava/lang/String;)Ljava/io/File;
    invoke-static {p1, v1}, Lcom/baidu/bulletin/network/FileDownloader;->access$1700(Lcom/baidu/bulletin/network/FileDownloader;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mTmpFile:Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 569
    :goto_0
    return-void

    .line 564
    :catch_0
    move-exception v0

    .line 565
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 566
    invoke-static {}, Lcom/baidu/bulletin/network/FileDownloader;->access$700()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create tmpFile "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mTmpFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in FileDownLoader error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/baidu/bulletin/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/baidu/bulletin/network/FileDownloader;Lcom/baidu/bulletin/network/FileDownloader$Request;Lcom/baidu/bulletin/network/FileDownloader$Observer;Lcom/baidu/bulletin/network/FileDownloader$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 544
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/bulletin/network/FileDownloader$FileItem;-><init>(Lcom/baidu/bulletin/network/FileDownloader;Lcom/baidu/bulletin/network/FileDownloader$Request;Lcom/baidu/bulletin/network/FileDownloader$Observer;)V

    return-void
.end method

.method static synthetic access$100(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)Lcom/baidu/bulletin/network/FileDownloader$Observer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 544
    iget-object v0, p0, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mObserver:Lcom/baidu/bulletin/network/FileDownloader$Observer;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 544
    iget-object v0, p0, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mDownloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/baidu/bulletin/network/FileDownloader$FileItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 544
    iput-object p1, p0, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mDownloadUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)Ljava/io/File;
    .locals 1
    .parameter "x0"

    .prologue
    .line 544
    iget-object v0, p0, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mTmpFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)Ljava/io/File;
    .locals 1
    .parameter "x0"

    .prologue
    .line 544
    iget-object v0, p0, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mDownloadFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/baidu/bulletin/network/FileDownloader$FileItem;Ljava/io/File;)Ljava/io/File;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 544
    iput-object p1, p0, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mDownloadFile:Ljava/io/File;

    return-object p1
.end method

.method static synthetic access$200(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 544
    iget-boolean v0, p0, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mFileItemCancelled:Z

    return v0
.end method

.method static synthetic access$202(Lcom/baidu/bulletin/network/FileDownloader$FileItem;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 544
    iput-boolean p1, p0, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mFileItemCancelled:Z

    return p1
.end method

.method static synthetic access$300(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 544
    iget-object v0, p0, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mDownloadFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/baidu/bulletin/network/FileDownloader$FileItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 544
    iput-object p1, p0, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mDownloadFilePath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)Lcom/baidu/bulletin/network/FileDownloader$Request;
    .locals 1
    .parameter "x0"

    .prologue
    .line 544
    iget-object v0, p0, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mRequest:Lcom/baidu/bulletin/network/FileDownloader$Request;

    return-object v0
.end method
