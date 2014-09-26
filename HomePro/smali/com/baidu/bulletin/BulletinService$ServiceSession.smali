.class public Lcom/baidu/bulletin/BulletinService$ServiceSession;
.super Landroid/os/Binder;
.source "BulletinService.java"

# interfaces
.implements Lcom/baidu/bulletin/autosync/AutoSyncer$IOnSyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/BulletinService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServiceSession"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bulletin/BulletinService$ServiceSession$AutoSyncTimerTask;
    }
.end annotation


# static fields
.field public static final AUTO_SYNC_INTERVAL:I = 0x36ee80


# instance fields
.field private autoSyncTimer:Ljava/util/Timer;

.field private autoSyncTimerTask:Ljava/util/TimerTask;

.field private mAutoSyncer:Lcom/baidu/bulletin/autosync/AutoSyncer;

.field private mContext:Landroid/content/Context;

.field mService:Lcom/baidu/bulletin/BulletinService;

.field private mSyncScheduler:Lcom/baidu/bulletin/SyncScheduler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 604
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 602
    new-instance v0, Lcom/baidu/bulletin/BulletinService$ServiceSession$AutoSyncTimerTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/baidu/bulletin/BulletinService$ServiceSession$AutoSyncTimerTask;-><init>(Lcom/baidu/bulletin/BulletinService$ServiceSession;Lcom/baidu/bulletin/BulletinService$1;)V

    iput-object v0, p0, Lcom/baidu/bulletin/BulletinService$ServiceSession;->autoSyncTimerTask:Ljava/util/TimerTask;

    .line 605
    iput-object p1, p0, Lcom/baidu/bulletin/BulletinService$ServiceSession;->mContext:Landroid/content/Context;

    .line 606
    iget-object v0, p0, Lcom/baidu/bulletin/BulletinService$ServiceSession;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/baidu/bulletin/BulletinService;

    iput-object v0, p0, Lcom/baidu/bulletin/BulletinService$ServiceSession;->mService:Lcom/baidu/bulletin/BulletinService;

    .line 607
    invoke-static {}, Lcom/baidu/bulletin/autosync/AutoSyncer;->getInstance()Lcom/baidu/bulletin/autosync/AutoSyncer;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bulletin/BulletinService$ServiceSession;->mAutoSyncer:Lcom/baidu/bulletin/autosync/AutoSyncer;

    .line 608
    return-void
.end method

.method static synthetic access$1102(Lcom/baidu/bulletin/BulletinService$ServiceSession;Lcom/baidu/bulletin/SyncScheduler;)Lcom/baidu/bulletin/SyncScheduler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 590
    iput-object p1, p0, Lcom/baidu/bulletin/BulletinService$ServiceSession;->mSyncScheduler:Lcom/baidu/bulletin/SyncScheduler;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/baidu/bulletin/BulletinService$ServiceSession;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 590
    iget-object v0, p0, Lcom/baidu/bulletin/BulletinService$ServiceSession;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public AuthConnect()V
    .locals 1

    .prologue
    .line 708
    iget-object v0, p0, Lcom/baidu/bulletin/BulletinService$ServiceSession;->mService:Lcom/baidu/bulletin/BulletinService;

    #calls: Lcom/baidu/bulletin/BulletinService;->putAuthInfo()V
    invoke-static {v0}, Lcom/baidu/bulletin/BulletinService;->access$1300(Lcom/baidu/bulletin/BulletinService;)V

    .line 709
    return-void
.end method

.method public OAuthConnect()V
    .locals 1

    .prologue
    .line 712
    iget-object v0, p0, Lcom/baidu/bulletin/BulletinService$ServiceSession;->mService:Lcom/baidu/bulletin/BulletinService;

    #calls: Lcom/baidu/bulletin/BulletinService;->putOAuthInfo()V
    invoke-static {v0}, Lcom/baidu/bulletin/BulletinService;->access$300(Lcom/baidu/bulletin/BulletinService;)V

    .line 713
    return-void
.end method

.method public autoSync()V
    .locals 1

    .prologue
    .line 643
    iget-object v0, p0, Lcom/baidu/bulletin/BulletinService$ServiceSession;->mAutoSyncer:Lcom/baidu/bulletin/autosync/AutoSyncer;

    invoke-virtual {v0}, Lcom/baidu/bulletin/autosync/AutoSyncer;->sync()V

    .line 644
    return-void
.end method

.method public checkOfflineInfo(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;Ljava/lang/String;Lcom/baidu/bulletin/BulletinService$RemoteTaskListener;)V
    .locals 1
    .parameter "data"
    .parameter "id"
    .parameter "ls"

    .prologue
    .line 720
    iget-object v0, p0, Lcom/baidu/bulletin/BulletinService$ServiceSession;->mService:Lcom/baidu/bulletin/BulletinService;

    #calls: Lcom/baidu/bulletin/BulletinService;->checkOfflineTaskInfo(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;Ljava/lang/String;Lcom/baidu/bulletin/BulletinService$RemoteTaskListener;)V
    invoke-static {v0, p1, p2, p3}, Lcom/baidu/bulletin/BulletinService;->access$1500(Lcom/baidu/bulletin/BulletinService;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;Ljava/lang/String;Lcom/baidu/bulletin/BulletinService$RemoteTaskListener;)V

    .line 721
    return-void
.end method

.method close()V
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Lcom/baidu/bulletin/BulletinService$ServiceSession;->mAutoSyncer:Lcom/baidu/bulletin/autosync/AutoSyncer;

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/baidu/bulletin/BulletinService$ServiceSession;->mAutoSyncer:Lcom/baidu/bulletin/autosync/AutoSyncer;

    invoke-virtual {v0}, Lcom/baidu/bulletin/autosync/AutoSyncer;->release()V

    .line 626
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/bulletin/BulletinService$ServiceSession;->stopAutoSyncTimer()V

    .line 628
    iget-object v0, p0, Lcom/baidu/bulletin/BulletinService$ServiceSession;->mSyncScheduler:Lcom/baidu/bulletin/SyncScheduler;

    if-eqz v0, :cond_1

    .line 629
    iget-object v0, p0, Lcom/baidu/bulletin/BulletinService$ServiceSession;->mSyncScheduler:Lcom/baidu/bulletin/SyncScheduler;

    invoke-virtual {v0}, Lcom/baidu/bulletin/SyncScheduler;->close()V

    .line 630
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/bulletin/BulletinService$ServiceSession;->mSyncScheduler:Lcom/baidu/bulletin/SyncScheduler;

    .line 634
    :cond_1
    return-void
.end method

.method public downloadImgByPage(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 702
    iget-object v0, p0, Lcom/baidu/bulletin/BulletinService$ServiceSession;->mSyncScheduler:Lcom/baidu/bulletin/SyncScheduler;

    if-eqz v0, :cond_0

    .line 703
    iget-object v0, p0, Lcom/baidu/bulletin/BulletinService$ServiceSession;->mSyncScheduler:Lcom/baidu/bulletin/SyncScheduler;

    invoke-virtual {v0, p1}, Lcom/baidu/bulletin/SyncScheduler;->downloadImgByPage(I)V

    .line 705
    :cond_0
    return-void
.end method

.method public getHistoryToday()Lcom/baidu/bulletin/entity/ChannelItem;
    .locals 1

    .prologue
    .line 682
    iget-object v0, p0, Lcom/baidu/bulletin/BulletinService$ServiceSession;->mSyncScheduler:Lcom/baidu/bulletin/SyncScheduler;

    if-eqz v0, :cond_0

    .line 683
    iget-object v0, p0, Lcom/baidu/bulletin/BulletinService$ServiceSession;->mSyncScheduler:Lcom/baidu/bulletin/SyncScheduler;

    invoke-virtual {v0}, Lcom/baidu/bulletin/SyncScheduler;->getHistoryToday()Lcom/baidu/bulletin/entity/ChannelItem;

    move-result-object v0

    .line 685
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPageCount()I
    .locals 1

    .prologue
    .line 666
    iget-object v0, p0, Lcom/baidu/bulletin/BulletinService$ServiceSession;->mSyncScheduler:Lcom/baidu/bulletin/SyncScheduler;

    if-eqz v0, :cond_0

    .line 667
    iget-object v0, p0, Lcom/baidu/bulletin/BulletinService$ServiceSession;->mSyncScheduler:Lcom/baidu/bulletin/SyncScheduler;

    invoke-virtual {v0}, Lcom/baidu/bulletin/SyncScheduler;->getPageCount()I

    move-result v0

    .line 669
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPageData(I)[Lcom/baidu/bulletin/entity/ChannelItem;
    .locals 1
    .parameter "position"

    .prologue
    .line 674
    iget-object v0, p0, Lcom/baidu/bulletin/BulletinService$ServiceSession;->mSyncScheduler:Lcom/baidu/bulletin/SyncScheduler;

    if-eqz v0, :cond_0

    .line 675
    iget-object v0, p0, Lcom/baidu/bulletin/BulletinService$ServiceSession;->mSyncScheduler:Lcom/baidu/bulletin/SyncScheduler;

    invoke-virtual {v0, p1}, Lcom/baidu/bulletin/SyncScheduler;->getPageData(I)[Lcom/baidu/bulletin/entity/ChannelItem;

    move-result-object v0

    .line 677
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public offlineFile(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;Lcom/baidu/bulletin/BulletinService$RemoteTaskListener;)V
    .locals 1
    .parameter "data"
    .parameter "ls"

    .prologue
    .line 716
    iget-object v0, p0, Lcom/baidu/bulletin/BulletinService$ServiceSession;->mService:Lcom/baidu/bulletin/BulletinService;

    #calls: Lcom/baidu/bulletin/BulletinService;->offlineFile(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;Lcom/baidu/bulletin/BulletinService$RemoteTaskListener;)V
    invoke-static {v0, p1, p2}, Lcom/baidu/bulletin/BulletinService;->access$1400(Lcom/baidu/bulletin/BulletinService;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;Lcom/baidu/bulletin/BulletinService$RemoteTaskListener;)V

    .line 717
    return-void
.end method

.method public onStart(Lcom/baidu/bulletin/autosync/AutoSyncer;)V
    .locals 0
    .parameter "autoSyncer"

    .prologue
    .line 741
    invoke-virtual {p0}, Lcom/baidu/bulletin/BulletinService$ServiceSession;->stopAutoSyncTimer()V

    .line 742
    invoke-virtual {p0}, Lcom/baidu/bulletin/BulletinService$ServiceSession;->startAutoSyncTimer()V

    .line 743
    return-void
.end method

.method public onStop(Lcom/baidu/bulletin/autosync/AutoSyncer;)V
    .locals 0
    .parameter "autoSyncer"

    .prologue
    .line 748
    return-void
.end method

.method public refreshChannelContent()V
    .locals 1

    .prologue
    .line 696
    iget-object v0, p0, Lcom/baidu/bulletin/BulletinService$ServiceSession;->mSyncScheduler:Lcom/baidu/bulletin/SyncScheduler;

    if-eqz v0, :cond_0

    .line 697
    iget-object v0, p0, Lcom/baidu/bulletin/BulletinService$ServiceSession;->mSyncScheduler:Lcom/baidu/bulletin/SyncScheduler;

    invoke-virtual {v0}, Lcom/baidu/bulletin/SyncScheduler;->refreshChannelContent()V

    .line 699
    :cond_0
    return-void
.end method

.method public requestPage(Lcom/baidu/bulletin/entity/ChannelItem;)V
    .locals 1
    .parameter "channel"

    .prologue
    .line 690
    iget-object v0, p0, Lcom/baidu/bulletin/BulletinService$ServiceSession;->mSyncScheduler:Lcom/baidu/bulletin/SyncScheduler;

    if-eqz v0, :cond_0

    .line 691
    iget-object v0, p0, Lcom/baidu/bulletin/BulletinService$ServiceSession;->mSyncScheduler:Lcom/baidu/bulletin/SyncScheduler;

    invoke-virtual {v0, p1}, Lcom/baidu/bulletin/SyncScheduler;->requestPage(Lcom/baidu/bulletin/entity/ChannelItem;)V

    .line 693
    :cond_0
    return-void
.end method

.method public start(Lcom/baidu/bulletin/BulletinPresentation$ClientSession;)V
    .locals 1
    .parameter "session"

    .prologue
    .line 611
    new-instance v0, Lcom/baidu/bulletin/BulletinService$ServiceSession$1;

    invoke-direct {v0, p0, p1}, Lcom/baidu/bulletin/BulletinService$ServiceSession$1;-><init>(Lcom/baidu/bulletin/BulletinService$ServiceSession;Lcom/baidu/bulletin/BulletinPresentation$ClientSession;)V

    invoke-virtual {v0}, Lcom/baidu/bulletin/BulletinService$ServiceSession$1;->start()V

    .line 618
    return-void
.end method

.method public startAutoSyncTimer()V
    .locals 6

    .prologue
    const-wide/32 v2, 0x36ee80

    .line 648
    const-string v0, "BulletinService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startAutoSyncTimer autoSyncTimer is "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/baidu/bulletin/BulletinService$ServiceSession;->autoSyncTimer:Ljava/util/Timer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    iget-object v0, p0, Lcom/baidu/bulletin/BulletinService$ServiceSession;->autoSyncTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 650
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/baidu/bulletin/BulletinService$ServiceSession;->autoSyncTimer:Ljava/util/Timer;

    .line 653
    :cond_0
    iget-object v0, p0, Lcom/baidu/bulletin/BulletinService$ServiceSession;->autoSyncTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/baidu/bulletin/BulletinService$ServiceSession;->autoSyncTimerTask:Ljava/util/TimerTask;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 655
    return-void
.end method

.method public stopAutoSyncTimer()V
    .locals 2

    .prologue
    .line 658
    const-string v0, "BulletinService"

    const-string v1, "stopAutoSyncTimer---"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    iget-object v0, p0, Lcom/baidu/bulletin/BulletinService$ServiceSession;->autoSyncTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 660
    iget-object v0, p0, Lcom/baidu/bulletin/BulletinService$ServiceSession;->autoSyncTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 661
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/bulletin/BulletinService$ServiceSession;->autoSyncTimer:Ljava/util/Timer;

    .line 663
    :cond_0
    return-void
.end method

.method public sync()V
    .locals 1

    .prologue
    .line 637
    iget-object v0, p0, Lcom/baidu/bulletin/BulletinService$ServiceSession;->mSyncScheduler:Lcom/baidu/bulletin/SyncScheduler;

    if-eqz v0, :cond_0

    .line 638
    iget-object v0, p0, Lcom/baidu/bulletin/BulletinService$ServiceSession;->mSyncScheduler:Lcom/baidu/bulletin/SyncScheduler;

    invoke-virtual {v0}, Lcom/baidu/bulletin/SyncScheduler;->sync()V

    .line 640
    :cond_0
    return-void
.end method
