.class public Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;
.super Ljava/lang/Object;
.source "FloatWindowController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$1;,
        Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$ShowState;,
        Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$PrepareShowState;,
        Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IdelState;,
        Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IFloatWindowState;,
        Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$FloatOnclickListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "FloatWindowController"

.field private static sFloatWindowController:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentState:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IFloatWindowState;

.field private mIdelState:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IFloatWindowState;

.field private mPrepareShowState:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IFloatWindowState;

.field private mShowState:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IFloatWindowState;

.field private mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->sFloatWindowController:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->mContext:Landroid/content/Context;

    .line 39
    new-instance v0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IdelState;

    invoke-direct {v0, p0}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IdelState;-><init>(Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;)V

    iput-object v0, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->mIdelState:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IFloatWindowState;

    .line 40
    new-instance v0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$PrepareShowState;

    invoke-direct {v0, p0}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$PrepareShowState;-><init>(Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;)V

    iput-object v0, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->mPrepareShowState:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IFloatWindowState;

    .line 41
    new-instance v0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$ShowState;

    invoke-direct {v0, p0}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$ShowState;-><init>(Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;)V

    iput-object v0, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->mShowState:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IFloatWindowState;

    .line 43
    new-instance v0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IdelState;

    invoke-direct {v0, p0}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IdelState;-><init>(Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;)V

    iput-object v0, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->mCurrentState:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IFloatWindowState;

    .line 44
    return-void
.end method

.method static synthetic access$100(Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;)Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IFloatWindowState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->mCurrentState:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IFloatWindowState;

    return-object v0
.end method

.method static synthetic access$200(Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->hideFloatWindow()V

    return-void
.end method

.method static synthetic access$300(Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->moveToBulletin()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;
    .locals 2
    .parameter "context"

    .prologue
    .line 29
    sget-object v0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->sFloatWindowController:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->sFloatWindowController:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;

    .line 33
    :cond_0
    sget-object v0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->sFloatWindowController:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;

    return-object v0
.end method

.method private hideFloatWindow()V
    .locals 2

    .prologue
    .line 74
    iget-object v1, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent;->getInstance(Landroid/content/Context;)Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent;

    move-result-object v0

    .line 75
    .local v0, floatWindowComponent:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent;
    invoke-virtual {v0}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent;->hide()V

    .line 76
    return-void
.end method

.method private moveToBulletin()V
    .locals 2

    .prologue
    .line 67
    invoke-static {}, Lcom/baidu/bulletin/utils/BulletinUBC;->statForMonitorClick()V

    .line 69
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.baidu.bulletin.monitor.start"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 70
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 71
    return-void
.end method


# virtual methods
.method public autoSyncerShow()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->mCurrentState:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IFloatWindowState;

    invoke-interface {v0}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IFloatWindowState;->autoSyncerShow()V

    .line 113
    return-void
.end method

.method public clickFloatWindow()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->mCurrentState:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IFloatWindowState;

    invoke-interface {v0}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IFloatWindowState;->clickFloatWindow()V

    .line 133
    return-void
.end method

.method public closeBulletin()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->mCurrentState:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IFloatWindowState;

    invoke-interface {v0}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IFloatWindowState;->closeBulletin()V

    .line 141
    return-void
.end method

.method public dragToBulletin()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->mCurrentState:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IFloatWindowState;

    invoke-interface {v0}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IFloatWindowState;->dragToBulletin()V

    .line 137
    return-void
.end method

.method public getCurrentState()Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IFloatWindowState;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->mCurrentState:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IFloatWindowState;

    return-object v0
.end method

.method public getIdelState()Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IFloatWindowState;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->mIdelState:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IFloatWindowState;

    return-object v0
.end method

.method public getPrepareShowState()Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IFloatWindowState;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->mPrepareShowState:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IFloatWindowState;

    return-object v0
.end method

.method public getShowState()Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IFloatWindowState;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->mShowState:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IFloatWindowState;

    return-object v0
.end method

.method public getViewManager()Lcom/baidu/launcher/ui/logic/ViewManager;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    return-object v0
.end method

.method public homeViewHide()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->mCurrentState:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IFloatWindowState;

    invoke-interface {v0}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IFloatWindowState;->homeViewHide()V

    .line 129
    return-void
.end method

.method public homeViewVisble()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->mCurrentState:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IFloatWindowState;

    invoke-interface {v0}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IFloatWindowState;->homeViewVisble()V

    .line 125
    return-void
.end method

.method public launcherOnPause()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->mCurrentState:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IFloatWindowState;

    invoke-interface {v0}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IFloatWindowState;->launcherOnPause()V

    .line 121
    return-void
.end method

.method public launcherOnResume()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->mCurrentState:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IFloatWindowState;

    invoke-interface {v0}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IFloatWindowState;->launcherOnResume()V

    .line 117
    return-void
.end method

.method public releaseViewManager()V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    .line 109
    return-void
.end method

.method public setState(Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IFloatWindowState;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->mCurrentState:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IFloatWindowState;

    .line 85
    return-void
.end method

.method public setViewManager(Lcom/baidu/launcher/ui/logic/ViewManager;)V
    .locals 0
    .parameter "viewManager"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    .line 105
    return-void
.end method

.method public showFloatWindow()V
    .locals 3

    .prologue
    .line 48
    iget-object v1, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent;->getInstance(Landroid/content/Context;)Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent;

    move-result-object v0

    .line 50
    .local v0, floatWindowComponent:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent;
    new-instance v1, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$FloatOnclickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$FloatOnclickListener;-><init>(Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$1;)V

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    invoke-virtual {v0}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent;->show()V

    .line 53
    return-void
.end method
