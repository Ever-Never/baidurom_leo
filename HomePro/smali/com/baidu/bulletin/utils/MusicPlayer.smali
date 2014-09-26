.class public Lcom/baidu/bulletin/utils/MusicPlayer;
.super Ljava/lang/Object;
.source "MusicPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bulletin/utils/MusicPlayer$StateBarMonitor;,
        Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;,
        Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;,
        Lcom/baidu/bulletin/utils/MusicPlayer$Observer;,
        Lcom/baidu/bulletin/utils/MusicPlayer$Toast;,
        Lcom/baidu/bulletin/utils/MusicPlayer$State;
    }
.end annotation


# static fields
.field private static final FOCUSCHANGE:I = 0xa

.field private static final INTERVAL_CACHA_BUFFER_SIZE:J = 0x32000L

.field private static final INTIAL_PLAY_BUFFER_SIZE:J = 0x19000L

.field private static final MAX_STREAMMUSIC_TASK_COUNT:I = 0x1

.field private static final Notification_ID:I = 0x186a2

.field private static final STATUSBAR_TOGGL_ACTION:Ljava/lang/String; = "com.baidu.bulletin.utils.musicplayer.musicstatebar"

.field private static final StateBarContentText:Ljava/lang/String; = "Click to stop BaiduStyleLauncher Musci"

.field private static final StateBarContentTitle:Ljava/lang/String; = "BaiduStyleLauncher Musci"

.field private static TAG:Ljava/lang/String;

.field private static mMusicPlayer:Lcom/baidu/bulletin/utils/MusicPlayer;


# instance fields
.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBitRate:D

.field mBufferingUpdatelistener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private mChannel:Lcom/baidu/bulletin/entity/ChannelItem;

.field private mChannelItem:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

.field private mContext:Landroid/content/Context;

.field private mCurFilePath:Ljava/lang/String;

.field private mCurPlayer:Landroid/media/MediaPlayer;

.field private mCurrentPosition:I

.field private mDownloadList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;",
            ">;"
        }
    .end annotation
.end field

.field private mDownloadSize:J

.field mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mFileDownloadObserver:Lcom/baidu/bulletin/network/FileDownloader$Observer;

.field private mFileDownloader:Lcom/baidu/bulletin/network/FileDownloader;

.field private mIsAudioFucosChanged:Z

.field private mIsDownloadFailed:Z

.field private mIsInitialized:Z

.field private mIsRequestFocus:Z

.field private mIsResumeFirstTime:Z

.field private mIsStartDownloadOnce:Z

.field private mIsStarted:Z

.field private mIsWaitingData:Z

.field mLocalCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field mMediaCompletionListner:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mMediaplayerHandler:Landroid/os/Handler;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mObserver:Lcom/baidu/bulletin/utils/MusicPlayer$Observer;

.field mPreparedlistener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mPreviousDownloadSize:J

.field private mRequestObserver:Lcom/baidu/bulletin/network/RequestAccessTokenManager$TokenObserver;

.field private mSongDuration:I

.field private mState:Lcom/baidu/bulletin/utils/MusicPlayer$State;

.field private mTotalContentSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/baidu/bulletin/utils/MusicPlayer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/bulletin/utils/MusicPlayer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object v4, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mChannel:Lcom/baidu/bulletin/entity/ChannelItem;

    .line 54
    iput-object v4, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mChannelItem:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    .line 58
    iput-wide v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mDownloadSize:J

    .line 59
    iput-wide v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mPreviousDownloadSize:J

    .line 60
    iput-wide v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mTotalContentSize:J

    .line 61
    iput v3, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mSongDuration:I

    .line 62
    iput v3, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mCurrentPosition:I

    .line 63
    const-wide/high16 v0, -0x4010

    iput-wide v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mBitRate:D

    .line 65
    iput-boolean v2, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mIsStarted:Z

    .line 66
    iput-boolean v2, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mIsInitialized:Z

    .line 67
    iput-boolean v2, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mIsRequestFocus:Z

    .line 68
    iput-boolean v2, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mIsWaitingData:Z

    .line 69
    iput-boolean v2, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mIsResumeFirstTime:Z

    .line 70
    iput-boolean v2, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mIsDownloadFailed:Z

    .line 71
    iput-boolean v2, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mIsStartDownloadOnce:Z

    .line 72
    iput-boolean v2, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mIsAudioFucosChanged:Z

    .line 73
    sget-object v0, Lcom/baidu/bulletin/utils/MusicPlayer$State;->Idle:Lcom/baidu/bulletin/utils/MusicPlayer$State;

    iput-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mState:Lcom/baidu/bulletin/utils/MusicPlayer$State;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mDownloadList:Ljava/util/List;

    .line 119
    new-instance v0, Lcom/baidu/bulletin/utils/MusicPlayer$1;

    invoke-direct {v0, p0}, Lcom/baidu/bulletin/utils/MusicPlayer$1;-><init>(Lcom/baidu/bulletin/utils/MusicPlayer;)V

    iput-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mFileDownloadObserver:Lcom/baidu/bulletin/network/FileDownloader$Observer;

    .line 154
    new-instance v0, Lcom/baidu/bulletin/utils/MusicPlayer$2;

    invoke-direct {v0, p0}, Lcom/baidu/bulletin/utils/MusicPlayer$2;-><init>(Lcom/baidu/bulletin/utils/MusicPlayer;)V

    iput-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mRequestObserver:Lcom/baidu/bulletin/network/RequestAccessTokenManager$TokenObserver;

    .line 579
    new-instance v0, Lcom/baidu/bulletin/utils/MusicPlayer$3;

    invoke-direct {v0, p0}, Lcom/baidu/bulletin/utils/MusicPlayer$3;-><init>(Lcom/baidu/bulletin/utils/MusicPlayer;)V

    iput-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mLocalCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 591
    new-instance v0, Lcom/baidu/bulletin/utils/MusicPlayer$4;

    invoke-direct {v0, p0}, Lcom/baidu/bulletin/utils/MusicPlayer$4;-><init>(Lcom/baidu/bulletin/utils/MusicPlayer;)V

    iput-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mMediaCompletionListner:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 636
    new-instance v0, Lcom/baidu/bulletin/utils/MusicPlayer$5;

    invoke-direct {v0, p0}, Lcom/baidu/bulletin/utils/MusicPlayer$5;-><init>(Lcom/baidu/bulletin/utils/MusicPlayer;)V

    iput-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mPreparedlistener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 643
    new-instance v0, Lcom/baidu/bulletin/utils/MusicPlayer$6;

    invoke-direct {v0, p0}, Lcom/baidu/bulletin/utils/MusicPlayer$6;-><init>(Lcom/baidu/bulletin/utils/MusicPlayer;)V

    iput-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mBufferingUpdatelistener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 650
    new-instance v0, Lcom/baidu/bulletin/utils/MusicPlayer$7;

    invoke-direct {v0, p0}, Lcom/baidu/bulletin/utils/MusicPlayer$7;-><init>(Lcom/baidu/bulletin/utils/MusicPlayer;)V

    iput-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 868
    new-instance v0, Lcom/baidu/bulletin/utils/MusicPlayer$8;

    invoke-direct {v0, p0}, Lcom/baidu/bulletin/utils/MusicPlayer$8;-><init>(Lcom/baidu/bulletin/utils/MusicPlayer;)V

    iput-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 875
    new-instance v0, Lcom/baidu/bulletin/utils/MusicPlayer$9;

    invoke-direct {v0, p0}, Lcom/baidu/bulletin/utils/MusicPlayer$9;-><init>(Lcom/baidu/bulletin/utils/MusicPlayer;)V

    iput-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mMediaplayerHandler:Landroid/os/Handler;

    .line 110
    sput-object p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mMusicPlayer:Lcom/baidu/bulletin/utils/MusicPlayer;

    .line 111
    iput-object p1, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mContext:Landroid/content/Context;

    .line 112
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mCurPlayer:Landroid/media/MediaPlayer;

    .line 113
    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mAudioManager:Landroid/media/AudioManager;

    .line 114
    new-instance v0, Lcom/baidu/bulletin/network/FileDownloader;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/baidu/bulletin/network/FileDownloader;-><init>(I)V

    iput-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mFileDownloader:Lcom/baidu/bulletin/network/FileDownloader;

    .line 115
    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mNotificationManager:Landroid/app/NotificationManager;

    .line 116
    invoke-direct {p0}, Lcom/baidu/bulletin/utils/MusicPlayer;->cancelStatusBar()V

    .line 117
    return-void
.end method

.method private IsLocalFileExist(Ljava/lang/String;)Z
    .locals 1
    .parameter "filepath"

    .prologue
    .line 362
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method static synthetic access$000(Lcom/baidu/bulletin/utils/MusicPlayer;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mDownloadList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/baidu/bulletin/utils/MusicPlayer;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;Ljava/lang/String;)Lcom/baidu/bulletin/network/FileDownloader$Request;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/baidu/bulletin/utils/MusicPlayer;->downloadRequest(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;Ljava/lang/String;)Lcom/baidu/bulletin/network/FileDownloader$Request;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/baidu/bulletin/utils/MusicPlayer;)Lcom/baidu/bulletin/network/FileDownloader$Observer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mFileDownloadObserver:Lcom/baidu/bulletin/network/FileDownloader$Observer;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/baidu/bulletin/utils/MusicPlayer;)Lcom/baidu/bulletin/network/FileDownloader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mFileDownloader:Lcom/baidu/bulletin/network/FileDownloader;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/baidu/bulletin/utils/MusicPlayer;Lcom/baidu/bulletin/utils/MusicPlayer$State;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/utils/MusicPlayer;->setStateAndStatusBar(Lcom/baidu/bulletin/utils/MusicPlayer$State;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/baidu/bulletin/utils/MusicPlayer;Lcom/baidu/bulletin/utils/MusicPlayer$Toast;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/utils/MusicPlayer;->setToastState(Lcom/baidu/bulletin/utils/MusicPlayer$Toast;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/baidu/bulletin/utils/MusicPlayer;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/utils/MusicPlayer;->setProgressBar(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/baidu/bulletin/utils/MusicPlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/baidu/bulletin/utils/MusicPlayer;->cancelStatusBar()V

    return-void
.end method

.method static synthetic access$2400(Lcom/baidu/bulletin/utils/MusicPlayer;)Lcom/baidu/bulletin/network/RequestAccessTokenManager$TokenObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mRequestObserver:Lcom/baidu/bulletin/network/RequestAccessTokenManager$TokenObserver;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/baidu/bulletin/utils/MusicPlayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mCurrentPosition:I

    return v0
.end method

.method static synthetic access$2802(Lcom/baidu/bulletin/utils/MusicPlayer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput p1, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mCurrentPosition:I

    return p1
.end method

.method static synthetic access$2900(Lcom/baidu/bulletin/utils/MusicPlayer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mIsDownloadFailed:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/baidu/bulletin/utils/MusicPlayer;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mDownloadSize:J

    return-wide v0
.end method

.method static synthetic access$3100(Lcom/baidu/bulletin/utils/MusicPlayer;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mTotalContentSize:J

    return-wide v0
.end method

.method static synthetic access$3200(Lcom/baidu/bulletin/utils/MusicPlayer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mIsResumeFirstTime:Z

    return v0
.end method

.method static synthetic access$3202(Lcom/baidu/bulletin/utils/MusicPlayer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mIsResumeFirstTime:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/baidu/bulletin/utils/MusicPlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/baidu/bulletin/utils/MusicPlayer;->resumePlaying()V

    return-void
.end method

.method static synthetic access$3400(Lcom/baidu/bulletin/utils/MusicPlayer;)D
    .locals 2
    .parameter "x0"

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mBitRate:D

    return-wide v0
.end method

.method static synthetic access$3502(Lcom/baidu/bulletin/utils/MusicPlayer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mIsWaitingData:Z

    return p1
.end method

.method static synthetic access$3602(Lcom/baidu/bulletin/utils/MusicPlayer;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-wide p1, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mPreviousDownloadSize:J

    return-wide p1
.end method

.method static synthetic access$3800(Lcom/baidu/bulletin/utils/MusicPlayer;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/baidu/bulletin/utils/MusicPlayer;)Lcom/baidu/bulletin/utils/MusicPlayer$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mState:Lcom/baidu/bulletin/utils/MusicPlayer$State;

    return-object v0
.end method

.method static synthetic access$400(Lcom/baidu/bulletin/utils/MusicPlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/baidu/bulletin/utils/MusicPlayer;->downloadNextAndremoveOthers()V

    return-void
.end method

.method static synthetic access$4000(Lcom/baidu/bulletin/utils/MusicPlayer;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mMediaplayerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/baidu/bulletin/utils/MusicPlayer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mIsAudioFucosChanged:Z

    return v0
.end method

.method static synthetic access$4102(Lcom/baidu/bulletin/utils/MusicPlayer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mIsAudioFucosChanged:Z

    return p1
.end method

.method static synthetic access$4200(Lcom/baidu/bulletin/utils/MusicPlayer;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mCurPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$600(Lcom/baidu/bulletin/utils/MusicPlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/baidu/bulletin/utils/MusicPlayer;->resetData()V

    return-void
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/baidu/bulletin/utils/MusicPlayer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/baidu/bulletin/utils/MusicPlayer;Lcom/baidu/bulletin/network/FileDownloader$Response;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/utils/MusicPlayer;->taskCompleted(Lcom/baidu/bulletin/network/FileDownloader$Response;)V

    return-void
.end method

.method static synthetic access$900(Lcom/baidu/bulletin/utils/MusicPlayer;Lcom/baidu/bulletin/network/FileDownloader$FileItem;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/utils/MusicPlayer;->taskStarted(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)V

    return-void
.end method

.method private cancelStatusBar()V
    .locals 2

    .prologue
    .line 810
    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    .line 811
    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mNotificationManager:Landroid/app/NotificationManager;

    const v1, 0x186a2

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 812
    :cond_0
    return-void
.end method

.method private creatStreamItem(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V
    .locals 2
    .parameter "channel"

    .prologue
    .line 375
    new-instance v0, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;-><init>(Lcom/baidu/bulletin/utils/MusicPlayer;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;Lcom/baidu/bulletin/utils/MusicPlayer$1;)V

    .line 376
    .local v0, streamItem:Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;
    iget-object v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mDownloadList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 377
    iget-object v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mDownloadList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    :goto_0
    return-void

    .line 379
    :cond_0
    #calls: Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->createRequest()V
    invoke-static {v0}, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->access$2200(Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;)V

    .line 380
    iget-object v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mDownloadList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private creatStreamItem(Lcom/baidu/bulletin/entity/ChannelItem;)V
    .locals 2
    .parameter "channel"

    .prologue
    .line 366
    new-instance v0, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;-><init>(Lcom/baidu/bulletin/utils/MusicPlayer;Lcom/baidu/bulletin/entity/ChannelItem;Lcom/baidu/bulletin/utils/MusicPlayer$1;)V

    .line 367
    .local v0, streamItem:Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;
    iget-object v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mDownloadList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 368
    iget-object v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mDownloadList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    :goto_0
    return-void

    .line 370
    :cond_0
    #calls: Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->createRequest()V
    invoke-static {v0}, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->access$2200(Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;)V

    .line 371
    iget-object v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mDownloadList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private declared-synchronized downloadNextAndremoveOthers()V
    .locals 3

    .prologue
    .line 436
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mDownloadList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 437
    sget-object v1, Lcom/baidu/bulletin/utils/MusicPlayer$State;->Stopped:Lcom/baidu/bulletin/utils/MusicPlayer$State;

    iget-object v2, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mState:Lcom/baidu/bulletin/utils/MusicPlayer$State;

    if-ne v1, v2, :cond_1

    .line 438
    iget-object v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mDownloadList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 453
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 440
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/baidu/bulletin/utils/MusicPlayer;->isNetworkAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 441
    iget-object v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mDownloadList:Ljava/util/List;

    iget-object v2, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mDownloadList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;

    .line 442
    .local v0, streamItem:Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;
    iget-object v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mDownloadList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 443
    iget-object v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mDownloadList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 444
    #calls: Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->createRequest()V
    invoke-static {v0}, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->access$2200(Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 436
    .end local v0           #streamItem:Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 446
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mDownloadList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;

    const/4 v2, 0x0

    #setter for: Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->mRequestTokenSent:Z
    invoke-static {v1, v2}, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->access$1502(Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;Z)Z

    .line 447
    iget-object v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mDownloadList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;

    const/4 v2, 0x0

    #setter for: Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->mFiledownloadcalled:Z
    invoke-static {v1, v2}, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->access$302(Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;Z)Z

    .line 448
    iget-object v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mDownloadList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 449
    invoke-virtual {p0}, Lcom/baidu/bulletin/utils/MusicPlayer;->stop()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private downloadRequest(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;Ljava/lang/String;)Lcom/baidu/bulletin/network/FileDownloader$Request;
    .locals 2
    .parameter "channel"
    .parameter "songurl"

    .prologue
    const/4 v1, 0x1

    .line 469
    new-instance v0, Lcom/baidu/bulletin/network/FileDownloader$Request;

    invoke-direct {v0}, Lcom/baidu/bulletin/network/FileDownloader$Request;-><init>()V

    .line 470
    .local v0, request:Lcom/baidu/bulletin/network/FileDownloader$Request;
    iput-object p1, v0, Lcom/baidu/bulletin/network/FileDownloader$Request;->obj:Ljava/lang/Object;

    .line 471
    iput-boolean v1, v0, Lcom/baidu/bulletin/network/FileDownloader$Request;->StreamingFileFlag:Z

    .line 472
    iput-boolean v1, v0, Lcom/baidu/bulletin/network/FileDownloader$Request;->MusciFileFlag:Z

    .line 473
    iget-object v1, p1, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->content:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/bulletin/network/FileDownloader$Request;->songid:Ljava/lang/String;

    .line 474
    iput-object p2, v0, Lcom/baidu/bulletin/network/FileDownloader$Request;->downloadUrl:Ljava/lang/String;

    .line 475
    return-object v0
.end method

.method private downloadRequest(Lcom/baidu/bulletin/entity/ChannelItem;Ljava/lang/String;)Lcom/baidu/bulletin/network/FileDownloader$Request;
    .locals 2
    .parameter "channel"
    .parameter "songurl"

    .prologue
    const/4 v1, 0x1

    .line 460
    new-instance v0, Lcom/baidu/bulletin/network/FileDownloader$Request;

    invoke-direct {v0}, Lcom/baidu/bulletin/network/FileDownloader$Request;-><init>()V

    .line 461
    .local v0, request:Lcom/baidu/bulletin/network/FileDownloader$Request;
    iput-object p1, v0, Lcom/baidu/bulletin/network/FileDownloader$Request;->obj:Ljava/lang/Object;

    .line 462
    iput-boolean v1, v0, Lcom/baidu/bulletin/network/FileDownloader$Request;->StreamingFileFlag:Z

    .line 463
    iput-boolean v1, v0, Lcom/baidu/bulletin/network/FileDownloader$Request;->MusciFileFlag:Z

    .line 464
    iget-object v1, p1, Lcom/baidu/bulletin/entity/ChannelItem;->content:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/bulletin/network/FileDownloader$Request;->songid:Ljava/lang/String;

    .line 465
    iput-object p2, v0, Lcom/baidu/bulletin/network/FileDownloader$Request;->downloadUrl:Ljava/lang/String;

    .line 466
    return-object v0
.end method

.method public static getMusicPlayer()Lcom/baidu/bulletin/utils/MusicPlayer;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/baidu/bulletin/utils/MusicPlayer;->mMusicPlayer:Lcom/baidu/bulletin/utils/MusicPlayer;

    return-object v0
.end method

.method private isAvailable(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)Z
    .locals 1
    .parameter "channel"

    .prologue
    .line 734
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->content:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->content:Ljava/lang/String;

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

.method private isAvailable(Lcom/baidu/bulletin/entity/ChannelItem;)Z
    .locals 1
    .parameter "channel"

    .prologue
    .line 731
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/baidu/bulletin/entity/ChannelItem;->content:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/baidu/bulletin/entity/ChannelItem;->content:Ljava/lang/String;

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

.method private isNetworkAvailable()Z
    .locals 2

    .prologue
    .line 456
    invoke-static {}, Lcom/baidu/bulletin/utils/DeviceEnv$Network;->getOutgoingRoute()Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;

    move-result-object v0

    sget-object v1, Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;->NONE:Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static release()V
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/bulletin/utils/MusicPlayer;->mMusicPlayer:Lcom/baidu/bulletin/utils/MusicPlayer;

    .line 107
    return-void
.end method

.method private resetData()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 793
    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mCurPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 794
    iput-boolean v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mIsStarted:Z

    .line 795
    iput-boolean v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mIsWaitingData:Z

    .line 796
    iput-boolean v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mIsInitialized:Z

    .line 797
    iput-boolean v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mIsRequestFocus:Z

    .line 798
    iput-boolean v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mIsResumeFirstTime:Z

    .line 799
    iput-boolean v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mIsDownloadFailed:Z

    .line 800
    iput-boolean v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mIsStartDownloadOnce:Z

    .line 801
    iput-boolean v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mIsAudioFucosChanged:Z

    .line 802
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mCurFilePath:Ljava/lang/String;

    .line 803
    sget-object v0, Lcom/baidu/bulletin/utils/MusicPlayer$State;->Idle:Lcom/baidu/bulletin/utils/MusicPlayer$State;

    iput-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mState:Lcom/baidu/bulletin/utils/MusicPlayer$State;

    .line 804
    iput-wide v2, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mDownloadSize:J

    .line 805
    iput-wide v2, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mTotalContentSize:J

    .line 806
    const-wide/high16 v0, -0x4010

    iput-wide v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mBitRate:D

    .line 807
    return-void
.end method

.method private resetLocalPlayer(Ljava/lang/String;)V
    .locals 1
    .parameter "filepath"

    .prologue
    .line 754
    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mLocalCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-direct {p0, v0}, Lcom/baidu/bulletin/utils/MusicPlayer;->resetPlayerState(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 755
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/utils/MusicPlayer;->resetPlayerDataSource(Ljava/lang/String;)V

    .line 756
    return-void
.end method

.method private resetPlayerDataSource(Ljava/lang/String;)V
    .locals 4
    .parameter "filepath"

    .prologue
    .line 765
    :try_start_0
    sget-object v1, Lcom/baidu/bulletin/utils/MusicPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "play filepath is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    iget-object v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mCurPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 768
    iget-object v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mCurPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 769
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mIsInitialized:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 776
    :goto_0
    return-void

    .line 770
    :catch_0
    move-exception v0

    .line 771
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mIsInitialized:Z

    .line 772
    sget-object v1, Lcom/baidu/bulletin/utils/MusicPlayer$Toast;->FileInputStreamError:Lcom/baidu/bulletin/utils/MusicPlayer$Toast;

    invoke-direct {p0, v1}, Lcom/baidu/bulletin/utils/MusicPlayer;->setToastState(Lcom/baidu/bulletin/utils/MusicPlayer$Toast;)V

    .line 773
    invoke-virtual {p0}, Lcom/baidu/bulletin/utils/MusicPlayer;->stop()V

    .line 774
    sget-object v1, Lcom/baidu/bulletin/utils/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v2, "resetPlayerDataSource error!!!"

    invoke-static {v1, v2, v0}, Lcom/baidu/bulletin/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private resetPlayerState(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 4
    .parameter "CompletionListener"

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 779
    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mCurPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 780
    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mCurPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 781
    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mCurPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mPreparedlistener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 782
    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mCurPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 783
    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mCurPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mBufferingUpdatelistener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 784
    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mCurPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 785
    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mCurPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 787
    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1, v3, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 789
    iput-boolean v2, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mIsRequestFocus:Z

    .line 790
    return-void
.end method

.method private resetStreamPlayer(Ljava/lang/String;)V
    .locals 1
    .parameter "filepath"

    .prologue
    .line 759
    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mMediaCompletionListner:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-direct {p0, v0}, Lcom/baidu/bulletin/utils/MusicPlayer;->resetPlayerState(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 760
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/utils/MusicPlayer;->resetPlayerDataSource(Ljava/lang/String;)V

    .line 761
    return-void
.end method

.method private resumePlayer(Ljava/lang/String;)V
    .locals 0
    .parameter "filepath"

    .prologue
    .line 750
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/utils/MusicPlayer;->resetStreamPlayer(Ljava/lang/String;)V

    .line 751
    return-void
.end method

.method private resumePlaying()V
    .locals 2

    .prologue
    .line 743
    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mCurFilePath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/baidu/bulletin/utils/MusicPlayer;->resumePlayer(Ljava/lang/String;)V

    .line 744
    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mCurPlayer:Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mCurrentPosition:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 745
    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mCurPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 746
    sget-object v0, Lcom/baidu/bulletin/utils/MusicPlayer$State;->Playing:Lcom/baidu/bulletin/utils/MusicPlayer$State;

    invoke-direct {p0, v0}, Lcom/baidu/bulletin/utils/MusicPlayer;->setStateAndStatusBar(Lcom/baidu/bulletin/utils/MusicPlayer$State;)V

    .line 747
    return-void
.end method

.method private setProgressBar(I)V
    .locals 1
    .parameter "percent"

    .prologue
    .line 259
    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mObserver:Lcom/baidu/bulletin/utils/MusicPlayer$Observer;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mObserver:Lcom/baidu/bulletin/utils/MusicPlayer$Observer;

    invoke-interface {v0, p1}, Lcom/baidu/bulletin/utils/MusicPlayer$Observer;->onProgressBarUpdata(I)V

    .line 262
    :cond_0
    return-void
.end method

.method private setStateAndStatusBar(Lcom/baidu/bulletin/utils/MusicPlayer$State;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 245
    iput-object p1, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mState:Lcom/baidu/bulletin/utils/MusicPlayer$State;

    .line 246
    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mObserver:Lcom/baidu/bulletin/utils/MusicPlayer$Observer;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mObserver:Lcom/baidu/bulletin/utils/MusicPlayer$Observer;

    iget-object v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mState:Lcom/baidu/bulletin/utils/MusicPlayer$State;

    invoke-interface {v0, v1}, Lcom/baidu/bulletin/utils/MusicPlayer$Observer;->onStateChanged(Lcom/baidu/bulletin/utils/MusicPlayer$State;)V

    .line 249
    :cond_0
    invoke-direct {p0}, Lcom/baidu/bulletin/utils/MusicPlayer;->updateStatusBar()V

    .line 250
    return-void
.end method

.method private setToastState(Lcom/baidu/bulletin/utils/MusicPlayer$Toast;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 253
    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mObserver:Lcom/baidu/bulletin/utils/MusicPlayer$Observer;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mObserver:Lcom/baidu/bulletin/utils/MusicPlayer$Observer;

    invoke-interface {v0, p1}, Lcom/baidu/bulletin/utils/MusicPlayer$Observer;->onToastStateChanged(Lcom/baidu/bulletin/utils/MusicPlayer$Toast;)V

    .line 256
    :cond_0
    return-void
.end method

.method private taskCompleted(Lcom/baidu/bulletin/network/FileDownloader$Response;)V
    .locals 4
    .parameter "response"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 691
    iget-object v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mDownloadList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;

    #setter for: Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->mFiledownloadcalled:Z
    invoke-static {v1, v2}, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->access$302(Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;Z)Z

    .line 692
    iget-object v1, p1, Lcom/baidu/bulletin/network/FileDownloader$Response;->downloadPath:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 693
    sget-object v1, Lcom/baidu/bulletin/utils/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v2, "on taskCompleted, task failed... >>>"

    invoke-static {v1, v2}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    iput-boolean v3, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mIsDownloadFailed:Z

    .line 698
    iget-object v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mDownloadList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 699
    invoke-virtual {p0}, Lcom/baidu/bulletin/utils/MusicPlayer;->stop()V

    .line 700
    sget-object v1, Lcom/baidu/bulletin/utils/MusicPlayer$Toast;->TransmissionError:Lcom/baidu/bulletin/utils/MusicPlayer$Toast;

    invoke-direct {p0, v1}, Lcom/baidu/bulletin/utils/MusicPlayer;->setToastState(Lcom/baidu/bulletin/utils/MusicPlayer$Toast;)V

    .line 728
    :goto_0
    return-void

    .line 702
    :cond_0
    iget-boolean v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mIsStartDownloadOnce:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mDownloadList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;

    #getter for: Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->mSetDataSourceOnce:Z
    invoke-static {v1}, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->access$3700(Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 703
    iget-object v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mDownloadList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;

    #setter for: Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->mSetDataSourceOnce:Z
    invoke-static {v1, v3}, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->access$3702(Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;Z)Z

    .line 704
    sget-object v1, Lcom/baidu/bulletin/utils/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v2, "file exist in local folder, resetLocalPlayer"

    invoke-static {v1, v2}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    iget-object v1, p1, Lcom/baidu/bulletin/network/FileDownloader$Response;->downloadPath:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/baidu/bulletin/utils/MusicPlayer;->resetLocalPlayer(Ljava/lang/String;)V

    .line 706
    sget-object v1, Lcom/baidu/bulletin/utils/MusicPlayer$State;->Playing:Lcom/baidu/bulletin/utils/MusicPlayer$State;

    invoke-direct {p0, v1}, Lcom/baidu/bulletin/utils/MusicPlayer;->setStateAndStatusBar(Lcom/baidu/bulletin/utils/MusicPlayer$State;)V

    .line 707
    invoke-virtual {p0}, Lcom/baidu/bulletin/utils/MusicPlayer;->start()V

    .line 712
    :cond_1
    sget-object v1, Lcom/baidu/bulletin/utils/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v2, "save data to database"

    invoke-static {v1, v2}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    :try_start_0
    invoke-static {}, Lcom/baidu/bulletin/db/manager/DatabaseManager;->getInstance()Lcom/baidu/bulletin/db/manager/DatabaseManager;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mChannelItem:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    iget-wide v2, v2, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->_id:J

    invoke-virtual {v1, v2, v3}, Lcom/baidu/bulletin/db/manager/DatabaseManager;->queryChannelItem(J)Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mChannelItem:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    .line 721
    iget-object v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mChannelItem:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    iget-object v2, p1, Lcom/baidu/bulletin/network/FileDownloader$Response;->downloadPath:Ljava/lang/String;

    iput-object v2, v1, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->content:Ljava/lang/String;

    .line 722
    invoke-static {}, Lcom/baidu/bulletin/db/manager/DatabaseManager;->getInstance()Lcom/baidu/bulletin/db/manager/DatabaseManager;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mChannelItem:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    invoke-virtual {v1, v2}, Lcom/baidu/bulletin/db/manager/DatabaseManager;->updateChannelItem(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 726
    :goto_1
    iget-object v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mDownloadList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 723
    :catch_0
    move-exception v0

    .line 724
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/baidu/bulletin/utils/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v2, "Save or update channel in musicplayer failed"

    invoke-static {v1, v2, v0}, Lcom/baidu/bulletin/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private taskStarted(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)V
    .locals 6
    .parameter "fileitem"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 660
    iput-boolean v5, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mIsStartDownloadOnce:Z

    .line 661
    iget-wide v0, p1, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mFileSize:J

    iput-wide v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mTotalContentSize:J

    .line 662
    iget-wide v0, p1, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mFinished:J

    iput-wide v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mDownloadSize:J

    .line 663
    iget-wide v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mDownloadSize:J

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mTotalContentSize:J

    div-long/2addr v0, v2

    long-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/baidu/bulletin/utils/MusicPlayer;->setProgressBar(I)V

    .line 665
    iget-wide v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mDownloadSize:J

    const-wide/32 v2, 0x19000

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mDownloadList:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;

    #getter for: Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->mSetDataSourceOnce:Z
    invoke-static {v0}, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->access$3700(Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 666
    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mDownloadList:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;

    #setter for: Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->mSetDataSourceOnce:Z
    invoke-static {v0, v5}, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->access$3702(Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;Z)Z

    .line 667
    iget-object v0, p1, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mTmpFilePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mCurFilePath:Ljava/lang/String;

    .line 668
    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mDownloadList:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;

    #getter for: Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->mFiledownloadCancelled:Z
    invoke-static {v0}, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->access$200(Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 669
    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mCurFilePath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/baidu/bulletin/utils/MusicPlayer;->resetStreamPlayer(Ljava/lang/String;)V

    .line 672
    :cond_0
    iget-boolean v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mIsInitialized:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mDownloadList:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;

    #getter for: Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->mFiledownloadCancelled:Z
    invoke-static {v0}, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->access$200(Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 673
    sget-object v0, Lcom/baidu/bulletin/utils/MusicPlayer$State;->Playing:Lcom/baidu/bulletin/utils/MusicPlayer$State;

    invoke-direct {p0, v0}, Lcom/baidu/bulletin/utils/MusicPlayer;->setStateAndStatusBar(Lcom/baidu/bulletin/utils/MusicPlayer$State;)V

    .line 674
    invoke-virtual {p0}, Lcom/baidu/bulletin/utils/MusicPlayer;->start()V

    .line 675
    iget-wide v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mTotalContentSize:J

    iget-object v2, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mCurPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v2

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-double v0, v0

    iput-wide v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mBitRate:D

    .line 676
    sget-object v0, Lcom/baidu/bulletin/utils/MusicPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duration is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mCurPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", BitRate is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mBitRate:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    :cond_1
    iput-boolean v4, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mIsStarted:Z

    .line 680
    iget-wide v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mDownloadSize:J

    iput-wide v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mPreviousDownloadSize:J

    .line 683
    :cond_2
    iget-boolean v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mIsWaitingData:Z

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mDownloadSize:J

    iget-wide v2, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mPreviousDownloadSize:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x32000

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3

    .line 684
    sget-object v0, Lcom/baidu/bulletin/utils/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v1, "Resume playing >>>"

    invoke-static {v0, v1}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    invoke-direct {p0}, Lcom/baidu/bulletin/utils/MusicPlayer;->resumePlaying()V

    .line 686
    iput-boolean v4, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mIsWaitingData:Z

    .line 688
    :cond_3
    return-void
.end method

.method private updateStatusBar()V
    .locals 9

    .prologue
    const v8, 0x7f0202d7

    const v7, 0x186a2

    const v6, 0x7f0800d1

    .line 815
    iget-object v4, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mChannelItem:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v4, :cond_1

    .line 843
    :cond_0
    :goto_0
    return-void

    .line 817
    :cond_1
    new-instance v3, Landroid/widget/RemoteViews;

    iget-object v4, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f030032

    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 818
    .local v3, views:Landroid/widget/RemoteViews;
    const v4, 0x7f0800ce

    invoke-virtual {v3, v4, v8}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 819
    const v4, 0x7f0800cf

    iget-object v5, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mChannelItem:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    iget-object v5, v5, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->title:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 820
    const v4, 0x7f0800d0

    iget-object v5, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mChannelItem:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    iget-object v5, v5, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->brief:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 822
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 825
    .local v2, status:Landroid/app/Notification;
    iget v4, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x20

    iput v4, v2, Landroid/app/Notification;->flags:I

    .line 826
    iput-object v3, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 827
    iput v8, v2, Landroid/app/Notification;->icon:I

    .line 829
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.baidu.bulletin.utils.musicplayer.musicstatebar"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 830
    .local v1, notificationIntent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mContext:Landroid/content/Context;

    const/high16 v5, 0x800

    invoke-static {v4, v7, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 833
    .local v0, contentIntent:Landroid/app/PendingIntent;
    iget-object v4, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v4, v6, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 837
    sget-object v4, Lcom/baidu/bulletin/utils/MusicPlayer$State;->Playing:Lcom/baidu/bulletin/utils/MusicPlayer$State;

    iget-object v5, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mState:Lcom/baidu/bulletin/utils/MusicPlayer$State;

    if-ne v4, v5, :cond_2

    .line 838
    const v4, 0x7f02023a

    invoke-virtual {v3, v6, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 842
    :goto_1
    iget-object v4, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v4, v7, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 840
    :cond_2
    const v4, 0x7f02023d

    invoke-virtual {v3, v6, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_1
.end method


# virtual methods
.method public close()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 539
    sget-object v0, Lcom/baidu/bulletin/utils/MusicPlayer$State;->Stopped:Lcom/baidu/bulletin/utils/MusicPlayer$State;

    invoke-direct {p0, v0}, Lcom/baidu/bulletin/utils/MusicPlayer;->setStateAndStatusBar(Lcom/baidu/bulletin/utils/MusicPlayer$State;)V

    .line 540
    invoke-direct {p0}, Lcom/baidu/bulletin/utils/MusicPlayer;->cancelStatusBar()V

    .line 541
    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mDownloadList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v1, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;->RequestTokenSent:Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;

    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mDownloadList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;

    #getter for: Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->mState:Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;
    invoke-static {v0}, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->access$2500(Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;)Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;

    move-result-object v0

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mDownloadList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;

    #getter for: Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->mRequestTokenCalledOnce:Z
    invoke-static {v0}, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->access$1600(Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mDownloadList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;

    #calls: Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->cancelRequest()V
    invoke-static {v0}, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->access$2600(Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;)V

    .line 544
    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mDownloadList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;

    sget-object v1, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;->RequestTokenCanceled:Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;

    #calls: Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->setState(Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;)V
    invoke-static {v0, v1}, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->access$100(Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;)V

    .line 545
    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mDownloadList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;

    #setter for: Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->mRequestTokenCalledOnce:Z
    invoke-static {v0, v3}, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->access$1602(Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;Z)Z

    .line 546
    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mDownloadList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;

    #setter for: Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->mRequestTokenCancelled:Z
    invoke-static {v0, v3}, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->access$1002(Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;Z)Z

    .line 547
    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mDownloadList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;

    #setter for: Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->mRequestTokenSent:Z
    invoke-static {v0, v2}, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->access$1502(Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;Z)Z

    .line 550
    :cond_0
    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mDownloadList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    sget-object v1, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;->Filedownloadcalled:Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;

    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mDownloadList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;

    #getter for: Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->mState:Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;
    invoke-static {v0}, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->access$2500(Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;)Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;

    move-result-object v0

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mDownloadList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;

    #getter for: Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->mFiledownloadCalledOnce:Z
    invoke-static {v0}, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->access$2700(Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 552
    sget-object v0, Lcom/baidu/bulletin/utils/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v1, "Downloading task exist, cancelAllTask >>>"

    invoke-static {v0, v1}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mDownloadList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;

    #setter for: Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->mFiledownloadCancelled:Z
    invoke-static {v0, v3}, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->access$202(Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;Z)Z

    .line 554
    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mDownloadList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;

    #setter for: Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->mFiledownloadCalledOnce:Z
    invoke-static {v0, v3}, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->access$2702(Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;Z)Z

    .line 555
    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mFileDownloader:Lcom/baidu/bulletin/network/FileDownloader;

    iget-object v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mFileDownloadObserver:Lcom/baidu/bulletin/network/FileDownloader$Observer;

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/network/FileDownloader;->cancelStreamMusic(Lcom/baidu/bulletin/network/FileDownloader$Observer;)V

    .line 558
    :cond_1
    iget-boolean v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mIsInitialized:Z

    if-eqz v0, :cond_2

    .line 559
    iput-boolean v2, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mIsInitialized:Z

    .line 560
    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mCurPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 561
    sget-object v0, Lcom/baidu/bulletin/utils/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v1, "MusicPlayer stoped!!! >>>"

    invoke-static {v0, v1}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mCurPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 565
    :cond_2
    iget-boolean v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mIsRequestFocus:Z

    if-eqz v0, :cond_4

    .line 566
    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_3

    .line 567
    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 568
    :cond_3
    iput-boolean v2, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mIsRequestFocus:Z

    .line 571
    :cond_4
    iput-object v4, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mCurPlayer:Landroid/media/MediaPlayer;

    .line 572
    iput-object v4, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mAudioManager:Landroid/media/AudioManager;

    .line 573
    iput-object v4, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mNotificationManager:Landroid/app/NotificationManager;

    .line 574
    return-void
.end method

.method public getCurrentChannel()Lcom/baidu/bulletin/entity/ChannelItem;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mChannel:Lcom/baidu/bulletin/entity/ChannelItem;

    return-object v0
.end method

.method public getCurrentChannelItem()Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mChannelItem:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    return-object v0
.end method

.method public getState(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)Lcom/baidu/bulletin/utils/MusicPlayer$State;
    .locals 1
    .parameter "channel"

    .prologue
    .line 232
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/utils/MusicPlayer;->isAvailable(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mChannelItem:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    invoke-virtual {p1, v0}, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->isSame(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mState:Lcom/baidu/bulletin/utils/MusicPlayer$State;

    .line 235
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/baidu/bulletin/utils/MusicPlayer$State;->Idle:Lcom/baidu/bulletin/utils/MusicPlayer$State;

    goto :goto_0
.end method

.method public getState(Lcom/baidu/bulletin/entity/ChannelItem;)Lcom/baidu/bulletin/utils/MusicPlayer$State;
    .locals 1
    .parameter "channel"

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/utils/MusicPlayer;->isAvailable(Lcom/baidu/bulletin/entity/ChannelItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mChannel:Lcom/baidu/bulletin/entity/ChannelItem;

    invoke-virtual {p1, v0}, Lcom/baidu/bulletin/entity/ChannelItem;->isSame(Lcom/baidu/bulletin/entity/ChannelItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mState:Lcom/baidu/bulletin/utils/MusicPlayer$State;

    .line 229
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/baidu/bulletin/utils/MusicPlayer$State;->Idle:Lcom/baidu/bulletin/utils/MusicPlayer$State;

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 489
    iget-boolean v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mIsInitialized:Z

    if-eqz v0, :cond_0

    .line 490
    sget-object v0, Lcom/baidu/bulletin/utils/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v1, "MusicPlayer paused!!! >>>"

    invoke-static {v0, v1}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mCurPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 493
    :cond_0
    sget-object v0, Lcom/baidu/bulletin/utils/MusicPlayer$State;->Paused:Lcom/baidu/bulletin/utils/MusicPlayer$State;

    invoke-direct {p0, v0}, Lcom/baidu/bulletin/utils/MusicPlayer;->setStateAndStatusBar(Lcom/baidu/bulletin/utils/MusicPlayer$State;)V

    .line 494
    return-void
.end method

.method public play()V
    .locals 4

    .prologue
    .line 479
    iget-boolean v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mIsInitialized:Z

    if-eqz v0, :cond_0

    .line 480
    sget-object v0, Lcom/baidu/bulletin/utils/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v1, "MusicPlayer play!!! >>>"

    invoke-static {v0, v1}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 483
    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mCurPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 485
    :cond_0
    sget-object v0, Lcom/baidu/bulletin/utils/MusicPlayer$State;->Playing:Lcom/baidu/bulletin/utils/MusicPlayer$State;

    invoke-direct {p0, v0}, Lcom/baidu/bulletin/utils/MusicPlayer;->setStateAndStatusBar(Lcom/baidu/bulletin/utils/MusicPlayer$State;)V

    .line 486
    return-void
.end method

.method public refreshUiObserver(Lcom/baidu/bulletin/utils/MusicPlayer$Observer;)V
    .locals 0
    .parameter "observer"

    .prologue
    .line 239
    if-eqz p1, :cond_0

    .line 240
    iput-object p1, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mObserver:Lcom/baidu/bulletin/utils/MusicPlayer$Observer;

    .line 242
    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 738
    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mCurPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 739
    sget-object v0, Lcom/baidu/bulletin/utils/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v1, "Start playing music >>>"

    invoke-static {v0, v1}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    return-void
.end method

.method public startPlayer(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;Lcom/baidu/bulletin/utils/MusicPlayer$Observer;)V
    .locals 3
    .parameter "channel"
    .parameter "observer"

    .prologue
    .line 314
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/utils/MusicPlayer;->isAvailable(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 315
    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mChannelItem:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    invoke-virtual {p1, v0}, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->isSame(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mChannelItem:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    if-eqz v0, :cond_0

    .line 317
    invoke-virtual {p0}, Lcom/baidu/bulletin/utils/MusicPlayer;->stop()V

    .line 321
    :cond_0
    iput-object p2, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mObserver:Lcom/baidu/bulletin/utils/MusicPlayer$Observer;

    .line 323
    :try_start_0
    invoke-static {}, Lcom/baidu/bulletin/db/manager/DatabaseManager;->getInstance()Lcom/baidu/bulletin/db/manager/DatabaseManager;

    move-result-object v0

    iget-wide v1, p1, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->_id:J

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bulletin/db/manager/DatabaseManager;->queryChannelItem(J)Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mChannelItem:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    :try_end_0
    .catch Lcom/baidu/bulletin/db/exception/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    :goto_0
    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mChannelItem:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mChannelItem:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    .line 329
    :cond_1
    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mChannelItem:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    iget-object v0, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->content:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/baidu/bulletin/utils/MusicPlayer;->IsLocalFileExist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 332
    sget-object v0, Lcom/baidu/bulletin/utils/MusicPlayer$State;->Waiting:Lcom/baidu/bulletin/utils/MusicPlayer$State;

    invoke-direct {p0, v0}, Lcom/baidu/bulletin/utils/MusicPlayer;->setStateAndStatusBar(Lcom/baidu/bulletin/utils/MusicPlayer$State;)V

    .line 333
    invoke-static {}, Lcom/baidu/bulletin/utils/DeviceEnv$Network;->getOutgoingRoute()Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;

    move-result-object v0

    sget-object v1, Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;->WIFI:Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;

    if-ne v0, v1, :cond_2

    .line 334
    sget-object v0, Lcom/baidu/bulletin/utils/MusicPlayer$Toast;->ViaWIFINetwork:Lcom/baidu/bulletin/utils/MusicPlayer$Toast;

    invoke-direct {p0, v0}, Lcom/baidu/bulletin/utils/MusicPlayer;->setToastState(Lcom/baidu/bulletin/utils/MusicPlayer$Toast;)V

    .line 335
    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mChannelItem:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    invoke-direct {p0, v0}, Lcom/baidu/bulletin/utils/MusicPlayer;->creatStreamItem(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V

    .line 358
    :goto_1
    return-void

    .line 337
    :cond_2
    invoke-static {}, Lcom/baidu/bulletin/utils/DeviceEnv$Network;->getOutgoingRoute()Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;

    move-result-object v0

    sget-object v1, Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;->MOBILE:Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;

    if-ne v0, v1, :cond_3

    .line 338
    sget-object v0, Lcom/baidu/bulletin/utils/MusicPlayer$Toast;->ViaMOBILENetwork:Lcom/baidu/bulletin/utils/MusicPlayer$Toast;

    invoke-direct {p0, v0}, Lcom/baidu/bulletin/utils/MusicPlayer;->setToastState(Lcom/baidu/bulletin/utils/MusicPlayer$Toast;)V

    .line 339
    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mChannelItem:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    invoke-direct {p0, v0}, Lcom/baidu/bulletin/utils/MusicPlayer;->creatStreamItem(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V

    goto :goto_1

    .line 342
    :cond_3
    sget-object v0, Lcom/baidu/bulletin/utils/MusicPlayer$Toast;->NetworkInvalid:Lcom/baidu/bulletin/utils/MusicPlayer$Toast;

    invoke-direct {p0, v0}, Lcom/baidu/bulletin/utils/MusicPlayer;->setToastState(Lcom/baidu/bulletin/utils/MusicPlayer$Toast;)V

    .line 356
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/baidu/bulletin/utils/MusicPlayer;->stop()V

    .line 357
    sget-object v0, Lcom/baidu/bulletin/utils/MusicPlayer$Toast;->ChannelContentError:Lcom/baidu/bulletin/utils/MusicPlayer$Toast;

    invoke-direct {p0, v0}, Lcom/baidu/bulletin/utils/MusicPlayer;->setToastState(Lcom/baidu/bulletin/utils/MusicPlayer$Toast;)V

    goto :goto_1

    .line 345
    :cond_5
    invoke-direct {p0}, Lcom/baidu/bulletin/utils/MusicPlayer;->resetData()V

    .line 346
    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mChannelItem:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    iget-object v0, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->content:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/baidu/bulletin/utils/MusicPlayer;->resetLocalPlayer(Ljava/lang/String;)V

    .line 347
    iget-boolean v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mIsInitialized:Z

    if-eqz v0, :cond_4

    .line 348
    invoke-virtual {p0}, Lcom/baidu/bulletin/utils/MusicPlayer;->start()V

    .line 349
    sget-object v0, Lcom/baidu/bulletin/utils/MusicPlayer$State;->Playing:Lcom/baidu/bulletin/utils/MusicPlayer$State;

    invoke-direct {p0, v0}, Lcom/baidu/bulletin/utils/MusicPlayer;->setStateAndStatusBar(Lcom/baidu/bulletin/utils/MusicPlayer$State;)V

    goto :goto_1

    .line 354
    :cond_6
    sget-object v0, Lcom/baidu/bulletin/utils/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v1, "Channel content error!!!>>>"

    invoke-static {v0, v1}, Lcom/baidu/bulletin/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 324
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public startPlayer(Lcom/baidu/bulletin/entity/ChannelItem;Lcom/baidu/bulletin/utils/MusicPlayer$Observer;)V
    .locals 4
    .parameter "channel"
    .parameter "observer"

    .prologue
    .line 265
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/utils/MusicPlayer;->isAvailable(Lcom/baidu/bulletin/entity/ChannelItem;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 266
    iget-object v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mChannel:Lcom/baidu/bulletin/entity/ChannelItem;

    invoke-virtual {p1, v1}, Lcom/baidu/bulletin/entity/ChannelItem;->isSame(Lcom/baidu/bulletin/entity/ChannelItem;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 267
    iget-object v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mChannel:Lcom/baidu/bulletin/entity/ChannelItem;

    if-eqz v1, :cond_0

    .line 268
    invoke-virtual {p0}, Lcom/baidu/bulletin/utils/MusicPlayer;->stop()V

    .line 272
    :cond_0
    iput-object p2, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mObserver:Lcom/baidu/bulletin/utils/MusicPlayer$Observer;

    .line 275
    :try_start_0
    invoke-static {}, Lcom/baidu/bulletin/DataRepository;->getInstance()Lcom/baidu/bulletin/DataRepository;

    move-result-object v0

    .line 276
    .local v0, dataRepository:Lcom/baidu/bulletin/DataRepository;
    invoke-virtual {p1}, Lcom/baidu/bulletin/entity/ChannelItem;->get_Id()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bulletin/DataRepository;->queryChannelItem(J)Lcom/baidu/bulletin/entity/ChannelItem;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mChannel:Lcom/baidu/bulletin/entity/ChannelItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    .end local v0           #dataRepository:Lcom/baidu/bulletin/DataRepository;
    :goto_0
    iget-object v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mChannel:Lcom/baidu/bulletin/entity/ChannelItem;

    if-nez v1, :cond_1

    iput-object p1, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mChannel:Lcom/baidu/bulletin/entity/ChannelItem;

    .line 281
    :cond_1
    iget-object v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mChannel:Lcom/baidu/bulletin/entity/ChannelItem;

    iget v1, v1, Lcom/baidu/bulletin/entity/ChannelItem;->detailDownloaded:I

    if-nez v1, :cond_5

    .line 284
    sget-object v1, Lcom/baidu/bulletin/utils/MusicPlayer$State;->Waiting:Lcom/baidu/bulletin/utils/MusicPlayer$State;

    invoke-direct {p0, v1}, Lcom/baidu/bulletin/utils/MusicPlayer;->setStateAndStatusBar(Lcom/baidu/bulletin/utils/MusicPlayer$State;)V

    .line 285
    invoke-static {}, Lcom/baidu/bulletin/utils/DeviceEnv$Network;->getOutgoingRoute()Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;

    move-result-object v1

    sget-object v2, Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;->WIFI:Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;

    if-ne v1, v2, :cond_2

    .line 286
    sget-object v1, Lcom/baidu/bulletin/utils/MusicPlayer$Toast;->ViaWIFINetwork:Lcom/baidu/bulletin/utils/MusicPlayer$Toast;

    invoke-direct {p0, v1}, Lcom/baidu/bulletin/utils/MusicPlayer;->setToastState(Lcom/baidu/bulletin/utils/MusicPlayer$Toast;)V

    .line 287
    iget-object v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mChannel:Lcom/baidu/bulletin/entity/ChannelItem;

    invoke-direct {p0, v1}, Lcom/baidu/bulletin/utils/MusicPlayer;->creatStreamItem(Lcom/baidu/bulletin/entity/ChannelItem;)V

    .line 312
    :goto_1
    return-void

    .line 289
    :cond_2
    invoke-static {}, Lcom/baidu/bulletin/utils/DeviceEnv$Network;->getOutgoingRoute()Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;

    move-result-object v1

    sget-object v2, Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;->MOBILE:Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;

    if-ne v1, v2, :cond_3

    .line 290
    sget-object v1, Lcom/baidu/bulletin/utils/MusicPlayer$Toast;->ViaMOBILENetwork:Lcom/baidu/bulletin/utils/MusicPlayer$Toast;

    invoke-direct {p0, v1}, Lcom/baidu/bulletin/utils/MusicPlayer;->setToastState(Lcom/baidu/bulletin/utils/MusicPlayer$Toast;)V

    .line 291
    iget-object v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mChannel:Lcom/baidu/bulletin/entity/ChannelItem;

    invoke-direct {p0, v1}, Lcom/baidu/bulletin/utils/MusicPlayer;->creatStreamItem(Lcom/baidu/bulletin/entity/ChannelItem;)V

    goto :goto_1

    .line 294
    :cond_3
    sget-object v1, Lcom/baidu/bulletin/utils/MusicPlayer$Toast;->NetworkInvalid:Lcom/baidu/bulletin/utils/MusicPlayer$Toast;

    invoke-direct {p0, v1}, Lcom/baidu/bulletin/utils/MusicPlayer;->setToastState(Lcom/baidu/bulletin/utils/MusicPlayer$Toast;)V

    .line 310
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/baidu/bulletin/utils/MusicPlayer;->stop()V

    .line 311
    sget-object v1, Lcom/baidu/bulletin/utils/MusicPlayer$Toast;->ChannelContentError:Lcom/baidu/bulletin/utils/MusicPlayer$Toast;

    invoke-direct {p0, v1}, Lcom/baidu/bulletin/utils/MusicPlayer;->setToastState(Lcom/baidu/bulletin/utils/MusicPlayer$Toast;)V

    goto :goto_1

    .line 296
    :cond_5
    iget-object v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mChannel:Lcom/baidu/bulletin/entity/ChannelItem;

    iget-object v1, v1, Lcom/baidu/bulletin/entity/ChannelItem;->content:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/baidu/bulletin/utils/MusicPlayer;->IsLocalFileExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 297
    invoke-direct {p0}, Lcom/baidu/bulletin/utils/MusicPlayer;->resetData()V

    .line 298
    iget-object v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mChannel:Lcom/baidu/bulletin/entity/ChannelItem;

    iget-object v1, v1, Lcom/baidu/bulletin/entity/ChannelItem;->content:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/baidu/bulletin/utils/MusicPlayer;->resetLocalPlayer(Ljava/lang/String;)V

    .line 299
    iget-boolean v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mIsInitialized:Z

    if-eqz v1, :cond_4

    .line 300
    invoke-virtual {p0}, Lcom/baidu/bulletin/utils/MusicPlayer;->start()V

    .line 301
    sget-object v1, Lcom/baidu/bulletin/utils/MusicPlayer$State;->Playing:Lcom/baidu/bulletin/utils/MusicPlayer$State;

    invoke-direct {p0, v1}, Lcom/baidu/bulletin/utils/MusicPlayer;->setStateAndStatusBar(Lcom/baidu/bulletin/utils/MusicPlayer$State;)V

    goto :goto_1

    .line 305
    :cond_6
    sget-object v1, Lcom/baidu/bulletin/utils/MusicPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Channel content is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mChannel:Lcom/baidu/bulletin/entity/ChannelItem;

    iget-object v3, v3, Lcom/baidu/bulletin/entity/ChannelItem;->content:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",  error!!!>>>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/bulletin/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 308
    :cond_7
    sget-object v1, Lcom/baidu/bulletin/utils/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v2, "Channel content error!!!>>>"

    invoke-static {v1, v2}, Lcom/baidu/bulletin/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 277
    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method

.method public stop()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 497
    sget-object v1, Lcom/baidu/bulletin/utils/MusicPlayer$State;->Stopped:Lcom/baidu/bulletin/utils/MusicPlayer$State;

    invoke-direct {p0, v1}, Lcom/baidu/bulletin/utils/MusicPlayer;->setStateAndStatusBar(Lcom/baidu/bulletin/utils/MusicPlayer$State;)V

    .line 498
    invoke-direct {p0, v3}, Lcom/baidu/bulletin/utils/MusicPlayer;->setProgressBar(I)V

    .line 499
    invoke-direct {p0}, Lcom/baidu/bulletin/utils/MusicPlayer;->cancelStatusBar()V

    .line 501
    iget-object v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mDownloadList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    sget-object v2, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;->RequestTokenSent:Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;

    iget-object v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mDownloadList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;

    #getter for: Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->mState:Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;
    invoke-static {v1}, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->access$2500(Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;)Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;

    move-result-object v1

    if-ne v2, v1, :cond_0

    iget-object v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mDownloadList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;

    #getter for: Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->mRequestTokenCalledOnce:Z
    invoke-static {v1}, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->access$1600(Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 503
    iget-object v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mDownloadList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;

    #calls: Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->cancelRequest()V
    invoke-static {v1}, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->access$2600(Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;)V

    .line 504
    iget-object v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mDownloadList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;

    sget-object v2, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;->RequestTokenCanceled:Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;

    #calls: Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->setState(Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;)V
    invoke-static {v1, v2}, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->access$100(Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;)V

    .line 505
    iget-object v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mDownloadList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;

    #setter for: Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->mRequestTokenCalledOnce:Z
    invoke-static {v1, v4}, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->access$1602(Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;Z)Z

    .line 506
    iget-object v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mDownloadList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;

    #setter for: Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->mRequestTokenCancelled:Z
    invoke-static {v1, v4}, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->access$1002(Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;Z)Z

    .line 507
    iget-object v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mDownloadList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;

    #setter for: Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->mRequestTokenSent:Z
    invoke-static {v1, v3}, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->access$1502(Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;Z)Z

    .line 510
    :cond_0
    iget-object v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mDownloadList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    sget-object v2, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;->Filedownloadcalled:Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;

    iget-object v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mDownloadList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;

    #getter for: Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->mState:Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;
    invoke-static {v1}, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->access$2500(Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;)Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;

    move-result-object v1

    if-ne v2, v1, :cond_1

    iget-object v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mDownloadList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;

    #getter for: Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->mFiledownloadCalledOnce:Z
    invoke-static {v1}, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->access$2700(Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 512
    sget-object v1, Lcom/baidu/bulletin/utils/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v2, "Downloading task exist, cancelAllTask >>>"

    invoke-static {v1, v2}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    iget-object v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mDownloadList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;

    #setter for: Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->mFiledownloadCancelled:Z
    invoke-static {v1, v4}, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->access$202(Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;Z)Z

    .line 514
    iget-object v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mDownloadList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;

    #setter for: Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->mFiledownloadCalledOnce:Z
    invoke-static {v1, v4}, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->access$2702(Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;Z)Z

    .line 515
    iget-object v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mFileDownloader:Lcom/baidu/bulletin/network/FileDownloader;

    iget-object v2, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mFileDownloadObserver:Lcom/baidu/bulletin/network/FileDownloader$Observer;

    invoke-virtual {v1, v2}, Lcom/baidu/bulletin/network/FileDownloader;->cancelStreamMusic(Lcom/baidu/bulletin/network/FileDownloader$Observer;)V

    .line 518
    :cond_1
    iget-boolean v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mIsInitialized:Z

    if-eqz v1, :cond_2

    .line 519
    iget-object v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mCurPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 520
    iput-boolean v3, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mIsInitialized:Z

    .line 521
    sget-object v1, Lcom/baidu/bulletin/utils/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v2, "MusicPlayer stoped!!! >>>"

    invoke-static {v1, v2}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    :cond_2
    iget-boolean v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mIsRequestFocus:Z

    if-eqz v1, :cond_4

    .line 525
    iget-object v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_3

    .line 526
    iget-object v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 527
    :cond_3
    iput-boolean v3, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mIsRequestFocus:Z

    .line 530
    :cond_4
    iget-object v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mCurFilePath:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mIsStartDownloadOnce:Z

    if-eqz v1, :cond_5

    iget-wide v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mDownloadSize:J

    iget-wide v3, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mTotalContentSize:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_5

    .line 531
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer;->mCurFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 532
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 533
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 536
    .end local v0           #file:Ljava/io/File;
    :cond_5
    return-void
.end method
