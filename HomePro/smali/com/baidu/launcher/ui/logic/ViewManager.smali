.class public Lcom/baidu/launcher/ui/logic/ViewManager;
.super Ljava/lang/Object;
.source "ViewManager.java"

# interfaces
.implements Lcom/baidu/launcher/ui/dragdrop/DragScroller;
.implements Lcom/baidu/launcher/ui/homeview/Workspace$WorkspaceUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/ui/logic/ViewManager$AlphaAnimation;
    }
.end annotation


# static fields
.field public static final BAIDU_LAUNCHER_MAIN_ACTIVITY:Ljava/lang/String; = "com.baidu.launcher.app.Launcher"


# instance fields
.field private mAm:Landroid/app/ActivityManager;

.field private mAppListView:Lcom/baidu/launcher/ui/applistview/AppListView;

.field private mAppWidgetHost:Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHost;

.field private mCurrentView:Lcom/baidu/launcher/ui/logic/IBaseView;

.field private mDeleteZone:Lcom/baidu/launcher/ui/dragdrop/DeleteZone;

.field private mDockbar:Lcom/baidu/launcher/ui/homeview/DockBar;

.field private mDragController:Lcom/baidu/launcher/ui/dragdrop/DragController;

.field private mDragLayer:Lcom/baidu/launcher/ui/dragdrop/DragLayer;

.field private mEditView:Lcom/baidu/launcher/ui/editview/EditView;

.field private mFoldPos:[I

.field private mFolderLayer:Lcom/baidu/launcher/ui/folder/FolderLayer;

.field private mFolderManager:Lcom/baidu/launcher/ui/folder/FolderManager;

.field private mFullScreen:Z

.field private mHomeView:Lcom/baidu/launcher/ui/homeview/HomeView;

.field private mLauncher:Lcom/baidu/launcher/app/Launcher;

.field private mPreview:Lcom/baidu/launcher/ui/preview/Preview;

.field private mStartClickTime:J

.field private mStatusBarHeight:I

.field private mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;

.field private screenSnapshot:Lcom/baidu/launcher/ui/editview/ScreenSnapshot;

.field private setLocationLayer:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;

.field private thumbnailGroup:Lcom/baidu/launcher/ui/editview/ThumbnailGroup;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mFullScreen:Z

    .line 93
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mStatusBarHeight:I

    .line 96
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mStartClickTime:J

    .line 101
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/launcher/ui/logic/ViewManager;)Lcom/baidu/launcher/ui/homeview/HomeView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mHomeView:Lcom/baidu/launcher/ui/homeview/HomeView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/baidu/launcher/ui/logic/ViewManager;)Lcom/baidu/launcher/ui/homeview/DockBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mDockbar:Lcom/baidu/launcher/ui/homeview/DockBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/baidu/launcher/ui/logic/ViewManager;)Lcom/baidu/launcher/ui/homeview/Workspace;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;

    return-object v0
.end method

.method private changeTopPadding(Z)V
    .locals 4
    .parameter "showStatusBar"

    .prologue
    const/4 v2, 0x0

    .line 363
    if-eqz p1, :cond_4

    .line 364
    iget-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->getCellTopPadding()I

    move-result v0

    .line 365
    .local v0, top:I
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/logic/ViewManager;->getStatusBarHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 366
    iget-object v3, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;

    if-lez v0, :cond_2

    move v1, v0

    :goto_0
    invoke-virtual {v3, v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->setTopPadding(I)V

    .line 367
    iget-object v3, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mFolderLayer:Lcom/baidu/launcher/ui/folder/FolderLayer;

    if-lez v0, :cond_3

    move v1, v0

    :goto_1
    invoke-virtual {v3, v1}, Lcom/baidu/launcher/ui/folder/FolderLayer;->setTopPadding(I)V

    .line 368
    iget-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mDockbar:Lcom/baidu/launcher/ui/homeview/DockBar;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/homeview/DockBar;->isVerticalDockbar()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 369
    iget-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mDockbar:Lcom/baidu/launcher/ui/homeview/DockBar;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/homeview/DockBar;->getCellTopPadding()I

    move-result v0

    .line 370
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/logic/ViewManager;->getStatusBarHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 371
    iget-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mDockbar:Lcom/baidu/launcher/ui/homeview/DockBar;

    if-lez v0, :cond_0

    move v2, v0

    :cond_0
    invoke-virtual {v1, v2}, Lcom/baidu/launcher/ui/homeview/DockBar;->setTopPadding(I)V

    .line 386
    :cond_1
    :goto_2
    iget-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mFolderLayer:Lcom/baidu/launcher/ui/folder/FolderLayer;

    invoke-virtual {v1, p1}, Lcom/baidu/launcher/ui/folder/FolderLayer;->updateFolderPaddingTop(Z)V

    .line 387
    iget-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mPreview:Lcom/baidu/launcher/ui/preview/Preview;

    invoke-virtual {v1, p1}, Lcom/baidu/launcher/ui/preview/Preview;->updateTopPadding(Z)V

    .line 388
    iget-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mAppListView:Lcom/baidu/launcher/ui/applistview/AppListView;

    invoke-virtual {v1, p1}, Lcom/baidu/launcher/ui/applistview/AppListView;->updateTopPadding(Z)V

    .line 389
    return-void

    :cond_2
    move v1, v2

    .line 366
    goto :goto_0

    :cond_3
    move v1, v2

    .line 367
    goto :goto_1

    .line 375
    .end local v0           #top:I
    :cond_4
    iget-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->getCellTopPadding()I

    move-result v0

    .line 376
    .restart local v0       #top:I
    if-lez v0, :cond_5

    .line 377
    :goto_3
    iget-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/logic/ViewManager;->getStatusBarHeight()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v1, v3}, Lcom/baidu/launcher/ui/homeview/Workspace;->setTopPadding(I)V

    .line 378
    iget-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mFolderLayer:Lcom/baidu/launcher/ui/folder/FolderLayer;

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/logic/ViewManager;->getStatusBarHeight()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v1, v3}, Lcom/baidu/launcher/ui/folder/FolderLayer;->setTopPadding(I)V

    .line 379
    iget-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mDockbar:Lcom/baidu/launcher/ui/homeview/DockBar;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/homeview/DockBar;->isVerticalDockbar()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 380
    iget-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mDockbar:Lcom/baidu/launcher/ui/homeview/DockBar;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/homeview/DockBar;->getCellTopPadding()I

    move-result v0

    .line 381
    if-lez v0, :cond_6

    .line 382
    :goto_4
    iget-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mDockbar:Lcom/baidu/launcher/ui/homeview/DockBar;

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/logic/ViewManager;->getStatusBarHeight()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/ui/homeview/DockBar;->setTopPadding(I)V

    goto :goto_2

    :cond_5
    move v0, v2

    .line 376
    goto :goto_3

    :cond_6
    move v0, v2

    .line 381
    goto :goto_4
.end method

.method private initStatusBarHeight()V
    .locals 2

    .prologue
    .line 421
    iget-object v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    invoke-virtual {v0}, Lcom/baidu/launcher/app/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mStatusBarHeight:I

    .line 423
    return-void
.end method

.method private showUnlockAnim()V
    .locals 2

    .prologue
    .line 743
    iget-object v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mCurrentView:Lcom/baidu/launcher/ui/logic/IBaseView;

    iget-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mHomeView:Lcom/baidu/launcher/ui/homeview/HomeView;

    if-ne v0, v1, :cond_0

    .line 744
    iget-object v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/Workspace;->showUnlockAnim()V

    .line 746
    :cond_0
    return-void
.end method


# virtual methods
.method public addScreen()V
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/Workspace;->addScreen()Lcom/baidu/launcher/ui/homeview/CellLayout;

    .line 497
    :cond_0
    return-void
.end method

.method public cancelFolderHighlight()V
    .locals 1

    .prologue
    .line 608
    iget-object v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mFolderManager:Lcom/baidu/launcher/ui/folder/FolderManager;

    if-eqz v0, :cond_0

    .line 609
    iget-object v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mFolderManager:Lcom/baidu/launcher/ui/folder/FolderManager;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/folder/FolderManager;->cancelFolderHighlight()V

    .line 611
    :cond_0
    return-void
.end method

.method public cancleAddShortcut()V
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mHomeView:Lcom/baidu/launcher/ui/homeview/HomeView;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/HomeView;->cancleAddShortcut()V

    .line 551
    return-void
.end method

.method public clearBackupFolder()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 681
    iget-object v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mFolderManager:Lcom/baidu/launcher/ui/folder/FolderManager;

    if-eqz v0, :cond_0

    .line 682
    iget-object v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mFolderManager:Lcom/baidu/launcher/ui/folder/FolderManager;

    iget-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mDragController:Lcom/baidu/launcher/ui/dragdrop/DragController;

    invoke-virtual {v0, v1, v2, v2}, Lcom/baidu/launcher/ui/folder/FolderManager;->closeFolder(Lcom/baidu/launcher/ui/dragdrop/DragController;ZZ)V

    .line 683
    iget-object v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mFolderManager:Lcom/baidu/launcher/ui/folder/FolderManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/folder/FolderManager;->backupFolder(Lcom/baidu/launcher/data/item/IFolderInfo;)V

    .line 685
    :cond_0
    return-void
.end method

.method public closeFolder(ZZ)V
    .locals 6
    .parameter "save"
    .parameter "animate"

    .prologue
    .line 601
    iget-object v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mFolderManager:Lcom/baidu/launcher/ui/folder/FolderManager;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/baidu/launcher/ui/animation/Choreographer;->isAniming()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/logic/ViewManager;->isFolderOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 602
    invoke-static {}, Lcom/baidu/launcher/ui/animation/Choreographer;->startAniming()V

    .line 603
    iget-object v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mDockbar:Lcom/baidu/launcher/ui/homeview/DockBar;

    sget-boolean v1, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->show_dockbar_bg:Z

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/homeview/DockBar;->showDockbarBg(Z)V

    .line 604
    iget-object v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mFolderManager:Lcom/baidu/launcher/ui/folder/FolderManager;

    iget-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    iget-object v2, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mDragController:Lcom/baidu/launcher/ui/dragdrop/DragController;

    iget-object v5, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mFoldPos:[I

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/launcher/ui/folder/FolderManager;->closeFolder(Lcom/baidu/launcher/app/Launcher;Lcom/baidu/launcher/ui/dragdrop/DragController;ZZ[I)V

    .line 606
    :cond_0
    return-void
.end method

.method public closeSetLocationLayer()V
    .locals 1

    .prologue
    .line 727
    iget-object v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->setLocationLayer:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->closeSetLocationLayer()V

    .line 728
    return-void
.end method

.method public closeWeatherAnim()V
    .locals 2

    .prologue
    .line 735
    iget-object v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    iget-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->setLocationLayer:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;

    invoke-static {v0, v1}, Lcom/baidu/launcher/ui/animation/Choreographer;->closeWeatherAnim(Lcom/baidu/launcher/app/Launcher;Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;)V

    .line 736
    return-void
.end method

.method public completeAddAppWidget()V
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mHomeView:Lcom/baidu/launcher/ui/homeview/HomeView;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/HomeView;->completeAddAppWidget()V

    .line 572
    return-void
.end method

.method public completeAddAppWidget(Landroid/content/Intent;)V
    .locals 1
    .parameter "data"

    .prologue
    .line 557
    iget-object v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mHomeView:Lcom/baidu/launcher/ui/homeview/HomeView;

    invoke-virtual {v0, p1}, Lcom/baidu/launcher/ui/homeview/HomeView;->completeAddAppWidget(Landroid/content/Intent;)V

    .line 558
    return-void
.end method

.method public completeAddShortcut(Landroid/content/Intent;)V
    .locals 1
    .parameter "data"

    .prologue
    .line 546
    iget-object v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mHomeView:Lcom/baidu/launcher/ui/homeview/HomeView;

    invoke-virtual {v0, p1}, Lcom/baidu/launcher/ui/homeview/HomeView;->completeAddShortcut(Landroid/content/Intent;)V

    .line 547
    return-void
.end method

.method public completeFillFolder(Landroid/content/Intent;)V
    .locals 4
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 671
    iget-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mFolderManager:Lcom/baidu/launcher/ui/folder/FolderManager;

    if-eqz v1, :cond_0

    .line 672
    iget-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mFolderManager:Lcom/baidu/launcher/ui/folder/FolderManager;

    iget-object v2, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mDragController:Lcom/baidu/launcher/ui/dragdrop/DragController;

    invoke-virtual {v1, v2, v3, v3}, Lcom/baidu/launcher/ui/folder/FolderManager;->closeFolder(Lcom/baidu/launcher/ui/dragdrop/DragController;ZZ)V

    .line 673
    iget-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mFolderManager:Lcom/baidu/launcher/ui/folder/FolderManager;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/folder/FolderManager;->getBackupFolder()Lcom/baidu/launcher/data/item/IFolderInfo;

    move-result-object v0

    .line 674
    .local v0, backupFolder:Lcom/baidu/launcher/data/item/IFolderInfo;
    if-nez v0, :cond_1

    .line 678
    .end local v0           #backupFolder:Lcom/baidu/launcher/data/item/IFolderInfo;
    :cond_0
    :goto_0
    return-void

    .line 675
    .restart local v0       #backupFolder:Lcom/baidu/launcher/data/item/IFolderInfo;
    :cond_1
    iget-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mCurrentView:Lcom/baidu/launcher/ui/logic/IBaseView;

    invoke-interface {v1, v0, p1}, Lcom/baidu/launcher/ui/logic/IBaseView;->completeFillFolder(Lcom/baidu/launcher/data/item/IFolderInfo;Landroid/content/Intent;)V

    .line 676
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/logic/ViewManager;->clearBackupFolder()V

    goto :goto_0
.end method

.method public completePickAppWidget(Landroid/content/Intent;)V
    .locals 1
    .parameter "data"

    .prologue
    .line 564
    iget-object v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mHomeView:Lcom/baidu/launcher/ui/homeview/HomeView;

    invoke-virtual {v0, p1}, Lcom/baidu/launcher/ui/homeview/HomeView;->completePickAppWidget(Landroid/content/Intent;)V

    .line 565
    return-void
.end method

.method public createShortcut(ILandroid/view/ViewGroup;Lcom/baidu/launcher/data/item/HomeShortcutInfo;)Landroid/view/View;
    .locals 1
    .parameter "layoutResId"
    .parameter "parent"
    .parameter "info"

    .prologue
    .line 523
    iget-object v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mHomeView:Lcom/baidu/launcher/ui/homeview/HomeView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/launcher/ui/homeview/HomeView;->createShortcut(ILandroid/view/ViewGroup;Lcom/baidu/launcher/data/item/HomeShortcutInfo;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public createShortcut(Lcom/baidu/launcher/data/item/HomeShortcutInfo;)Landroid/view/View;
    .locals 1
    .parameter "info"

    .prologue
    .line 510
    iget-object v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mHomeView:Lcom/baidu/launcher/ui/homeview/HomeView;

    invoke-virtual {v0, p1}, Lcom/baidu/launcher/ui/homeview/HomeView;->createShortcut(Lcom/baidu/launcher/data/item/HomeShortcutInfo;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public deleteFromDeleteZone(Lcom/baidu/launcher/ui/dragdrop/DragSource;Landroid/view/View;Ljava/lang/Object;)V
    .locals 3
    .parameter "source"
    .parameter "deleteView"
    .parameter "dragInfo"

    .prologue
    .line 447
    instance-of v1, p3, Lcom/baidu/launcher/data/item/HomeItemInfo;

    if-eqz v1, :cond_1

    .line 448
    iget-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mHomeView:Lcom/baidu/launcher/ui/homeview/HomeView;

    check-cast p3, Lcom/baidu/launcher/data/item/HomeItemInfo;

    .end local p3
    invoke-virtual {v1, p1, p2, p3}, Lcom/baidu/launcher/ui/homeview/HomeView;->deleteHomeItem(Lcom/baidu/launcher/ui/dragdrop/DragSource;Landroid/view/View;Lcom/baidu/launcher/data/item/HomeItemInfo;)V

    .line 460
    :cond_0
    :goto_0
    return-void

    .line 449
    .restart local p3
    :cond_1
    instance-of v1, p3, Lcom/baidu/launcher/data/item/ListItemInfo;

    if-eqz v1, :cond_2

    .line 450
    iget-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mAppListView:Lcom/baidu/launcher/ui/applistview/AppListView;

    check-cast p3, Lcom/baidu/launcher/data/item/ListItemInfo;

    .end local p3
    invoke-virtual {v1, p1, p2, p3}, Lcom/baidu/launcher/ui/applistview/AppListView;->deleteListItem(Lcom/baidu/launcher/ui/dragdrop/DragSource;Landroid/view/View;Lcom/baidu/launcher/data/item/ListItemInfo;)V

    goto :goto_0

    .line 451
    .restart local p3
    :cond_2
    instance-of v1, p3, Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;

    if-eqz v1, :cond_0

    move-object v0, p3

    .line 452
    check-cast v0, Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;

    .line 453
    .local v0, info:Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;
    iget v1, v0, Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;->currentIndex:I

    sget v2, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->defaultScreen:I

    if-ne v1, v2, :cond_3

    iget v1, v0, Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;->currentIndex:I

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 458
    :cond_3
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/logic/ViewManager;->deleteScreen(Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;)V

    goto :goto_0
.end method

.method public deleteScreen(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 483
    iget-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;

    if-eqz v1, :cond_0

    .line 484
    move v0, p1

    .line 486
    .local v0, currentIndex:I
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/logic/ViewManager;->isScreenEmpty(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 491
    .end local v0           #currentIndex:I
    :cond_0
    return-void
.end method

.method public deleteScreen(Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;)V
    .locals 3
    .parameter "dragInfo"

    .prologue
    .line 470
    iget-object v2, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;

    if-eqz v2, :cond_0

    .line 471
    iget v1, p1, Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;->originalIndex:I

    .line 472
    .local v1, originIndex:I
    iget v0, p1, Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;->currentIndex:I

    .line 474
    .local v0, currentIndex:I
    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/logic/ViewManager;->isScreenEmpty(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 475
    iget-object v2, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v2, v0, v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->removeViewFromPreview(II)V

    .line 480
    .end local v0           #currentIndex:I
    .end local v1           #originIndex:I
    :cond_0
    :goto_0
    return-void

    .line 477
    .restart local v0       #currentIndex:I
    .restart local v1       #originIndex:I
    :cond_1
    iget-object v2, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mPreview:Lcom/baidu/launcher/ui/preview/Preview;

    invoke-virtual {v2, p1}, Lcom/baidu/launcher/ui/preview/Preview;->buildUpAlertDialog(Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;)V

    goto :goto_0
.end method

.method public enterFullscreen()V
    .locals 1

    .prologue
    .line 347
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mFullScreen:Z

    if-eqz v0, :cond_0

    .line 352
    :goto_0
    return-void

    .line 349
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mFullScreen:Z

    .line 350
    iget-object v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    invoke-virtual {v0}, Lcom/baidu/launcher/app/Launcher;->enterFullscreen()V

    .line 351
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/baidu/launcher/ui/logic/ViewManager;->changeTopPadding(Z)V

    goto :goto_0
.end method

.method public exitFullscreen()V
    .locals 1

    .prologue
    .line 355
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mFullScreen:Z

    if-nez v0, :cond_0

    .line 360
    :goto_0
    return-void

    .line 357
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mFullScreen:Z

    .line 358
    iget-object v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    invoke-virtual {v0}, Lcom/baidu/launcher/app/Launcher;->exitFullscreen()V

    .line 359
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/baidu/launcher/ui/logic/ViewManager;->changeTopPadding(Z)V

    goto :goto_0
.end method

.method public getAppListView()Lcom/baidu/launcher/ui/applistview/AppListView;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mAppListView:Lcom/baidu/launcher/ui/applistview/AppListView;

    return-object v0
.end method

.method public getAppWidgetHost()Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHost;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mAppWidgetHost:Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHost;

    return-object v0
.end method

.method public getBlurView(Landroid/app/Activity;)Landroid/view/View;
    .locals 1
    .parameter "launcher"

    .prologue
    .line 719
    invoke-static {p1}, Lcom/baidu/launcher/ui/animation/Choreographer;->getBlurView(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentView()Lcom/baidu/launcher/ui/logic/IBaseView;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mCurrentView:Lcom/baidu/launcher/ui/logic/IBaseView;

    return-object v0
.end method

.method public getDockBar()Landroid/view/View;
    .locals 1

    .prologue
    .line 750
    iget-object v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mDockbar:Lcom/baidu/launcher/ui/homeview/DockBar;

    return-object v0
.end method

.method public getDragController()Lcom/baidu/launcher/ui/dragdrop/DragController;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mDragController:Lcom/baidu/launcher/ui/dragdrop/DragController;

    return-object v0
.end method

.method public getDragLayer()Lcom/baidu/launcher/ui/dragdrop/DragLayer;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mDragLayer:Lcom/baidu/launcher/ui/dragdrop/DragLayer;

    return-object v0
.end method

.method public getEditView()Lcom/baidu/launcher/ui/editview/EditView;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mEditView:Lcom/baidu/launcher/ui/editview/EditView;

    return-object v0
.end method

.method public getFolderLayer()Lcom/baidu/launcher/ui/folder/FolderLayer;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mFolderLayer:Lcom/baidu/launcher/ui/folder/FolderLayer;

    return-object v0
.end method

.method public getLauncher()Lcom/baidu/launcher/app/Launcher;
    .locals 1

    .prologue
    .line 772
    iget-object v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    return-object v0
.end method

.method public getOpenFolder()Lcom/baidu/launcher/ui/folder/Folder;
    .locals 1

    .prologue
    .line 641
    iget-object v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mFolderManager:Lcom/baidu/launcher/ui/folder/FolderManager;

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mFolderManager:Lcom/baidu/launcher/ui/folder/FolderManager;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/folder/FolderManager;->getOpenFolder()Lcom/baidu/launcher/ui/folder/Folder;

    move-result-object v0

    .line 644
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPreview()Lcom/baidu/launcher/ui/preview/Preview;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mPreview:Lcom/baidu/launcher/ui/preview/Preview;

    return-object v0
.end method

.method public final getStatusBarHeight()I
    .locals 2

    .prologue
    .line 426
    iget v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mStatusBarHeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 427
    invoke-direct {p0}, Lcom/baidu/launcher/ui/logic/ViewManager;->initStatusBarHeight()V

    .line 429
    :cond_0
    iget v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mStatusBarHeight:I

    return v0
.end method

.method public getThumbnailGroup()Lcom/baidu/launcher/ui/editview/ThumbnailGroup;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->thumbnailGroup:Lcom/baidu/launcher/ui/editview/ThumbnailGroup;

    return-object v0
.end method

.method public getWorkspace()Lcom/baidu/launcher/ui/homeview/Workspace;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;

    return-object v0
.end method

.method public getmHomeView()Lcom/baidu/launcher/ui/homeview/HomeView;
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mHomeView:Lcom/baidu/launcher/ui/homeview/HomeView;

    return-object v0
.end method

.method public isBaiduLauncherOnTop()Z
    .locals 4

    .prologue
    .line 753
    const/4 v1, 0x0

    .line 754
    .local v1, rst:Z
    const/4 v0, 0x0

    .line 756
    .local v0, cn:Landroid/content/ComponentName;
    :try_start_0
    iget-object v2, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mAm:Landroid/app/ActivityManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 759
    :goto_0
    if-eqz v0, :cond_0

    const-string v2, "com.baidu.launcher.app.Launcher"

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 760
    const/4 v1, 0x1

    .line 762
    :cond_0
    return v1

    .line 757
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public isBulletinScreen()Z
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getCurrentScreen()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFolderOpened()Z
    .locals 1

    .prologue
    .line 649
    iget-object v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mFolderManager:Lcom/baidu/launcher/ui/folder/FolderManager;

    if-eqz v0, :cond_0

    .line 650
    iget-object v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mFolderManager:Lcom/baidu/launcher/ui/folder/FolderManager;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/folder/FolderManager;->isFolderOpened()Z

    move-result v0

    .line 652
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHomeView()Z
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mCurrentView:Lcom/baidu/launcher/ui/logic/IBaseView;

    iget-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mHomeView:Lcom/baidu/launcher/ui/homeview/HomeView;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLauncherRunning()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 766
    iget-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    if-nez v1, :cond_1

    .line 769
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    invoke-virtual {v1}, Lcom/baidu/launcher/app/Launcher;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isScreenEmpty(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 463
    iget-object v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v0, p1}, Lcom/baidu/launcher/ui/homeview/Workspace;->isScreenEmpty(I)Z

    move-result v0

    .line 466
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetLocationLayerOpened()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 247
    iget-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->setLocationLayer:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;

    if-eqz v1, :cond_0

    .line 248
    iget-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->setLocationLayer:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 250
    :cond_0
    return v0
.end method

.method public onBackPressed()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 225
    iget-object v3, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    monitor-enter v3

    .line 226
    :try_start_0
    iget-wide v4, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mStartClickTime:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-nez v2, :cond_1

    .line 227
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mStartClickTime:J

    .line 236
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/logic/ViewManager;->isFolderOpened()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 238
    invoke-virtual {p0, v8, v8}, Lcom/baidu/launcher/ui/logic/ViewManager;->closeFolder(ZZ)V

    .line 244
    :cond_0
    :goto_1
    return-void

    .line 229
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 230
    .local v0, tempTime:J
    iget-wide v4, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mStartClickTime:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x12c

    cmp-long v2, v4, v6

    if-gtz v2, :cond_2

    .line 231
    iput-wide v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mStartClickTime:J

    .line 232
    monitor-exit v3

    goto :goto_1

    .line 236
    .end local v0           #tempTime:J
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 234
    .restart local v0       #tempTime:J
    :cond_2
    :try_start_2
    iput-wide v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mStartClickTime:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 239
    .end local v0           #tempTime:J
    :cond_3
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/logic/ViewManager;->isSetLocationLayerOpened()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 240
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/logic/ViewManager;->closeSetLocationLayer()V

    goto :goto_1

    .line 241
    :cond_4
    iget-object v2, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mCurrentView:Lcom/baidu/launcher/ui/logic/IBaseView;

    if-eqz v2, :cond_0

    .line 242
    iget-object v2, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mCurrentView:Lcom/baidu/launcher/ui/logic/IBaseView;

    invoke-interface {v2}, Lcom/baidu/launcher/ui/logic/IBaseView;->onBackPressed()V

    goto :goto_1
.end method

.method public onNewIntent(Z)V
    .locals 8
    .parameter "alreadyOnHome"

    .prologue
    .line 255
    iget-object v3, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    monitor-enter v3

    .line 256
    :try_start_0
    iget-wide v4, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mStartClickTime:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-nez v2, :cond_1

    .line 257
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mStartClickTime:J

    .line 266
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/logic/ViewManager;->isFolderOpened()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 268
    const/4 v2, 0x1

    invoke-virtual {p0, v2, p1}, Lcom/baidu/launcher/ui/logic/ViewManager;->closeFolder(ZZ)V

    .line 272
    :cond_0
    :goto_1
    return-void

    .line 259
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 260
    .local v0, tempTime:J
    iget-wide v4, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mStartClickTime:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x12c

    cmp-long v2, v4, v6

    if-gtz v2, :cond_2

    .line 261
    iput-wide v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mStartClickTime:J

    .line 262
    monitor-exit v3

    goto :goto_1

    .line 266
    .end local v0           #tempTime:J
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 264
    .restart local v0       #tempTime:J
    :cond_2
    :try_start_2
    iput-wide v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mStartClickTime:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 269
    .end local v0           #tempTime:J
    :cond_3
    iget-object v2, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mCurrentView:Lcom/baidu/launcher/ui/logic/IBaseView;

    if-eqz v2, :cond_0

    .line 270
    iget-object v2, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mCurrentView:Lcom/baidu/launcher/ui/logic/IBaseView;

    invoke-interface {v2, p1}, Lcom/baidu/launcher/ui/logic/IBaseView;->onNewIntent(Z)V

    goto :goto_1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 298
    iget-object v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mDragController:Lcom/baidu/launcher/ui/dragdrop/DragController;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/dragdrop/DragController;->onPause()V

    .line 299
    iget-object v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mDeleteZone:Lcom/baidu/launcher/ui/dragdrop/DeleteZone;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/dragdrop/DeleteZone;->onDragEnd(Z)V

    .line 300
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 290
    iget-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mCurrentView:Lcom/baidu/launcher/ui/logic/IBaseView;

    iget-object v2, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mHomeView:Lcom/baidu/launcher/ui/homeview/HomeView;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mCurrentView:Lcom/baidu/launcher/ui/logic/IBaseView;

    iget-object v2, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mEditView:Lcom/baidu/launcher/ui/editview/EditView;

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 291
    .local v0, atHome:Z
    :goto_0
    iget-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    invoke-virtual {v1, v0}, Lcom/baidu/launcher/app/Launcher;->sendStatusBarTransparentBroadcast(Z)V

    .line 292
    return-void

    .line 290
    .end local v0           #atHome:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onUserPresent(Z)V
    .locals 5
    .parameter "stopped"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 303
    if-eqz p1, :cond_0

    .line 307
    :goto_0
    return-void

    .line 304
    :cond_0
    invoke-direct {p0}, Lcom/baidu/launcher/ui/logic/ViewManager;->showUnlockAnim()V

    .line 305
    iget-object v3, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mCurrentView:Lcom/baidu/launcher/ui/logic/IBaseView;

    iget-object v4, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mHomeView:Lcom/baidu/launcher/ui/homeview/HomeView;

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mCurrentView:Lcom/baidu/launcher/ui/logic/IBaseView;

    iget-object v4, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mEditView:Lcom/baidu/launcher/ui/editview/EditView;

    if-ne v3, v4, :cond_2

    :cond_1
    move v0, v2

    .line 306
    .local v0, atHome:Z
    :goto_1
    iget-object v3, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    if-eqz v0, :cond_3

    iget-object v4, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v4}, Lcom/baidu/launcher/ui/homeview/Workspace;->getCurrentScreen()I

    move-result v4

    if-eqz v4, :cond_3

    :goto_2
    invoke-virtual {v3, v2}, Lcom/baidu/launcher/app/Launcher;->sendStatusBarTransparentBroadcast(Z)V

    goto :goto_0

    .end local v0           #atHome:Z
    :cond_2
    move v0, v1

    .line 305
    goto :goto_1

    .restart local v0       #atHome:Z
    :cond_3
    move v2, v1

    .line 306
    goto :goto_2
.end method

.method public onWorkspaceUpdate(I)V
    .locals 1
    .parameter "screen"

    .prologue
    .line 438
    iget-object v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mCurrentView:Lcom/baidu/launcher/ui/logic/IBaseView;

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mCurrentView:Lcom/baidu/launcher/ui/logic/IBaseView;

    invoke-interface {v0, p1}, Lcom/baidu/launcher/ui/logic/IBaseView;->onWorkspaceChanged(I)V

    .line 441
    :cond_0
    return-void
.end method

.method public openFolder(Lcom/baidu/launcher/ui/folder/FolderHolder;Z)V
    .locals 8
    .parameter "folderIcon"
    .parameter "onlyShowBackground"

    .prologue
    .line 626
    iget-object v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mFolderManager:Lcom/baidu/launcher/ui/folder/FolderManager;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/baidu/launcher/ui/animation/Choreographer;->isAniming()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/logic/ViewManager;->isFolderOpened()Z

    move-result v0

    if-nez v0, :cond_0

    .line 627
    invoke-static {}, Lcom/baidu/launcher/ui/animation/Choreographer;->startAniming()V

    move-object v0, p1

    .line 628
    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/baidu/launcher/ui/animation/Choreographer;->getViewPos(Landroid/view/View;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mFoldPos:[I

    .line 629
    iget-object v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mDockbar:Lcom/baidu/launcher/ui/homeview/DockBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/homeview/DockBar;->showDockbarBg(Z)V

    .line 630
    iget-object v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mFolderManager:Lcom/baidu/launcher/ui/folder/FolderManager;

    iget-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    iget-object v5, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mFoldPos:[I

    iget-wide v6, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mStartClickTime:J

    move-object v2, p1

    move-object v3, p0

    move v4, p2

    invoke-virtual/range {v0 .. v7}, Lcom/baidu/launcher/ui/folder/FolderManager;->openFolder(Lcom/baidu/launcher/app/Launcher;Lcom/baidu/launcher/ui/folder/FolderHolder;Lcom/baidu/launcher/ui/logic/ViewManager;Z[IJ)V

    .line 632
    :cond_0
    return-void
.end method

.method public openSetLocationLayer(Ljava/lang/String;)V
    .locals 1
    .parameter "city"

    .prologue
    .line 739
    iget-object v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->setLocationLayer:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;

    invoke-virtual {v0, p1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->openSetLocationLayer(Ljava/lang/String;)V

    .line 740
    return-void
.end method

.method public declared-synchronized processAddItem(Ljava/lang/Object;III)V
    .locals 3
    .parameter "item"
    .parameter "screen"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 527
    monitor-enter p0

    :try_start_0
    instance-of v0, p1, Lcom/baidu/launcher/data/item/ListAppInfo;

    if-eqz v0, :cond_1

    .line 528
    iget-object v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mHomeView:Lcom/baidu/launcher/ui/homeview/HomeView;

    check-cast p1, Lcom/baidu/launcher/data/item/ListAppInfo;

    .end local p1
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/baidu/launcher/ui/homeview/HomeView;->addApplication(Lcom/baidu/launcher/data/item/ListAppInfo;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 538
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 529
    .restart local p1
    :cond_1
    :try_start_1
    instance-of v0, p1, Lcom/baidu/launcher/data/item/ListWidgetInfo;

    if-eqz v0, :cond_2

    .line 530
    iget-object v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mHomeView:Lcom/baidu/launcher/ui/homeview/HomeView;

    check-cast p1, Lcom/baidu/launcher/data/item/ListWidgetInfo;

    .end local p1
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p3, v1, v2

    const/4 v2, 0x1

    aput p4, v1, v2

    invoke-virtual {v0, p1, p2, v1}, Lcom/baidu/launcher/ui/homeview/HomeView;->addBaiduWidget(Lcom/baidu/launcher/data/item/ListWidgetInfo;I[I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 527
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 531
    .restart local p1
    :cond_2
    :try_start_2
    instance-of v0, p1, Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_3

    .line 532
    iget-object v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mHomeView:Lcom/baidu/launcher/ui/homeview/HomeView;

    check-cast p1, Landroid/content/pm/ResolveInfo;

    .end local p1
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/baidu/launcher/ui/homeview/HomeView;->addShortcut(Landroid/content/pm/ResolveInfo;III)V

    goto :goto_0

    .line 533
    .restart local p1
    :cond_3
    instance-of v0, p1, Lcom/baidu/launcher/data/item/ListFolderInfo;

    if-nez v0, :cond_4

    instance-of v0, p1, Lcom/baidu/launcher/data/item/HomeFolderInfo;

    if-eqz v0, :cond_5

    .line 534
    :cond_4
    iget-object v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mHomeView:Lcom/baidu/launcher/ui/homeview/HomeView;

    check-cast p1, Lcom/baidu/launcher/data/item/IFolderInfo;

    .end local p1
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/baidu/launcher/ui/homeview/HomeView;->addFolder(Lcom/baidu/launcher/data/item/IFolderInfo;III)V

    goto :goto_0

    .line 535
    .restart local p1
    :cond_5
    instance-of v0, p1, Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mHomeView:Lcom/baidu/launcher/ui/homeview/HomeView;

    check-cast p1, Landroid/appwidget/AppWidgetProviderInfo;

    .end local p1
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p3, v1, v2

    const/4 v2, 0x1

    aput p4, v1, v2

    invoke-virtual {v0, p1, p2, v1}, Lcom/baidu/launcher/ui/homeview/HomeView;->addAppWidget(Landroid/appwidget/AppWidgetProviderInfo;I[I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public refreshFolderIcon()V
    .locals 1

    .prologue
    .line 635
    iget-object v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mFolderManager:Lcom/baidu/launcher/ui/folder/FolderManager;

    if-eqz v0, :cond_0

    .line 636
    iget-object v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mFolderManager:Lcom/baidu/launcher/ui/folder/FolderManager;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/folder/FolderManager;->refreshFolderIcon()V

    .line 638
    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 695
    iget-object v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mAppListView:Lcom/baidu/launcher/ui/applistview/AppListView;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/applistview/AppListView;->release()V

    .line 696
    iget-object v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v0, p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->removeWorkspaceUpdateListener(Lcom/baidu/launcher/ui/logic/ViewManager;)V

    .line 697
    iget-object v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/Workspace;->onDestory()V

    .line 698
    iput-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    .line 699
    iput-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mHomeView:Lcom/baidu/launcher/ui/homeview/HomeView;

    .line 700
    iput-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mEditView:Lcom/baidu/launcher/ui/editview/EditView;

    .line 701
    iput-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mAppListView:Lcom/baidu/launcher/ui/applistview/AppListView;

    .line 702
    iput-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mPreview:Lcom/baidu/launcher/ui/preview/Preview;

    .line 703
    iput-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mCurrentView:Lcom/baidu/launcher/ui/logic/IBaseView;

    .line 704
    iput-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mDragLayer:Lcom/baidu/launcher/ui/dragdrop/DragLayer;

    .line 705
    iput-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mDragController:Lcom/baidu/launcher/ui/dragdrop/DragController;

    .line 706
    iput-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mFolderLayer:Lcom/baidu/launcher/ui/folder/FolderLayer;

    .line 707
    iput-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;

    .line 708
    iput-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mDeleteZone:Lcom/baidu/launcher/ui/dragdrop/DeleteZone;

    .line 709
    iput-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mAppWidgetHost:Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHost;

    .line 710
    iput-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mFolderManager:Lcom/baidu/launcher/ui/folder/FolderManager;

    .line 711
    return-void
.end method

.method public releaseCache(I)V
    .locals 1
    .parameter "level"

    .prologue
    .line 688
    iget-object v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mAppListView:Lcom/baidu/launcher/ui/applistview/AppListView;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/applistview/AppListView;->releaseAppsWidgetCache()V

    .line 689
    return-void
.end method

.method public removeBlurView(Landroid/app/Activity;)V
    .locals 0
    .parameter "launcher"

    .prologue
    .line 723
    invoke-static {p1}, Lcom/baidu/launcher/ui/animation/Choreographer;->removeBlurView(Landroid/app/Activity;)V

    .line 724
    return-void
.end method

.method public removeScrollCallbacks()V
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mDragController:Lcom/baidu/launcher/ui/dragdrop/DragController;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/dragdrop/DragController;->removeScrollCallbacks()V

    .line 418
    return-void
.end method

.method public requestFillFolder(Lcom/baidu/launcher/data/item/IFolderInfo;)V
    .locals 4
    .parameter "folder"

    .prologue
    const/4 v3, 0x1

    .line 657
    iget-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mFolderManager:Lcom/baidu/launcher/ui/folder/FolderManager;

    if-eqz v1, :cond_1

    .line 658
    iget-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mFolderManager:Lcom/baidu/launcher/ui/folder/FolderManager;

    invoke-virtual {v1, p1}, Lcom/baidu/launcher/ui/folder/FolderManager;->backupFolder(Lcom/baidu/launcher/data/item/IFolderInfo;)V

    .line 659
    iget-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mFolderManager:Lcom/baidu/launcher/ui/folder/FolderManager;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/folder/FolderManager;->isFolderOpened()Z

    move-result v1

    if-nez v1, :cond_0

    .line 660
    iget-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mFolderManager:Lcom/baidu/launcher/ui/folder/FolderManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p0, v3}, Lcom/baidu/launcher/ui/folder/FolderManager;->openFolder(Lcom/baidu/launcher/ui/folder/FolderHolder;Lcom/baidu/launcher/ui/logic/ViewManager;Z)V

    .line 662
    :cond_0
    iget-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mFolderManager:Lcom/baidu/launcher/ui/folder/FolderManager;

    invoke-virtual {v1, v3}, Lcom/baidu/launcher/ui/folder/FolderManager;->setKeepBackground(Z)V

    .line 663
    invoke-static {p1}, Lcom/baidu/launcher/ui/folder/FillFolder;->setTarget(Lcom/baidu/launcher/data/item/IFolderInfo;)V

    .line 664
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 665
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    const-class v2, Lcom/baidu/launcher/ui/folder/FillFolder;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 666
    iget-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    const/4 v2, 0x4

    invoke-virtual {v1, v0, v2}, Lcom/baidu/launcher/app/Launcher;->startActivityForResultSafely(Landroid/content/Intent;I)V

    .line 668
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public requestPick(Landroid/content/Intent;I)V
    .locals 1
    .parameter "pickIntent"
    .parameter "requestCode"

    .prologue
    .line 575
    iget-object v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/launcher/app/Launcher;->startActivityForResultSafely(Landroid/content/Intent;I)V

    .line 576
    return-void
.end method

.method public scroll()Z
    .locals 2

    .prologue
    .line 393
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/logic/ViewManager;->isFolderOpened()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mCurrentView:Lcom/baidu/launcher/ui/logic/IBaseView;

    iget-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mHomeView:Lcom/baidu/launcher/ui/homeview/HomeView;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public scrollLeft()V
    .locals 2

    .prologue
    .line 398
    iget-object v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mCurrentView:Lcom/baidu/launcher/ui/logic/IBaseView;

    iget-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mHomeView:Lcom/baidu/launcher/ui/homeview/HomeView;

    if-ne v0, v1, :cond_0

    .line 399
    invoke-static {}, Lcom/baidu/bulletin/utils/SharedPreferencesUtils;->isBulletinEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 400
    iget-object v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getCurrentScreen()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lez v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/Workspace;->scrollLeft()V

    .line 407
    :cond_0
    :goto_0
    return-void

    .line 404
    :cond_1
    iget-object v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/Workspace;->scrollLeft()V

    goto :goto_0
.end method

.method public scrollRight()V
    .locals 2

    .prologue
    .line 411
    iget-object v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mCurrentView:Lcom/baidu/launcher/ui/logic/IBaseView;

    iget-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mHomeView:Lcom/baidu/launcher/ui/homeview/HomeView;

    if-ne v0, v1, :cond_0

    .line 412
    iget-object v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/Workspace;->scrollRight()V

    .line 414
    :cond_0
    return-void
.end method

.method public setupViews(Lcom/baidu/launcher/app/Launcher;Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHost;)V
    .locals 3
    .parameter "launcher"
    .parameter "appWidgetHost"

    .prologue
    .line 104
    const-string v1, "activity"

    invoke-virtual {p1, v1}, Lcom/baidu/launcher/app/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iput-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mAm:Landroid/app/ActivityManager;

    .line 105
    const v1, 0x7f080173

    invoke-virtual {p1, v1}, Lcom/baidu/launcher/app/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;

    .line 106
    .local v0, dragLayer:Lcom/baidu/launcher/ui/dragdrop/DragLayer;
    iput-object v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mDragLayer:Lcom/baidu/launcher/ui/dragdrop/DragLayer;

    .line 107
    iput-object p1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    .line 108
    iput-object p2, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mAppWidgetHost:Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHost;

    .line 109
    new-instance v1, Lcom/baidu/launcher/ui/dragdrop/DragController;

    invoke-direct {v1, p1, p0}, Lcom/baidu/launcher/ui/dragdrop/DragController;-><init>(Landroid/content/Context;Lcom/baidu/launcher/ui/logic/ViewManager;)V

    iput-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mDragController:Lcom/baidu/launcher/ui/dragdrop/DragController;

    .line 110
    iget-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mDragLayer:Lcom/baidu/launcher/ui/dragdrop/DragLayer;

    iget-object v2, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mDragController:Lcom/baidu/launcher/ui/dragdrop/DragController;

    invoke-virtual {v1, p0, v2}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->setup(Lcom/baidu/launcher/ui/logic/ViewManager;Lcom/baidu/launcher/ui/dragdrop/DragController;)V

    .line 113
    const v1, 0x7f08017e

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/dragdrop/DeleteZone;

    iput-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mDeleteZone:Lcom/baidu/launcher/ui/dragdrop/DeleteZone;

    .line 114
    iget-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mDeleteZone:Lcom/baidu/launcher/ui/dragdrop/DeleteZone;

    invoke-virtual {v1, p0}, Lcom/baidu/launcher/ui/dragdrop/DeleteZone;->setViewManager(Lcom/baidu/launcher/ui/logic/ViewManager;)V

    .line 115
    iget-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mDragController:Lcom/baidu/launcher/ui/dragdrop/DragController;

    iget-object v2, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mDeleteZone:Lcom/baidu/launcher/ui/dragdrop/DeleteZone;

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/ui/dragdrop/DragController;->setDeleteZone(Lcom/baidu/launcher/ui/dragdrop/DeleteZone;)V

    .line 116
    iget-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mDragController:Lcom/baidu/launcher/ui/dragdrop/DragController;

    iget-object v2, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mDeleteZone:Lcom/baidu/launcher/ui/dragdrop/DeleteZone;

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/ui/dragdrop/DragController;->setFlingToDeleteDropTarget(Lcom/baidu/launcher/ui/dragdrop/DropTarget;)V

    .line 119
    const v1, 0x7f080175

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;

    iput-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->setLocationLayer:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;

    .line 120
    iget-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->setLocationLayer:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;

    invoke-virtual {v1, p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->setViewManager(Lcom/baidu/launcher/ui/logic/ViewManager;)V

    .line 123
    const v1, 0x7f080174

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/folder/FolderLayer;

    iput-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mFolderLayer:Lcom/baidu/launcher/ui/folder/FolderLayer;

    .line 124
    new-instance v1, Lcom/baidu/launcher/ui/folder/FolderManager;

    iget-object v2, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mFolderLayer:Lcom/baidu/launcher/ui/folder/FolderLayer;

    invoke-direct {v1, v2}, Lcom/baidu/launcher/ui/folder/FolderManager;-><init>(Lcom/baidu/launcher/ui/folder/FolderLayer;)V

    iput-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mFolderManager:Lcom/baidu/launcher/ui/folder/FolderManager;

    .line 125
    iget-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mFolderLayer:Lcom/baidu/launcher/ui/folder/FolderLayer;

    invoke-virtual {v1, p0}, Lcom/baidu/launcher/ui/folder/FolderLayer;->setViewManager(Lcom/baidu/launcher/ui/logic/ViewManager;)V

    .line 128
    const v1, 0x7f08013a

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/homeview/HomeView;

    iput-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mHomeView:Lcom/baidu/launcher/ui/homeview/HomeView;

    .line 129
    iget-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mHomeView:Lcom/baidu/launcher/ui/homeview/HomeView;

    const v2, 0x7f08013b

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/ui/homeview/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/homeview/Workspace;

    iput-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;

    .line 130
    iget-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mHomeView:Lcom/baidu/launcher/ui/homeview/HomeView;

    const v2, 0x7f08013d

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/ui/homeview/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/homeview/DockBar;

    iput-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mDockbar:Lcom/baidu/launcher/ui/homeview/DockBar;

    .line 131
    iget-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v1, p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->setWorkspaceUpdateListener(Lcom/baidu/launcher/ui/homeview/Workspace$WorkspaceUpdateListener;)V

    .line 132
    iget-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;

    iget-object v2, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/ui/homeview/Workspace;->setLauncher(Lcom/baidu/launcher/app/Launcher;)V

    .line 133
    iget-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mHomeView:Lcom/baidu/launcher/ui/homeview/HomeView;

    invoke-virtual {v1, p0}, Lcom/baidu/launcher/ui/homeview/HomeView;->setViewManager(Lcom/baidu/launcher/ui/logic/ViewManager;)V

    .line 136
    const v1, 0x7f080009

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/applistview/AppListView;

    iput-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mAppListView:Lcom/baidu/launcher/ui/applistview/AppListView;

    .line 137
    iget-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mAppListView:Lcom/baidu/launcher/ui/applistview/AppListView;

    invoke-virtual {v1, p0}, Lcom/baidu/launcher/ui/applistview/AppListView;->setViewManager(Lcom/baidu/launcher/ui/logic/ViewManager;)V

    .line 138
    iget-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mAppListView:Lcom/baidu/launcher/ui/applistview/AppListView;

    iget-object v2, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/ui/applistview/AppListView;->setLauncher(Lcom/baidu/launcher/app/Launcher;)V

    .line 141
    const v1, 0x7f080109

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/editview/EditView;

    iput-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mEditView:Lcom/baidu/launcher/ui/editview/EditView;

    .line 142
    iget-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mEditView:Lcom/baidu/launcher/ui/editview/EditView;

    invoke-virtual {v1, p0}, Lcom/baidu/launcher/ui/editview/EditView;->setViewManager(Lcom/baidu/launcher/ui/logic/ViewManager;)V

    .line 144
    iget-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mEditView:Lcom/baidu/launcher/ui/editview/EditView;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/editview/EditView;->getScreenSnapshot()Lcom/baidu/launcher/ui/editview/ScreenSnapshot;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->screenSnapshot:Lcom/baidu/launcher/ui/editview/ScreenSnapshot;

    .line 146
    iget-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->screenSnapshot:Lcom/baidu/launcher/ui/editview/ScreenSnapshot;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/editview/ScreenSnapshot;->getThumbnailGroup()Lcom/baidu/launcher/ui/editview/ThumbnailGroup;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->thumbnailGroup:Lcom/baidu/launcher/ui/editview/ThumbnailGroup;

    .line 148
    const v1, 0x7f08017d

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/preview/Preview;

    iput-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mPreview:Lcom/baidu/launcher/ui/preview/Preview;

    .line 149
    iget-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mPreview:Lcom/baidu/launcher/ui/preview/Preview;

    invoke-virtual {v1, p0}, Lcom/baidu/launcher/ui/preview/Preview;->setViewManager(Lcom/baidu/launcher/ui/logic/ViewManager;)V

    .line 151
    iget-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mDragController:Lcom/baidu/launcher/ui/dragdrop/DragController;

    invoke-virtual {v1, p0}, Lcom/baidu/launcher/ui/dragdrop/DragController;->setDragScoller(Lcom/baidu/launcher/ui/dragdrop/DragScroller;)V

    .line 152
    iget-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mDragController:Lcom/baidu/launcher/ui/dragdrop/DragController;

    invoke-virtual {v1, v0}, Lcom/baidu/launcher/ui/dragdrop/DragController;->setScrollView(Landroid/view/View;)V

    .line 153
    iget-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mDragController:Lcom/baidu/launcher/ui/dragdrop/DragController;

    iget-object v2, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/ui/dragdrop/DragController;->setMoveTarget(Landroid/view/View;)V

    .line 155
    iget-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mHomeView:Lcom/baidu/launcher/ui/homeview/HomeView;

    new-instance v2, Lcom/baidu/launcher/ui/logic/IBaseView$SwitchData;

    invoke-direct {v2}, Lcom/baidu/launcher/ui/logic/IBaseView$SwitchData;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/baidu/launcher/ui/logic/ViewManager;->switchView(Lcom/baidu/launcher/ui/logic/IBaseView;Lcom/baidu/launcher/ui/logic/IBaseView$SwitchData;)V

    .line 157
    iget-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    invoke-static {v1}, Lcom/baidu/launcher/data/HomeDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/HomeDataManager;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mHomeView:Lcom/baidu/launcher/ui/homeview/HomeView;

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/data/HomeDataManager;->registerHomeDataChangeListener(Lcom/baidu/launcher/data/HomeDataManager$HomeDataChangeListener;)V

    .line 158
    iget-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    invoke-static {v1}, Lcom/baidu/launcher/data/AppsDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/AppsDataManager;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mHomeView:Lcom/baidu/launcher/ui/homeview/HomeView;

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/data/AppsDataManager;->registerAppChangeListener(Lcom/baidu/launcher/data/AppsDataManager$AppChangeListener;)V

    .line 159
    iget-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    invoke-static {v1}, Lcom/baidu/launcher/app/ThemeChangeReceiver;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/app/ThemeChangeReceiver;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mHomeView:Lcom/baidu/launcher/ui/homeview/HomeView;

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/app/ThemeChangeReceiver;->registerHomeViewDataChangeListener(Lcom/baidu/launcher/app/ThemeChangeReceiver$HomeViewDataChangeListener;)V

    .line 160
    iget-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    invoke-static {v1}, Lcom/baidu/launcher/app/ThemeChangeReceiver;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/app/ThemeChangeReceiver;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mAppListView:Lcom/baidu/launcher/ui/applistview/AppListView;

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/app/ThemeChangeReceiver;->registerAppListViewDataChangeListener(Lcom/baidu/launcher/app/ThemeChangeReceiver$AppListViewDataChangeListener;)V

    .line 162
    return-void
.end method

.method public showBulletinScreen()V
    .locals 1

    .prologue
    .line 714
    iget-object v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    if-eqz v0, :cond_0

    .line 715
    iget-object v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    invoke-virtual {v0}, Lcom/baidu/launcher/app/Launcher;->showBulletinScreen()V

    .line 716
    :cond_0
    return-void
.end method

.method public showMenu(Z)Z
    .locals 1
    .parameter "show"

    .prologue
    .line 500
    iget-object v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    invoke-virtual {v0, p1}, Lcom/baidu/launcher/app/Launcher;->showMenu(Z)Z

    move-result v0

    return v0
.end method

.method public startWeatherAnim()V
    .locals 2

    .prologue
    .line 731
    iget-object v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    iget-object v1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->setLocationLayer:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;

    invoke-static {v0, v1}, Lcom/baidu/launcher/ui/animation/Choreographer;->startWeatherAnim(Lcom/baidu/launcher/app/Launcher;Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;)V

    .line 732
    return-void
.end method

.method public switchView(ILcom/baidu/launcher/ui/logic/IBaseView$SwitchData;)V
    .locals 1
    .parameter "id"
    .parameter "data"

    .prologue
    .line 165
    const/4 v0, 0x0

    .line 166
    .local v0, view:Lcom/baidu/launcher/ui/logic/IBaseView;
    sparse-switch p1, :sswitch_data_0

    .line 180
    :goto_0
    invoke-virtual {p0, v0, p2}, Lcom/baidu/launcher/ui/logic/ViewManager;->switchView(Lcom/baidu/launcher/ui/logic/IBaseView;Lcom/baidu/launcher/ui/logic/IBaseView$SwitchData;)V

    .line 181
    return-void

    .line 168
    :sswitch_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mHomeView:Lcom/baidu/launcher/ui/homeview/HomeView;

    .line 169
    goto :goto_0

    .line 171
    :sswitch_1
    iget-object v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mAppListView:Lcom/baidu/launcher/ui/applistview/AppListView;

    .line 172
    goto :goto_0

    .line 174
    :sswitch_2
    iget-object v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mEditView:Lcom/baidu/launcher/ui/editview/EditView;

    .line 175
    goto :goto_0

    .line 177
    :sswitch_3
    iget-object v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mPreview:Lcom/baidu/launcher/ui/preview/Preview;

    goto :goto_0

    .line 166
    :sswitch_data_0
    .sparse-switch
        0x7f080009 -> :sswitch_1
        0x7f080109 -> :sswitch_2
        0x7f08013a -> :sswitch_0
        0x7f08017d -> :sswitch_3
    .end sparse-switch
.end method

.method public switchView(Lcom/baidu/launcher/ui/logic/IBaseView;Lcom/baidu/launcher/ui/logic/IBaseView$SwitchData;)V
    .locals 7
    .parameter "view"
    .parameter "data"

    .prologue
    const v6, 0x7f080009

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 184
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mCurrentView:Lcom/baidu/launcher/ui/logic/IBaseView;

    if-eq v3, p1, :cond_0

    iget-object v3, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mHomeView:Lcom/baidu/launcher/ui/homeview/HomeView;

    invoke-virtual {v3}, Lcom/baidu/launcher/ui/homeview/HomeView;->isWorkSpaceLocked()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    iget-object v3, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mCurrentView:Lcom/baidu/launcher/ui/logic/IBaseView;

    if-eqz v3, :cond_3

    .line 188
    invoke-interface {p1}, Lcom/baidu/launcher/ui/logic/IBaseView;->getID()I

    move-result v3

    const v4, 0x7f08013a

    if-ne v3, v4, :cond_2

    .line 189
    iget-object v3, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mCurrentView:Lcom/baidu/launcher/ui/logic/IBaseView;

    invoke-interface {v3}, Lcom/baidu/launcher/ui/logic/IBaseView;->getID()I

    move-result v3

    if-ne v3, v6, :cond_7

    .line 190
    iget-object v3, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    invoke-static {v3, v1}, Lcom/baidu/launcher/ui/animation/Choreographer;->getHomeViewZoomAnim(Landroid/content/Context;Z)Landroid/view/animation/Animation;

    move-result-object v0

    .line 191
    .local v0, animation:Landroid/view/animation/Animation;
    iget-object v3, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mHomeView:Lcom/baidu/launcher/ui/homeview/HomeView;

    invoke-virtual {v3, v0}, Lcom/baidu/launcher/ui/homeview/HomeView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 198
    .end local v0           #animation:Landroid/view/animation/Animation;
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mCurrentView:Lcom/baidu/launcher/ui/logic/IBaseView;

    iget-boolean v4, p2, Lcom/baidu/launcher/ui/logic/IBaseView$SwitchData;->hideAnim:Z

    iget-object v5, p2, Lcom/baidu/launcher/ui/logic/IBaseView$SwitchData;->hideExtra:Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/baidu/launcher/ui/logic/IBaseView;->hide(ZLjava/lang/Object;)V

    .line 201
    :cond_3
    invoke-interface {p1}, Lcom/baidu/launcher/ui/logic/IBaseView;->getID()I

    move-result v3

    if-ne v3, v6, :cond_4

    .line 202
    iget-object v3, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    invoke-static {v3, v2}, Lcom/baidu/launcher/ui/animation/Choreographer;->getHomeViewZoomAnim(Landroid/content/Context;Z)Landroid/view/animation/Animation;

    move-result-object v0

    .line 203
    .restart local v0       #animation:Landroid/view/animation/Animation;
    const-wide/16 v3, 0xc8

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 204
    new-instance v3, Lcom/baidu/launcher/ui/logic/ViewManager$1;

    invoke-direct {v3, p0}, Lcom/baidu/launcher/ui/logic/ViewManager$1;-><init>(Lcom/baidu/launcher/ui/logic/ViewManager;)V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 216
    iget-object v3, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mHomeView:Lcom/baidu/launcher/ui/homeview/HomeView;

    invoke-virtual {v3, v0}, Lcom/baidu/launcher/ui/homeview/HomeView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 218
    .end local v0           #animation:Landroid/view/animation/Animation;
    :cond_4
    iget-boolean v3, p2, Lcom/baidu/launcher/ui/logic/IBaseView$SwitchData;->showAnim:Z

    iget-object v4, p2, Lcom/baidu/launcher/ui/logic/IBaseView$SwitchData;->showExtra:Ljava/lang/Object;

    invoke-interface {p1, v3, v4}, Lcom/baidu/launcher/ui/logic/IBaseView;->show(ZLjava/lang/Object;)V

    .line 220
    iput-object p1, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mCurrentView:Lcom/baidu/launcher/ui/logic/IBaseView;

    .line 221
    iget-object v3, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    iget-object v4, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mCurrentView:Lcom/baidu/launcher/ui/logic/IBaseView;

    iget-object v5, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mHomeView:Lcom/baidu/launcher/ui/homeview/HomeView;

    if-eq v4, v5, :cond_5

    iget-object v4, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mCurrentView:Lcom/baidu/launcher/ui/logic/IBaseView;

    iget-object v5, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mEditView:Lcom/baidu/launcher/ui/editview/EditView;

    if-eq v4, v5, :cond_5

    iget-object v4, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mCurrentView:Lcom/baidu/launcher/ui/logic/IBaseView;

    iget-object v5, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mAppListView:Lcom/baidu/launcher/ui/applistview/AppListView;

    if-ne v4, v5, :cond_6

    :cond_5
    move v1, v2

    :cond_6
    invoke-virtual {v3, v1}, Lcom/baidu/launcher/app/Launcher;->setStatusBarTransparent(Z)V

    goto :goto_0

    .line 192
    :cond_7
    iget-object v3, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mCurrentView:Lcom/baidu/launcher/ui/logic/IBaseView;

    invoke-interface {v3}, Lcom/baidu/launcher/ui/logic/IBaseView;->getID()I

    move-result v3

    const v4, 0x7f080109

    if-ne v3, v4, :cond_2

    .line 193
    iget-object v3, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    invoke-static {v3, v1}, Lcom/baidu/launcher/ui/animation/Choreographer;->getHomeViewZoomAnim(Landroid/content/Context;Z)Landroid/view/animation/Animation;

    move-result-object v0

    .line 194
    .restart local v0       #animation:Landroid/view/animation/Animation;
    const-wide/16 v3, 0x12c

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 195
    iget-object v3, p0, Lcom/baidu/launcher/ui/logic/ViewManager;->mHomeView:Lcom/baidu/launcher/ui/homeview/HomeView;

    invoke-virtual {v3, v0}, Lcom/baidu/launcher/ui/homeview/HomeView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1
.end method
