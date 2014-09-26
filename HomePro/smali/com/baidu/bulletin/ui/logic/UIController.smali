.class public Lcom/baidu/bulletin/ui/logic/UIController;
.super Ljava/lang/Object;
.source "UIController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/baidu/bulletin/BulletinPresentation$ClientSession;
.implements Lcom/baidu/launcher/ui/animation/Animator$AnimatorListener;
.implements Lcom/baidu/bulletin/utils/ChangeNotifyManager$Observer;
.implements Lcom/baidu/bulletin/BulletinService$RemoteTaskListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bulletin/ui/logic/UIController$5;,
        Lcom/baidu/bulletin/ui/logic/UIController$IOnUploadListener;,
        Lcom/baidu/bulletin/ui/logic/UIController$checkTaskChannelItemInfoRunnable;,
        Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;,
        Lcom/baidu/bulletin/ui/logic/UIController$IOpWebAction;,
        Lcom/baidu/bulletin/ui/logic/UIController$ISettingsAction;,
        Lcom/baidu/bulletin/ui/logic/UIController$IDetialAction;,
        Lcom/baidu/bulletin/ui/logic/UIController$IAction;,
        Lcom/baidu/bulletin/ui/logic/UIController$tokenCallBack;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = null

.field public static final UNUPLOAD:I = 0x0

.field public static final UPLOADED:I = 0x2

.field public static final UPLOADFAIL:I = 0x3

.field public static final UPLOADING:I = 0x1

.field public static isBulletin:Z

.field private static mUiController:Lcom/baidu/bulletin/ui/logic/UIController;


# instance fields
.field private final SECONDS:I

.field private final WAIT_SECONDS:I

.field private isDetailing:Z

.field private mBulletinAction:Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;

.field private mBulletinInited:Z

.field private mChannelMask:I

.field private mContext:Landroid/content/Context;

.field private mDetailAction:Lcom/baidu/bulletin/ui/logic/UIController$IDetialAction;

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

.field private mIOnUploadListener:Lcom/baidu/bulletin/ui/logic/UIController$IOnUploadListener;

.field private mIndicator:Lcom/baidu/launcher/ui/homeview/Indicator;

.field private mLauncher:Lcom/baidu/launcher/app/Launcher;

.field private mMainHandler:Landroid/os/Handler;

.field private mMusicPlayer:Lcom/baidu/bulletin/utils/MusicPlayer;

.field private mNoMoreStorageSpace:Z

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mOpWebAction:Lcom/baidu/bulletin/ui/logic/UIController$IOpWebAction;

.field private mRequestAccessTokenManager:Lcom/baidu/bulletin/network/RequestAccessTokenManager;

.field private mRequestObserver:Lcom/baidu/bulletin/network/RequestAccessTokenManager$TokenObserver;

.field private mResetTask:Ljava/util/TimerTask;

.field private mServiceStarted:Z

.field private mSettingsAction:Lcom/baidu/bulletin/ui/logic/UIController$ISettingsAction;

.field private mTimer:Ljava/util/Timer;

.field mToast:Landroid/widget/Toast;

.field private mWaitingService:Z

.field private mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const-class v0, Lcom/baidu/bulletin/ui/logic/UIController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/bulletin/ui/logic/UIController;->LOG_TAG:Ljava/lang/String;

    .line 99
    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/bulletin/ui/logic/UIController;->isBulletin:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-boolean v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->isDetailing:Z

    .line 77
    iput-boolean v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mServiceStarted:Z

    .line 78
    iput-boolean v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mBulletinInited:Z

    .line 79
    iput-boolean v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mWaitingService:Z

    .line 80
    iput-boolean v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mNoMoreStorageSpace:Z

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mNotificationManager:Landroid/app/NotificationManager;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mDownloadList:Ljava/util/List;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mDownloadListInfo:Ljava/util/List;

    .line 457
    new-instance v0, Lcom/baidu/bulletin/ui/logic/UIController$1;

    invoke-direct {v0, p0}, Lcom/baidu/bulletin/ui/logic/UIController$1;-><init>(Lcom/baidu/bulletin/ui/logic/UIController;)V

    iput-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mRequestObserver:Lcom/baidu/bulletin/network/RequestAccessTokenManager$TokenObserver;

    .line 1138
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mMainHandler:Landroid/os/Handler;

    .line 1139
    const/16 v0, 0xa

    iput v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->WAIT_SECONDS:I

    .line 1140
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->SECONDS:I

    .line 119
    return-void
.end method

.method private IsLocalFileExist(Ljava/lang/String;)Z
    .locals 1
    .parameter "filepath"

    .prologue
    .line 698
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method static synthetic access$000(Lcom/baidu/bulletin/ui/logic/UIController;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mDownloadListInfo:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/baidu/bulletin/ui/logic/UIController;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/baidu/bulletin/ui/logic/UIController;)Lcom/baidu/launcher/app/Launcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    return-object v0
.end method

.method static synthetic access$300(Lcom/baidu/bulletin/ui/logic/UIController;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/ui/logic/UIController;->startGetMusicUrl(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V

    return-void
.end method

.method private closeDetail()V
    .locals 2

    .prologue
    .line 817
    iget-boolean v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->isDetailing:Z

    if-eqz v0, :cond_1

    .line 818
    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mBulletinAction:Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;

    if-eqz v0, :cond_0

    .line 819
    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mBulletinAction:Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;->showBulletinSpace(Z)V

    .line 820
    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mBulletinAction:Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;

    invoke-interface {v0}, Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;->onShow()V

    .line 821
    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mDetailAction:Lcom/baidu/bulletin/ui/logic/UIController$IDetialAction;

    invoke-interface {v0}, Lcom/baidu/bulletin/ui/logic/UIController$IDetialAction;->onClose()V

    .line 823
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->isDetailing:Z

    .line 825
    :cond_1
    return-void
.end method

.method private closeOpWebView()V
    .locals 1

    .prologue
    .line 796
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/logic/UIController;->isInAnimation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 804
    :cond_0
    :goto_0
    return-void

    .line 798
    :cond_1
    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mBulletinAction:Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mBulletinAction:Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;

    invoke-interface {v0}, Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;->isOpWebViewShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 799
    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mBulletinAction:Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;

    invoke-interface {v0}, Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;->closeOpWebView()V

    .line 800
    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mBulletinAction:Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;

    if-eqz v0, :cond_0

    .line 801
    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mBulletinAction:Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;

    invoke-interface {v0}, Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;->onShow()V

    goto :goto_0
.end method

.method private closeSettings()V
    .locals 2

    .prologue
    .line 783
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/logic/UIController;->isInAnimation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 793
    :cond_0
    :goto_0
    return-void

    .line 785
    :cond_1
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/logic/UIController;->isSettings()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 786
    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mSettingsAction:Lcom/baidu/bulletin/ui/logic/UIController$ISettingsAction;

    invoke-interface {v0}, Lcom/baidu/bulletin/ui/logic/UIController$ISettingsAction;->onClose()V

    .line 787
    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mBulletinAction:Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;->showSettings(Z)Z

    .line 788
    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mBulletinAction:Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;

    if-eqz v0, :cond_2

    .line 789
    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mBulletinAction:Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;

    invoke-interface {v0}, Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;->onShow()V

    .line 791
    :cond_2
    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    invoke-virtual {v0}, Lcom/baidu/launcher/app/Launcher;->dismissSettings()V

    goto :goto_0
.end method

.method private final downloadExist(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)Z
    .locals 2
    .parameter "data"

    .prologue
    .line 437
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mDownloadListInfo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 438
    iget-object v1, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mDownloadListInfo:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    invoke-virtual {v1, p1}, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->isSame(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 439
    const/4 v1, 0x1

    .line 442
    :goto_1
    return v1

    .line 437
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 442
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private final downloadExist(Lcom/baidu/bulletin/entity/ChannelItem;)Z
    .locals 2
    .parameter "data"

    .prologue
    .line 429
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mDownloadList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 430
    iget-object v1, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mDownloadList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/bulletin/entity/ChannelItem;

    invoke-virtual {v1, p1}, Lcom/baidu/bulletin/entity/ChannelItem;->isSame(Lcom/baidu/bulletin/entity/ChannelItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 431
    const/4 v1, 0x1

    .line 434
    :goto_1
    return v1

    .line 429
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 434
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static declared-synchronized getUIController()Lcom/baidu/bulletin/ui/logic/UIController;
    .locals 2

    .prologue
    .line 102
    const-class v1, Lcom/baidu/bulletin/ui/logic/UIController;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/bulletin/ui/logic/UIController;->mUiController:Lcom/baidu/bulletin/ui/logic/UIController;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Lcom/baidu/bulletin/ui/logic/UIController;

    invoke-direct {v0}, Lcom/baidu/bulletin/ui/logic/UIController;-><init>()V

    sput-object v0, Lcom/baidu/bulletin/ui/logic/UIController;->mUiController:Lcom/baidu/bulletin/ui/logic/UIController;

    .line 105
    :cond_0
    sget-object v0, Lcom/baidu/bulletin/ui/logic/UIController;->mUiController:Lcom/baidu/bulletin/ui/logic/UIController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static isAvailable()Z
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/baidu/bulletin/ui/logic/UIController;->mUiController:Lcom/baidu/bulletin/ui/logic/UIController;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendClickItemUBC(Lcom/baidu/bulletin/entity/ChannelItem;)V
    .locals 3
    .parameter "data"

    .prologue
    .line 1004
    const-string v1, "baike"

    iget-object v2, p1, Lcom/baidu/bulletin/entity/ChannelItem;->channelId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1005
    const/4 v0, 0x0

    .line 1018
    :goto_0
    return-void

    .line 1006
    :cond_0
    const-string v1, "music"

    iget-object v2, p1, Lcom/baidu/bulletin/entity/ChannelItem;->channelId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1007
    const/4 v0, 0x1

    .local v0, channelid:B
    goto :goto_0

    .line 1008
    .end local v0           #channelid:B
    :cond_1
    const-string v1, "news"

    iget-object v2, p1, Lcom/baidu/bulletin/entity/ChannelItem;->channelId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1009
    const/4 v0, 0x2

    .restart local v0       #channelid:B
    goto :goto_0

    .line 1010
    .end local v0           #channelid:B
    :cond_2
    const-string v1, "tieba"

    iget-object v2, p1, Lcom/baidu/bulletin/entity/ChannelItem;->channelId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1011
    const/4 v0, 0x3

    .restart local v0       #channelid:B
    goto :goto_0

    .line 1013
    .end local v0           #channelid:B
    :cond_3
    sget-object v1, Lcom/baidu/bulletin/ui/logic/UIController;->LOG_TAG:Ljava/lang/String;

    const-string v2, "No match channelId"

    invoke-static {v1, v2}, Lcom/baidu/bulletin/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendSelectChannelUBC()V
    .locals 2

    .prologue
    .line 985
    const/4 v0, 0x0

    .line 986
    .local v0, key:B
    const-string v1, "baike"

    invoke-static {v1}, Lcom/baidu/bulletin/utils/SharedPreferencesUtils;->isChannelSubscribed(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 987
    const/4 v1, 0x1

    int-to-byte v0, v1

    .line 989
    :cond_0
    const-string v1, "music"

    invoke-static {v1}, Lcom/baidu/bulletin/utils/SharedPreferencesUtils;->isChannelSubscribed(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 990
    or-int/lit8 v1, v0, 0x2

    int-to-byte v0, v1

    .line 992
    :cond_1
    const-string v1, "news"

    invoke-static {v1}, Lcom/baidu/bulletin/utils/SharedPreferencesUtils;->isChannelSubscribed(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 993
    or-int/lit8 v1, v0, 0x4

    int-to-byte v0, v1

    .line 995
    :cond_2
    const-string v1, "tieba"

    invoke-static {v1}, Lcom/baidu/bulletin/utils/SharedPreferencesUtils;->isChannelSubscribed(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 996
    or-int/lit8 v1, v0, 0x8

    int-to-byte v0, v1

    .line 1000
    :cond_3
    return-void
.end method

.method private static setUIController(Lcom/baidu/bulletin/ui/logic/UIController;)V
    .locals 0
    .parameter "uiController"

    .prologue
    .line 113
    sput-object p0, Lcom/baidu/bulletin/ui/logic/UIController;->mUiController:Lcom/baidu/bulletin/ui/logic/UIController;

    .line 114
    return-void
.end method

.method private showDetail(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V
    .locals 2
    .parameter "itemInfo"

    .prologue
    const/4 v1, 0x1

    .line 655
    iget-boolean v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->isDetailing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mBulletinInited:Z

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mBulletinAction:Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;

    invoke-interface {v0, v1}, Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;->showDetailing(Z)V

    .line 657
    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mDetailAction:Lcom/baidu/bulletin/ui/logic/UIController$IDetialAction;

    invoke-interface {v0, p1}, Lcom/baidu/bulletin/ui/logic/UIController$IDetialAction;->getDetailView(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V

    .line 658
    iput-boolean v1, p0, Lcom/baidu/bulletin/ui/logic/UIController;->isDetailing:Z

    .line 660
    :cond_0
    return-void
.end method

.method private showDetail(Lcom/baidu/bulletin/entity/ChannelItem;)V
    .locals 2
    .parameter "data"

    .prologue
    const/4 v1, 0x1

    .line 738
    iget-boolean v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->isDetailing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mBulletinInited:Z

    if-eqz v0, :cond_0

    .line 739
    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mBulletinAction:Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;

    invoke-interface {v0, v1}, Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;->showDetailing(Z)V

    .line 740
    iput-boolean v1, p0, Lcom/baidu/bulletin/ui/logic/UIController;->isDetailing:Z

    .line 742
    :cond_0
    return-void
.end method

.method private startGetMusicUrl(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V
    .locals 2
    .parameter "data"

    .prologue
    .line 500
    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mDownloadListInfo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 501
    new-instance v0, Lcom/baidu/bulletin/network/RequestAccessTokenManager;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mRequestObserver:Lcom/baidu/bulletin/network/RequestAccessTokenManager$TokenObserver;

    invoke-direct {v0, v1}, Lcom/baidu/bulletin/network/RequestAccessTokenManager;-><init>(Lcom/baidu/bulletin/network/RequestAccessTokenManager$TokenObserver;)V

    iput-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mRequestAccessTokenManager:Lcom/baidu/bulletin/network/RequestAccessTokenManager;

    .line 502
    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mRequestAccessTokenManager:Lcom/baidu/bulletin/network/RequestAccessTokenManager;

    invoke-virtual {v0, p1}, Lcom/baidu/bulletin/network/RequestAccessTokenManager;->downloadToken(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V

    .line 504
    :cond_0
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/ui/logic/UIController;->downloadExist(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 505
    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mDownloadListInfo:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 507
    :cond_1
    return-void
.end method

.method private startMusicPlayer(Lcom/baidu/bulletin/entity/ChannelItem;Lcom/baidu/bulletin/utils/MusicPlayer$Observer;)V
    .locals 4
    .parameter "data"
    .parameter "observer"

    .prologue
    .line 663
    invoke-static {}, Lcom/baidu/bulletin/utils/DeviceEnv$Network;->getOutgoingRoute()Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;

    move-result-object v2

    sget-object v3, Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;->MOBILE:Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;

    if-ne v2, v3, :cond_0

    iget v2, p1, Lcom/baidu/bulletin/entity/ChannelItem;->detailDownloaded:I

    if-nez v2, :cond_0

    .line 665
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    const v3, 0x1030132

    invoke-direct {v0, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 666
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0c024b

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 667
    const v2, 0x7f0c0248

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 668
    const v2, 0x7f0c0249

    new-instance v3, Lcom/baidu/bulletin/ui/logic/UIController$3;

    invoke-direct {v3, p0, p1, p2}, Lcom/baidu/bulletin/ui/logic/UIController$3;-><init>(Lcom/baidu/bulletin/ui/logic/UIController;Lcom/baidu/bulletin/entity/ChannelItem;Lcom/baidu/bulletin/utils/MusicPlayer$Observer;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 675
    const v2, 0x7f0c024a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 676
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 677
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x7f09002f

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 678
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 682
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v1           #dialog:Landroid/app/AlertDialog;
    :goto_0
    return-void

    .line 680
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/logic/UIController;->getMusicPlayer()Lcom/baidu/bulletin/utils/MusicPlayer;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/baidu/bulletin/utils/MusicPlayer;->startPlayer(Lcom/baidu/bulletin/entity/ChannelItem;Lcom/baidu/bulletin/utils/MusicPlayer$Observer;)V

    goto :goto_0
.end method

.method private startOfflineData(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V
    .locals 4
    .parameter "data"

    .prologue
    .line 511
    iget-object v0, p1, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->sourceUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 512
    invoke-static {}, Lcom/baidu/bulletin/BulletinPresentation;->getInstance()Lcom/baidu/bulletin/BulletinPresentation;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    invoke-virtual {v0, v1, p1, p0}, Lcom/baidu/bulletin/BulletinPresentation;->offlineFile(Lcom/baidu/launcher/app/Launcher;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;Lcom/baidu/bulletin/BulletinService$RemoteTaskListener;)V

    .line 524
    :goto_0
    return-void

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    invoke-static {v0}, Lcom/baidu/yi/sdk/account/YiAccountUtils;->getInstance(Landroid/content/Context;)Lcom/baidu/yi/sdk/account/YiAccountUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/yi/sdk/account/YiAccountUtils;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 515
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/ui/logic/UIController;->startGetMusicUrl(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V

    goto :goto_0

    .line 518
    :cond_1
    invoke-static {}, Lcom/baidu/bulletin/utils/BulletinUBC;->statForMusicLoginBox()V

    .line 520
    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    invoke-static {v0}, Lcom/baidu/yi/sdk/account/YiAccountUtils;->getInstance(Landroid/content/Context;)Lcom/baidu/yi/sdk/account/YiAccountUtils;

    move-result-object v0

    const-string v1, "com.baidu"

    new-instance v2, Lcom/baidu/bulletin/ui/logic/UIController$tokenCallBack;

    invoke-direct {v2, p0, p1}, Lcom/baidu/bulletin/ui/logic/UIController$tokenCallBack;-><init>(Lcom/baidu/bulletin/ui/logic/UIController;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V

    iget-object v3, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/yi/sdk/account/YiAccountUtils;->getTokenAsync(Ljava/lang/String;Lcom/baidu/yi/sdk/account/YiAccountUtils$ITokenCallback;Landroid/app/Activity;)V

    goto :goto_0
.end method

.method private stopRunningTask()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mMusicPlayer:Lcom/baidu/bulletin/utils/MusicPlayer;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mMusicPlayer:Lcom/baidu/bulletin/utils/MusicPlayer;

    invoke-virtual {v0}, Lcom/baidu/bulletin/utils/MusicPlayer;->close()V

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mMusicPlayer:Lcom/baidu/bulletin/utils/MusicPlayer;

    .line 157
    :cond_0
    return-void
.end method

.method private tryToLaunchBulletinPage()V
    .locals 1

    .prologue
    .line 954
    iget-boolean v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mBulletinInited:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mServiceStarted:Z

    if-eqz v0, :cond_2

    .line 955
    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mBulletinAction:Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;

    if-nez v0, :cond_1

    .line 964
    :cond_0
    :goto_0
    return-void

    .line 957
    :cond_1
    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mBulletinAction:Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;

    invoke-interface {v0}, Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;->onServiceStarted()V

    .line 958
    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mBulletinAction:Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;

    invoke-interface {v0}, Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;->onShow()V

    goto :goto_0

    .line 960
    :cond_2
    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mBulletinAction:Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;

    if-eqz v0, :cond_0

    .line 962
    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mBulletinAction:Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;

    invoke-interface {v0}, Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;->onShow()V

    goto :goto_0
.end method


# virtual methods
.method public addAction(Lcom/baidu/bulletin/ui/logic/UIController$IAction;)V
    .locals 1
    .parameter "action"

    .prologue
    .line 204
    instance-of v0, p1, Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;

    if-eqz v0, :cond_2

    .line 205
    check-cast p1, Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;

    .end local p1
    iput-object p1, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mBulletinAction:Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;

    .line 206
    iget-boolean v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mBulletinInited:Z

    if-nez v0, :cond_1

    .line 207
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/logic/UIController;->initBulletinScreen()V

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    iget-boolean v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mServiceStarted:Z

    if-eqz v0, :cond_0

    .line 209
    invoke-direct {p0}, Lcom/baidu/bulletin/ui/logic/UIController;->tryToLaunchBulletinPage()V

    goto :goto_0

    .line 211
    .restart local p1
    :cond_2
    instance-of v0, p1, Lcom/baidu/bulletin/ui/logic/UIController$ISettingsAction;

    if-eqz v0, :cond_3

    .line 212
    check-cast p1, Lcom/baidu/bulletin/ui/logic/UIController$ISettingsAction;

    .end local p1
    iput-object p1, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mSettingsAction:Lcom/baidu/bulletin/ui/logic/UIController$ISettingsAction;

    goto :goto_0

    .line 213
    .restart local p1
    :cond_3
    instance-of v0, p1, Lcom/baidu/bulletin/ui/logic/UIController$IDetialAction;

    if-eqz v0, :cond_4

    .line 214
    check-cast p1, Lcom/baidu/bulletin/ui/logic/UIController$IDetialAction;

    .end local p1
    iput-object p1, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mDetailAction:Lcom/baidu/bulletin/ui/logic/UIController$IDetialAction;

    .line 215
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->isDetailing:Z

    goto :goto_0

    .line 216
    .restart local p1
    :cond_4
    instance-of v0, p1, Lcom/baidu/bulletin/ui/logic/UIController$IOpWebAction;

    if-eqz v0, :cond_0

    .line 217
    check-cast p1, Lcom/baidu/bulletin/ui/logic/UIController$IOpWebAction;

    .end local p1
    iput-object p1, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mOpWebAction:Lcom/baidu/bulletin/ui/logic/UIController$IOpWebAction;

    goto :goto_0
.end method

.method public canShowSetting()Z
    .locals 1

    .prologue
    .line 1026
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/logic/UIController;->isSettings()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->isDetailing:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mBulletinAction:Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final downloadNext()V
    .locals 3

    .prologue
    .line 452
    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mDownloadListInfo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 453
    iget-object v1, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mRequestAccessTokenManager:Lcom/baidu/bulletin/network/RequestAccessTokenManager;

    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mDownloadListInfo:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    invoke-virtual {v1, v0}, Lcom/baidu/bulletin/network/RequestAccessTokenManager;->downloadToken(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V

    .line 455
    :cond_0
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getEmptyType()Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction$ContentState;
    .locals 3

    .prologue
    .line 933
    sget-object v0, Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction$ContentState;->HAVE_CONTENT:Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction$ContentState;

    .line 934
    .local v0, state:Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction$ContentState;
    invoke-static {}, Lcom/baidu/bulletin/utils/SharedPreferencesUtils;->isFirstUse()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/baidu/bulletin/BulletinPresentation;->getInstance()Lcom/baidu/bulletin/BulletinPresentation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bulletin/BulletinPresentation;->getPageCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 935
    invoke-static {}, Lcom/baidu/bulletin/utils/DeviceEnv$Network;->getOutgoingRoute()Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;

    move-result-object v1

    sget-object v2, Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;->NONE:Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;

    if-ne v1, v2, :cond_1

    .line 936
    sget-object v0, Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction$ContentState;->NO_NETWORK:Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction$ContentState;

    .line 943
    :cond_0
    :goto_0
    return-object v0

    .line 937
    :cond_1
    invoke-static {}, Lcom/baidu/bulletin/ui/logic/SettingsController;->getSettingsController()Lcom/baidu/bulletin/ui/logic/SettingsController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bulletin/ui/logic/SettingsController;->getChannelListMask()I

    move-result v1

    if-nez v1, :cond_2

    .line 938
    sget-object v0, Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction$ContentState;->NO_CHANNEL:Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction$ContentState;

    goto :goto_0

    .line 940
    :cond_2
    sget-object v0, Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction$ContentState;->NO_MESSAGE:Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction$ContentState;

    goto :goto_0
.end method

.method public getLauncher()Lcom/baidu/launcher/app/Launcher;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    return-object v0
.end method

.method public getMusicPlayer()Lcom/baidu/bulletin/utils/MusicPlayer;
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mMusicPlayer:Lcom/baidu/bulletin/utils/MusicPlayer;

    if-nez v0, :cond_0

    .line 170
    new-instance v0, Lcom/baidu/bulletin/utils/MusicPlayer;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    invoke-direct {v0, v1}, Lcom/baidu/bulletin/utils/MusicPlayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mMusicPlayer:Lcom/baidu/bulletin/utils/MusicPlayer;

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mMusicPlayer:Lcom/baidu/bulletin/utils/MusicPlayer;

    return-object v0
.end method

.method public getOnUploadListener()Lcom/baidu/bulletin/ui/logic/UIController$IOnUploadListener;
    .locals 1

    .prologue
    .line 1170
    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mIOnUploadListener:Lcom/baidu/bulletin/ui/logic/UIController$IOnUploadListener;

    return-object v0
.end method

.method public getPlaybackChannel()Lcom/baidu/bulletin/entity/ChannelItem;
    .locals 1

    .prologue
    .line 695
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/logic/UIController;->getMusicPlayer()Lcom/baidu/bulletin/utils/MusicPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bulletin/utils/MusicPlayer;->getCurrentChannel()Lcom/baidu/bulletin/entity/ChannelItem;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackChannelItem()Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    .locals 1

    .prologue
    .line 734
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/logic/UIController;->getMusicPlayer()Lcom/baidu/bulletin/utils/MusicPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bulletin/utils/MusicPlayer;->getCurrentChannelItem()Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackState(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)Lcom/baidu/bulletin/utils/MusicPlayer$State;
    .locals 1
    .parameter "data"

    .prologue
    .line 724
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/logic/UIController;->getMusicPlayer()Lcom/baidu/bulletin/utils/MusicPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/bulletin/utils/MusicPlayer;->getState(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)Lcom/baidu/bulletin/utils/MusicPlayer$State;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackState(Lcom/baidu/bulletin/entity/ChannelItem;)Lcom/baidu/bulletin/utils/MusicPlayer$State;
    .locals 1
    .parameter "data"

    .prologue
    .line 685
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/logic/UIController;->getMusicPlayer()Lcom/baidu/bulletin/utils/MusicPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/bulletin/utils/MusicPlayer;->getState(Lcom/baidu/bulletin/entity/ChannelItem;)Lcom/baidu/bulletin/utils/MusicPlayer$State;

    move-result-object v0

    return-object v0
.end method

.method public initBulletinScreen()V
    .locals 1

    .prologue
    .line 947
    iget-boolean v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mBulletinInited:Z

    if-nez v0, :cond_0

    .line 948
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mBulletinInited:Z

    .line 949
    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mBulletinAction:Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;

    invoke-interface {v0}, Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;->onInit()V

    .line 951
    :cond_0
    return-void
.end method

.method public initSettings()V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mBulletinAction:Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mSettingsAction:Lcom/baidu/bulletin/ui/logic/UIController$ISettingsAction;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/logic/UIController;->isInAnimation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mBulletinAction:Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;->addSettingsView(Z)V

    .line 238
    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mSettingsAction:Lcom/baidu/bulletin/ui/logic/UIController$ISettingsAction;

    invoke-interface {v0}, Lcom/baidu/bulletin/ui/logic/UIController$ISettingsAction;->onInit()V

    goto :goto_0
.end method

.method public isBulletinExist()Z
    .locals 1

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mBulletinInited:Z

    return v0
.end method

.method public isDetailing()Z
    .locals 1

    .prologue
    .line 749
    iget-boolean v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->isDetailing:Z

    return v0
.end method

.method public isInAnimation()Z
    .locals 1

    .prologue
    .line 779
    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mBulletinAction:Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mBulletinAction:Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;

    invoke-interface {v0}, Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;->isShowingAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSettings()Z
    .locals 1

    .prologue
    .line 745
    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mBulletinAction:Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mBulletinAction:Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;

    invoke-interface {v0}, Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;->isSettingsShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStorageAvailable()Z
    .locals 2

    .prologue
    .line 160
    invoke-static {}, Lcom/baidu/bulletin/utils/MediaMonitor;->isStorageAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    const/4 v0, 0x1

    .line 164
    :goto_0
    return v0

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    const v1, 0x7f0c0225

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/app/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/bulletin/ui/logic/UIController;->showToast(Ljava/lang/String;)V

    .line 164
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWorkspaceLocked()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 754
    iget-object v3, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    invoke-virtual {v3}, Lcom/baidu/launcher/app/Launcher;->getCurrentWorkspaceScreen()I

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    .line 755
    .local v0, isBulletin:Z
    :goto_0
    iget-boolean v3, p0, Lcom/baidu/bulletin/ui/logic/UIController;->isDetailing:Z

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    :goto_1
    return v1

    .end local v0           #isBulletin:Z
    :cond_0
    move v0, v2

    .line 754
    goto :goto_0

    .restart local v0       #isBulletin:Z
    :cond_1
    move v1, v2

    .line 755
    goto :goto_1
.end method

.method public notifyDetailClosed()V
    .locals 2

    .prologue
    .line 828
    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mBulletinAction:Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;->showDetailing(Z)V

    .line 829
    return-void
.end method

.method public notifyRefreshChannelContent()V
    .locals 2

    .prologue
    .line 807
    invoke-static {}, Lcom/baidu/bulletin/ui/logic/SettingsController;->getSettingsController()Lcom/baidu/bulletin/ui/logic/SettingsController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bulletin/ui/logic/SettingsController;->getChannelListMask()I

    move-result v0

    .line 808
    .local v0, newMask:I
    iget v1, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mChannelMask:I

    if-eq v0, v1, :cond_0

    .line 809
    invoke-static {}, Lcom/baidu/bulletin/BulletinPresentation;->getInstance()Lcom/baidu/bulletin/BulletinPresentation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bulletin/BulletinPresentation;->refreshChannelContent()V

    .line 810
    iget-object v1, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mBulletinAction:Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;

    if-eqz v1, :cond_0

    .line 811
    iget-object v1, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mBulletinAction:Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;

    invoke-interface {v1}, Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;->onProcessing()V

    .line 814
    :cond_0
    return-void
.end method

.method public onAlreadySyncing()V
    .locals 1

    .prologue
    .line 1097
    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mBulletinAction:Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;

    if-eqz v0, :cond_0

    .line 1098
    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mBulletinAction:Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;

    invoke-interface {v0}, Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;->onProcessing()V

    .line 1099
    :cond_0
    return-void
.end method

.method public onAnimationCancel(Lcom/baidu/launcher/ui/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1131
    return-void
.end method

.method public onAnimationEnd(Lcom/baidu/launcher/ui/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 1125
    iget-boolean v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->isDetailing:Z

    if-eqz v0, :cond_0

    .line 1126
    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mBulletinAction:Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;->showBulletinSpace(Z)V

    .line 1127
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Lcom/baidu/launcher/ui/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1135
    return-void
.end method

.method public onAnimationStart(Lcom/baidu/launcher/ui/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1121
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 425
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/bulletin/ui/logic/UIController;->unLockWorkspace(Z)V

    .line 426
    return-void
.end method

.method public onChanged(Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;Ljava/lang/Object;)V
    .locals 6
    .parameter "event"
    .parameter "data"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 123
    sget-object v2, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;->MediaMountChange:Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;

    if-ne v2, p1, :cond_4

    .line 124
    invoke-static {}, Lcom/baidu/bulletin/utils/MediaMonitor;->isStorageAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 125
    invoke-direct {p0}, Lcom/baidu/bulletin/ui/logic/UIController;->stopRunningTask()V

    .line 150
    .end local p2
    :cond_0
    :goto_0
    return-void

    .line 127
    .restart local p2
    :cond_1
    iget-object v2, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mBulletinAction:Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;

    if-eqz v2, :cond_0

    .line 129
    invoke-static {}, Lcom/baidu/bulletin/BulletinPresentation;->getInstance()Lcom/baidu/bulletin/BulletinPresentation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/bulletin/BulletinPresentation;->getPageCount()I

    move-result v2

    if-nez v2, :cond_3

    .line 130
    invoke-static {}, Lcom/baidu/bulletin/utils/SharedPreferencesUtils;->isFirstUse()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 131
    iget-object v2, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mBulletinAction:Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;

    sget-object v3, Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction$ContentState;->HAVE_CONTENT:Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction$ContentState;

    invoke-interface {v2, v4, v3}, Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;->showEmptyPage(ZLcom/baidu/bulletin/ui/logic/UIController$IBulletinAction$ContentState;)V

    goto :goto_0

    .line 132
    :cond_2
    iget-object v2, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mBulletinAction:Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;

    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/logic/UIController;->getEmptyType()Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction$ContentState;

    move-result-object v3

    invoke-interface {v2, v5, v3}, Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;->showEmptyPage(ZLcom/baidu/bulletin/ui/logic/UIController$IBulletinAction$ContentState;)V

    goto :goto_0

    .line 134
    :cond_3
    iget-object v2, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mBulletinAction:Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;

    sget-object v3, Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction$ContentState;->HAVE_CONTENT:Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction$ContentState;

    invoke-interface {v2, v4, v3}, Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;->showEmptyPage(ZLcom/baidu/bulletin/ui/logic/UIController$IBulletinAction$ContentState;)V

    .line 135
    iget-object v2, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mBulletinAction:Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;

    invoke-interface {v2}, Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;->syncCurrentPage()V

    goto :goto_0

    .line 138
    :cond_4
    sget-object v2, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;->StorageSpaceNotEnough:Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;

    if-ne v2, p1, :cond_0

    .line 139
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 140
    .local v1, storageSpaceNotEnoughFlag:Z
    if-eqz v1, :cond_0

    .line 141
    iput-boolean v5, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mNoMoreStorageSpace:Z

    .line 142
    invoke-static {}, Lcom/baidu/bulletin/utils/MediaMonitor;->isStorageAvailable()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 143
    const-string v2, "SD\u5361\u7a7a\u95f4\u4e0d\u8db3\uff0c\u65e0\u6cd5\u83b7\u53d6\u66f4\u591a\u8d44\u8baf\u3002"

    invoke-virtual {p0, v2}, Lcom/baidu/bulletin/ui/logic/UIController;->showToast(Ljava/lang/String;)V

    .line 146
    :cond_5
    invoke-static {}, Lcom/baidu/bulletin/db/manager/CacheManager;->getInstance()Lcom/baidu/bulletin/db/manager/CacheManager;

    move-result-object v0

    .line 147
    .local v0, mCacheManager:Lcom/baidu/bulletin/db/manager/ICacheManager;
    invoke-interface {v0}, Lcom/baidu/bulletin/db/manager/ICacheManager;->clearImagesAsync()V

    goto :goto_0
.end method

.method public onChannelClicked(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;Lcom/baidu/bulletin/utils/MusicPlayer$Observer;)V
    .locals 3
    .parameter "data"
    .parameter "observer"

    .prologue
    .line 618
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mNoMoreStorageSpace:Z

    .line 619
    if-nez p1, :cond_1

    .line 652
    :cond_0
    :goto_0
    return-void

    .line 622
    :cond_1
    iget v1, p1, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->channelId:I

    const/16 v2, 0x7d0

    if-lt v1, v2, :cond_2

    iget v1, p1, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->channelId:I

    const/16 v2, 0xbb8

    if-ge v1, v2, :cond_2

    .line 624
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/logic/UIController;->isStorageAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 627
    invoke-virtual {p0, p1}, Lcom/baidu/bulletin/ui/logic/UIController;->getPlaybackState(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)Lcom/baidu/bulletin/utils/MusicPlayer$State;

    move-result-object v0

    .line 628
    .local v0, state:Lcom/baidu/bulletin/utils/MusicPlayer$State;
    sget-object v1, Lcom/baidu/bulletin/ui/logic/UIController$5;->$SwitchMap$com$baidu$bulletin$utils$MusicPlayer$State:[I

    invoke-virtual {v0}, Lcom/baidu/bulletin/utils/MusicPlayer$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 631
    :pswitch_0
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/logic/UIController;->getMusicPlayer()Lcom/baidu/bulletin/utils/MusicPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bulletin/utils/MusicPlayer;->stop()V

    goto :goto_0

    .line 635
    :pswitch_1
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/logic/UIController;->getMusicPlayer()Lcom/baidu/bulletin/utils/MusicPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bulletin/utils/MusicPlayer;->play()V

    goto :goto_0

    .line 640
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lcom/baidu/bulletin/ui/logic/UIController;->startMusicPlayer(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;Lcom/baidu/bulletin/utils/MusicPlayer$Observer;)V

    .line 641
    iget v1, p1, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->channelId:I

    invoke-static {v1}, Lcom/baidu/bulletin/utils/BulletinUBC;->ChannelIdToType(I)B

    move-result v1

    invoke-static {v1}, Lcom/baidu/bulletin/utils/BulletinUBC;->statForChnlClick(B)V

    goto :goto_0

    .line 648
    .end local v0           #state:Lcom/baidu/bulletin/utils/MusicPlayer$State;
    :cond_2
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/ui/logic/UIController;->showDetail(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V

    .line 649
    iget v1, p1, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->channelId:I

    invoke-static {v1}, Lcom/baidu/bulletin/utils/BulletinUBC;->ChannelIdToType(I)B

    move-result v1

    invoke-static {v1}, Lcom/baidu/bulletin/utils/BulletinUBC;->statForChnlClick(B)V

    goto :goto_0

    .line 628
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onChannelClicked(Lcom/baidu/bulletin/entity/ChannelItem;Lcom/baidu/bulletin/utils/MusicPlayer$Observer;)V
    .locals 6
    .parameter "data"
    .parameter "observer"

    .prologue
    .line 564
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mNoMoreStorageSpace:Z

    .line 566
    invoke-virtual {p1}, Lcom/baidu/bulletin/entity/ChannelItem;->hasPlayableMedia()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 567
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/logic/UIController;->isStorageAvailable()Z

    move-result v4

    if-nez v4, :cond_0

    .line 615
    :goto_0
    return-void

    .line 570
    :cond_0
    invoke-virtual {p0, p1}, Lcom/baidu/bulletin/ui/logic/UIController;->getPlaybackState(Lcom/baidu/bulletin/entity/ChannelItem;)Lcom/baidu/bulletin/utils/MusicPlayer$State;

    move-result-object v3

    .line 571
    .local v3, state:Lcom/baidu/bulletin/utils/MusicPlayer$State;
    sget-object v4, Lcom/baidu/bulletin/ui/logic/UIController$5;->$SwitchMap$com$baidu$bulletin$utils$MusicPlayer$State:[I

    invoke-virtual {v3}, Lcom/baidu/bulletin/utils/MusicPlayer$State;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 574
    :pswitch_0
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/logic/UIController;->getMusicPlayer()Lcom/baidu/bulletin/utils/MusicPlayer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/bulletin/utils/MusicPlayer;->stop()V

    goto :goto_0

    .line 578
    :pswitch_1
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/logic/UIController;->getMusicPlayer()Lcom/baidu/bulletin/utils/MusicPlayer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/bulletin/utils/MusicPlayer;->play()V

    goto :goto_0

    .line 583
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/baidu/bulletin/ui/logic/UIController;->startMusicPlayer(Lcom/baidu/bulletin/entity/ChannelItem;Lcom/baidu/bulletin/utils/MusicPlayer$Observer;)V

    goto :goto_0

    .line 588
    .end local v3           #state:Lcom/baidu/bulletin/utils/MusicPlayer$State;
    :cond_1
    iget-object v4, p1, Lcom/baidu/bulletin/entity/ChannelItem;->channelId:Ljava/lang/String;

    const-string v5, "tieba"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 590
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 591
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "com.baidu.browser.apps.INVOKE"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 592
    const-string v4, "open_url"

    iget-object v5, p1, Lcom/baidu/bulletin/entity/ChannelItem;->content:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 593
    iget-object v4, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    invoke-virtual {v4, v2}, Lcom/baidu/launcher/app/Launcher;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 595
    .end local v2           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 596
    .local v1, e:Ljava/lang/Exception;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 598
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 599
    iget-object v4, p1, Lcom/baidu/bulletin/entity/ChannelItem;->content:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 600
    .local v0, content_url:Landroid/net/Uri;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 601
    iget-object v4, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    invoke-virtual {v4, v2}, Lcom/baidu/launcher/app/Launcher;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 605
    .end local v0           #content_url:Landroid/net/Uri;
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_2
    iget-object v4, p1, Lcom/baidu/bulletin/entity/ChannelItem;->channelId:Ljava/lang/String;

    const-string v5, "app"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 606
    const/16 v4, 0x50

    invoke-static {v4}, Lcom/baidu/bulletin/utils/BulletinUBC;->statForChnlClick(B)V

    .line 612
    :cond_3
    :goto_1
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/ui/logic/UIController;->showDetail(Lcom/baidu/bulletin/entity/ChannelItem;)V

    .line 613
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/ui/logic/UIController;->sendClickItemUBC(Lcom/baidu/bulletin/entity/ChannelItem;)V

    goto :goto_0

    .line 607
    :cond_4
    iget-object v4, p1, Lcom/baidu/bulletin/entity/ChannelItem;->channelId:Ljava/lang/String;

    const-string v5, "news"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 608
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/baidu/bulletin/utils/BulletinUBC;->statForChnlClick(B)V

    goto :goto_1

    .line 609
    :cond_5
    iget-object v4, p1, Lcom/baidu/bulletin/entity/ChannelItem;->channelId:Ljava/lang/String;

    const-string v5, "history"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 610
    const/16 v4, 0x5a

    invoke-static {v4}, Lcom/baidu/bulletin/utils/BulletinUBC;->statForChnlClick(B)V

    goto :goto_1

    .line 571
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1022
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/bulletin/ui/logic/UIController;->unLockWorkspace(Z)V

    .line 1023
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 862
    invoke-static {}, Lcom/baidu/bulletin/ui/AsyncImageLoader;->release()V

    .line 863
    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mBulletinAction:Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;

    if-eqz v0, :cond_0

    .line 864
    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mBulletinAction:Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;

    invoke-interface {v0}, Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;->onClose()V

    .line 865
    iput-object v1, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mBulletinAction:Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;

    .line 867
    :cond_0
    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mMusicPlayer:Lcom/baidu/bulletin/utils/MusicPlayer;

    if-eqz v0, :cond_1

    .line 868
    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mMusicPlayer:Lcom/baidu/bulletin/utils/MusicPlayer;

    invoke-virtual {v0}, Lcom/baidu/bulletin/utils/MusicPlayer;->close()V

    .line 869
    :cond_1
    iget-boolean v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mServiceStarted:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mWaitingService:Z

    if-eqz v0, :cond_3

    .line 870
    :cond_2
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/logic/UIController;->stopService()V

    .line 872
    :cond_3
    invoke-static {v1}, Lcom/baidu/bulletin/ui/logic/UIController;->setUIController(Lcom/baidu/bulletin/ui/logic/UIController;)V

    .line 873
    return-void
.end method

.method public onNewMessageNofitied(I)V
    .locals 2
    .parameter "count"

    .prologue
    .line 1039
    sget-object v0, Lcom/baidu/bulletin/ui/logic/UIController;->LOG_TAG:Ljava/lang/String;

    const-string v1, "new push message arrived"

    invoke-static {v0, v1}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mBulletinAction:Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;

    if-eqz v0, :cond_0

    .line 1041
    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mBulletinAction:Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;

    invoke-interface {v0, p1}, Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;->onNotifyNewMessage(I)V

    .line 1042
    :cond_0
    return-void
.end method

.method public onNotifyPageChanged()V
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mBulletinAction:Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;

    if-eqz v0, :cond_0

    .line 419
    invoke-static {}, Lcom/baidu/bulletin/ui/AsyncImageLoader;->postInvalidate()V

    .line 420
    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mBulletinAction:Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;

    invoke-interface {v0}, Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;->onNotifyPageChanged()V

    .line 422
    :cond_0
    return-void
.end method

.method public onPageImageLoaded(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 1115
    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mBulletinAction:Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;

    if-eqz v0, :cond_0

    .line 1116
    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mBulletinAction:Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;

    invoke-interface {v0, p1}, Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;->showPageImages(I)V

    .line 1117
    :cond_0
    return-void
.end method

.method public onPageLoaded(Lcom/baidu/bulletin/entity/ChannelItem;)V
    .locals 0
    .parameter "channel"

    .prologue
    .line 1111
    return-void
.end method

.method public onRefresh()Z
    .locals 1

    .prologue
    .line 377
    const/4 v0, 0x0

    .line 414
    .local v0, result:Z
    return v0
.end method

.method public onServiceStart()V
    .locals 2

    .prologue
    .line 1031
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mServiceStarted:Z

    .line 1032
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mWaitingService:Z

    .line 1033
    invoke-direct {p0}, Lcom/baidu/bulletin/ui/logic/UIController;->tryToLaunchBulletinPage()V

    .line 1034
    sget-object v0, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;->BulletinSwitcherUnlock:Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/bulletin/utils/ChangeNotifyManager;->nofityChange(Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;Ljava/lang/Object;)V

    .line 1035
    return-void
.end method

.method public onSyncFinish(ZI)V
    .locals 5
    .parameter "changed"
    .parameter "count"

    .prologue
    const/4 v4, 0x0

    .line 1046
    const/4 v0, 0x0

    .line 1048
    .local v0, isEmpty:Z
    iget-object v2, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mBulletinAction:Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;

    if-eqz v2, :cond_4

    .line 1049
    if-eqz p1, :cond_6

    .line 1050
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/logic/UIController;->onNotifyPageChanged()V

    .line 1052
    if-lez p2, :cond_0

    iget-boolean v2, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mNoMoreStorageSpace:Z

    if-nez v2, :cond_0

    .line 1053
    invoke-static {}, Lcom/baidu/bulletin/BulletinPresentation;->getInstance()Lcom/baidu/bulletin/BulletinPresentation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/bulletin/BulletinPresentation;->getPageCount()I

    move-result v2

    if-nez v2, :cond_5

    .line 1054
    const/4 v0, 0x1

    .line 1076
    :cond_0
    :goto_0
    invoke-static {}, Lcom/baidu/bulletin/utils/MediaMonitor;->isStorageAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1077
    sget-boolean v2, Lcom/baidu/bulletin/ui/logic/UIController;->isBulletin:Z

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/baidu/bulletin/SyncScheduler;->getAutoSync()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1078
    iget-object v2, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    const v3, 0x7f0c0246

    invoke-virtual {v2, v3}, Lcom/baidu/launcher/app/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/baidu/bulletin/ui/logic/UIController;->showToast(Ljava/lang/String;)V

    .line 1082
    :cond_1
    if-lez p2, :cond_2

    if-eqz v0, :cond_3

    .line 1083
    :cond_2
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/logic/UIController;->getEmptyType()Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction$ContentState;

    move-result-object v1

    .line 1084
    .local v1, state:Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction$ContentState;
    sget-object v2, Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction$ContentState;->HAVE_CONTENT:Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction$ContentState;

    if-ne v1, v2, :cond_7

    .line 1085
    iget-object v2, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mBulletinAction:Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;

    sget-object v3, Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction$ContentState;->HAVE_CONTENT:Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction$ContentState;

    invoke-interface {v2, v4, v3}, Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;->showEmptyPage(ZLcom/baidu/bulletin/ui/logic/UIController$IBulletinAction$ContentState;)V

    .line 1090
    .end local v1           #state:Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction$ContentState;
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mBulletinAction:Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;

    invoke-interface {v2}, Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;->onRest()V

    .line 1092
    :cond_4
    invoke-static {v4}, Lcom/baidu/bulletin/SyncScheduler;->setAutoSync(Z)V

    .line 1093
    return-void

    .line 1056
    :cond_5
    iget-object v2, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mBulletinAction:Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;

    sget-object v3, Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction$ContentState;->HAVE_CONTENT:Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction$ContentState;

    invoke-interface {v2, v4, v3}, Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;->showEmptyPage(ZLcom/baidu/bulletin/ui/logic/UIController$IBulletinAction$ContentState;)V

    .line 1058
    sget-boolean v2, Lcom/baidu/bulletin/ui/logic/UIController;->isBulletin:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/baidu/bulletin/SyncScheduler;->getAutoSync()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1059
    iget-object v2, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    const v3, 0x7f0c0244

    invoke-virtual {v2, v3}, Lcom/baidu/launcher/app/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/baidu/bulletin/ui/logic/UIController;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 1068
    :cond_6
    iget-boolean v2, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mNoMoreStorageSpace:Z

    if-nez v2, :cond_0

    const/4 v2, -0x1

    if-eq p2, v2, :cond_0

    .line 1069
    sget-boolean v2, Lcom/baidu/bulletin/ui/logic/UIController;->isBulletin:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/baidu/bulletin/SyncScheduler;->getAutoSync()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1070
    iget-object v2, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    const v3, 0x7f0c0245

    invoke-virtual {v2, v3}, Lcom/baidu/launcher/app/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/baidu/bulletin/ui/logic/UIController;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 1087
    .restart local v1       #state:Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction$ContentState;
    :cond_7
    iget-object v2, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mBulletinAction:Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;

    const/4 v3, 0x1

    invoke-interface {v2, v3, v1}, Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;->showEmptyPage(ZLcom/baidu/bulletin/ui/logic/UIController$IBulletinAction$ContentState;)V

    goto :goto_1
.end method

.method public onSyncStart()V
    .locals 1

    .prologue
    .line 1103
    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mBulletinAction:Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;

    if-eqz v0, :cond_0

    .line 1104
    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mBulletinAction:Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;

    invoke-interface {v0}, Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;->onProcessing()V

    .line 1105
    :cond_0
    return-void
.end method

.method public onUploadClicked(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V
    .locals 4
    .parameter "data"

    .prologue
    .line 540
    invoke-static {}, Lcom/baidu/bulletin/utils/DeviceEnv$Network;->getOutgoingRoute()Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;

    move-result-object v2

    sget-object v3, Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;->NONE:Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;

    if-eq v2, v3, :cond_0

    .line 541
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/ui/logic/UIController;->startOfflineData(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V

    .line 561
    :goto_0
    return-void

    .line 543
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    const v3, 0x1030132

    invoke-direct {v0, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 544
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0c024c

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 545
    const v2, 0x7f0c024f

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 546
    const v2, 0x7f0c024e

    new-instance v3, Lcom/baidu/bulletin/ui/logic/UIController$2;

    invoke-direct {v3, p0}, Lcom/baidu/bulletin/ui/logic/UIController$2;-><init>(Lcom/baidu/bulletin/ui/logic/UIController;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 554
    const v2, 0x7f0c024d

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 555
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 556
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x7f09002f

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 557
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 559
    const-string v2, "checknet"

    const-string v3, "network is error"

    invoke-static {v2, v3}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public openBulletinScreen(Z)V
    .locals 3
    .parameter "isOpen"

    .prologue
    const/4 v2, 0x0

    .line 353
    if-eqz p1, :cond_0

    .line 355
    iget-object v1, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mBulletinAction:Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;

    invoke-interface {v1}, Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;->onShow()V

    .line 370
    :goto_0
    return-void

    .line 357
    :cond_0
    iget-object v1, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mIndicator:Lcom/baidu/launcher/ui/homeview/Indicator;

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/ui/homeview/Indicator;->setBulletinVisible(Z)V

    .line 358
    iget-object v1, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    invoke-virtual {v1}, Lcom/baidu/launcher/app/Launcher;->getCurrentWorkspaceScreen()I

    move-result v1

    if-nez v1, :cond_1

    .line 359
    iget-object v1, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/ui/homeview/Workspace;->moveToDefaultScreen(Z)V

    .line 362
    :cond_1
    iget-object v1, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mBulletinAction:Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;

    invoke-interface {v1}, Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;->onClose()V

    .line 363
    iput-boolean v2, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mBulletinInited:Z

    .line 365
    const/4 v0, 0x3

    .line 368
    .local v0, key:B
    iget-object v1, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    invoke-virtual {v1, p1}, Lcom/baidu/launcher/app/Launcher;->showBulletinScreen(Z)V

    goto :goto_0
.end method

.method public releaseAction(Lcom/baidu/bulletin/ui/logic/UIController$IAction;)V
    .locals 2
    .parameter "action"

    .prologue
    const/4 v1, 0x0

    .line 222
    instance-of v0, p1, Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;

    if-eqz v0, :cond_1

    .line 223
    iput-object v1, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mBulletinAction:Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    instance-of v0, p1, Lcom/baidu/bulletin/ui/logic/UIController$ISettingsAction;

    if-eqz v0, :cond_2

    .line 225
    iput-object v1, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mSettingsAction:Lcom/baidu/bulletin/ui/logic/UIController$ISettingsAction;

    goto :goto_0

    .line 226
    :cond_2
    instance-of v0, p1, Lcom/baidu/bulletin/ui/logic/UIController$IDetialAction;

    if-eqz v0, :cond_3

    .line 227
    iput-object v1, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mDetailAction:Lcom/baidu/bulletin/ui/logic/UIController$IDetialAction;

    goto :goto_0

    .line 228
    :cond_3
    instance-of v0, p1, Lcom/baidu/bulletin/ui/logic/UIController$IOpWebAction;

    if-eqz v0, :cond_0

    .line 229
    iput-object v1, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mOpWebAction:Lcom/baidu/bulletin/ui/logic/UIController$IOpWebAction;

    goto :goto_0
.end method

.method public remoteTaskCanceled(ILcom/baidu/bulletin/db/entity/ChannelItemInfo;)V
    .locals 1
    .parameter "taskType"
    .parameter "data"

    .prologue
    .line 1210
    packed-switch p1, :pswitch_data_0

    .line 1222
    :cond_0
    :goto_0
    return-void

    .line 1212
    :pswitch_0
    const/4 v0, 0x0

    iput v0, p2, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->uploaded:I

    .line 1214
    :try_start_0
    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mIOnUploadListener:Lcom/baidu/bulletin/ui/logic/UIController$IOnUploadListener;

    if-eqz v0, :cond_0

    .line 1215
    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mIOnUploadListener:Lcom/baidu/bulletin/ui/logic/UIController$IOnUploadListener;

    invoke-interface {v0, p2}, Lcom/baidu/bulletin/ui/logic/UIController$IOnUploadListener;->onUpload(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1217
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1210
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public remoteTaskCompleted(ILcom/baidu/bulletin/db/entity/ChannelItemInfo;Ljava/lang/String;)V
    .locals 18
    .parameter "taskType"
    .parameter "data"
    .parameter "offlineId"

    .prologue
    .line 1253
    packed-switch p1, :pswitch_data_0

    .line 1299
    :goto_0
    return-void

    .line 1255
    :pswitch_0
    const/4 v14, 0x1

    move-object/from16 v0, p2

    iput v14, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->uploaded:I

    .line 1256
    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->task:Lcom/baidu/bulletin/db/entity/ChannelItemInfo$OfflineTask;

    const/16 v15, 0xa

    iput v15, v14, Lcom/baidu/bulletin/db/entity/ChannelItemInfo$OfflineTask;->waitSec:I

    .line 1257
    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->task:Lcom/baidu/bulletin/db/entity/ChannelItemInfo$OfflineTask;

    const-wide/16 v15, 0x0

    iput-wide v15, v14, Lcom/baidu/bulletin/db/entity/ChannelItemInfo$OfflineTask;->start:J

    .line 1259
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/bulletin/ui/logic/UIController;->mIOnUploadListener:Lcom/baidu/bulletin/ui/logic/UIController$IOnUploadListener;

    if-eqz v14, :cond_0

    .line 1260
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/bulletin/ui/logic/UIController;->mIOnUploadListener:Lcom/baidu/bulletin/ui/logic/UIController$IOnUploadListener;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Lcom/baidu/bulletin/ui/logic/UIController$IOnUploadListener;->onUpload(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1265
    :cond_0
    :goto_1
    sget-object v14, Lcom/baidu/bulletin/ui/logic/UIController;->LOG_TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "waitSec: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->task:Lcom/baidu/bulletin/db/entity/ChannelItemInfo$OfflineTask;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo$OfflineTask;->waitSec:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " progress: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->task:Lcom/baidu/bulletin/db/entity/ChannelItemInfo$OfflineTask;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo$OfflineTask;->start:J

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1266
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/bulletin/ui/logic/UIController;->mMainHandler:Landroid/os/Handler;

    new-instance v15, Lcom/baidu/bulletin/ui/logic/UIController$checkTaskChannelItemInfoRunnable;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p0

    invoke-direct {v15, v0, v1, v2, v3}, Lcom/baidu/bulletin/ui/logic/UIController$checkTaskChannelItemInfoRunnable;-><init>(Lcom/baidu/bulletin/ui/logic/UIController;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;Ljava/lang/String;Lcom/baidu/bulletin/BulletinService$RemoteTaskListener;)V

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->task:Lcom/baidu/bulletin/db/entity/ChannelItemInfo$OfflineTask;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo$OfflineTask;->waitSec:I

    move/from16 v16, v0

    move/from16 v0, v16

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    invoke-virtual/range {v14 .. v17}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 1262
    :catch_0
    move-exception v7

    .line 1263
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1269
    .end local v7           #e:Ljava/lang/Exception;
    :pswitch_1
    const/4 v14, 0x2

    move-object/from16 v0, p2

    iput v14, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->uploaded:I

    .line 1271
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/bulletin/ui/logic/UIController;->mIOnUploadListener:Lcom/baidu/bulletin/ui/logic/UIController$IOnUploadListener;

    if-eqz v14, :cond_1

    .line 1272
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/bulletin/ui/logic/UIController;->mIOnUploadListener:Lcom/baidu/bulletin/ui/logic/UIController$IOnUploadListener;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Lcom/baidu/bulletin/ui/logic/UIController$IOnUploadListener;->onUpload(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1277
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/bulletin/ui/logic/UIController;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v14, :cond_2

    .line 1278
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/bulletin/ui/logic/UIController;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    const-string v15, "notification"

    invoke-virtual {v14, v15}, Lcom/baidu/launcher/app/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/NotificationManager;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/baidu/bulletin/ui/logic/UIController;->mNotificationManager:Landroid/app/NotificationManager;

    .line 1280
    :cond_2
    const v8, 0x7f020260

    .line 1281
    .local v8, icon:I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->title:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/baidu/bulletin/ui/logic/UIController;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    const v16, 0x7f0c025d

    invoke-virtual/range {v15 .. v16}, Lcom/baidu/launcher/app/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1282
    .local v11, tickerText:Ljava/lang/CharSequence;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 1283
    .local v12, when:J
    new-instance v9, Landroid/app/Notification;

    invoke-direct {v9, v8, v11, v12, v13}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1284
    .local v9, notification:Landroid/app/Notification;
    iget v14, v9, Landroid/app/Notification;->flags:I

    or-int/lit8 v14, v14, 0x10

    iput v14, v9, Landroid/app/Notification;->flags:I

    .line 1285
    move-object v6, v11

    .line 1286
    .local v6, contentTitle:Ljava/lang/CharSequence;
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 1287
    .local v10, notificationIntent:Landroid/content/Intent;
    const-string v14, "com.baidu.netdisk"

    const-string v15, "com.baidu.netdisk.ui.Navigate"

    invoke-virtual {v10, v14, v15}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1288
    const-string v14, "android.intent.action.MAIN"

    invoke-virtual {v10, v14}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1289
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/bulletin/ui/logic/UIController;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    const v15, 0x7f0c0259

    invoke-virtual {v14, v15}, Lcom/baidu/launcher/app/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1290
    .local v5, contentText:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/bulletin/ui/logic/UIController;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    const/4 v15, 0x0

    const/high16 v16, 0x800

    move/from16 v0, v16

    invoke-static {v14, v15, v10, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 1291
    .local v4, contentIntent:Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/bulletin/ui/logic/UIController;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    invoke-virtual {v9, v14, v6, v5, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1292
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/bulletin/ui/logic/UIController;->mNotificationManager:Landroid/app/NotificationManager;

    move-object/from16 v0, p2

    iget-wide v15, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->_id:J

    long-to-int v15, v15

    invoke-virtual {v14, v15, v9}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1295
    invoke-static {}, Lcom/baidu/bulletin/utils/BulletinUBC;->statForMusicUpload()V

    goto/16 :goto_0

    .line 1274
    .end local v4           #contentIntent:Landroid/app/PendingIntent;
    .end local v5           #contentText:Ljava/lang/CharSequence;
    .end local v6           #contentTitle:Ljava/lang/CharSequence;
    .end local v8           #icon:I
    .end local v9           #notification:Landroid/app/Notification;
    .end local v10           #notificationIntent:Landroid/content/Intent;
    .end local v11           #tickerText:Ljava/lang/CharSequence;
    .end local v12           #when:J
    :catch_1
    move-exception v7

    .line 1275
    .restart local v7       #e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 1253
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public remoteTaskFailed(ILcom/baidu/bulletin/db/entity/ChannelItemInfo;I)V
    .locals 13
    .parameter "taskType"
    .parameter "data"
    .parameter "extraInfo"

    .prologue
    .line 1303
    iget-object v10, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v10, :cond_0

    .line 1304
    iget-object v10, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    const-string v11, "notification"

    invoke-virtual {v10, v11}, Lcom/baidu/launcher/app/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationManager;

    iput-object v10, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mNotificationManager:Landroid/app/NotificationManager;

    .line 1306
    :cond_0
    const v4, 0x7f02025f

    .line 1307
    .local v4, icon:I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p2, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->title:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    const v12, 0x7f0c025b

    invoke-virtual {v11, v12}, Lcom/baidu/launcher/app/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1308
    .local v7, tickerText:Ljava/lang/CharSequence;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1309
    .local v8, when:J
    new-instance v5, Landroid/app/Notification;

    invoke-direct {v5, v4, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1310
    .local v5, notification:Landroid/app/Notification;
    iget v10, v5, Landroid/app/Notification;->flags:I

    or-int/lit8 v10, v10, 0x10

    iput v10, v5, Landroid/app/Notification;->flags:I

    .line 1311
    move-object v2, v7

    .line 1312
    .local v2, contentTitle:Ljava/lang/CharSequence;
    iget-object v10, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    const v11, 0x7f0c025c

    invoke-virtual {v10, v11}, Lcom/baidu/launcher/app/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1313
    .local v1, contentText:Ljava/lang/CharSequence;
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 1314
    .local v6, notificationIntent:Landroid/content/Intent;
    iget-object v10, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v10, v11, v6, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1315
    .local v0, contentIntent:Landroid/app/PendingIntent;
    packed-switch p1, :pswitch_data_0

    .line 1380
    :goto_0
    return-void

    .line 1317
    :pswitch_0
    const/4 v10, 0x3

    iput v10, p2, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->uploaded:I

    .line 1319
    :try_start_0
    iget-object v10, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mIOnUploadListener:Lcom/baidu/bulletin/ui/logic/UIController$IOnUploadListener;

    if-eqz v10, :cond_1

    .line 1320
    iget-object v10, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mIOnUploadListener:Lcom/baidu/bulletin/ui/logic/UIController$IOnUploadListener;

    invoke-interface {v10, p2}, Lcom/baidu/bulletin/ui/logic/UIController$IOnUploadListener;->onUpload(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1325
    :cond_1
    :goto_1
    sparse-switch p3, :sswitch_data_0

    goto :goto_0

    .line 1327
    :sswitch_0
    invoke-static {}, Lcom/baidu/bulletin/BulletinPresentation;->getInstance()Lcom/baidu/bulletin/BulletinPresentation;

    move-result-object v10

    iget-object v11, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    const/4 v12, 0x1

    invoke-virtual {v10, v11, p2, p0, v12}, Lcom/baidu/bulletin/BulletinPresentation;->loginAccount(Lcom/baidu/launcher/app/Launcher;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;Lcom/baidu/bulletin/BulletinService$RemoteTaskListener;Z)V

    goto :goto_0

    .line 1322
    :catch_0
    move-exception v3

    .line 1323
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1331
    .end local v3           #e:Ljava/lang/Exception;
    :sswitch_1
    iget-object v10, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    const v11, 0x7f0c025c

    invoke-virtual {v10, v11}, Lcom/baidu/launcher/app/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1332
    iget-object v10, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    invoke-virtual {v5, v10, v2, v1, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1333
    iget-object v10, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mNotificationManager:Landroid/app/NotificationManager;

    iget-wide v11, p2, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->_id:J

    long-to-int v11, v11

    invoke-virtual {v10, v11, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 1336
    :sswitch_2
    iget-object v10, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    const v11, 0x7f0c025a

    invoke-virtual {v10, v11}, Lcom/baidu/launcher/app/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1337
    new-instance v6, Landroid/content/Intent;

    .end local v6           #notificationIntent:Landroid/content/Intent;
    const-string v10, "android.settings.SETTINGS"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1338
    .restart local v6       #notificationIntent:Landroid/content/Intent;
    iget-object v10, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v10, v11, v6, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1339
    iget-object v10, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    invoke-virtual {v5, v10, v2, v1, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1340
    iget-object v10, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mNotificationManager:Landroid/app/NotificationManager;

    iget-wide v11, p2, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->_id:J

    long-to-int v11, v11

    invoke-virtual {v10, v11, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 1347
    :pswitch_1
    const/4 v10, 0x3

    iput v10, p2, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->uploaded:I

    .line 1349
    :try_start_1
    iget-object v10, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mIOnUploadListener:Lcom/baidu/bulletin/ui/logic/UIController$IOnUploadListener;

    if-eqz v10, :cond_2

    .line 1350
    iget-object v10, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mIOnUploadListener:Lcom/baidu/bulletin/ui/logic/UIController$IOnUploadListener;

    invoke-interface {v10, p2}, Lcom/baidu/bulletin/ui/logic/UIController$IOnUploadListener;->onUpload(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1355
    :cond_2
    :goto_2
    packed-switch p3, :pswitch_data_1

    .line 1373
    :pswitch_2
    iget-object v10, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    const v11, 0x7f0c025c

    invoke-virtual {v10, v11}, Lcom/baidu/launcher/app/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1374
    iget-object v10, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    invoke-virtual {v5, v10, v2, v1, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1375
    iget-object v10, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mNotificationManager:Landroid/app/NotificationManager;

    iget-wide v11, p2, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->_id:J

    long-to-int v11, v11

    invoke-virtual {v10, v11, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 1352
    :catch_1
    move-exception v3

    .line 1353
    .restart local v3       #e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 1357
    .end local v3           #e:Ljava/lang/Exception;
    :pswitch_3
    new-instance v6, Landroid/content/Intent;

    .end local v6           #notificationIntent:Landroid/content/Intent;
    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 1358
    .restart local v6       #notificationIntent:Landroid/content/Intent;
    const-string v10, "com.baidu.netdisk"

    const-string v11, "com.baidu.netdisk.ui.Navigate"

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1359
    const-string v10, "android.intent.action.MAIN"

    invoke-virtual {v6, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1360
    iget-object v10, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v10, v11, v6, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1361
    iget-object v10, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    const v11, 0x7f0c025e

    invoke-virtual {v10, v11}, Lcom/baidu/launcher/app/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1362
    iget-object v10, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    invoke-virtual {v5, v10, v2, v1, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1363
    iget-object v10, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mNotificationManager:Landroid/app/NotificationManager;

    iget-wide v11, p2, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->_id:J

    long-to-int v11, v11

    invoke-virtual {v10, v11, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 1366
    :pswitch_4
    iget-object v10, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    const v11, 0x7f0c025a

    invoke-virtual {v10, v11}, Lcom/baidu/launcher/app/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1367
    new-instance v6, Landroid/content/Intent;

    .end local v6           #notificationIntent:Landroid/content/Intent;
    const-string v10, "android.settings.SETTINGS"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1368
    .restart local v6       #notificationIntent:Landroid/content/Intent;
    iget-object v10, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v10, v11, v6, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1369
    iget-object v10, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    invoke-virtual {v5, v10, v2, v1, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1370
    iget-object v10, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mNotificationManager:Landroid/app/NotificationManager;

    iget-wide v11, p2, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->_id:J

    long-to-int v11, v11

    invoke-virtual {v10, v11, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 1315
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1325
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x9 -> :sswitch_2
        0xa -> :sswitch_1
    .end sparse-switch

    .line 1355
    :pswitch_data_1
    .packed-switch 0x6
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public remoteTaskPreStarted(ILcom/baidu/bulletin/db/entity/ChannelItemInfo;)V
    .locals 1
    .parameter "taskType"
    .parameter "data"

    .prologue
    .line 1176
    packed-switch p1, :pswitch_data_0

    .line 1190
    :cond_0
    :goto_0
    return-void

    .line 1178
    :pswitch_0
    const/4 v0, 0x1

    iput v0, p2, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->uploaded:I

    .line 1181
    :try_start_0
    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mIOnUploadListener:Lcom/baidu/bulletin/ui/logic/UIController$IOnUploadListener;

    if-eqz v0, :cond_0

    .line 1182
    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mIOnUploadListener:Lcom/baidu/bulletin/ui/logic/UIController$IOnUploadListener;

    invoke-interface {v0, p2}, Lcom/baidu/bulletin/ui/logic/UIController$IOnUploadListener;->onUpload(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1185
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1176
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public remoteTaskProgress(ILcom/baidu/bulletin/db/entity/ChannelItemInfo;ILjava/lang/String;)V
    .locals 8
    .parameter "taskType"
    .parameter "data"
    .parameter "progress"
    .parameter "offlineId"

    .prologue
    .line 1226
    packed-switch p1, :pswitch_data_0

    .line 1249
    :goto_0
    :pswitch_0
    return-void

    .line 1230
    :pswitch_1
    const/4 v1, 0x1

    iput v1, p2, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->uploaded:I

    .line 1231
    int-to-long v1, p3

    iget-object v3, p2, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->task:Lcom/baidu/bulletin/db/entity/ChannelItemInfo$OfflineTask;

    iget-wide v3, v3, Lcom/baidu/bulletin/db/entity/ChannelItemInfo$OfflineTask;->start:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 1232
    iget-object v1, p2, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->task:Lcom/baidu/bulletin/db/entity/ChannelItemInfo$OfflineTask;

    const/16 v2, 0xa

    iput v2, v1, Lcom/baidu/bulletin/db/entity/ChannelItemInfo$OfflineTask;->waitSec:I

    .line 1237
    :goto_1
    iget-object v1, p2, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->task:Lcom/baidu/bulletin/db/entity/ChannelItemInfo$OfflineTask;

    int-to-long v2, p3

    iput-wide v2, v1, Lcom/baidu/bulletin/db/entity/ChannelItemInfo$OfflineTask;->start:J

    .line 1238
    sget-object v1, Lcom/baidu/bulletin/ui/logic/UIController;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "waitSec: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->task:Lcom/baidu/bulletin/db/entity/ChannelItemInfo$OfflineTask;

    iget v3, v3, Lcom/baidu/bulletin/db/entity/ChannelItemInfo$OfflineTask;->waitSec:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " progress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->task:Lcom/baidu/bulletin/db/entity/ChannelItemInfo$OfflineTask;

    iget-wide v3, v3, Lcom/baidu/bulletin/db/entity/ChannelItemInfo$OfflineTask;->start:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1240
    :try_start_0
    iget-object v1, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mIOnUploadListener:Lcom/baidu/bulletin/ui/logic/UIController$IOnUploadListener;

    if-eqz v1, :cond_0

    .line 1241
    iget-object v1, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mIOnUploadListener:Lcom/baidu/bulletin/ui/logic/UIController$IOnUploadListener;

    invoke-interface {v1, p2}, Lcom/baidu/bulletin/ui/logic/UIController$IOnUploadListener;->onUpload(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1246
    :cond_0
    :goto_2
    iget-object v1, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mMainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/baidu/bulletin/ui/logic/UIController$checkTaskChannelItemInfoRunnable;

    invoke-direct {v2, p0, p2, p4, p0}, Lcom/baidu/bulletin/ui/logic/UIController$checkTaskChannelItemInfoRunnable;-><init>(Lcom/baidu/bulletin/ui/logic/UIController;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;Ljava/lang/String;Lcom/baidu/bulletin/BulletinService$RemoteTaskListener;)V

    iget-object v3, p2, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->task:Lcom/baidu/bulletin/db/entity/ChannelItemInfo$OfflineTask;

    iget v3, v3, Lcom/baidu/bulletin/db/entity/ChannelItemInfo$OfflineTask;->waitSec:I

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1234
    :cond_1
    iget-object v1, p2, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->task:Lcom/baidu/bulletin/db/entity/ChannelItemInfo$OfflineTask;

    rsub-int/lit8 v2, p3, 0x64

    iget-object v3, p2, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->task:Lcom/baidu/bulletin/db/entity/ChannelItemInfo$OfflineTask;

    iget v3, v3, Lcom/baidu/bulletin/db/entity/ChannelItemInfo$OfflineTask;->waitSec:I

    mul-int/2addr v2, v3

    int-to-long v2, v2

    int-to-long v4, p3

    iget-object v6, p2, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->task:Lcom/baidu/bulletin/db/entity/ChannelItemInfo$OfflineTask;

    iget-wide v6, v6, Lcom/baidu/bulletin/db/entity/ChannelItemInfo$OfflineTask;->start:J

    sub-long/2addr v4, v6

    div-long/2addr v2, v4

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, v1, Lcom/baidu/bulletin/db/entity/ChannelItemInfo$OfflineTask;->waitSec:I

    goto :goto_1

    .line 1243
    :catch_0
    move-exception v0

    .line 1244
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 1226
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public remoteTaskStarted(ILcom/baidu/bulletin/db/entity/ChannelItemInfo;)V
    .locals 1
    .parameter "taskType"
    .parameter "data"

    .prologue
    .line 1194
    packed-switch p1, :pswitch_data_0

    .line 1206
    :cond_0
    :goto_0
    return-void

    .line 1196
    :pswitch_0
    const/4 v0, 0x1

    iput v0, p2, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->uploaded:I

    .line 1198
    :try_start_0
    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mIOnUploadListener:Lcom/baidu/bulletin/ui/logic/UIController$IOnUploadListener;

    if-eqz v0, :cond_0

    .line 1199
    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mIOnUploadListener:Lcom/baidu/bulletin/ui/logic/UIController$IOnUploadListener;

    invoke-interface {v0, p2}, Lcom/baidu/bulletin/ui/logic/UIController$IOnUploadListener;->onUpload(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1201
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1194
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 188
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mContext:Landroid/content/Context;

    .line 189
    return-void
.end method

.method public setIndicator(Lcom/baidu/launcher/ui/homeview/Indicator;)V
    .locals 0
    .parameter "Indicator"

    .prologue
    .line 196
    iput-object p1, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mIndicator:Lcom/baidu/launcher/ui/homeview/Indicator;

    .line 197
    return-void
.end method

.method public setLauncher(Lcom/baidu/launcher/app/Launcher;)V
    .locals 0
    .parameter "launcher"

    .prologue
    .line 180
    iput-object p1, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    .line 181
    return-void
.end method

.method public setOnUploadListener(Lcom/baidu/bulletin/ui/logic/UIController$IOnUploadListener;)V
    .locals 0
    .parameter "onUploadListener"

    .prologue
    .line 1166
    iput-object p1, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mIOnUploadListener:Lcom/baidu/bulletin/ui/logic/UIController$IOnUploadListener;

    .line 1167
    return-void
.end method

.method public setWorkspace(Lcom/baidu/launcher/ui/homeview/Workspace;)V
    .locals 0
    .parameter "workspace"

    .prologue
    .line 200
    iput-object p1, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;

    .line 201
    return-void
.end method

.method public declared-synchronized showOpWebView(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 256
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mServiceStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 266
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 258
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mBulletinAction:Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/logic/UIController;->isSettings()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/logic/UIController;->isInAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 261
    iget-boolean v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->isDetailing:Z

    if-eqz v0, :cond_2

    .line 262
    invoke-direct {p0}, Lcom/baidu/bulletin/ui/logic/UIController;->closeDetail()V

    .line 264
    :cond_2
    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mBulletinAction:Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;

    invoke-interface {v0}, Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;->showOpWebView()V

    .line 265
    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mOpWebAction:Lcom/baidu/bulletin/ui/logic/UIController$IOpWebAction;

    invoke-interface {v0, p1}, Lcom/baidu/bulletin/ui/logic/UIController$IOpWebAction;->onStart(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 256
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized showSettings()V
    .locals 2

    .prologue
    .line 242
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mServiceStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 253
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 244
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mBulletinAction:Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/logic/UIController;->isSettings()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/logic/UIController;->isInAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 247
    iget-boolean v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->isDetailing:Z

    if-eqz v0, :cond_2

    .line 248
    invoke-direct {p0}, Lcom/baidu/bulletin/ui/logic/UIController;->closeDetail()V

    .line 250
    :cond_2
    invoke-static {}, Lcom/baidu/bulletin/ui/logic/SettingsController;->getSettingsController()Lcom/baidu/bulletin/ui/logic/SettingsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bulletin/ui/logic/SettingsController;->getChannelListMask()I

    move-result v0

    iput v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mChannelMask:I

    .line 251
    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mSettingsAction:Lcom/baidu/bulletin/ui/logic/UIController$ISettingsAction;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/baidu/bulletin/ui/logic/UIController$ISettingsAction;->onStart(I)V

    .line 252
    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mBulletinAction:Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;->showSettings(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 242
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 832
    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 844
    :cond_0
    :goto_0
    return-void

    .line 835
    :cond_1
    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/bulletin/ui/Utilities;->isTaskInFront(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 838
    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_2

    .line 839
    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mToast:Landroid/widget/Toast;

    .line 843
    :goto_1
    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 841
    :cond_2
    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public startMusicPlayer(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;Lcom/baidu/bulletin/utils/MusicPlayer$Observer;)V
    .locals 4
    .parameter "data"
    .parameter "observer"

    .prologue
    .line 702
    invoke-static {}, Lcom/baidu/bulletin/utils/DeviceEnv$Network;->getOutgoingRoute()Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;

    move-result-object v2

    sget-object v3, Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;->MOBILE:Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;

    if-ne v2, v3, :cond_0

    iget-object v2, p1, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->content:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/baidu/bulletin/ui/logic/UIController;->IsLocalFileExist(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 704
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    const v3, 0x1030132

    invoke-direct {v0, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 705
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0c024b

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 706
    const v2, 0x7f0c0248

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 707
    const v2, 0x7f0c0249

    new-instance v3, Lcom/baidu/bulletin/ui/logic/UIController$4;

    invoke-direct {v3, p0, p1, p2}, Lcom/baidu/bulletin/ui/logic/UIController$4;-><init>(Lcom/baidu/bulletin/ui/logic/UIController;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;Lcom/baidu/bulletin/utils/MusicPlayer$Observer;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 714
    const v2, 0x7f0c024a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 715
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 716
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x7f09002f

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 717
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 721
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v1           #dialog:Landroid/app/AlertDialog;
    :goto_0
    return-void

    .line 719
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/logic/UIController;->getMusicPlayer()Lcom/baidu/bulletin/utils/MusicPlayer;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/baidu/bulletin/utils/MusicPlayer;->startPlayer(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;Lcom/baidu/bulletin/utils/MusicPlayer$Observer;)V

    goto :goto_0
.end method

.method public declared-synchronized startService()V
    .locals 2

    .prologue
    .line 967
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mServiceStarted:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mWaitingService:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 974
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 969
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mWaitingService:Z

    .line 970
    sget-object v0, Lcom/baidu/bulletin/ui/logic/UIController;->LOG_TAG:Ljava/lang/String;

    const-string v1, "bulletin start service"

    invoke-static {v0, v1}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    invoke-static {}, Lcom/baidu/bulletin/BulletinPresentation;->getInstance()Lcom/baidu/bulletin/BulletinPresentation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bulletin/BulletinPresentation;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 967
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopService()V
    .locals 2

    .prologue
    .line 977
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mServiceStarted:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mWaitingService:Z

    if-eqz v0, :cond_1

    .line 978
    :cond_0
    sget-object v0, Lcom/baidu/bulletin/ui/logic/UIController;->LOG_TAG:Ljava/lang/String;

    const-string v1, "bulletin close service"

    invoke-static {v0, v1}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    invoke-static {}, Lcom/baidu/bulletin/BulletinPresentation;->close()V

    .line 980
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mServiceStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 982
    :cond_1
    monitor-exit p0

    return-void

    .line 977
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public storeSettings(IIZ)V
    .locals 4
    .parameter "channel"
    .parameter "item"
    .parameter "isSelected"

    .prologue
    .line 269
    invoke-static {}, Lcom/baidu/bulletin/ui/logic/SettingsController;->getSettingsController()Lcom/baidu/bulletin/ui/logic/SettingsController;

    move-result-object v2

    .line 270
    .local v2, settingsController:Lcom/baidu/bulletin/ui/logic/SettingsController;
    if-nez p1, :cond_1

    .line 271
    packed-switch p2, :pswitch_data_0

    .line 315
    :goto_0
    invoke-direct {p0}, Lcom/baidu/bulletin/ui/logic/UIController;->sendSelectChannelUBC()V

    .line 350
    :cond_0
    :goto_1
    return-void

    .line 273
    :pswitch_0
    const-string v3, "focus_news"

    invoke-virtual {v2, v3, p3}, Lcom/baidu/bulletin/ui/logic/SettingsController;->setChannelSubscription(Ljava/lang/String;Z)Z

    goto :goto_0

    .line 276
    :pswitch_1
    const-string v3, "internet"

    invoke-virtual {v2, v3, p3}, Lcom/baidu/bulletin/ui/logic/SettingsController;->setChannelSubscription(Ljava/lang/String;Z)Z

    goto :goto_0

    .line 279
    :pswitch_2
    const-string v3, "music"

    invoke-virtual {v2, v3, p3}, Lcom/baidu/bulletin/ui/logic/SettingsController;->setChannelSubscription(Ljava/lang/String;Z)Z

    goto :goto_0

    .line 282
    :pswitch_3
    const-string v3, "app"

    invoke-virtual {v2, v3, p3}, Lcom/baidu/bulletin/ui/logic/SettingsController;->setChannelSubscription(Ljava/lang/String;Z)Z

    goto :goto_0

    .line 285
    :pswitch_4
    const-string v3, "military"

    invoke-virtual {v2, v3, p3}, Lcom/baidu/bulletin/ui/logic/SettingsController;->setChannelSubscription(Ljava/lang/String;Z)Z

    goto :goto_0

    .line 288
    :pswitch_5
    const-string v3, "entertainment"

    invoke-virtual {v2, v3, p3}, Lcom/baidu/bulletin/ui/logic/SettingsController;->setChannelSubscription(Ljava/lang/String;Z)Z

    goto :goto_0

    .line 291
    :pswitch_6
    const-string v3, "tech"

    invoke-virtual {v2, v3, p3}, Lcom/baidu/bulletin/ui/logic/SettingsController;->setChannelSubscription(Ljava/lang/String;Z)Z

    goto :goto_0

    .line 294
    :pswitch_7
    const-string v3, "finance"

    invoke-virtual {v2, v3, p3}, Lcom/baidu/bulletin/ui/logic/SettingsController;->setChannelSubscription(Ljava/lang/String;Z)Z

    goto :goto_0

    .line 297
    :pswitch_8
    const-string v3, "gym"

    invoke-virtual {v2, v3, p3}, Lcom/baidu/bulletin/ui/logic/SettingsController;->setChannelSubscription(Ljava/lang/String;Z)Z

    goto :goto_0

    .line 300
    :pswitch_9
    const-string v3, "women"

    invoke-virtual {v2, v3, p3}, Lcom/baidu/bulletin/ui/logic/SettingsController;->setChannelSubscription(Ljava/lang/String;Z)Z

    goto :goto_0

    .line 303
    :pswitch_a
    const-string v3, "model"

    invoke-virtual {v2, v3, p3}, Lcom/baidu/bulletin/ui/logic/SettingsController;->setChannelSubscription(Ljava/lang/String;Z)Z

    goto :goto_0

    .line 306
    :pswitch_b
    const-string v3, "camera"

    invoke-virtual {v2, v3, p3}, Lcom/baidu/bulletin/ui/logic/SettingsController;->setChannelSubscription(Ljava/lang/String;Z)Z

    goto :goto_0

    .line 309
    :pswitch_c
    const-string v3, "moko"

    invoke-virtual {v2, v3, p3}, Lcom/baidu/bulletin/ui/logic/SettingsController;->setChannelSubscription(Ljava/lang/String;Z)Z

    goto :goto_0

    .line 312
    :pswitch_d
    const-string v3, "sexiy"

    invoke-virtual {v2, v3, p3}, Lcom/baidu/bulletin/ui/logic/SettingsController;->setChannelSubscription(Ljava/lang/String;Z)Z

    goto :goto_0

    .line 316
    :cond_1
    const/4 v3, 0x1

    if-ne v3, p1, :cond_0

    .line 317
    packed-switch p2, :pswitch_data_1

    goto :goto_1

    .line 319
    :pswitch_e
    invoke-static {p3}, Lcom/baidu/bulletin/utils/SharedPreferencesUtils;->setAutoSync(Z)Z

    .line 322
    if-eqz p3, :cond_2

    .line 323
    invoke-static {}, Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader;->getInstance()Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader;->downloadAll()V

    .line 329
    :goto_2
    if-eqz p3, :cond_3

    .line 330
    const/4 v1, 0x1

    .local v1, key:B
    goto :goto_1

    .line 325
    .end local v1           #key:B
    :cond_2
    invoke-static {}, Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader;->getInstance()Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader;->cancelAll()V

    goto :goto_2

    .line 332
    :cond_3
    const/4 v1, 0x0

    .line 336
    .restart local v1       #key:B
    goto :goto_1

    .line 338
    .end local v1           #key:B
    :pswitch_f
    invoke-static {p3}, Lcom/baidu/bulletin/utils/SharedPreferencesUtils;->enableMonitor(Z)Z

    goto :goto_1

    .line 341
    :pswitch_10
    invoke-virtual {v2, p3}, Lcom/baidu/bulletin/ui/logic/SettingsController;->setBulletinVisible(Z)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 342
    invoke-virtual {p0, p3}, Lcom/baidu/bulletin/ui/logic/UIController;->openBulletinScreen(Z)V

    goto/16 :goto_1

    .line 344
    :cond_4
    iget-object v3, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    invoke-static {v3}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->getInstance(Landroid/content/Context;)Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;

    move-result-object v0

    .line 345
    .local v0, floatWindowController:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;
    invoke-virtual {v0}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->clickFloatWindow()V

    goto/16 :goto_1

    .line 271
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_d
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch

    .line 317
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method public declared-synchronized unLockWorkspace(Z)V
    .locals 2
    .parameter "fromLauncher"

    .prologue
    .line 763
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    invoke-virtual {v0}, Lcom/baidu/launcher/app/Launcher;->getCurrentWorkspaceScreen()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/logic/UIController;->isInAnimation()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 776
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 765
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/logic/UIController;->isSettings()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 766
    invoke-direct {p0}, Lcom/baidu/bulletin/ui/logic/UIController;->closeSettings()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 763
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 767
    :cond_2
    :try_start_2
    iget-boolean v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->isDetailing:Z

    if-eqz v0, :cond_3

    .line 768
    if-nez p1, :cond_0

    .line 769
    invoke-direct {p0}, Lcom/baidu/bulletin/ui/logic/UIController;->closeDetail()V

    goto :goto_0

    .line 771
    :cond_3
    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mBulletinAction:Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mBulletinAction:Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;

    invoke-interface {v0}, Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;->isOpWebViewShown()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 772
    invoke-direct {p0}, Lcom/baidu/bulletin/ui/logic/UIController;->closeOpWebView()V

    goto :goto_0

    .line 774
    :cond_4
    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->moveToDefaultScreen(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public updateMediaPlayObserver(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;Lcom/baidu/bulletin/utils/MusicPlayer$Observer;)V
    .locals 1
    .parameter "data"
    .parameter "observer"

    .prologue
    .line 728
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/logic/UIController;->getMusicPlayer()Lcom/baidu/bulletin/utils/MusicPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bulletin/utils/MusicPlayer;->getCurrentChannelItem()Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->isSame(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 729
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/logic/UIController;->getMusicPlayer()Lcom/baidu/bulletin/utils/MusicPlayer;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/baidu/bulletin/utils/MusicPlayer;->refreshUiObserver(Lcom/baidu/bulletin/utils/MusicPlayer$Observer;)V

    .line 731
    :cond_0
    return-void
.end method

.method public updateMediaPlayObserver(Lcom/baidu/bulletin/entity/ChannelItem;Lcom/baidu/bulletin/utils/MusicPlayer$Observer;)V
    .locals 1
    .parameter "data"
    .parameter "observer"

    .prologue
    .line 689
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/logic/UIController;->getMusicPlayer()Lcom/baidu/bulletin/utils/MusicPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bulletin/utils/MusicPlayer;->getCurrentChannel()Lcom/baidu/bulletin/entity/ChannelItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/baidu/bulletin/entity/ChannelItem;->isSame(Lcom/baidu/bulletin/entity/ChannelItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 690
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/logic/UIController;->getMusicPlayer()Lcom/baidu/bulletin/utils/MusicPlayer;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/baidu/bulletin/utils/MusicPlayer;->refreshUiObserver(Lcom/baidu/bulletin/utils/MusicPlayer$Observer;)V

    .line 692
    :cond_0
    return-void
.end method
