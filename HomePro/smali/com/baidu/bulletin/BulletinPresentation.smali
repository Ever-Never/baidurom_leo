.class public Lcom/baidu/bulletin/BulletinPresentation;
.super Ljava/lang/Object;
.source "BulletinPresentation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bulletin/BulletinPresentation$4;,
        Lcom/baidu/bulletin/BulletinPresentation$ThreadSwitcher;,
        Lcom/baidu/bulletin/BulletinPresentation$Event;,
        Lcom/baidu/bulletin/BulletinPresentation$ClientSession;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mBulletinPresentation:Lcom/baidu/bulletin/BulletinPresentation;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mServiceSession:Lcom/baidu/bulletin/BulletinService$ServiceSession;

.field private mServiceStarted:Z

.field private mThreadSwitcher:Lcom/baidu/bulletin/BulletinPresentation$ThreadSwitcher;

.field private mbduss:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/baidu/bulletin/BulletinPresentation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/bulletin/BulletinPresentation;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/baidu/bulletin/BulletinPresentation$ThreadSwitcher;

    invoke-direct {v0, p0, v1}, Lcom/baidu/bulletin/BulletinPresentation$ThreadSwitcher;-><init>(Lcom/baidu/bulletin/BulletinPresentation;Lcom/baidu/bulletin/BulletinPresentation$1;)V

    iput-object v0, p0, Lcom/baidu/bulletin/BulletinPresentation;->mThreadSwitcher:Lcom/baidu/bulletin/BulletinPresentation$ThreadSwitcher;

    .line 53
    iput-object v1, p0, Lcom/baidu/bulletin/BulletinPresentation;->mbduss:Ljava/lang/String;

    .line 55
    new-instance v0, Lcom/baidu/bulletin/BulletinPresentation$1;

    invoke-direct {v0, p0}, Lcom/baidu/bulletin/BulletinPresentation$1;-><init>(Lcom/baidu/bulletin/BulletinPresentation;)V

    iput-object v0, p0, Lcom/baidu/bulletin/BulletinPresentation;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 88
    return-void
.end method

.method static synthetic access$100(Lcom/baidu/bulletin/BulletinPresentation;)Lcom/baidu/bulletin/BulletinService$ServiceSession;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/baidu/bulletin/BulletinPresentation;->mServiceSession:Lcom/baidu/bulletin/BulletinService$ServiceSession;

    return-object v0
.end method

.method static synthetic access$102(Lcom/baidu/bulletin/BulletinPresentation;Lcom/baidu/bulletin/BulletinService$ServiceSession;)Lcom/baidu/bulletin/BulletinService$ServiceSession;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/baidu/bulletin/BulletinPresentation;->mServiceSession:Lcom/baidu/bulletin/BulletinService$ServiceSession;

    return-object p1
.end method

.method static synthetic access$200(Lcom/baidu/bulletin/BulletinPresentation;)Lcom/baidu/bulletin/BulletinPresentation$ThreadSwitcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/baidu/bulletin/BulletinPresentation;->mThreadSwitcher:Lcom/baidu/bulletin/BulletinPresentation$ThreadSwitcher;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/baidu/bulletin/BulletinPresentation;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/baidu/bulletin/BulletinPresentation;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/baidu/bulletin/BulletinPresentation;->mbduss:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/baidu/bulletin/BulletinPresentation;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/baidu/bulletin/BulletinPresentation;->mbduss:Ljava/lang/String;

    return-object p1
.end method

.method public static close()V
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/baidu/bulletin/BulletinPresentation;->mBulletinPresentation:Lcom/baidu/bulletin/BulletinPresentation;

    if-eqz v0, :cond_0

    .line 81
    sget-object v0, Lcom/baidu/bulletin/BulletinPresentation;->mBulletinPresentation:Lcom/baidu/bulletin/BulletinPresentation;

    invoke-virtual {v0}, Lcom/baidu/bulletin/BulletinPresentation;->stop()V

    .line 82
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/bulletin/BulletinPresentation;->mBulletinPresentation:Lcom/baidu/bulletin/BulletinPresentation;

    .line 84
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/baidu/bulletin/BulletinPresentation;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/baidu/bulletin/BulletinPresentation;->mBulletinPresentation:Lcom/baidu/bulletin/BulletinPresentation;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lcom/baidu/bulletin/BulletinPresentation;

    invoke-direct {v0}, Lcom/baidu/bulletin/BulletinPresentation;-><init>()V

    sput-object v0, Lcom/baidu/bulletin/BulletinPresentation;->mBulletinPresentation:Lcom/baidu/bulletin/BulletinPresentation;

    .line 76
    :cond_0
    sget-object v0, Lcom/baidu/bulletin/BulletinPresentation;->mBulletinPresentation:Lcom/baidu/bulletin/BulletinPresentation;

    return-object v0
.end method


# virtual methods
.method public autoSync()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/baidu/bulletin/BulletinPresentation;->mServiceSession:Lcom/baidu/bulletin/BulletinService$ServiceSession;

    invoke-virtual {v0}, Lcom/baidu/bulletin/BulletinService$ServiceSession;->autoSync()V

    .line 120
    return-void
.end method

.method public checkOfflineInfo(Lcom/baidu/launcher/app/Launcher;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;Ljava/lang/String;Lcom/baidu/bulletin/BulletinService$RemoteTaskListener;)V
    .locals 1
    .parameter "launcher"
    .parameter "data"
    .parameter "offlineId"
    .parameter "ls"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/baidu/bulletin/BulletinPresentation;->mServiceSession:Lcom/baidu/bulletin/BulletinService$ServiceSession;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/baidu/bulletin/BulletinPresentation;->mServiceSession:Lcom/baidu/bulletin/BulletinService$ServiceSession;

    invoke-virtual {v0, p2, p3, p4}, Lcom/baidu/bulletin/BulletinService$ServiceSession;->checkOfflineInfo(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;Ljava/lang/String;Lcom/baidu/bulletin/BulletinService$RemoteTaskListener;)V

    .line 183
    :cond_0
    return-void
.end method

.method public downloadImgByPage(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/baidu/bulletin/BulletinPresentation;->mServiceSession:Lcom/baidu/bulletin/BulletinService$ServiceSession;

    invoke-virtual {v0, p1}, Lcom/baidu/bulletin/BulletinService$ServiceSession;->downloadImgByPage(I)V

    .line 210
    return-void
.end method

.method public getHistoryToday()Lcom/baidu/bulletin/entity/ChannelItem;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/baidu/bulletin/BulletinPresentation;->mServiceSession:Lcom/baidu/bulletin/BulletinService$ServiceSession;

    invoke-virtual {v0}, Lcom/baidu/bulletin/BulletinService$ServiceSession;->getHistoryToday()Lcom/baidu/bulletin/entity/ChannelItem;

    move-result-object v0

    return-object v0
.end method

.method public getPageCount()I
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/baidu/bulletin/BulletinPresentation;->mServiceSession:Lcom/baidu/bulletin/BulletinService$ServiceSession;

    invoke-virtual {v0}, Lcom/baidu/bulletin/BulletinService$ServiceSession;->getPageCount()I

    move-result v0

    return v0
.end method

.method public getPageData(I)[Lcom/baidu/bulletin/entity/ChannelItem;
    .locals 1
    .parameter "position"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/baidu/bulletin/BulletinPresentation;->mServiceSession:Lcom/baidu/bulletin/BulletinService$ServiceSession;

    invoke-virtual {v0, p1}, Lcom/baidu/bulletin/BulletinService$ServiceSession;->getPageData(I)[Lcom/baidu/bulletin/entity/ChannelItem;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/content/Context;Lcom/baidu/bulletin/BulletinPresentation$ClientSession;)V
    .locals 1
    .parameter "context"
    .parameter "session"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/baidu/bulletin/BulletinPresentation;->mContext:Landroid/content/Context;

    .line 92
    invoke-static {p1}, Lcom/baidu/bulletin/utils/DeviceEnv$Static;->init(Landroid/content/Context;)V

    .line 93
    invoke-static {}, Lcom/baidu/bulletin/pager/BulletinPager;->getInstance()Lcom/baidu/bulletin/pager/BulletinPager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/bulletin/pager/BulletinPager;->init(Landroid/content/Context;)V

    .line 94
    iget-object v0, p0, Lcom/baidu/bulletin/BulletinPresentation;->mThreadSwitcher:Lcom/baidu/bulletin/BulletinPresentation$ThreadSwitcher;

    invoke-virtual {v0, p2}, Lcom/baidu/bulletin/BulletinPresentation$ThreadSwitcher;->setObserver(Lcom/baidu/bulletin/BulletinPresentation$ClientSession;)V

    .line 95
    return-void
.end method

.method public loginAccount(Lcom/baidu/launcher/app/Launcher;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;Lcom/baidu/bulletin/BulletinService$RemoteTaskListener;Z)V
    .locals 3
    .parameter "launcher"
    .parameter "data"
    .parameter "ls"
    .parameter "login"

    .prologue
    .line 127
    sget-object v0, Lcom/baidu/bulletin/BulletinPresentation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Account token is invalid, login again: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/baidu/bulletin/BulletinPresentation;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/yi/sdk/account/YiAccountUtils;->getInstance(Landroid/content/Context;)Lcom/baidu/yi/sdk/account/YiAccountUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/yi/sdk/account/YiAccountUtils;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    sget-object v0, Lcom/baidu/bulletin/BulletinPresentation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Account bduss is"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bulletin/BulletinPresentation;->mbduss:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/baidu/bulletin/BulletinPresentation;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/yi/sdk/account/YiAccountUtils;->getInstance(Landroid/content/Context;)Lcom/baidu/yi/sdk/account/YiAccountUtils;

    move-result-object v0

    const-string v1, "com.baidu"

    iget-object v2, p0, Lcom/baidu/bulletin/BulletinPresentation;->mbduss:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/yi/sdk/account/YiAccountUtils;->invalidateToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_0
    if-eqz p4, :cond_1

    .line 133
    iget-object v0, p0, Lcom/baidu/bulletin/BulletinPresentation;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/yi/sdk/account/YiAccountUtils;->getInstance(Landroid/content/Context;)Lcom/baidu/yi/sdk/account/YiAccountUtils;

    move-result-object v0

    const-string v1, "com.baidu"

    new-instance v2, Lcom/baidu/bulletin/BulletinPresentation$2;

    invoke-direct {v2, p0, p2, p3}, Lcom/baidu/bulletin/BulletinPresentation$2;-><init>(Lcom/baidu/bulletin/BulletinPresentation;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;Lcom/baidu/bulletin/BulletinService$RemoteTaskListener;)V

    invoke-virtual {v0, v1, v2, p1}, Lcom/baidu/yi/sdk/account/YiAccountUtils;->getTokenAsync(Ljava/lang/String;Lcom/baidu/yi/sdk/account/YiAccountUtils$ITokenCallback;Landroid/app/Activity;)V

    .line 149
    :cond_1
    return-void
.end method

.method public offlineFile(Lcom/baidu/launcher/app/Launcher;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;Lcom/baidu/bulletin/BulletinService$RemoteTaskListener;)V
    .locals 3
    .parameter "launcher"
    .parameter "data"
    .parameter "ls"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/baidu/bulletin/BulletinPresentation;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/yi/sdk/account/YiAccountUtils;->getInstance(Landroid/content/Context;)Lcom/baidu/yi/sdk/account/YiAccountUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/yi/sdk/account/YiAccountUtils;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/bulletin/BulletinPresentation;->mbduss:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/bulletin/BulletinPresentation;->mServiceSession:Lcom/baidu/bulletin/BulletinService$ServiceSession;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/baidu/bulletin/BulletinPresentation;->mServiceSession:Lcom/baidu/bulletin/BulletinService$ServiceSession;

    invoke-virtual {v0, p2, p3}, Lcom/baidu/bulletin/BulletinService$ServiceSession;->offlineFile(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;Lcom/baidu/bulletin/BulletinService$RemoteTaskListener;)V

    .line 175
    :goto_0
    return-void

    .line 156
    :cond_0
    invoke-static {}, Lcom/baidu/bulletin/utils/BulletinUBC;->statForMusicLoginBox()V

    .line 158
    iget-object v0, p0, Lcom/baidu/bulletin/BulletinPresentation;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/yi/sdk/account/YiAccountUtils;->getInstance(Landroid/content/Context;)Lcom/baidu/yi/sdk/account/YiAccountUtils;

    move-result-object v0

    const-string v1, "com.baidu"

    new-instance v2, Lcom/baidu/bulletin/BulletinPresentation$3;

    invoke-direct {v2, p0, p2, p3}, Lcom/baidu/bulletin/BulletinPresentation$3;-><init>(Lcom/baidu/bulletin/BulletinPresentation;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;Lcom/baidu/bulletin/BulletinService$RemoteTaskListener;)V

    invoke-virtual {v0, v1, v2, p1}, Lcom/baidu/yi/sdk/account/YiAccountUtils;->getTokenAsync(Ljava/lang/String;Lcom/baidu/yi/sdk/account/YiAccountUtils$ITokenCallback;Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public refreshChannelContent()V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/baidu/bulletin/BulletinPresentation;->mServiceSession:Lcom/baidu/bulletin/BulletinService$ServiceSession;

    invoke-virtual {v0}, Lcom/baidu/bulletin/BulletinService$ServiceSession;->refreshChannelContent()V

    .line 206
    return-void
.end method

.method public requestPage(Lcom/baidu/bulletin/entity/ChannelItem;)V
    .locals 3
    .parameter "channel"

    .prologue
    .line 198
    sget-object v0, Lcom/baidu/bulletin/BulletinPresentation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestDetail >>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    if-nez p1, :cond_0

    .line 202
    :goto_0
    return-void

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/baidu/bulletin/BulletinPresentation;->mServiceSession:Lcom/baidu/bulletin/BulletinService$ServiceSession;

    invoke-virtual {v0, p1}, Lcom/baidu/bulletin/BulletinService$ServiceSession;->requestPage(Lcom/baidu/bulletin/entity/ChannelItem;)V

    goto :goto_0
.end method

.method public start()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 98
    iget-boolean v1, p0, Lcom/baidu/bulletin/BulletinPresentation;->mServiceStarted:Z

    if-eqz v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/baidu/bulletin/BulletinPresentation;->mThreadSwitcher:Lcom/baidu/bulletin/BulletinPresentation$ThreadSwitcher;

    invoke-virtual {v1}, Lcom/baidu/bulletin/BulletinPresentation$ThreadSwitcher;->onServiceStart()V

    .line 105
    :goto_0
    return-void

    .line 101
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/baidu/bulletin/BulletinPresentation;->mContext:Landroid/content/Context;

    const-class v2, Lcom/baidu/bulletin/BulletinService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/baidu/bulletin/BulletinPresentation;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/bulletin/BulletinPresentation;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 103
    iput-boolean v3, p0, Lcom/baidu/bulletin/BulletinPresentation;->mServiceStarted:Z

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/baidu/bulletin/BulletinPresentation;->mServiceStarted:Z

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/baidu/bulletin/BulletinPresentation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/bulletin/BulletinPresentation;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/bulletin/BulletinPresentation;->mServiceStarted:Z

    .line 112
    :cond_0
    return-void
.end method

.method public sync()V
    .locals 0

    .prologue
    .line 116
    return-void
.end method
