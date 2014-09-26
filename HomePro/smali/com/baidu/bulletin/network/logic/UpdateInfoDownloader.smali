.class public Lcom/baidu/bulletin/network/logic/UpdateInfoDownloader;
.super Ljava/lang/Object;
.source "UpdateInfoDownloader.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mChannelDownloader:Lcom/baidu/bulletin/network/logic/ChannelDownloader;

.field private mChannelDownloaderObserver:Lcom/baidu/bulletin/network/logic/DownloadObserver;

.field private mObserver:Lcom/baidu/bulletin/network/logic/DownloadObserver;

.field private mProtocolPackager:Lcom/baidu/bulletin/network/protocol/ProtocolPackager;

.field private mProtocolPackagerObserver:Lcom/baidu/bulletin/network/protocol/ProtocolPackager$Observer;

.field private mTaskCancelled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/baidu/bulletin/network/logic/UpdateInfoDownloader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/bulletin/network/logic/UpdateInfoDownloader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/baidu/bulletin/network/logic/DownloadObserver;)V
    .locals 2
    .parameter "observer"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/baidu/bulletin/network/logic/UpdateInfoDownloader$1;

    invoke-direct {v0, p0}, Lcom/baidu/bulletin/network/logic/UpdateInfoDownloader$1;-><init>(Lcom/baidu/bulletin/network/logic/UpdateInfoDownloader;)V

    iput-object v0, p0, Lcom/baidu/bulletin/network/logic/UpdateInfoDownloader;->mProtocolPackagerObserver:Lcom/baidu/bulletin/network/protocol/ProtocolPackager$Observer;

    .line 58
    new-instance v0, Lcom/baidu/bulletin/network/logic/UpdateInfoDownloader$2;

    invoke-direct {v0, p0}, Lcom/baidu/bulletin/network/logic/UpdateInfoDownloader$2;-><init>(Lcom/baidu/bulletin/network/logic/UpdateInfoDownloader;)V

    iput-object v0, p0, Lcom/baidu/bulletin/network/logic/UpdateInfoDownloader;->mChannelDownloaderObserver:Lcom/baidu/bulletin/network/logic/DownloadObserver;

    .line 22
    iput-object p1, p0, Lcom/baidu/bulletin/network/logic/UpdateInfoDownloader;->mObserver:Lcom/baidu/bulletin/network/logic/DownloadObserver;

    .line 23
    new-instance v0, Lcom/baidu/bulletin/network/protocol/ProtocolPackager;

    iget-object v1, p0, Lcom/baidu/bulletin/network/logic/UpdateInfoDownloader;->mProtocolPackagerObserver:Lcom/baidu/bulletin/network/protocol/ProtocolPackager$Observer;

    invoke-direct {v0, v1}, Lcom/baidu/bulletin/network/protocol/ProtocolPackager;-><init>(Lcom/baidu/bulletin/network/protocol/ProtocolPackager$Observer;)V

    iput-object v0, p0, Lcom/baidu/bulletin/network/logic/UpdateInfoDownloader;->mProtocolPackager:Lcom/baidu/bulletin/network/protocol/ProtocolPackager;

    .line 24
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/bulletin/network/logic/UpdateInfoDownloader;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget-boolean v0, p0, Lcom/baidu/bulletin/network/logic/UpdateInfoDownloader;->mTaskCancelled:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/baidu/bulletin/network/logic/UpdateInfoDownloader;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/baidu/bulletin/network/logic/UpdateInfoDownloader;)Lcom/baidu/bulletin/network/logic/ChannelDownloader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lcom/baidu/bulletin/network/logic/UpdateInfoDownloader;->mChannelDownloader:Lcom/baidu/bulletin/network/logic/ChannelDownloader;

    return-object v0
.end method

.method static synthetic access$202(Lcom/baidu/bulletin/network/logic/UpdateInfoDownloader;Lcom/baidu/bulletin/network/logic/ChannelDownloader;)Lcom/baidu/bulletin/network/logic/ChannelDownloader;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12
    iput-object p1, p0, Lcom/baidu/bulletin/network/logic/UpdateInfoDownloader;->mChannelDownloader:Lcom/baidu/bulletin/network/logic/ChannelDownloader;

    return-object p1
.end method

.method static synthetic access$300(Lcom/baidu/bulletin/network/logic/UpdateInfoDownloader;)Lcom/baidu/bulletin/network/logic/DownloadObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lcom/baidu/bulletin/network/logic/UpdateInfoDownloader;->mChannelDownloaderObserver:Lcom/baidu/bulletin/network/logic/DownloadObserver;

    return-object v0
.end method

.method static synthetic access$400(Lcom/baidu/bulletin/network/logic/UpdateInfoDownloader;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/baidu/bulletin/network/logic/UpdateInfoDownloader;->notifyOberver()V

    return-void
.end method

.method private notifyOberver()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/baidu/bulletin/network/logic/UpdateInfoDownloader;->mObserver:Lcom/baidu/bulletin/network/logic/DownloadObserver;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/baidu/bulletin/network/logic/UpdateInfoDownloader;->mObserver:Lcom/baidu/bulletin/network/logic/DownloadObserver;

    invoke-interface {v0}, Lcom/baidu/bulletin/network/logic/DownloadObserver;->onFinished()V

    .line 69
    :cond_0
    return-void
.end method


# virtual methods
.method public cancelAll()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/baidu/bulletin/network/logic/UpdateInfoDownloader;->mProtocolPackager:Lcom/baidu/bulletin/network/protocol/ProtocolPackager;

    invoke-virtual {v0}, Lcom/baidu/bulletin/network/protocol/ProtocolPackager;->cancelAll()V

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/bulletin/network/logic/UpdateInfoDownloader;->mTaskCancelled:Z

    .line 74
    iget-object v0, p0, Lcom/baidu/bulletin/network/logic/UpdateInfoDownloader;->mChannelDownloader:Lcom/baidu/bulletin/network/logic/ChannelDownloader;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/baidu/bulletin/network/logic/UpdateInfoDownloader;->mChannelDownloader:Lcom/baidu/bulletin/network/logic/ChannelDownloader;

    invoke-virtual {v0}, Lcom/baidu/bulletin/network/logic/ChannelDownloader;->cancelAll()V

    .line 77
    :cond_0
    return-void
.end method

.method public download()V
    .locals 2

    .prologue
    .line 27
    sget-object v0, Lcom/baidu/bulletin/network/logic/UpdateInfoDownloader;->TAG:Ljava/lang/String;

    const-string v1, "downloadValidation >> "

    invoke-static {v0, v1}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/baidu/bulletin/network/logic/UpdateInfoDownloader;->mProtocolPackager:Lcom/baidu/bulletin/network/protocol/ProtocolPackager;

    new-instance v1, Lcom/baidu/bulletin/network/protocol/RawUpdate$Request;

    invoke-direct {v1}, Lcom/baidu/bulletin/network/protocol/RawUpdate$Request;-><init>()V

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/network/protocol/ProtocolPackager;->requestUpdateInfo(Lcom/baidu/bulletin/network/protocol/RawUpdate$Request;)V

    .line 29
    return-void
.end method
