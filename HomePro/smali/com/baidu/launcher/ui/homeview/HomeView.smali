.class public Lcom/baidu/launcher/ui/homeview/HomeView;
.super Landroid/widget/FrameLayout;
.source "HomeView.java"

# interfaces
.implements Lcom/baidu/launcher/ui/logic/IBaseView;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/baidu/launcher/data/HomeDataManager$HomeDataChangeListener;
.implements Lcom/baidu/launcher/data/AppsDataManager$AppChangeListener;
.implements Lcom/baidu/launcher/app/ThemeChangeReceiver$HomeViewDataChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/ui/homeview/HomeView$SettingsObserver;,
        Lcom/baidu/launcher/ui/homeview/HomeView$HomeDataLoader;,
        Lcom/baidu/launcher/ui/homeview/HomeView$HomeDataLoadTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HomeView"

.field public static startTime:J


# instance fields
.field private addItemLocation:[I

.field private bulletinLayout:Lcom/baidu/bulletin/ui/BulletinLayout;

.field private indicator:Lcom/baidu/launcher/ui/homeview/Indicator;

.field private isHomeViewClickable:Z

.field private mDataLoaded:Z

.field public mDockBar:Lcom/baidu/launcher/ui/homeview/DockBar;

.field private mEventSource:I

.field private final mIsLandscape:Z

.field private mOpenAnim:Landroid/animation/ObjectAnimator;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

.field private mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;

.field private mWorkspacedLocked:Z

.field private sSettingsObserver:Lcom/baidu/launcher/ui/homeview/HomeView$SettingsObserver;

.field private tempPos:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 232
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 115
    const/4 v2, 0x4

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->addItemLocation:[I

    .line 116
    new-array v2, v3, [I

    iput-object v2, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->tempPos:[I

    .line 118
    iput-boolean v1, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mDataLoaded:Z

    .line 120
    iput-boolean v1, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mWorkspacedLocked:Z

    .line 122
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->bulletinLayout:Lcom/baidu/bulletin/ui/BulletinLayout;

    .line 128
    iput-boolean v0, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->isHomeViewClickable:Z

    .line 233
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v3, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mIsLandscape:Z

    .line 235
    return-void

    :cond_0
    move v0, v1

    .line 233
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 238
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 115
    const/4 v2, 0x4

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->addItemLocation:[I

    .line 116
    new-array v2, v3, [I

    iput-object v2, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->tempPos:[I

    .line 118
    iput-boolean v1, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mDataLoaded:Z

    .line 120
    iput-boolean v1, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mWorkspacedLocked:Z

    .line 122
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->bulletinLayout:Lcom/baidu/bulletin/ui/BulletinLayout;

    .line 128
    iput-boolean v0, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->isHomeViewClickable:Z

    .line 239
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v3, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mIsLandscape:Z

    .line 241
    return-void

    :cond_0
    move v0, v1

    .line 239
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 244
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 115
    const/4 v2, 0x4

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->addItemLocation:[I

    .line 116
    new-array v2, v3, [I

    iput-object v2, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->tempPos:[I

    .line 118
    iput-boolean v1, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mDataLoaded:Z

    .line 120
    iput-boolean v1, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mWorkspacedLocked:Z

    .line 122
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->bulletinLayout:Lcom/baidu/bulletin/ui/BulletinLayout;

    .line 128
    iput-boolean v0, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->isHomeViewClickable:Z

    .line 245
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v3, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mIsLandscape:Z

    .line 247
    return-void

    :cond_0
    move v0, v1

    .line 245
    goto :goto_0
.end method

.method static synthetic access$100(Lcom/baidu/launcher/ui/homeview/HomeView;)Lcom/baidu/launcher/ui/logic/ViewManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/baidu/launcher/ui/homeview/HomeView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/baidu/launcher/ui/homeview/HomeView;->loadView()V

    return-void
.end method

.method static synthetic access$200(Lcom/baidu/launcher/ui/homeview/HomeView;Ljava/util/ArrayList;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Lcom/baidu/launcher/ui/homeview/HomeView;->bindItems(Ljava/util/ArrayList;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/baidu/launcher/ui/homeview/HomeView;)Lcom/baidu/launcher/ui/homeview/Workspace;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;

    return-object v0
.end method

.method static synthetic access$400(Lcom/baidu/launcher/ui/homeview/HomeView;)Lcom/baidu/launcher/ui/homeview/Indicator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->indicator:Lcom/baidu/launcher/ui/homeview/Indicator;

    return-object v0
.end method

.method static synthetic access$500(Lcom/baidu/launcher/ui/homeview/HomeView;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/homeview/HomeView;->checkDockBarInfos(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$602(Lcom/baidu/launcher/ui/homeview/HomeView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mWorkspacedLocked:Z

    return p1
.end method

.method static synthetic access$702(Lcom/baidu/launcher/ui/homeview/HomeView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mDataLoaded:Z

    return p1
.end method

.method static synthetic access$800(Lcom/baidu/launcher/ui/homeview/HomeView;Lcom/baidu/launcher/data/item/HomeItemInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/homeview/HomeView;->computeItemPosition(Lcom/baidu/launcher/data/item/HomeItemInfo;)V

    return-void
.end method

.method private addHomeData(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/data/item/HomeItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1446
    .local p1, changeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/HomeItemInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/data/item/HomeItemInfo;

    .line 1448
    .local v1, item:Lcom/baidu/launcher/data/item/HomeItemInfo;
    new-instance v2, Lcom/baidu/launcher/ui/homeview/HomeView$10;

    invoke-direct {v2, p0, v1}, Lcom/baidu/launcher/ui/homeview/HomeView$10;-><init>(Lcom/baidu/launcher/ui/homeview/HomeView;Lcom/baidu/launcher/data/item/HomeItemInfo;)V

    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/homeview/HomeView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1483
    .end local v1           #item:Lcom/baidu/launcher/data/item/HomeItemInfo;
    :cond_0
    return-void
.end method

.method private bindItems(Ljava/util/ArrayList;I)V
    .locals 1
    .parameter
    .parameter "bindParam"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/data/item/HomeItemInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 469
    .local p1, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/HomeItemInfo;>;"
    new-instance v0, Lcom/baidu/launcher/ui/homeview/HomeView$6;

    invoke-direct {v0, p0, p2, p1}, Lcom/baidu/launcher/ui/homeview/HomeView$6;-><init>(Lcom/baidu/launcher/ui/homeview/HomeView;ILjava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/homeview/HomeView;->post(Ljava/lang/Runnable;)Z

    .line 556
    return-void
.end method

.method private checkDockBarInfos(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/launcher/data/item/HomeItemInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/launcher/data/item/HomeItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, dockBarInfos:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/launcher/data/item/HomeItemInfo;>;"
    const/4 v8, 0x4

    .line 421
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v8, :cond_2

    .line 422
    const-string v6, "DockBar"

    const-string v7, "checkDockBarInfos fail, maybe db damage"

    invoke-static {v6, v7}, Lcom/baidu/launcher/utils/LogEx;->myLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 424
    .local v2, dockBarInfos_default:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/launcher/data/item/HomeItemInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 425
    .local v0, className:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/HomeView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/baidu/launcher/data/HomeDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/HomeDataManager;

    move-result-object v3

    .line 447
    .local v3, hdm:Lcom/baidu/launcher/data/HomeDataManager;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/launcher/data/item/HomeItemInfo;

    .line 448
    .local v4, homeItemInfo:Lcom/baidu/launcher/data/item/HomeItemInfo;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v6, v8, :cond_0

    .line 449
    instance-of v6, v4, Lcom/baidu/launcher/data/item/HomeFolderInfo;

    if-eqz v6, :cond_1

    .line 450
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 453
    :cond_1
    instance-of v6, v4, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    if-eqz v6, :cond_0

    move-object v6, v4

    check-cast v6, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    iget-object v6, v6, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->intent:Landroid/content/Intent;

    if-eqz v6, :cond_0

    move-object v6, v4

    .line 454
    check-cast v6, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    iget-object v6, v6, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 455
    .local v1, clsName:Ljava/lang/String;
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 456
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 457
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0           #className:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v1           #clsName:Ljava/lang/String;
    .end local v2           #dockBarInfos_default:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/launcher/data/item/HomeItemInfo;>;"
    .end local v3           #hdm:Lcom/baidu/launcher/data/HomeDataManager;
    .end local v4           #homeItemInfo:Lcom/baidu/launcher/data/item/HomeItemInfo;
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_2
    move-object v2, p1

    .line 464
    :cond_3
    return-object v2
.end method

.method private computeItemPosition(Lcom/baidu/launcher/data/item/HomeItemInfo;)V
    .locals 9
    .parameter "info"

    .prologue
    .line 1486
    sget v4, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->defaultScreen:I

    .line 1487
    .local v4, index:I
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v8

    .line 1488
    .local v8, count:I
    :goto_0
    const/16 v0, 0xa

    if-ge v4, v0, :cond_1

    .line 1489
    if-lt v4, v8, :cond_0

    .line 1490
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/Workspace;->addScreen()Lcom/baidu/launcher/ui/homeview/CellLayout;

    .line 1491
    add-int/lit8 v8, v8, 0x1

    .line 1493
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v0, v4}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/baidu/launcher/ui/homeview/CellLayout;

    .line 1494
    .local v7, cellLayout:Lcom/baidu/launcher/ui/homeview/CellLayout;
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->tempPos:[I

    iget v1, p1, Lcom/baidu/launcher/data/item/HomeItemInfo;->spanX:I

    iget v2, p1, Lcom/baidu/launcher/data/item/HomeItemInfo;->spanY:I

    invoke-virtual {v7, v0, v1, v2}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getSlotForSpan([III)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1495
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/launcher/data/HomeDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/HomeDataManager;

    move-result-object v0

    iget-wide v2, p1, Lcom/baidu/launcher/data/item/HomeItemInfo;->container:J

    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->tempPos:[I

    const/4 v5, 0x0

    aget v5, v1, v5

    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->tempPos:[I

    const/4 v6, 0x1

    aget v6, v1, v6

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/launcher/data/HomeDataManager;->moveItemInDatabase(Lcom/baidu/launcher/data/item/HomeItemInfo;JIII)V

    .line 1501
    .end local v7           #cellLayout:Lcom/baidu/launcher/ui/homeview/CellLayout;
    :cond_1
    return-void

    .line 1498
    .restart local v7       #cellLayout:Lcom/baidu/launcher/ui/homeview/CellLayout;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 1499
    goto :goto_0
.end method

.method private dismissProgessDialog()V
    .locals 1

    .prologue
    .line 1604
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 1605
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1607
    :cond_0
    return-void
.end method

.method private findScreenForDrop(I[I[I)I
    .locals 11
    .parameter "dropIndex"
    .parameter "dropPosition"
    .parameter "spans"

    .prologue
    .line 951
    const/4 v0, 0x0

    .line 952
    .local v0, canDrop:Z
    const/4 v4, 0x0

    .line 953
    .local v4, leftEnd:Z
    const/4 v8, 0x0

    .line 954
    .local v8, rightEnd:Z
    const/4 v7, -0x1

    .line 955
    .local v7, ratio:I
    const/4 v6, 0x0

    .line 956
    .local v6, offsetAbs:I
    const/4 v5, 0x0

    .line 957
    .local v5, offset:I
    const/4 v3, 0x0

    .line 959
    .local v3, i:I
    move v2, p1

    .line 960
    .local v2, currentDropIndex:I
    const/4 v1, 0x0

    .line 962
    .local v1, cell:Lcom/baidu/launcher/ui/homeview/CellLayout;
    :goto_0
    if-nez v0, :cond_7

    if-eqz v8, :cond_0

    if-nez v4, :cond_7

    .line 963
    :cond_0
    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/homeview/HomeView;->isValidScreen(I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 964
    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v9}, Lcom/baidu/launcher/ui/logic/ViewManager;->getWorkspace()Lcom/baidu/launcher/ui/homeview/Workspace;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #cell:Lcom/baidu/launcher/ui/homeview/CellLayout;
    check-cast v1, Lcom/baidu/launcher/ui/homeview/CellLayout;

    .line 966
    .restart local v1       #cell:Lcom/baidu/launcher/ui/homeview/CellLayout;
    :cond_1
    if-eqz v1, :cond_3

    const/4 v9, 0x0

    aget v9, p3, v9

    const/4 v10, 0x1

    aget v10, p3, v10

    invoke-virtual {v1, p2, v9, v10}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getSlotForSpan([III)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 967
    const/4 v0, 0x1

    .line 983
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 969
    :cond_3
    rem-int/lit8 v9, v3, 0x2

    if-nez v9, :cond_4

    add-int/lit8 v6, v6, 0x1

    .line 970
    :cond_4
    neg-int v7, v7

    .line 971
    mul-int v5, v6, v7

    .line 973
    add-int v9, v2, v5

    invoke-direct {p0, v9}, Lcom/baidu/launcher/ui/homeview/HomeView;->isValidScreen(I)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 974
    add-int p1, v2, v5

    goto :goto_1

    .line 975
    :cond_5
    add-int v9, v2, v5

    invoke-direct {p0}, Lcom/baidu/launcher/ui/homeview/HomeView;->getVisibleCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x3

    if-le v9, v10, :cond_6

    .line 976
    add-int p1, v2, v5

    .line 977
    const/4 v8, 0x1

    goto :goto_1

    .line 978
    :cond_6
    add-int v9, v2, v5

    if-gez v9, :cond_2

    .line 979
    add-int p1, v2, v5

    .line 980
    const/4 v4, 0x1

    goto :goto_1

    .line 986
    :cond_7
    if-nez v0, :cond_8

    sget v9, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->screenCount:I

    const/16 v10, 0xa

    if-ge v9, v10, :cond_8

    .line 987
    sget p1, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->screenCount:I

    .line 988
    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v9}, Lcom/baidu/launcher/ui/logic/ViewManager;->getWorkspace()Lcom/baidu/launcher/ui/homeview/Workspace;

    move-result-object v9

    invoke-virtual {v9}, Lcom/baidu/launcher/ui/homeview/Workspace;->addScreen()Lcom/baidu/launcher/ui/homeview/CellLayout;

    move-result-object v1

    .line 989
    const/4 v9, 0x0

    const/4 v10, 0x0

    aput v10, p2, v9

    .line 990
    const/4 v9, 0x1

    const/4 v10, 0x0

    aput v10, p2, v9

    .line 991
    const/4 v0, 0x1

    .line 994
    :cond_8
    if-eqz v0, :cond_9

    if-eqz v1, :cond_9

    .line 997
    .end local p1
    :goto_2
    return p1

    .restart local p1
    :cond_9
    const/4 p1, -0x1

    goto :goto_2
.end method

.method private getVisibleCount()I
    .locals 2

    .prologue
    .line 1003
    sget v1, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->screenCount:I

    add-int/lit8 v0, v1, 0x1

    .line 1005
    .local v0, count:I
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/HomeView;->getChildCount()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1006
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 1007
    const/4 v0, 0x3

    .line 1009
    :cond_0
    return v0
.end method

.method private isValidScreen(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 1013
    if-ltz p1, :cond_0

    sget v0, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->screenCount:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 131
    new-instance v0, Lcom/baidu/launcher/ui/homeview/HomeView$HomeDataLoadTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/baidu/launcher/ui/homeview/HomeView$HomeDataLoadTask;-><init>(Lcom/baidu/launcher/ui/homeview/HomeView;Lcom/baidu/launcher/ui/homeview/HomeView$1;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/baidu/launcher/ui/homeview/HomeView$HomeDataLoadTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 133
    new-instance v0, Lcom/baidu/launcher/ui/homeview/HomeView$1;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/ui/homeview/HomeView$1;-><init>(Lcom/baidu/launcher/ui/homeview/HomeView;)V

    const-wide/16 v1, 0xa

    invoke-virtual {p0, v0, v1, v2}, Lcom/baidu/launcher/ui/homeview/HomeView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 146
    return-void
.end method

.method private removeHomeData(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/data/item/HomeItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1416
    .local p1, changeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/HomeItemInfo;>;"
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v0, p1}, Lcom/baidu/launcher/ui/homeview/Workspace;->updateItemRemoved(Ljava/util/ArrayList;)V

    .line 1417
    return-void
.end method

.method private showProgessDialog()V
    .locals 3

    .prologue
    .line 1596
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 1597
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/HomeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 1599
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/HomeView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c02e2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1600
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1601
    return-void
.end method

.method private updateHomeData(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/data/item/HomeItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1420
    .local p1, changeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/HomeItemInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/data/item/HomeItemInfo;

    .line 1422
    .local v1, item:Lcom/baidu/launcher/data/item/HomeItemInfo;
    new-instance v2, Lcom/baidu/launcher/ui/homeview/HomeView$9;

    invoke-direct {v2, p0, v1}, Lcom/baidu/launcher/ui/homeview/HomeView$9;-><init>(Lcom/baidu/launcher/ui/homeview/HomeView;Lcom/baidu/launcher/data/item/HomeItemInfo;)V

    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/homeview/HomeView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1443
    .end local v1           #item:Lcom/baidu/launcher/data/item/HomeItemInfo;
    :cond_0
    return-void
.end method


# virtual methods
.method public addAppWidget(Landroid/appwidget/AppWidgetProviderInfo;I[I)V
    .locals 10
    .parameter "widgetInfo"
    .parameter "screen"
    .parameter "position"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 840
    const/4 v1, -0x1

    .line 841
    .local v1, appWidgetId:I
    iget-object v6, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v6}, Lcom/baidu/launcher/ui/logic/ViewManager;->getAppWidgetHost()Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHost;

    move-result-object v4

    .line 842
    .local v4, widgetHost:Landroid/appwidget/AppWidgetHost;
    iget-object v6, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v5

    .line 844
    .local v5, widgetManager:Landroid/appwidget/AppWidgetManager;
    :try_start_0
    invoke-virtual {v4}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v1

    .line 845
    iget-object v6, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v5, v1, v6}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 849
    const/4 v6, 0x4

    new-array v6, v6, [I

    aput v1, v6, v7

    aput p2, v6, v8

    aget v7, p3, v7

    aput v7, v6, v9

    const/4 v7, 0x3

    aget v8, p3, v8

    aput v8, v6, v7

    iput-object v6, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->addItemLocation:[I

    .line 850
    invoke-virtual {v5, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 852
    .local v0, appWidget:Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v6, v0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v6, :cond_0

    .line 853
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.appwidget.action.APPWIDGET_CONFIGURE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 854
    .local v3, intent:Landroid/content/Intent;
    iget-object v6, v0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 855
    const-string v6, "appWidgetId"

    invoke-virtual {v3, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 856
    iget-object v6, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mContext:Landroid/content/Context;

    check-cast v6, Lcom/baidu/launcher/app/Launcher;

    invoke-virtual {v6, v3, v9}, Lcom/baidu/launcher/app/Launcher;->startActivityForResultSafely(Landroid/content/Intent;I)V

    .line 861
    .end local v0           #appWidget:Landroid/appwidget/AppWidgetProviderInfo;
    .end local v3           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 846
    :catch_0
    move-exception v2

    .line 847
    .local v2, ex:Ljava/lang/RuntimeException;
    goto :goto_0

    .line 859
    .end local v2           #ex:Ljava/lang/RuntimeException;
    .restart local v0       #appWidget:Landroid/appwidget/AppWidgetProviderInfo;
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/HomeView;->completeAddAppWidget()V

    goto :goto_0
.end method

.method public addApplication(Lcom/baidu/launcher/data/item/ListAppInfo;III)V
    .locals 10
    .parameter "app"
    .parameter "screen"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    const/4 v9, 0x1

    .line 732
    new-instance v1, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    invoke-direct {v1, p1}, Lcom/baidu/launcher/data/item/HomeShortcutInfo;-><init>(Lcom/baidu/launcher/data/item/ListAppInfo;)V

    .line 733
    .local v1, shortcut:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/launcher/data/HomeDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/HomeDataManager;

    move-result-object v0

    const-wide/16 v2, -0x64

    const/4 v7, 0x0

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v7}, Lcom/baidu/launcher/data/HomeDataManager;->addItemToDatabase(Lcom/baidu/launcher/data/item/HomeItemInfo;JIIIZ)V

    .line 736
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/homeview/HomeView;->createShortcut(Lcom/baidu/launcher/data/item/HomeShortcutInfo;)Landroid/view/View;

    move-result-object v3

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, v9

    move v8, v9

    invoke-virtual/range {v2 .. v8}, Lcom/baidu/launcher/ui/homeview/Workspace;->addInScreen(Landroid/view/View;IIIII)V

    .line 738
    return-void
.end method

.method public addBaiduWidget(Lcom/baidu/launcher/data/item/ListWidgetInfo;I[I)V
    .locals 16
    .parameter "lwi"
    .parameter "screen"
    .parameter "position"

    .prologue
    .line 777
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/baidu/launcher/ui/homeview/HomeView;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;

    .line 779
    .local v15, workspace:Lcom/baidu/launcher/ui/homeview/Workspace;
    if-nez p1, :cond_0

    .line 824
    :goto_0
    return-void

    .line 782
    :cond_0
    :try_start_0
    new-instance v11, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/ui/homeview/HomeView;->mContext:Landroid/content/Context;

    invoke-direct {v11, v1}, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;-><init>(Landroid/content/Context;)V

    .line 783
    .local v11, bwh:Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;
    new-instance v2, Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;

    move-object/from16 v0, p1

    iget v1, v0, Lcom/baidu/launcher/data/item/ListWidgetInfo;->widgetID:I

    invoke-direct {v2, v1}, Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;-><init>(I)V

    .line 784
    .local v2, hbwi:Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/baidu/launcher/data/item/ListWidgetInfo;->dependentOn:Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 785
    .local v12, dependent:Landroid/content/ComponentName;
    const/4 v14, 0x0

    .line 786
    .local v14, empty:Z
    if-eqz v12, :cond_1

    .line 788
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/ui/homeview/HomeView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v12, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 794
    :cond_1
    :goto_1
    :try_start_2
    iput-boolean v14, v2, Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;->empty:Z

    .line 795
    const-wide/16 v3, -0x64

    iput-wide v3, v2, Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;->container:J

    .line 796
    const/4 v1, 0x0

    aget v1, p3, v1

    iput v1, v2, Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;->cellX:I

    .line 797
    const/4 v1, 0x1

    aget v1, p3, v1

    iput v1, v2, Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;->cellY:I

    .line 798
    move/from16 v0, p2

    iput v0, v2, Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;->screen:I

    .line 799
    move-object/from16 v0, p1

    iget v1, v0, Lcom/baidu/launcher/data/item/ListWidgetInfo;->spanX:I

    iput v1, v2, Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;->spanX:I

    .line 800
    move-object/from16 v0, p1

    iget v1, v0, Lcom/baidu/launcher/data/item/ListWidgetInfo;->spanY:I

    iput v1, v2, Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;->spanY:I

    .line 801
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/ui/homeview/HomeView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/launcher/data/HomeDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/HomeDataManager;

    move-result-object v1

    const-wide/16 v3, -0x64

    const/4 v5, 0x0

    aget v6, p3, v5

    const/4 v5, 0x1

    aget v7, p3, v5

    const/4 v8, 0x0

    move/from16 v5, p2

    invoke-virtual/range {v1 .. v8}, Lcom/baidu/launcher/data/HomeDataManager;->addItemToDatabase(Lcom/baidu/launcher/data/item/HomeItemInfo;JIIIZ)V

    .line 805
    if-eqz v14, :cond_2

    .line 806
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/ui/homeview/HomeView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    move-object/from16 v0, p1

    iget v3, v0, Lcom/baidu/launcher/data/item/ListWidgetInfo;->emptyLayout:I

    invoke-virtual {v1, v3, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 814
    :goto_2
    invoke-virtual {v11, v2}, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 815
    const/4 v1, 0x0

    aget v6, p3, v1

    const/4 v1, 0x1

    aget v7, p3, v1

    move-object/from16 v0, p1

    iget v8, v0, Lcom/baidu/launcher/data/item/ListWidgetInfo;->spanX:I

    move-object/from16 v0, p1

    iget v9, v0, Lcom/baidu/launcher/data/item/ListWidgetInfo;->spanY:I

    const/4 v10, 0x0

    move-object v3, v15

    move-object v4, v11

    move/from16 v5, p2

    invoke-virtual/range {v3 .. v10}, Lcom/baidu/launcher/ui/homeview/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    .line 817
    invoke-virtual {v11}, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;->onAdd()V

    .line 818
    move/from16 v0, p2

    invoke-virtual {v11, v0}, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;->onWhichScreen(I)V

    .line 819
    invoke-virtual {v15}, Lcom/baidu/launcher/ui/homeview/Workspace;->requestLayout()V

    goto/16 :goto_0

    .line 821
    .end local v2           #hbwi:Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;
    .end local v11           #bwh:Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;
    .end local v12           #dependent:Landroid/content/ComponentName;
    .end local v14           #empty:Z
    :catch_0
    move-exception v13

    .line 822
    .local v13, e:Ljava/lang/Exception;
    goto/16 :goto_0

    .line 789
    .end local v13           #e:Ljava/lang/Exception;
    .restart local v2       #hbwi:Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;
    .restart local v11       #bwh:Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;
    .restart local v12       #dependent:Landroid/content/ComponentName;
    .restart local v14       #empty:Z
    :catch_1
    move-exception v13

    .line 790
    .local v13, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v14, 0x1

    goto :goto_1

    .line 809
    .end local v13           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/ui/homeview/HomeView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    move-object/from16 v0, p1

    iget v3, v0, Lcom/baidu/launcher/data/item/ListWidgetInfo;->layout:I

    invoke-virtual {v1, v3, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 811
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/ui/homeview/HomeView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/launcher/ubc/UBC;->reportSearchAdd(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method

.method public addFolder(Lcom/baidu/launcher/data/item/IFolderInfo;III)V
    .locals 9
    .parameter "folder"
    .parameter "screen"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 741
    instance-of v0, p1, Lcom/baidu/launcher/data/item/ListFolderInfo;

    if-eqz v0, :cond_1

    .line 742
    new-instance v1, Lcom/baidu/launcher/data/item/HomeFolderInfo;

    check-cast p1, Lcom/baidu/launcher/data/item/ListFolderInfo;

    .end local p1
    invoke-direct {v1, p1}, Lcom/baidu/launcher/data/item/HomeFolderInfo;-><init>(Lcom/baidu/launcher/data/item/ListFolderInfo;)V

    .line 743
    .local v1, folderInfo:Lcom/baidu/launcher/data/item/HomeFolderInfo;
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/launcher/data/HomeDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/HomeDataManager;

    move-result-object v0

    const-wide/16 v2, -0x64

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/launcher/data/HomeDataManager;->addFolderInDatabase(Lcom/baidu/launcher/data/item/HomeFolderInfo;JIII)V

    .line 747
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/homeview/HomeView;->createFolder(Lcom/baidu/launcher/data/item/HomeFolderInfo;)Landroid/view/View;

    move-result-object v3

    const/4 v7, 0x1

    const/4 v8, 0x1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v2 .. v8}, Lcom/baidu/launcher/ui/homeview/Workspace;->addInScreen(Landroid/view/View;IIIII)V

    .line 757
    .end local v1           #folderInfo:Lcom/baidu/launcher/data/item/HomeFolderInfo;
    :cond_0
    :goto_0
    return-void

    .line 749
    .restart local p1
    :cond_1
    instance-of v0, p1, Lcom/baidu/launcher/data/item/HomeItemInfo;

    if-eqz v0, :cond_0

    .line 750
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/launcher/data/HomeDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/HomeDataManager;

    move-result-object v2

    move-object v3, p1

    check-cast v3, Lcom/baidu/launcher/data/item/HomeFolderInfo;

    const-wide/16 v4, -0x64

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-virtual/range {v2 .. v8}, Lcom/baidu/launcher/data/HomeDataManager;->addFolderInDatabase(Lcom/baidu/launcher/data/item/HomeFolderInfo;JIII)V

    .line 754
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;

    check-cast p1, Lcom/baidu/launcher/data/item/HomeFolderInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/homeview/HomeView;->createFolder(Lcom/baidu/launcher/data/item/HomeFolderInfo;)Landroid/view/View;

    move-result-object v3

    const/4 v7, 0x1

    const/4 v8, 0x1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v2 .. v8}, Lcom/baidu/launcher/ui/homeview/Workspace;->addInScreen(Landroid/view/View;IIIII)V

    goto :goto_0
.end method

.method public addShortcut(Landroid/content/pm/ResolveInfo;III)V
    .locals 5
    .parameter "info"
    .parameter "screen"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    const/4 v4, 0x1

    .line 760
    const/4 v1, 0x4

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, -0x1

    aput v3, v1, v2

    aput p2, v1, v4

    const/4 v2, 0x2

    aput p3, v1, v2

    const/4 v2, 0x3

    aput p4, v1, v2

    iput-object v1, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->addItemLocation:[I

    .line 763
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 764
    .local v0, createShortcutIntent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 766
    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v1, v0, v4}, Lcom/baidu/launcher/ui/logic/ViewManager;->requestPick(Landroid/content/Intent;I)V

    .line 767
    return-void
.end method

.method public bindAppWidget(Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;)V
    .locals 12
    .parameter "item"

    .prologue
    .line 563
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;

    .line 564
    .local v0, workspace:Lcom/baidu/launcher/ui/homeview/Workspace;
    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    if-nez v1, :cond_1

    .line 588
    :cond_0
    :goto_0
    return-void

    .line 565
    :cond_1
    iget v8, p1, Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;->appWidgetId:I

    .line 566
    .local v8, appWidgetId:I
    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v9

    .line 569
    .local v9, appWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;
    :try_start_0
    iget-object v1, v9, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;->packageName:Ljava/lang/String;

    .line 570
    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/logic/ViewManager;->getAppWidgetHost()Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHost;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v8, v9}, Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v1

    iput-object v1, p1, Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 573
    iget-object v1, p1, Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v1, v8, v9}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 574
    iget-object v1, p1, Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v1, p1}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 575
    iget-boolean v1, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mIsLandscape:Z

    if-eqz v1, :cond_2

    .line 576
    iget-object v1, v9, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    .line 577
    .local v10, clsname:Ljava/lang/String;
    sget-object v1, Lcom/baidu/launcher/utils/Constant;->mNeedChangeWidgetLayout:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 578
    iget-object v1, p1, Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    const/4 v2, 0x0

    const/16 v3, 0x14

    const/4 v4, 0x0

    const/16 v5, 0x23

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/appwidget/AppWidgetHostView;->setPadding(IIII)V

    .line 579
    iget-object v1, p1, Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetHostView;->requestLayout()V

    .line 583
    .end local v10           #clsname:Ljava/lang/String;
    :cond_2
    iget-object v1, p1, Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    iget v2, p1, Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;->screen:I

    iget v3, p1, Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;->cellX:I

    iget v4, p1, Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;->cellY:I

    iget v5, p1, Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;->spanX:I

    iget v6, p1, Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;->spanY:I

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/baidu/launcher/ui/homeview/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 585
    :catch_0
    move-exception v11

    .line 586
    .local v11, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public bindBaiduWidget(Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;)V
    .locals 11
    .parameter "item"

    .prologue
    .line 591
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;

    .line 593
    .local v0, workspace:Lcom/baidu/launcher/ui/homeview/Workspace;
    iget v8, p1, Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;->baiduWidgetId:I

    .line 595
    .local v8, baiduWidgetId:I
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/launcher/data/AppsDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/AppsDataManager;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/baidu/launcher/data/AppsDataManager;->getWidgetByID(I)Lcom/baidu/launcher/data/item/ListWidgetInfo;

    move-result-object v9

    .line 597
    .local v9, bwi:Lcom/baidu/launcher/data/item/ListWidgetInfo;
    if-nez v9, :cond_0

    .line 613
    :goto_0
    return-void

    .line 600
    :cond_0
    :try_start_0
    new-instance v1, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;

    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;-><init>(Landroid/content/Context;)V

    .line 601
    .local v1, bwh:Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;
    invoke-virtual {v1, p1}, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 602
    iget-boolean v2, p1, Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;->empty:Z

    if-eqz v2, :cond_1

    .line 603
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget v3, v9, Lcom/baidu/launcher/data/item/ListWidgetInfo;->emptyLayout:I

    invoke-virtual {v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 607
    :goto_1
    iget v2, p1, Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;->screen:I

    iget v3, p1, Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;->cellX:I

    iget v4, p1, Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;->cellY:I

    iget v5, v9, Lcom/baidu/launcher/data/item/ListWidgetInfo;->spanX:I

    iget v6, v9, Lcom/baidu/launcher/data/item/ListWidgetInfo;->spanY:I

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/baidu/launcher/ui/homeview/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    .line 608
    invoke-virtual {v1}, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;->onBind()V

    .line 609
    iget v2, p1, Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;->screen:I

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;->onWhichScreen(I)V

    goto :goto_0

    .line 610
    .end local v1           #bwh:Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;
    :catch_0
    move-exception v10

    .line 611
    .local v10, e:Ljava/lang/Exception;
    goto :goto_0

    .line 605
    .end local v10           #e:Ljava/lang/Exception;
    .restart local v1       #bwh:Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;
    :cond_1
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget v3, v9, Lcom/baidu/launcher/data/item/ListWidgetInfo;->layout:I

    invoke-virtual {v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method public cancleAddShortcut()V
    .locals 1

    .prologue
    .line 728
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/logic/ViewManager;->getEditView()Lcom/baidu/launcher/ui/editview/EditView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/editview/EditView;->cancleAddShortcut()V

    .line 729
    return-void
.end method

.method public completeAddAppWidget()V
    .locals 15

    .prologue
    .line 864
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->addItemLocation:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->addItemLocation:[I

    array-length v0, v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    .line 900
    :cond_0
    :goto_0
    return-void

    .line 867
    :cond_1
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/logic/ViewManager;->getAppWidgetHost()Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHost;

    move-result-object v13

    .line 868
    .local v13, widgetHost:Landroid/appwidget/AppWidgetHost;
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v14

    .line 869
    .local v14, widgetManager:Landroid/appwidget/AppWidgetManager;
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->addItemLocation:[I

    const/4 v2, 0x0

    aget v0, v0, v2

    invoke-virtual {v14, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v10

    .line 870
    .local v10, appWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;
    new-instance v1, Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;

    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->addItemLocation:[I

    const/4 v2, 0x0

    aget v0, v0, v2

    invoke-direct {v1, v0}, Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;-><init>(I)V

    .line 871
    .local v1, launcherInfo:Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mContext:Landroid/content/Context;

    invoke-static {v0, v10}, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->getSpanForWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)[I

    move-result-object v12

    .line 872
    .local v12, spans:[I
    const/4 v0, 0x0

    aget v0, v12, v0

    iput v0, v1, Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;->spanX:I

    .line 873
    const/4 v0, 0x1

    aget v0, v12, v0

    iput v0, v1, Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;->spanY:I

    .line 875
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/launcher/data/HomeDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/HomeDataManager;

    move-result-object v0

    const-wide/16 v2, -0x64

    iget-object v4, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->addItemLocation:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    iget-object v5, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->addItemLocation:[I

    const/4 v6, 0x2

    aget v5, v5, v6

    iget-object v6, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->addItemLocation:[I

    const/4 v7, 0x3

    aget v6, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/baidu/launcher/data/HomeDataManager;->addItemToDatabase(Lcom/baidu/launcher/data/item/HomeItemInfo;JIIIZ)V

    .line 879
    iget-object v0, v10, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;->packageName:Ljava/lang/String;

    .line 880
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->addItemLocation:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v13, v0, v2, v10}, Landroid/appwidget/AppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 881
    iget-object v0, v1, Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->addItemLocation:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v0, v2, v10}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 882
    iget-object v0, v1, Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 883
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;

    iget-object v3, v1, Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->addItemLocation:[I

    const/4 v4, 0x1

    aget v4, v0, v4

    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->addItemLocation:[I

    const/4 v5, 0x2

    aget v5, v0, v5

    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->addItemLocation:[I

    const/4 v6, 0x3

    aget v6, v0, v6

    iget v7, v1, Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;->spanX:I

    iget v8, v1, Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;->spanY:I

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/baidu/launcher/ui/homeview/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    .line 887
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mIsLandscape:Z

    if-eqz v0, :cond_3

    .line 888
    iget-object v0, v10, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v11

    .line 889
    .local v11, clsname:Ljava/lang/String;
    sget-object v0, Lcom/baidu/launcher/utils/Constant;->mNeedChangeWidgetLayout:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 890
    iget-object v0, v1, Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    const/4 v2, 0x0

    const/16 v3, 0x14

    const/4 v4, 0x0

    const/16 v5, 0x23

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/appwidget/AppWidgetHostView;->setPadding(IIII)V

    .line 891
    iget-object v0, v1, Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHostView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 892
    iget-object v0, v1, Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHostView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->requestLayout()V

    .line 894
    :cond_2
    iget-object v0, v1, Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHostView;->requestLayout()V

    .line 895
    iget-object v0, v1, Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHostView;->postInvalidate()V

    .line 896
    iget-object v0, v1, Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHostView;->invalidate()V

    .line 899
    .end local v11           #clsname:Ljava/lang/String;
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->addItemLocation:[I

    goto/16 :goto_0
.end method

.method public completeAddAppWidget(Landroid/content/Intent;)V
    .locals 19
    .parameter "data"

    .prologue
    .line 906
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v16

    .line 907
    .local v16, extras:Landroid/os/Bundle;
    const-string v3, "appWidgetId"

    const/4 v5, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 908
    .local v13, appWidgetId:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/homeview/HomeView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v3}, Lcom/baidu/launcher/ui/logic/ViewManager;->getEditView()Lcom/baidu/launcher/ui/editview/EditView;

    move-result-object v15

    .line 909
    .local v15, editView:Lcom/baidu/launcher/ui/editview/EditView;
    invoke-virtual {v15}, Lcom/baidu/launcher/ui/editview/EditView;->getCurrentPage()I

    move-result v7

    .line 911
    .local v7, screen:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/homeview/HomeView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    invoke-virtual {v3, v13}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v14

    .line 915
    .local v14, appWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/homeview/HomeView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v14}, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->getSpanForWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)[I

    move-result-object v17

    .line 918
    .local v17, spans:[I
    const/4 v3, 0x2

    new-array v0, v3, [I

    move-object/from16 v18, v0

    .line 920
    .local v18, xy:[I
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-direct {v0, v7, v1, v2}, Lcom/baidu/launcher/ui/homeview/HomeView;->findScreenForDrop(I[I[I)I

    move-result v7

    .line 922
    const/4 v3, -0x1

    if-ne v7, v3, :cond_1

    .line 923
    const/4 v3, -0x1

    if-eq v13, v3, :cond_0

    .line 924
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/homeview/HomeView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v3}, Lcom/baidu/launcher/ui/logic/ViewManager;->getAppWidgetHost()Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHost;

    move-result-object v3

    invoke-virtual {v3, v13}, Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    .line 925
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/homeview/HomeView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f0c004e

    const/4 v6, 0x1

    invoke-static {v3, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 948
    :goto_0
    return-void

    .line 928
    :cond_1
    invoke-virtual {v15, v7}, Lcom/baidu/launcher/ui/editview/EditView;->changeDropThumbnial(I)V

    .line 930
    new-instance v4, Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;

    invoke-direct {v4, v13}, Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;-><init>(I)V

    .line 931
    .local v4, launcherInfo:Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;
    const/4 v3, 0x0

    aget v3, v17, v3

    iput v3, v4, Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;->spanX:I

    .line 932
    const/4 v3, 0x1

    aget v3, v17, v3

    iput v3, v4, Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;->spanY:I

    .line 934
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/homeview/HomeView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/baidu/launcher/data/HomeDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/HomeDataManager;

    move-result-object v3

    const-wide/16 v5, -0x64

    const/4 v8, 0x0

    aget v8, v18, v8

    const/4 v9, 0x1

    aget v9, v18, v9

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Lcom/baidu/launcher/data/HomeDataManager;->addItemToDatabase(Lcom/baidu/launcher/data/item/HomeItemInfo;JIIIZ)V

    .line 938
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/homeview/HomeView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v3}, Lcom/baidu/launcher/ui/logic/ViewManager;->getAppWidgetHost()Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHost;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/launcher/ui/homeview/HomeView;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5, v13, v14}, Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v3

    iput-object v3, v4, Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 941
    iget-object v3, v4, Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v3, v13, v14}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 942
    iget-object v3, v4, Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v3, v4}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 944
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/launcher/ui/homeview/HomeView;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;

    iget-object v6, v4, Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    const/4 v3, 0x0

    aget v8, v18, v3

    const/4 v3, 0x1

    aget v9, v18, v3

    iget v10, v4, Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;->spanX:I

    iget v11, v4, Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;->spanY:I

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Lcom/baidu/launcher/ui/homeview/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    goto :goto_0
.end method

.method public completeAddShortcut(Landroid/content/Intent;)V
    .locals 1
    .parameter "data"

    .prologue
    .line 724
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/logic/ViewManager;->getEditView()Lcom/baidu/launcher/ui/editview/EditView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/launcher/ui/editview/EditView;->completeAddShortcut(Landroid/content/Intent;)V

    .line 725
    return-void
.end method

.method public completeFillFolder(Lcom/baidu/launcher/data/item/IFolderInfo;Landroid/content/Intent;)V
    .locals 1
    .parameter "folder"
    .parameter "data"

    .prologue
    .line 1353
    new-instance v0, Lcom/baidu/launcher/ui/homeview/HomeView$7;

    invoke-direct {v0, p0, p1}, Lcom/baidu/launcher/ui/homeview/HomeView$7;-><init>(Lcom/baidu/launcher/ui/homeview/HomeView;Lcom/baidu/launcher/data/item/IFolderInfo;)V

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/homeview/HomeView;->post(Ljava/lang/Runnable;)Z

    .line 1376
    return-void
.end method

.method public completePickAppWidget(Landroid/content/Intent;)V
    .locals 5
    .parameter "data"

    .prologue
    .line 1017
    const-string v3, "appWidgetId"

    const/4 v4, -0x1

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1018
    .local v2, widgetId:I
    iget-object v3, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 1021
    .local v0, appWidget:Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v3, v0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v3, :cond_0

    .line 1023
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.appwidget.action.APPWIDGET_CONFIGURE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1024
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, v0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1025
    const-string v3, "appWidgetId"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1027
    iget-object v3, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/baidu/launcher/app/Launcher;

    const/4 v4, 0x2

    invoke-virtual {v3, v1, v4}, Lcom/baidu/launcher/app/Launcher;->startActivityForResultSafely(Landroid/content/Intent;I)V

    .line 1033
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 1031
    :cond_0
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/homeview/HomeView;->completeAddAppWidget(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public createFolder(Lcom/baidu/launcher/data/item/HomeFolderInfo;)Landroid/view/View;
    .locals 5
    .parameter "info"

    .prologue
    .line 634
    const v2, 0x7f030057

    iget-object v3, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;

    iget-object v4, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v4}, Lcom/baidu/launcher/ui/homeview/Workspace;->getCurrentScreen()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v2, v3, v1, p1}, Lcom/baidu/launcher/ui/folder/FolderIcon;->fromXml(ILandroid/content/Context;Landroid/view/ViewGroup;Lcom/baidu/launcher/data/item/IFolderInfo;)Lcom/baidu/launcher/ui/folder/FolderIcon;

    move-result-object v0

    .line 635
    .local v0, folderIcon:Lcom/baidu/launcher/ui/folder/FolderIcon;
    sget-boolean v1, Lcom/baidu/launcher/utils/Utilities;->useShadow:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->show_icon_floor:Z

    if-eqz v1, :cond_0

    .line 636
    const v1, 0x7f020314

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/folder/FolderIcon;->setBackgroundResource(I)V

    .line 638
    :cond_0
    return-object v0
.end method

.method public createShortcut(ILandroid/view/ViewGroup;Lcom/baidu/launcher/data/item/HomeShortcutInfo;)Landroid/view/View;
    .locals 21
    .parameter "layoutResId"
    .parameter "parent"
    .parameter "info"

    .prologue
    .line 651
    move-object/from16 v0, p3

    iget v0, v0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->status:I

    move/from16 v17, v0

    const/16 v18, 0x5

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/homeview/HomeView;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v12

    .line 653
    .local v12, inflater:Landroid/view/LayoutInflater;
    const/16 v17, 0x0

    move/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, v17

    invoke-virtual {v12, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 654
    .local v8, favorite:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/homeview/HomeView;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 657
    .local v14, mPm:Landroid/content/pm/PackageManager;
    :try_start_0
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->intent:Landroid/content/Intent;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x2240

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    .line 662
    .local v15, packageInfo:Landroid/content/pm/PackageInfo;
    iget-object v0, v15, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .local v4, d:Landroid/graphics/drawable/Drawable;
    move-object v3, v4

    .line 663
    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    .line 664
    .local v3, bd:Landroid/graphics/drawable/BitmapDrawable;
    new-instance v13, Landroid/graphics/Matrix;

    invoke-direct {v13}, Landroid/graphics/Matrix;-><init>()V

    .line 665
    .local v13, mMatrix:Landroid/graphics/Matrix;
    invoke-static {}, Lcom/baidu/launcher/utils/Utilities;->getAppIconSize()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sget v18, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->iconScale:F

    mul-float v11, v17, v18

    .line 666
    .local v11, iconSize:F
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v17, v11, v17

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v18, v11, v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 667
    const/4 v9, 0x0

    .line 668
    .local v9, iconDrawable:Lcom/baidu/launcher/ui/common/FastBitmapDrawable;
    const/4 v10, 0x0

    .line 669
    .local v10, iconMap:Landroid/graphics/Bitmap;
    iget-object v0, v15, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "com.android.calendar"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 670
    invoke-static {}, Lcom/baidu/launcher/utils/Utilities;->getCurrentDay()I

    move-result v5

    .line 671
    .local v5, day:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/homeview/HomeView;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "ic_launcher_calendar_"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const-string v19, "drawable"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/homeview/HomeView;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v17 .. v20}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    .line 673
    .local v16, res:I
    if-lez v16, :cond_1

    .line 674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/homeview/HomeView;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/homeview/HomeView;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    iget-object v0, v15, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v17 .. v19}, Lcom/baidu/launcher/utils/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 683
    .end local v5           #day:I
    .end local v16           #res:I
    :goto_0
    new-instance v9, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;

    .end local v9           #iconDrawable:Lcom/baidu/launcher/ui/common/FastBitmapDrawable;
    sget v17, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->iconScale:F

    move/from16 v0, v17

    invoke-direct {v9, v10, v0}, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;F)V

    .line 684
    .restart local v9       #iconDrawable:Lcom/baidu/launcher/ui/common/FastBitmapDrawable;
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v8, v0, v9, v1, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 685
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 686
    move-object/from16 v0, p3

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 687
    invoke-static {}, Lcom/baidu/launcher/utils/EventNumberUtil;->getInstance()Lcom/baidu/launcher/utils/EventNumberUtil;

    move-result-object v7

    .line 688
    .local v7, enventNumberUtil:Lcom/baidu/launcher/utils/EventNumberUtil;
    move-object/from16 v0, p3

    invoke-virtual {v7, v0}, Lcom/baidu/launcher/utils/EventNumberUtil;->checkEventInfo(Lcom/baidu/launcher/data/item/BaseItemInfo;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 689
    invoke-virtual {v7, v8}, Lcom/baidu/launcher/utils/EventNumberUtil;->registerView(Landroid/view/View;)Z

    :cond_0
    move-object/from16 v17, v8

    .line 705
    .end local v3           #bd:Landroid/graphics/drawable/BitmapDrawable;
    .end local v4           #d:Landroid/graphics/drawable/Drawable;
    .end local v7           #enventNumberUtil:Lcom/baidu/launcher/utils/EventNumberUtil;
    .end local v9           #iconDrawable:Lcom/baidu/launcher/ui/common/FastBitmapDrawable;
    .end local v10           #iconMap:Landroid/graphics/Bitmap;
    .end local v11           #iconSize:F
    .end local v13           #mMatrix:Landroid/graphics/Matrix;
    .end local v14           #mPm:Landroid/content/pm/PackageManager;
    .end local v15           #packageInfo:Landroid/content/pm/PackageInfo;
    :goto_1
    return-object v17

    .line 659
    .restart local v14       #mPm:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v6

    .line 660
    .local v6, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/16 v17, 0x0

    goto :goto_1

    .line 677
    .end local v6           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3       #bd:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v4       #d:Landroid/graphics/drawable/Drawable;
    .restart local v5       #day:I
    .restart local v9       #iconDrawable:Lcom/baidu/launcher/ui/common/FastBitmapDrawable;
    .restart local v10       #iconMap:Landroid/graphics/Bitmap;
    .restart local v11       #iconSize:F
    .restart local v13       #mMatrix:Landroid/graphics/Matrix;
    .restart local v15       #packageInfo:Landroid/content/pm/PackageInfo;
    .restart local v16       #res:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/homeview/HomeView;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    iget-object v0, v15, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v4, v0, v1}, Lcom/baidu/launcher/utils/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v10

    goto :goto_0

    .line 680
    .end local v5           #day:I
    .end local v16           #res:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/homeview/HomeView;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    iget-object v0, v15, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v4, v0, v1}, Lcom/baidu/launcher/utils/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v10

    goto :goto_0

    .line 694
    .end local v3           #bd:Landroid/graphics/drawable/BitmapDrawable;
    .end local v4           #d:Landroid/graphics/drawable/Drawable;
    .end local v8           #favorite:Landroid/widget/TextView;
    .end local v9           #iconDrawable:Lcom/baidu/launcher/ui/common/FastBitmapDrawable;
    .end local v10           #iconMap:Landroid/graphics/Bitmap;
    .end local v11           #iconSize:F
    .end local v12           #inflater:Landroid/view/LayoutInflater;
    .end local v13           #mMatrix:Landroid/graphics/Matrix;
    .end local v14           #mPm:Landroid/content/pm/PackageManager;
    .end local v15           #packageInfo:Landroid/content/pm/PackageInfo;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/homeview/HomeView;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v12

    .line 695
    .restart local v12       #inflater:Landroid/view/LayoutInflater;
    const/16 v17, 0x0

    move/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, v17

    invoke-virtual {v12, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 696
    .restart local v8       #favorite:Landroid/widget/TextView;
    const/4 v9, 0x0

    .line 697
    .restart local v9       #iconDrawable:Lcom/baidu/launcher/ui/common/FastBitmapDrawable;
    new-instance v9, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;

    .end local v9           #iconDrawable:Lcom/baidu/launcher/ui/common/FastBitmapDrawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/homeview/HomeView;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->getIcon(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v17

    sget v18, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->iconScale:F

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v9, v0, v1}, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;F)V

    .line 698
    .restart local v9       #iconDrawable:Lcom/baidu/launcher/ui/common/FastBitmapDrawable;
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v8, v0, v9, v1, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 699
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 700
    move-object/from16 v0, p3

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 701
    invoke-static {}, Lcom/baidu/launcher/utils/EventNumberUtil;->getInstance()Lcom/baidu/launcher/utils/EventNumberUtil;

    move-result-object v7

    .line 702
    .restart local v7       #enventNumberUtil:Lcom/baidu/launcher/utils/EventNumberUtil;
    move-object/from16 v0, p3

    invoke-virtual {v7, v0}, Lcom/baidu/launcher/utils/EventNumberUtil;->checkEventInfo(Lcom/baidu/launcher/data/item/BaseItemInfo;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 703
    invoke-virtual {v7, v8}, Lcom/baidu/launcher/utils/EventNumberUtil;->registerView(Landroid/view/View;)Z

    :cond_4
    move-object/from16 v17, v8

    .line 705
    goto/16 :goto_1
.end method

.method public createShortcut(Lcom/baidu/launcher/data/item/HomeShortcutInfo;)Landroid/view/View;
    .locals 4
    .parameter "info"

    .prologue
    .line 622
    const v2, 0x7f030004

    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;

    iget-object v3, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v3}, Lcom/baidu/launcher/ui/homeview/Workspace;->getCurrentScreen()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {p0, v2, v1, p1}, Lcom/baidu/launcher/ui/homeview/HomeView;->createShortcut(ILandroid/view/ViewGroup;Lcom/baidu/launcher/data/item/HomeShortcutInfo;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/common/BubbleTextView;

    .line 627
    .local v0, tv:Lcom/baidu/launcher/ui/common/BubbleTextView;
    sget-boolean v1, Lcom/baidu/launcher/utils/Utilities;->useShadow:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->show_icon_floor:Z

    if-eqz v1, :cond_0

    .line 628
    const v1, 0x7f020314

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/common/BubbleTextView;->setBackgroundResource(I)V

    .line 630
    :cond_0
    return-object v0
.end method

.method public deleteHomeItem(Lcom/baidu/launcher/ui/dragdrop/DragSource;Landroid/view/View;Lcom/baidu/launcher/data/item/HomeItemInfo;)V
    .locals 12
    .parameter "source"
    .parameter "deleteView"
    .parameter "dragInfo"

    .prologue
    const/4 v5, -0x1

    .line 1288
    if-eqz p2, :cond_3

    .line 1290
    instance-of v0, p3, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    if-eqz v0, :cond_5

    .line 1291
    instance-of v0, p1, Lcom/baidu/launcher/ui/folder/UserFolder;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 1292
    check-cast v0, Lcom/baidu/launcher/ui/folder/UserFolder;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/folder/UserFolder;->getInfo()Lcom/baidu/launcher/data/item/IFolderInfo;

    move-result-object v9

    .line 1293
    .local v9, info:Lcom/baidu/launcher/data/item/IFolderInfo;
    invoke-interface {v9, p3}, Lcom/baidu/launcher/data/item/IFolderInfo;->remove(Lcom/baidu/launcher/data/item/BaseItemInfo;)V

    .line 1296
    .end local v9           #info:Lcom/baidu/launcher/data/item/IFolderInfo;
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/launcher/data/HomeDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/HomeDataManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/baidu/launcher/data/HomeDataManager;->deleteItemFromDatabase(Lcom/baidu/launcher/data/item/HomeItemInfo;)V

    move-object v0, p3

    .line 1299
    check-cast v0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    iget v0, v0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->screen:I

    if-nez v0, :cond_4

    instance-of v0, p1, Lcom/baidu/launcher/ui/folder/UserFolder;

    if-nez v0, :cond_4

    move-object v0, p3

    .line 1300
    check-cast v0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    iget-object v0, v0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 1301
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/HomeView;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v0, p3

    check-cast v0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    iget-object v0, v0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->intent:Landroid/content/Intent;

    invoke-static {v1, v0}, Lcom/baidu/launcher/ubc/UBCMetric;->deleteShortcutFromDock(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1319
    :cond_1
    :goto_0
    invoke-static {}, Lcom/baidu/launcher/utils/EventNumberUtil;->getInstance()Lcom/baidu/launcher/utils/EventNumberUtil;

    move-result-object v8

    .line 1320
    .local v8, enventNumberUtil:Lcom/baidu/launcher/utils/EventNumberUtil;
    invoke-virtual {v8, p3}, Lcom/baidu/launcher/utils/EventNumberUtil;->checkEventInfo(Lcom/baidu/launcher/data/item/BaseItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1321
    invoke-virtual {v8, p2}, Lcom/baidu/launcher/utils/EventNumberUtil;->unregisterView(Landroid/view/View;)Z

    .line 1324
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1325
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    .line 1327
    .local v11, viewGroup:Landroid/view/ViewGroup;
    instance-of v0, v11, Landroid/widget/AdapterView;

    if-eqz v0, :cond_8

    .line 1333
    .end local v8           #enventNumberUtil:Lcom/baidu/launcher/utils/EventNumberUtil;
    .end local v11           #viewGroup:Landroid/view/ViewGroup;
    :cond_3
    :goto_1
    return-void

    :cond_4
    move-object v0, p3

    .line 1303
    check-cast v0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    iget-object v0, v0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 1304
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/HomeView;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object v1, p3

    check-cast v1, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    iget-object v1, v1, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->intent:Landroid/content/Intent;

    move-object v2, p3

    check-cast v2, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    iget v2, v2, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->screen:I

    move-object v3, p3

    check-cast v3, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    iget v3, v3, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->cellX:I

    move-object v4, p3

    check-cast v4, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    iget v4, v4, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->cellY:I

    move v6, v5

    move v7, v5

    invoke-static/range {v0 .. v7}, Lcom/baidu/launcher/ubc/UBCMetric;->deleteShortcut(Landroid/content/Context;Landroid/content/Intent;IIIIII)V

    goto :goto_0

    .line 1307
    :cond_5
    instance-of v0, p3, Lcom/baidu/launcher/data/item/HomeFolderInfo;

    if-eqz v0, :cond_6

    move-object v10, p3

    .line 1309
    check-cast v10, Lcom/baidu/launcher/data/item/HomeFolderInfo;

    .line 1310
    .local v10, userFolderInfo:Lcom/baidu/launcher/data/item/HomeFolderInfo;
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/launcher/data/HomeDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/HomeDataManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v10, v1}, Lcom/baidu/launcher/data/HomeDataManager;->deleteFolderContentsFromDatabase(Lcom/baidu/launcher/data/item/HomeFolderInfo;Z)V

    goto :goto_0

    .line 1313
    .end local v10           #userFolderInfo:Lcom/baidu/launcher/data/item/HomeFolderInfo;
    :cond_6
    instance-of v0, p3, Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;

    if-eqz v0, :cond_7

    move-object v0, p2

    .line 1314
    check-cast v0, Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;->removeWidget()V

    goto :goto_0

    .line 1316
    :cond_7
    instance-of v0, p3, Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;

    if-eqz v0, :cond_1

    move-object v0, p2

    .line 1317
    check-cast v0, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;->onRemove()V

    goto :goto_0

    .line 1329
    .restart local v8       #enventNumberUtil:Lcom/baidu/launcher/utils/EventNumberUtil;
    .restart local v11       #viewGroup:Landroid/view/ViewGroup;
    :cond_8
    invoke-virtual {v11, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 1159
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    iput v0, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mEventSource:I

    .line 1160
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public getID()I
    .locals 1

    .prologue
    .line 302
    const v0, 0x7f08013a

    return v0
.end method

.method public hide(ZLjava/lang/Object;)V
    .locals 2
    .parameter "animate"
    .parameter "extra"

    .prologue
    .line 356
    if-eqz p1, :cond_0

    .line 357
    invoke-virtual {p0, p0}, Lcom/baidu/launcher/ui/homeview/HomeView;->outAnimation(Landroid/view/View;)V

    .line 362
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/HomeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->getInstance(Landroid/content/Context;)Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;

    move-result-object v0

    .line 363
    .local v0, floatWindowController:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;
    invoke-virtual {v0}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->homeViewHide()V

    .line 364
    return-void

    .line 359
    .end local v0           #floatWindowController:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;
    :cond_0
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/homeview/HomeView;->setVisibility(I)V

    goto :goto_0
.end method

.method public inAnimation(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x2

    .line 375
    const-string v4, "alpha"

    new-array v5, v6, [F

    fill-array-data v5, :array_0

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 376
    .local v0, alphaIn:Landroid/animation/PropertyValuesHolder;
    const-string v4, "scaleX"

    new-array v5, v6, [F

    fill-array-data v5, :array_1

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 377
    .local v2, scaleXIn:Landroid/animation/PropertyValuesHolder;
    const-string v4, "scaleY"

    new-array v5, v6, [F

    fill-array-data v5, :array_2

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 378
    .local v3, scaleYIn:Landroid/animation/PropertyValuesHolder;
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/HomeView;->isHardwareAccelerated()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 379
    const/4 v4, 0x0

    invoke-virtual {p0, v6, v4}, Lcom/baidu/launcher/ui/homeview/HomeView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 381
    :cond_0
    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    aput-object v3, v4, v6

    invoke-static {p0, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 383
    .local v1, inAnimation:Landroid/animation/ObjectAnimator;
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 384
    const-wide/16 v4, 0xfa

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 385
    new-instance v4, Lcom/baidu/launcher/ui/homeview/HomeView$4;

    invoke-direct {v4, p0, p1}, Lcom/baidu/launcher/ui/homeview/HomeView$4;-><init>(Lcom/baidu/launcher/ui/homeview/HomeView;Landroid/view/View;)V

    invoke-virtual {v1, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 391
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 392
    return-void

    .line 375
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 376
    :array_1
    .array-data 0x4
        0x9at 0x99t 0x99t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 377
    :array_2
    .array-data 0x4
        0x9at 0x99t 0x99t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 413
    const/4 v0, 0x0

    return v0
.end method

.method public isWorkSpaceLocked()Z
    .locals 1

    .prologue
    .line 1255
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mWorkspacedLocked:Z

    return v0
.end method

.method public onAppChanged(Ljava/util/ArrayList;I)V
    .locals 2
    .parameter
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/data/item/ListAppInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1505
    .local p1, changes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListAppInfo;>;"
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;

    new-instance v1, Lcom/baidu/launcher/ui/homeview/HomeView$11;

    invoke-direct {v1, p0, p2, p1}, Lcom/baidu/launcher/ui/homeview/HomeView$11;-><init>(Lcom/baidu/launcher/ui/homeview/HomeView;ILjava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 1540
    return-void
.end method

.method public onAppListDataChanged(Ljava/util/ArrayList;I)V
    .locals 0
    .parameter
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/data/item/ListItemInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1544
    .local p1, changes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListItemInfo;>;"
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1555
    const-string v2, "HomeView"

    const-string v3, "attached to windows"

    invoke-static {v2, v3}, Lcom/baidu/launcher/utils/LogEx;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1557
    sget-boolean v2, Lcom/baidu/launcher/app/LauncherApplication;->bLoadNewTheme:Z

    if-eqz v2, :cond_0

    .line 1558
    sput-boolean v1, Lcom/baidu/launcher/app/LauncherApplication;->bLoadNewTheme:Z

    .line 1560
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/HomeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/launcher/data/HomeDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/HomeDataManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/launcher/data/HomeDataManager;->clearHomeDataCache()V

    .line 1562
    :cond_0
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "key_load_favorites"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_2

    .line 1564
    .local v0, loadFavoritesFinish:Z
    :goto_0
    if-eqz v0, :cond_3

    .line 1565
    invoke-direct {p0}, Lcom/baidu/launcher/ui/homeview/HomeView;->loadView()V

    .line 1573
    :cond_1
    :goto_1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 1574
    return-void

    .end local v0           #loadFavoritesFinish:Z
    :cond_2
    move v0, v1

    .line 1562
    goto :goto_0

    .line 1567
    .restart local v0       #loadFavoritesFinish:Z
    :cond_3
    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->sSettingsObserver:Lcom/baidu/launcher/ui/homeview/HomeView$SettingsObserver;

    if-nez v1, :cond_1

    .line 1568
    new-instance v1, Lcom/baidu/launcher/ui/homeview/HomeView$SettingsObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iget-object v3, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/baidu/launcher/ui/homeview/HomeView$SettingsObserver;-><init>(Lcom/baidu/launcher/ui/homeview/HomeView;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->sSettingsObserver:Lcom/baidu/launcher/ui/homeview/HomeView$SettingsObserver;

    .line 1570
    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->sSettingsObserver:Lcom/baidu/launcher/ui/homeview/HomeView$SettingsObserver;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/homeview/HomeView$SettingsObserver;->startObserving()V

    goto :goto_1
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 1261
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 23
    .parameter "v"

    .prologue
    .line 1038
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 1039
    .local v10, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/homeview/HomeView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/baidu/launcher/ui/logic/ViewManager;->getAppListView()Lcom/baidu/launcher/ui/applistview/AppListView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/baidu/launcher/ui/applistview/AppListView;->getAppsView()Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getDisableHandler()Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$DisableHandler;

    move-result-object v6

    .line 1040
    .local v6, disableHandler:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$DisableHandler;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/homeview/HomeView;->mEventSource:I

    move/from16 v17, v0

    const v18, 0x100008

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 1154
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 1043
    .restart local p1
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/baidu/launcher/ui/homeview/HomeView;->isHomeViewClickable:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 1046
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v16

    .line 1047
    .local v16, tag:Ljava/lang/Object;
    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    move/from16 v17, v0

    if-eqz v17, :cond_b

    move-object/from16 v8, v16

    .line 1048
    check-cast v8, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    .line 1049
    .local v8, info:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    const/4 v14, 0x1

    .line 1051
    .local v14, presetRun:Z
    iget-boolean v0, v8, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->isPreset:Z

    move/from16 v17, v0

    if-eqz v17, :cond_6

    .line 1052
    const-string v17, "HomeView"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "preset status "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v8, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->status:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/baidu/launcher/utils/LogEx;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/homeview/HomeView;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v8}, Lcom/baidu/launcher/business/BusinessUtil;->BusinessIconClick(Landroid/content/Context;Lcom/baidu/launcher/data/item/BaseItemInfo;)Z

    move-result v14

    .line 1103
    :cond_2
    :goto_1
    if-eqz v14, :cond_0

    .line 1105
    const/4 v15, 0x1

    .line 1106
    .local v15, success:Z
    iget-object v0, v8, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->replacedIntent:Landroid/content/Intent;

    move-object/from16 v17, v0

    if-eqz v17, :cond_a

    iget v0, v8, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->eventCount:I

    move/from16 v17, v0

    if-eqz v17, :cond_a

    .line 1107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/homeview/HomeView;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    check-cast v17, Lcom/baidu/launcher/app/Launcher;

    iget-object v0, v8, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->replacedIntent:Landroid/content/Intent;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v8}, Lcom/baidu/launcher/app/Launcher;->startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z

    move-result v15

    .line 1118
    :goto_2
    const-string v12, ""

    .line 1120
    .local v12, packageName:Ljava/lang/String;
    iget-object v0, v8, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->intent:Landroid/content/Intent;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    iget-object v0, v8, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->intent:Landroid/content/Intent;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v17

    if-eqz v17, :cond_3

    iget-object v0, v8, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->intent:Landroid/content/Intent;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_3

    .line 1123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/homeview/HomeView;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    iget-object v0, v8, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->intent:Landroid/content/Intent;

    move-object/from16 v18, v0

    iget v0, v8, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->screen:I

    move/from16 v19, v0

    iget v0, v8, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->cellX:I

    move/from16 v20, v0

    iget v0, v8, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->cellY:I

    move/from16 v21, v0

    invoke-static/range {v17 .. v21}, Lcom/baidu/launcher/ubc/UBCMetric;->startAppFromShortcut(Landroid/content/Context;Landroid/content/Intent;III)V

    .line 1127
    :cond_3
    if-eqz v15, :cond_4

    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/baidu/launcher/ui/common/PressedView;

    move/from16 v17, v0

    if-eqz v17, :cond_4

    .line 1128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/homeview/HomeView;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    check-cast v17, Lcom/baidu/launcher/app/Launcher;

    check-cast p1, Lcom/baidu/launcher/ui/common/PressedView;

    .end local p1
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/app/Launcher;->setIconPressed(Lcom/baidu/launcher/ui/common/PressedView;)V

    .line 1131
    :cond_4
    if-eqz v15, :cond_0

    .line 1133
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/homeview/HomeView;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/baidu/launcher/data/AppsDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/AppsDataManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/baidu/launcher/data/AppsDataManager;->getAllApps()Ljava/util/ArrayList;

    move-result-object v5

    .line 1135
    .local v5, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListAppInfo;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/launcher/data/item/ListAppInfo;

    .line 1136
    .local v4, appInfo:Lcom/baidu/launcher/data/item/ListAppInfo;
    iget-object v0, v4, Lcom/baidu/launcher/data/item/ListAppInfo;->componentName:Landroid/content/ComponentName;

    move-object/from16 v17, v0

    iget-object v0, v8, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->intent:Landroid/content/Intent;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 1137
    iget-wide v0, v4, Lcom/baidu/launcher/data/item/ListAppInfo;->clickCount:J

    move-wide/from16 v17, v0

    const-wide/16 v19, 0x1

    add-long v17, v17, v19

    move-wide/from16 v0, v17

    iput-wide v0, v4, Lcom/baidu/launcher/data/item/ListAppInfo;->clickCount:J

    .line 1138
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/homeview/HomeView;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/baidu/launcher/data/AppsDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/AppsDataManager;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/baidu/launcher/data/AppsDataManager;->updateItemInDatabase(Lcom/baidu/launcher/data/item/ListItemInfo;)V

    .line 1140
    iget v0, v4, Lcom/baidu/launcher/data/item/ListAppInfo;->status:I

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 1141
    const/16 v17, 0x4

    move/from16 v0, v17

    iput v0, v4, Lcom/baidu/launcher/data/item/ListAppInfo;->status:I

    goto/16 :goto_0

    .line 1055
    .end local v4           #appInfo:Lcom/baidu/launcher/data/item/ListAppInfo;
    .end local v5           #apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListAppInfo;>;"
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v12           #packageName:Ljava/lang/String;
    .end local v15           #success:Z
    .restart local p1
    :cond_6
    iget-wide v0, v8, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->businessTableID:J

    move-wide/from16 v17, v0

    const-wide/16 v19, 0x0

    cmp-long v17, v17, v19

    if-ltz v17, :cond_9

    iget v0, v8, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->status:I

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 1057
    const/4 v12, 0x0

    .line 1059
    .restart local v12       #packageName:Ljava/lang/String;
    if-eqz v8, :cond_7

    iget-object v0, v8, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->intent:Landroid/content/Intent;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    iget-object v0, v8, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->intent:Landroid/content/Intent;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v17

    if-eqz v17, :cond_7

    iget-object v0, v8, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->intent:Landroid/content/Intent;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_7

    .line 1063
    iget-object v0, v8, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->intent:Landroid/content/Intent;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 1066
    :cond_7
    if-eqz v12, :cond_8

    .line 1067
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/homeview/HomeView;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    iget-object v0, v8, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    iget-wide v0, v8, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->businessTableID:J

    move-wide/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-wide/from16 v2, v19

    invoke-static {v0, v12, v1, v2, v3}, Lcom/baidu/launcher/business/BusinessUtil;->BusinessIconFirstRun(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1083
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/homeview/HomeView;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/baidu/launcher/data/HomeDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/HomeDataManager;

    move-result-object v17

    const/16 v18, 0x4

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v8, v1}, Lcom/baidu/launcher/data/HomeDataManager;->onBusinessAppStateChange(Lcom/baidu/launcher/data/item/HomeItemInfo;I)V

    .line 1087
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/homeview/HomeView;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    iget-object v0, v8, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    iget-wide v0, v8, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->businessTableID:J

    move-wide/from16 v19, v0

    invoke-static/range {v17 .. v20}, Lcom/baidu/launcher/ubc/UBC;->reportAppActivated(Landroid/content/Context;Ljava/lang/String;J)V

    .line 1089
    const-wide/16 v17, 0x1

    move-wide/from16 v0, v17

    iput-wide v0, v8, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->clickCount:J

    .line 1090
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/homeview/HomeView;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/baidu/launcher/data/HomeDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/HomeDataManager;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/baidu/launcher/data/HomeDataManager;->updateItemInDatabase(Lcom/baidu/launcher/data/item/HomeItemInfo;)V

    goto/16 :goto_1

    .line 1070
    :cond_8
    const-string v17, "HomeView"

    const-string v18, "item click package name null"

    invoke-static/range {v17 .. v18}, Lcom/baidu/launcher/utils/LogEx;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1091
    .end local v12           #packageName:Ljava/lang/String;
    :cond_9
    iget v0, v8, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->status:I

    move/from16 v17, v0

    const/16 v18, 0x5

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 1092
    iget-object v0, v8, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->intent:Landroid/content/Intent;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1093
    new-instance v9, Landroid/content/Intent;

    const-string v17, "com.baidu.appdisable.action.PACKAGES_DISABLE"

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1094
    .local v9, intent:Landroid/content/Intent;
    const-string v17, "PACKAGES_DISABLE_MAP"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1095
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/homeview/HomeView;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    check-cast v17, Lcom/baidu/launcher/app/Launcher;

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/baidu/launcher/app/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    .line 1096
    new-instance v11, Landroid/os/Message;

    invoke-direct {v11}, Landroid/os/Message;-><init>()V

    .line 1097
    .local v11, msg:Landroid/os/Message;
    const/16 v17, 0x1

    move/from16 v0, v17

    iput v0, v11, Landroid/os/Message;->what:I

    .line 1098
    iput-object v8, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1099
    invoke-virtual {v6, v11}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$DisableHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1110
    .end local v9           #intent:Landroid/content/Intent;
    .end local v11           #msg:Landroid/os/Message;
    .restart local v15       #success:Z
    :cond_a
    iget-object v9, v8, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->intent:Landroid/content/Intent;

    .line 1111
    .restart local v9       #intent:Landroid/content/Intent;
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v13, v0, [I

    .line 1112
    .local v13, pos:[I
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1113
    new-instance v17, Landroid/graphics/Rect;

    const/16 v18, 0x0

    aget v18, v13, v18

    const/16 v19, 0x1

    aget v19, v13, v19

    const/16 v20, 0x0

    aget v20, v13, v20

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v21

    add-int v20, v20, v21

    const/16 v21, 0x1

    aget v21, v13, v21

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v22

    add-int v21, v21, v22

    invoke-direct/range {v17 .. v21}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 1115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/homeview/HomeView;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    check-cast v17, Lcom/baidu/launcher/app/Launcher;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v9, v1}, Lcom/baidu/launcher/app/Launcher;->startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z

    move-result v15

    goto/16 :goto_2

    .line 1151
    .end local v8           #info:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    .end local v9           #intent:Landroid/content/Intent;
    .end local v13           #pos:[I
    .end local v14           #presetRun:Z
    .end local v15           #success:Z
    :cond_b
    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/baidu/launcher/data/item/HomeFolderInfo;

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 1152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/homeview/HomeView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    move-object/from16 v17, v0

    check-cast p1, Lcom/baidu/launcher/ui/folder/FolderIcon;

    .end local p1
    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/baidu/launcher/ui/logic/ViewManager;->openFolder(Lcom/baidu/launcher/ui/folder/FolderHolder;Z)V

    goto/16 :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1578
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1579
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->sSettingsObserver:Lcom/baidu/launcher/ui/homeview/HomeView$SettingsObserver;

    if-eqz v0, :cond_0

    .line 1580
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->sSettingsObserver:Lcom/baidu/launcher/ui/homeview/HomeView$SettingsObserver;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/HomeView$SettingsObserver;->stopObserving()V

    .line 1581
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->sSettingsObserver:Lcom/baidu/launcher/ui/homeview/HomeView$SettingsObserver;

    .line 1583
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 251
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 252
    const v2, 0x7f08013b

    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/homeview/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/ui/homeview/Workspace;

    iput-object v2, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;

    .line 253
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/baidu/launcher/ui/homeview/Workspace;->setHapticFeedbackEnabled(Z)V

    .line 256
    const v2, 0x7f08013c

    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/homeview/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/ui/homeview/Indicator;

    iput-object v2, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->indicator:Lcom/baidu/launcher/ui/homeview/Indicator;

    .line 257
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;

    iget-object v3, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->indicator:Lcom/baidu/launcher/ui/homeview/Indicator;

    invoke-virtual {v2, v3}, Lcom/baidu/launcher/ui/homeview/Workspace;->setIndicator(Lcom/baidu/launcher/ui/homeview/Indicator;)V

    .line 258
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->indicator:Lcom/baidu/launcher/ui/homeview/Indicator;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/baidu/launcher/ui/homeview/Indicator;->enableBulletinMode(Z)V

    .line 260
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 262
    .local v1, inflater:Landroid/view/LayoutInflater;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v2, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->screenCount:I

    if-ge v0, v2, :cond_1

    .line 263
    if-nez v0, :cond_0

    .line 264
    const v2, 0x7f03003c

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/baidu/bulletin/ui/BulletinLayout;

    iput-object v2, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->bulletinLayout:Lcom/baidu/bulletin/ui/BulletinLayout;

    .line 266
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->bulletinLayout:Lcom/baidu/bulletin/ui/BulletinLayout;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/baidu/bulletin/ui/BulletinLayout;->setVisibility(I)V

    .line 267
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;

    iget-object v3, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->bulletinLayout:Lcom/baidu/bulletin/ui/BulletinLayout;

    invoke-virtual {v2, v3}, Lcom/baidu/launcher/ui/homeview/Workspace;->addView(Landroid/view/View;)V

    .line 268
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->bulletinLayout:Lcom/baidu/bulletin/ui/BulletinLayout;

    invoke-static {v2}, Lcom/baidu/launcher/app/Launcher;->setBulletinLayout(Lcom/baidu/bulletin/ui/BulletinLayout;)V

    .line 262
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 271
    :cond_0
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;

    const v3, 0x7f0300d3

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/launcher/ui/homeview/Workspace;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 275
    :cond_1
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v2, p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v2, p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 278
    const v2, 0x7f08013d

    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/homeview/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/ui/homeview/DockBar;

    iput-object v2, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mDockBar:Lcom/baidu/launcher/ui/homeview/DockBar;

    .line 279
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;

    iget-object v3, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mDockBar:Lcom/baidu/launcher/ui/homeview/DockBar;

    invoke-virtual {v2, v3}, Lcom/baidu/launcher/ui/homeview/Workspace;->setDockbar(Landroid/view/View;)V

    .line 280
    const-string v2, "HomeView"

    const-string v3, "HomeView LayoutInflater complete"

    invoke-static {v2, v3}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    new-instance v2, Lcom/baidu/launcher/ui/homeview/HomeView$2;

    invoke-direct {v2, p0}, Lcom/baidu/launcher/ui/homeview/HomeView$2;-><init>(Lcom/baidu/launcher/ui/homeview/HomeView;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {p0, v2, v3, v4}, Lcom/baidu/launcher/ui/homeview/HomeView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 291
    return-void
.end method

.method public onFolderChanged(Ljava/util/ArrayList;I)V
    .locals 0
    .parameter
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/data/item/ListItemInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1593
    .local p1, changes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListItemInfo;>;"
    return-void
.end method

.method public onHomeDataAppUpdate(Ljava/lang/String;I)V
    .locals 1
    .parameter "packageName"
    .parameter "state"

    .prologue
    .line 1380
    new-instance v0, Lcom/baidu/launcher/ui/homeview/HomeView$8;

    invoke-direct {v0, p0, p1, p2}, Lcom/baidu/launcher/ui/homeview/HomeView$8;-><init>(Lcom/baidu/launcher/ui/homeview/HomeView;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/homeview/HomeView;->post(Ljava/lang/Runnable;)Z

    .line 1387
    return-void
.end method

.method public onHomeDateChanged(Ljava/util/ArrayList;I)V
    .locals 3
    .parameter
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/data/item/HomeItemInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1391
    .local p1, changeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/HomeItemInfo;>;"
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mDataLoaded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mWorkspacedLocked:Z

    if-eqz v0, :cond_1

    .line 1392
    :cond_0
    const-string v0, "HomeView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHomeDateChanged mDataLoaded = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mDataLoaded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mWorkspacedLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1412
    :goto_0
    return-void

    .line 1395
    :cond_1
    const-string v0, "HomeView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHomeDateChanged = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1397
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 1400
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/homeview/HomeView;->addHomeData(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1404
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/homeview/HomeView;->removeHomeData(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1408
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/homeview/HomeView;->updateHomeData(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1397
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onHomeViewDataChanged()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1548
    sput-boolean v2, Lcom/baidu/launcher/app/LauncherApplication;->bLoadNewTheme:Z

    .line 1549
    new-instance v0, Lcom/baidu/launcher/ui/homeview/HomeView$HomeDataLoader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/baidu/launcher/ui/homeview/HomeView$HomeDataLoader;-><init>(Lcom/baidu/launcher/ui/homeview/HomeView;Lcom/baidu/launcher/ui/homeview/HomeView$1;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/homeview/HomeView$HomeDataLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1550
    return-void
.end method

.method public onHomeViewReflash()V
    .locals 2

    .prologue
    .line 1586
    new-instance v0, Lcom/baidu/launcher/ui/homeview/HomeView$HomeDataLoader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/baidu/launcher/ui/homeview/HomeView$HomeDataLoader;-><init>(Lcom/baidu/launcher/ui/homeview/HomeView;Lcom/baidu/launcher/ui/homeview/HomeView$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/homeview/HomeView$HomeDataLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1587
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 11
    .parameter "v"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 1165
    iget v4, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mEventSource:I

    const v5, 0x100008

    if-ne v4, v5, :cond_1

    .line 1251
    :cond_0
    :goto_0
    return v9

    .line 1168
    :cond_1
    iget-object v4, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v4}, Lcom/baidu/launcher/ui/logic/ViewManager;->getDragController()Lcom/baidu/launcher/ui/dragdrop/DragController;

    move-result-object v1

    .line 1169
    .local v1, dragController:Lcom/baidu/launcher/ui/dragdrop/DragController;
    invoke-virtual {v1}, Lcom/baidu/launcher/ui/dragdrop/DragController;->getDockRegion()Landroid/graphics/RectF;

    move-result-object v4

    if-nez v4, :cond_2

    .line 1170
    const/4 v4, 0x2

    new-array v2, v4, [I

    .line 1171
    .local v2, location:[I
    iget-object v4, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mDockBar:Lcom/baidu/launcher/ui/homeview/DockBar;

    invoke-virtual {v4, v2}, Lcom/baidu/launcher/ui/homeview/DockBar;->getLocationOnScreen([I)V

    .line 1172
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 1173
    .local v3, region:Landroid/graphics/RectF;
    aget v4, v2, v10

    int-to-float v4, v4

    aget v5, v2, v9

    int-to-float v5, v5

    aget v6, v2, v10

    iget-object v7, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mDockBar:Lcom/baidu/launcher/ui/homeview/DockBar;

    invoke-virtual {v7}, Lcom/baidu/launcher/ui/homeview/DockBar;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    aget v7, v2, v9

    iget-object v8, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mDockBar:Lcom/baidu/launcher/ui/homeview/DockBar;

    invoke-virtual {v8}, Lcom/baidu/launcher/ui/homeview/DockBar;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1175
    invoke-virtual {v1, v3}, Lcom/baidu/launcher/ui/dragdrop/DragController;->setDeleteRegion(Landroid/graphics/RectF;)V

    .line 1177
    .end local v2           #location:[I
    .end local v3           #region:Landroid/graphics/RectF;
    :cond_2
    instance-of v4, p1, Lcom/baidu/launcher/ui/homeview/CellLayout;

    if-nez v4, :cond_3

    .line 1178
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/view/View;

    .line 1181
    .restart local p1
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;

    .line 1184
    .local v0, cellInfo:Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;
    if-eqz v0, :cond_0

    .line 1188
    iget-object v4, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v4}, Lcom/baidu/launcher/ui/homeview/Workspace;->allowLongPress()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1189
    iget-object v4, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-nez v4, :cond_4

    .line 1191
    iget-object v4, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v4, v10, v9}, Lcom/baidu/launcher/ui/homeview/Workspace;->performHapticFeedback(II)Z

    .line 1237
    iget-object v4, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    const v5, 0x7f080109

    new-instance v6, Lcom/baidu/launcher/ui/logic/IBaseView$SwitchData;

    invoke-direct {v6}, Lcom/baidu/launcher/ui/logic/IBaseView$SwitchData;-><init>()V

    invoke-virtual {v4, v5, v6}, Lcom/baidu/launcher/ui/logic/ViewManager;->switchView(ILcom/baidu/launcher/ui/logic/IBaseView$SwitchData;)V

    goto :goto_0

    .line 1243
    :cond_4
    iget-object v4, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->cell:Landroid/view/View;

    instance-of v4, v4, Lcom/baidu/launcher/ui/folder/Folder;

    if-nez v4, :cond_0

    .line 1247
    iget-object v4, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v4, v0}, Lcom/baidu/launcher/ui/homeview/Workspace;->startDrag(Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;)V

    goto :goto_0
.end method

.method public onMenu(Landroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 4
    .parameter "listener"

    .prologue
    .line 1337
    const/4 v0, 0x0

    .line 1338
    .local v0, homeMenu:Landroid/view/View;
    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030077

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1340
    const v1, 0x7f080190

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1341
    const v1, 0x7f080193

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1342
    const v1, 0x7f080195

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1343
    const v1, 0x7f080194

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1344
    const v1, 0x7f080192

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1345
    const v1, 0x7f080191

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1348
    return-object v0
.end method

.method public onNewIntent(Z)V
    .locals 3
    .parameter "alreadyOnHome"

    .prologue
    const v2, 0x7f080177

    .line 1265
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/Workspace;->isDefaultScreenShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1266
    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/Workspace;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/baidu/launcher/ui/homeview/Workspace;->moveToDefaultScreen(Z)V

    .line 1267
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/HomeView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/app/Launcher;

    invoke-virtual {v0, v2}, Lcom/baidu/launcher/app/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1268
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/HomeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/HomeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->closeQuickLauncherLayer(Landroid/content/Context;)V

    .line 1279
    :cond_0
    :goto_1
    return-void

    .line 1266
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1271
    :cond_2
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/Workspace;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1272
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/HomeView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/app/Launcher;

    invoke-virtual {v0, v2}, Lcom/baidu/launcher/app/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1273
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/HomeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/HomeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->closeQuickLauncherLayer(Landroid/content/Context;)V

    goto :goto_1
.end method

.method public onWorkspaceChanged(I)V
    .locals 0
    .parameter "screen"

    .prologue
    .line 1284
    return-void
.end method

.method public outAnimation(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 395
    const-string v2, "alpha"

    new-array v3, v6, [F

    const/high16 v4, 0x3f80

    aput v4, v3, v5

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 396
    .local v0, alphaIn:Landroid/animation/PropertyValuesHolder;
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/HomeView;->isHardwareAccelerated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 397
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/baidu/launcher/ui/homeview/HomeView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 399
    :cond_0
    new-array v2, v6, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v2, v5

    invoke-static {p0, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 400
    .local v1, outAnimation:Landroid/animation/ObjectAnimator;
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 401
    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 402
    new-instance v2, Lcom/baidu/launcher/ui/homeview/HomeView$5;

    invoke-direct {v2, p0, p1}, Lcom/baidu/launcher/ui/homeview/HomeView$5;-><init>(Lcom/baidu/launcher/ui/homeview/HomeView;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 408
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 409
    return-void
.end method

.method public setHomeViewClickable(Z)V
    .locals 0
    .parameter "clickable"

    .prologue
    .line 1636
    iput-boolean p1, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->isHomeViewClickable:Z

    .line 1637
    return-void
.end method

.method public setViewManager(Lcom/baidu/launcher/ui/logic/ViewManager;)V
    .locals 2
    .parameter "viewManager"

    .prologue
    .line 295
    iput-object p1, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    .line 296
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mDockBar:Lcom/baidu/launcher/ui/homeview/DockBar;

    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/homeview/DockBar;->setViewManager(Lcom/baidu/launcher/ui/logic/ViewManager;)V

    .line 297
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;

    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->setViewManager(Lcom/baidu/launcher/ui/logic/ViewManager;)V

    .line 298
    return-void
.end method

.method public show(ZLjava/lang/Object;)V
    .locals 7
    .parameter "animate"
    .parameter "extra"

    .prologue
    const/4 v6, 0x0

    .line 307
    iget-boolean v4, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mDataLoaded:Z

    if-eqz v4, :cond_0

    .line 315
    :goto_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v4, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v4}, Lcom/baidu/launcher/ui/logic/ViewManager;->getWorkspace()Lcom/baidu/launcher/ui/homeview/Workspace;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/launcher/ui/homeview/Workspace;->getScreenCount()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 316
    iget-object v4, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v4}, Lcom/baidu/launcher/ui/logic/ViewManager;->getWorkspace()Lcom/baidu/launcher/ui/homeview/Workspace;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/homeview/CellLayout;

    .line 318
    .local v0, cell:Lcom/baidu/launcher/ui/homeview/CellLayout;
    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->destroyDrawingCache()V

    .line 319
    invoke-virtual {v0, v6}, Lcom/baidu/launcher/ui/homeview/CellLayout;->setDrawingCacheEnabled(Z)V

    .line 320
    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->postInvalidate()V

    .line 315
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 310
    .end local v0           #cell:Lcom/baidu/launcher/ui/homeview/CellLayout;
    .end local v2           #i:I
    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mWorkspacedLocked:Z

    .line 313
    const-string v4, "HomeView"

    const-string v5, "show"

    invoke-static {v4, v5}, Lcom/baidu/launcher/utils/LogEx;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 322
    .restart local v2       #i:I
    :cond_1
    if-eqz p1, :cond_2

    instance-of v4, p2, Lcom/baidu/launcher/data/item/HomeViewAnimationPara;

    if-eqz v4, :cond_2

    move-object v3, p2

    .line 323
    check-cast v3, Lcom/baidu/launcher/data/item/HomeViewAnimationPara;

    .line 325
    .local v3, para:Lcom/baidu/launcher/data/item/HomeViewAnimationPara;
    iget-object v4, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;

    iget v5, v3, Lcom/baidu/launcher/data/item/HomeViewAnimationPara;->screen:I

    invoke-virtual {v4, v5}, Lcom/baidu/launcher/ui/homeview/Workspace;->setCurrentScreen(I)V

    .line 327
    .end local v3           #para:Lcom/baidu/launcher/data/item/HomeViewAnimationPara;
    :cond_2
    iget-object v4, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;

    iget-object v5, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v5}, Lcom/baidu/launcher/ui/homeview/Workspace;->getCurrentScreen()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 328
    .local v1, cellLayout:Landroid/view/View;
    if-nez v1, :cond_3

    .line 329
    iget-object v4, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;

    iget-object v5, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v5}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Lcom/baidu/launcher/ui/homeview/Workspace;->setCurrentScreen(I)V

    .line 330
    iget-object v4, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;

    iget-object v5, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v5}, Lcom/baidu/launcher/ui/homeview/Workspace;->getCurrentScreen()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 332
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 334
    if-eqz p1, :cond_4

    instance-of v4, p2, Lcom/baidu/launcher/data/item/HomeViewAnimationPara;

    if-nez v4, :cond_4

    .line 335
    invoke-virtual {p0, p0}, Lcom/baidu/launcher/ui/homeview/HomeView;->inAnimation(Landroid/view/View;)V

    .line 340
    :goto_2
    invoke-virtual {p0, v6}, Lcom/baidu/launcher/ui/homeview/HomeView;->setVisibility(I)V

    .line 341
    iget-object v4, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mDockBar:Lcom/baidu/launcher/ui/homeview/DockBar;

    invoke-virtual {v4, v6}, Lcom/baidu/launcher/ui/homeview/DockBar;->setVisibility(I)V

    .line 342
    iget-object v4, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v4, v6}, Lcom/baidu/launcher/ui/homeview/Workspace;->setVisibility(I)V

    .line 343
    new-instance v4, Lcom/baidu/launcher/ui/homeview/HomeView$3;

    invoke-direct {v4, p0}, Lcom/baidu/launcher/ui/homeview/HomeView$3;-><init>(Lcom/baidu/launcher/ui/homeview/HomeView;)V

    invoke-virtual {p0, v4}, Lcom/baidu/launcher/ui/homeview/HomeView;->post(Ljava/lang/Runnable;)Z

    .line 351
    return-void

    .line 337
    :cond_4
    const/high16 v4, 0x3f80

    invoke-virtual {p0, v4}, Lcom/baidu/launcher/ui/homeview/HomeView;->setAlpha(F)V

    goto :goto_2
.end method

.method public showDockbarAllAppButtonItem(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 367
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mDockBar:Lcom/baidu/launcher/ui/homeview/DockBar;

    invoke-virtual {v0, p1}, Lcom/baidu/launcher/ui/homeview/DockBar;->showAllAppButtonItem(Z)V

    .line 368
    return-void
.end method

.method public showDockbarBg(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 371
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/HomeView;->mDockBar:Lcom/baidu/launcher/ui/homeview/DockBar;

    invoke-virtual {v0, p1}, Lcom/baidu/launcher/ui/homeview/DockBar;->showDockbarBg(Z)V

    .line 372
    return-void
.end method
