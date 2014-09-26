.class public Lcom/baidu/launcher/ui/homeview/DockBar;
.super Landroid/widget/FrameLayout;
.source "DockBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/baidu/launcher/ui/dragdrop/DragSource;
.implements Lcom/baidu/launcher/ui/dragdrop/DropTarget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/ui/homeview/DockBar$ReorderAlarmListener;,
        Lcom/baidu/launcher/ui/homeview/DockBar$FolderCreationAlarmListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final DRAG_MODE_CREATE_FOLDER:I = 0x1

.field private static final DRAG_MODE_NONE:I = 0x0

.field private static final DRAG_MODE_REORDER:I = 0x2

.field private static final FOLDER_CREATION_TIMEOUT:I = 0x0

.field private static final REORDER_TIMEOUT:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "DockBar"


# instance fields
.field private LAYOUT_ADJ:I

.field private final MAX_DOCKBAR_ITEM_COUNT4:I

.field private final MAX_DOCKBAR_ITEM_COUNT5:I

.field private mAnimator:Lcom/baidu/launcher/ui/animation/ValueAnimator;

.field private mAnimatorItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/ui/homeview/DockBarItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCanCreateFolder:Z

.field private mContext:Landroid/content/Context;

.field private mCreateFolderItem:Lcom/baidu/launcher/ui/homeview/DockBarItem;

.field public mDockBarItemsOrder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/ui/homeview/DockBarItem;",
            ">;"
        }
    .end annotation
.end field

.field private mDragMode:I

.field private mDraggedOriginIndex:I

.field private mDraggedView:Lcom/baidu/launcher/ui/homeview/DockBarItem;

.field private final mFolderCreationAlarm:Lcom/baidu/launcher/ui/animation/Alarm;

.field private mFolderHightItem:Lcom/baidu/launcher/ui/homeview/DockBarItem;

.field private mHandler:Landroid/os/Handler;

.field private final mIsLandscape:Z

.field private mItemIconWidth:I

.field private mLastFolderHightItem:Lcom/baidu/launcher/ui/homeview/DockBarItem;

.field private mLastNearestItem:Lcom/baidu/launcher/ui/homeview/DockBarItem;

.field private mMaxDockBarItemCount:I

.field private mNonDockBarDragEnterIn:Z

.field private mOriginItemSize:I

.field private final mReorderAlarm:Lcom/baidu/launcher/ui/animation/Alarm;

.field private mStep:I

.field private mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

.field private mXPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x5

    const/4 v0, 0x0

    .line 120
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 88
    const/4 v1, -0x1

    iput v1, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDraggedOriginIndex:I

    .line 95
    iput-boolean v0, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mCanCreateFolder:Z

    .line 99
    iput v0, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDragMode:I

    .line 106
    iput v0, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->LAYOUT_ADJ:I

    .line 108
    new-instance v1, Lcom/baidu/launcher/ui/animation/Alarm;

    invoke-direct {v1}, Lcom/baidu/launcher/ui/animation/Alarm;-><init>()V

    iput-object v1, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mFolderCreationAlarm:Lcom/baidu/launcher/ui/animation/Alarm;

    .line 109
    new-instance v1, Lcom/baidu/launcher/ui/animation/Alarm;

    invoke-direct {v1}, Lcom/baidu/launcher/ui/animation/Alarm;-><init>()V

    iput-object v1, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mReorderAlarm:Lcom/baidu/launcher/ui/animation/Alarm;

    .line 110
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mHandler:Landroid/os/Handler;

    .line 113
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mAnimatorItemList:Ljava/util/ArrayList;

    .line 114
    iput v2, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->MAX_DOCKBAR_ITEM_COUNT5:I

    .line 115
    const/4 v1, 0x4

    iput v1, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->MAX_DOCKBAR_ITEM_COUNT4:I

    .line 116
    iput v2, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mMaxDockBarItemCount:I

    .line 1467
    iput v0, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mStep:I

    .line 122
    const-string v1, "DockBar"

    const-string v2, "DockBar(Context context, AttributeSet attrs)"

    invoke-static {v1, v2}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iput-object p1, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mContext:Landroid/content/Context;

    .line 124
    new-instance v1, Ljava/util/ArrayList;

    iget v2, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mMaxDockBarItemCount:I

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDockBarItemsOrder:Ljava/util/ArrayList;

    .line 125
    sget-boolean v1, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->show_dockbar_bg:Z

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/homeview/DockBar;->showDockbarBg(Z)V

    .line 126
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mIsLandscape:Z

    .line 128
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/launcher/ui/homeview/DockBar;)Lcom/baidu/launcher/ui/homeview/DockBarItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDraggedView:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    return-object v0
.end method

.method static synthetic access$100(Lcom/baidu/launcher/ui/homeview/DockBar;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/baidu/launcher/ui/homeview/DockBar;)Lcom/baidu/launcher/ui/animation/ValueAnimator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mAnimator:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$300(Lcom/baidu/launcher/ui/homeview/DockBar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/baidu/launcher/ui/homeview/DockBar;->resetItem()V

    return-void
.end method

.method static synthetic access$402(Lcom/baidu/launcher/ui/homeview/DockBar;Lcom/baidu/launcher/ui/homeview/DockBarItem;)Lcom/baidu/launcher/ui/homeview/DockBarItem;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mLastNearestItem:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    return-object p1
.end method

.method static synthetic access$500(Lcom/baidu/launcher/ui/homeview/DockBar;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/baidu/launcher/ui/homeview/DockBar;->calculateAnimateViews(II)V

    return-void
.end method

.method static synthetic access$600(Lcom/baidu/launcher/ui/homeview/DockBar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/baidu/launcher/ui/homeview/DockBar;->postAnimation()V

    return-void
.end method

.method static synthetic access$700(Lcom/baidu/launcher/ui/homeview/DockBar;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mAnimatorItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/baidu/launcher/ui/homeview/DockBar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/baidu/launcher/ui/homeview/DockBar;->resetAnimateViews()V

    return-void
.end method

.method private addOrMoveItemInDatabase()V
    .locals 7

    .prologue
    const-wide/16 v2, -0xc8

    const/4 v4, 0x0

    .line 626
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDockBarItemsOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_3

    .line 627
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDockBarItemsOrder:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/homeview/DockBarItem;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->getShortcutInfo()Lcom/baidu/launcher/data/item/HomeItemInfo;

    move-result-object v1

    .line 628
    .local v1, info:Lcom/baidu/launcher/data/item/HomeItemInfo;
    iget-boolean v0, v1, Lcom/baidu/launcher/data/item/HomeItemInfo;->isPreset:Z

    if-eqz v0, :cond_1

    .line 629
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/launcher/data/HomeDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/HomeDataManager;

    move-result-object v0

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/launcher/data/HomeDataManager;->addOrMoveItemInDatabase(Lcom/baidu/launcher/data/item/HomeItemInfo;JIII)V

    .line 626
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 631
    :cond_1
    instance-of v0, v1, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    if-eqz v0, :cond_2

    .line 633
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/launcher/data/HomeDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/HomeDataManager;

    move-result-object v0

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/launcher/data/HomeDataManager;->addOrMoveItemInDatabase(Lcom/baidu/launcher/data/item/HomeItemInfo;JIII)V

    goto :goto_1

    .line 636
    :cond_2
    instance-of v0, v1, Lcom/baidu/launcher/data/item/HomeFolderInfo;

    if-eqz v0, :cond_0

    .line 637
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/launcher/data/HomeDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/HomeDataManager;

    move-result-object v0

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/launcher/data/HomeDataManager;->addOrMoveItemInDatabase(Lcom/baidu/launcher/data/item/HomeItemInfo;JIII)V

    goto :goto_1

    .line 641
    .end local v1           #info:Lcom/baidu/launcher/data/item/HomeItemInfo;
    :cond_3
    return-void
.end method

.method private addOrSetDockBarItem(ILcom/baidu/launcher/ui/homeview/DockBarItem;)V
    .locals 2
    .parameter "index"
    .parameter "item"

    .prologue
    .line 1528
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mMaxDockBarItemCount:I

    if-le p1, v0, :cond_1

    .line 1530
    const-string v0, "DockBar"

    const-string v1, "addDockBarItem IndexOutOfBoundsException!"

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1542
    :cond_0
    :goto_0
    return-void

    .line 1534
    :cond_1
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDockBarItemsOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 1535
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDockBarItemsOrder:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private caculatSegment(I)I
    .locals 5
    .parameter "length"

    .prologue
    const/4 v4, 0x4

    .line 492
    if-gtz p1, :cond_0

    .line 493
    const/4 v2, -0x1

    .line 501
    :goto_0
    return v2

    .line 494
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/DockBar;->isVerticalDockbar()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 495
    new-instance v1, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/DockBar;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mPaddingTop:I

    sub-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(I)V

    .line 496
    .local v1, width:Ljava/math/BigDecimal;
    new-instance v0, Ljava/math/BigDecimal;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 497
    .local v0, size:Ljava/math/BigDecimal;
    invoke-virtual {v1, v0, v4}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->intValue()I

    move-result v2

    goto :goto_0

    .line 499
    .end local v0           #size:Ljava/math/BigDecimal;
    .end local v1           #width:Ljava/math/BigDecimal;
    :cond_1
    new-instance v1, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/DockBar;->getWidth()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(I)V

    .line 500
    .restart local v1       #width:Ljava/math/BigDecimal;
    new-instance v0, Ljava/math/BigDecimal;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 501
    .restart local v0       #size:Ljava/math/BigDecimal;
    invoke-virtual {v1, v0, v4}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->intValue()I

    move-result v2

    goto :goto_0
.end method

.method private calculateAnimateViews(II)V
    .locals 9
    .parameter "oldIndex"
    .parameter "newIndex"

    .prologue
    const/4 v7, 0x1

    .line 1504
    if-le p2, p1, :cond_1

    move v0, v7

    .line 1505
    .local v0, ascend:Z
    :goto_0
    if-eqz v0, :cond_2

    const/4 v6, -0x1

    :goto_1
    iput v6, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mStep:I

    .line 1506
    if-eqz v0, :cond_3

    add-int/lit8 v5, p1, 0x1

    .line 1507
    .local v5, start:I
    :goto_2
    if-eqz v0, :cond_4

    add-int/lit8 v1, p2, 0x1

    .line 1508
    .local v1, end:I
    :goto_3
    iget v6, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mStep:I

    add-int/2addr v6, v1

    iget v8, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mMaxDockBarItemCount:I

    if-le v6, v8, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 1510
    :cond_0
    iget-object v6, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDraggedView:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    iput p2, v6, Lcom/baidu/launcher/ui/homeview/DockBarItem;->dstIndex:I

    .line 1511
    move v2, v5

    .local v2, i:I
    :goto_4
    if-ge v2, v1, :cond_7

    .line 1512
    iget-object v6, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDockBarItemsOrder:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/ui/homeview/DockBarItem;

    .line 1513
    .local v3, item:Lcom/baidu/launcher/ui/homeview/DockBarItem;
    if-nez v3, :cond_5

    .line 1511
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1504
    .end local v0           #ascend:Z
    .end local v1           #end:I
    .end local v2           #i:I
    .end local v3           #item:Lcom/baidu/launcher/ui/homeview/DockBarItem;
    .end local v5           #start:I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0       #ascend:Z
    :cond_2
    move v6, v7

    .line 1505
    goto :goto_1

    :cond_3
    move v5, p2

    .line 1506
    goto :goto_2

    .restart local v5       #start:I
    :cond_4
    move v1, p1

    .line 1507
    goto :goto_3

    .line 1515
    .restart local v1       #end:I
    .restart local v2       #i:I
    .restart local v3       #item:Lcom/baidu/launcher/ui/homeview/DockBarItem;
    :cond_5
    iget v6, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mStep:I

    add-int v4, v2, v6

    .line 1516
    .local v4, j:I
    iput v4, v3, Lcom/baidu/launcher/ui/homeview/DockBarItem;->dstIndex:I

    .line 1517
    iget-object v6, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDockBarItemsOrder:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/baidu/launcher/ui/homeview/DockBarItem;

    iget v6, v6, Lcom/baidu/launcher/ui/homeview/DockBarItem;->originalX:I

    iput v6, v3, Lcom/baidu/launcher/ui/homeview/DockBarItem;->destinationX:I

    .line 1520
    iget-boolean v6, v3, Lcom/baidu/launcher/ui/homeview/DockBarItem;->animating:Z

    if-nez v6, :cond_6

    .line 1521
    iput-boolean v7, v3, Lcom/baidu/launcher/ui/homeview/DockBarItem;->animating:Z

    .line 1523
    :cond_6
    iget-object v6, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mAnimatorItemList:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1525
    .end local v3           #item:Lcom/baidu/launcher/ui/homeview/DockBarItem;
    .end local v4           #j:I
    :cond_7
    return-void
.end method

.method private changeToCreateFloderMode(I)V
    .locals 3
    .parameter "childIndex"

    .prologue
    .line 1313
    const-string v0, "DockBar"

    const-string v1, "changeToCreateFloderMode in"

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1314
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mFolderCreationAlarm:Lcom/baidu/launcher/ui/animation/Alarm;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/animation/Alarm;->alarmPending()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDraggedView:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->getShortcutInfo()Lcom/baidu/launcher/data/item/HomeItemInfo;

    move-result-object v0

    instance-of v0, v0, Lcom/baidu/launcher/data/item/HomeFolderInfo;

    if-nez v0, :cond_0

    .line 1316
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mFolderCreationAlarm:Lcom/baidu/launcher/ui/animation/Alarm;

    new-instance v1, Lcom/baidu/launcher/ui/homeview/DockBar$FolderCreationAlarmListener;

    invoke-direct {v1, p0, p1}, Lcom/baidu/launcher/ui/homeview/DockBar$FolderCreationAlarmListener;-><init>(Lcom/baidu/launcher/ui/homeview/DockBar;I)V

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/animation/Alarm;->setOnAlarmListener(Lcom/baidu/launcher/ui/animation/Alarm$OnAlarmListener;)V

    .line 1317
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mFolderCreationAlarm:Lcom/baidu/launcher/ui/animation/Alarm;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/baidu/launcher/ui/animation/Alarm;->setAlarm(J)V

    .line 1319
    :cond_0
    return-void
.end method

.method private cleanupFolderCreation()V
    .locals 1

    .prologue
    .line 1299
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/DockBar;->hideFolderAccept()V

    .line 1300
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mFolderHightItem:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    .line 1301
    return-void
.end method

.method private cleanupReorder(Z)V
    .locals 1
    .parameter "cancelAlarm"

    .prologue
    .line 1305
    if-eqz p1, :cond_0

    .line 1306
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mReorderAlarm:Lcom/baidu/launcher/ui/animation/Alarm;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/animation/Alarm;->cancelAlarm()V

    .line 1308
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mLastNearestItem:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    .line 1309
    return-void
.end method

.method private createDraggedView(ILcom/baidu/launcher/data/item/HomeItemInfo;Z)V
    .locals 3
    .parameter "xPosition"
    .parameter "info"
    .parameter "setOriginIndex"

    .prologue
    .line 857
    invoke-direct {p0, p2}, Lcom/baidu/launcher/ui/homeview/DockBar;->initItem(Lcom/baidu/launcher/data/item/HomeItemInfo;)Lcom/baidu/launcher/ui/homeview/DockBarItem;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDraggedView:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    .line 858
    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDockBarItemsOrder:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/baidu/launcher/ui/homeview/DockBar;->findNearestItemIndex(II)I

    move-result v0

    .line 860
    .local v0, nearestIndex:I
    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDockBarItemsOrder:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 861
    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDockBarItemsOrder:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDraggedView:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 865
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/DockBar;->layoutItemsParams()V

    .line 866
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/DockBar;->requestLayout()V

    .line 867
    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDraggedView:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->setVisibility(I)V

    .line 869
    if-eqz p3, :cond_0

    .line 870
    iput v0, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDraggedOriginIndex:I

    .line 872
    :cond_0
    return-void

    .line 863
    :cond_1
    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDockBarItemsOrder:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDraggedView:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private findAllAppListItemIndex(Ljava/util/List;)I
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/launcher/data/item/HomeItemInfo;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 345
    .local p1, infos:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/launcher/data/item/HomeItemInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 346
    .local v0, cellXList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 347
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/data/item/HomeItemInfo;

    iget v2, v2, Lcom/baidu/launcher/data/item/HomeItemInfo;->cellX:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 349
    :cond_0
    const/4 v1, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-ge v1, v2, :cond_2

    .line 350
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 354
    .end local v1           #i:I
    :goto_2
    return v1

    .line 349
    .restart local v1       #i:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 354
    :cond_2
    const/4 v1, -0x1

    goto :goto_2
.end method

.method private findIndexByItem(Lcom/baidu/launcher/ui/homeview/DockBarItem;)I
    .locals 2
    .parameter "item"

    .prologue
    .line 962
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDockBarItemsOrder:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 963
    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDockBarItemsOrder:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 967
    .end local v0           #i:I
    :goto_1
    return v0

    .line 962
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 967
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private findNearestItem(I)Lcom/baidu/launcher/ui/homeview/DockBarItem;
    .locals 5
    .parameter "xPosition"

    .prologue
    .line 971
    iget-object v4, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDockBarItemsOrder:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/baidu/launcher/ui/homeview/DockBar;->caculatSegment(I)I

    move-result v3

    .line 972
    .local v3, segment:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDockBarItemsOrder:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 973
    mul-int v1, v3, v0

    .line 974
    .local v1, leftSide:I
    add-int/lit8 v4, v0, 0x1

    mul-int v2, v3, v4

    .line 975
    .local v2, rightSide:I
    if-lt p1, v1, :cond_0

    if-ge p1, v2, :cond_0

    .line 976
    iget-object v4, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDockBarItemsOrder:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/launcher/ui/homeview/DockBarItem;

    .line 979
    .end local v1           #leftSide:I
    .end local v2           #rightSide:I
    :goto_1
    return-object v4

    .line 972
    .restart local v1       #leftSide:I
    .restart local v2       #rightSide:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 979
    .end local v1           #leftSide:I
    .end local v2           #rightSide:I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private findNearestItemIndex(II)I
    .locals 5
    .parameter "xPosition"
    .parameter "number"

    .prologue
    .line 983
    invoke-direct {p0, p2}, Lcom/baidu/launcher/ui/homeview/DockBar;->caculatSegment(I)I

    move-result v3

    .line 984
    .local v3, segment:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 985
    mul-int v1, v3, v0

    .line 986
    .local v1, leftSide:I
    add-int/lit8 v4, v0, 0x1

    mul-int v2, v3, v4

    .line 987
    .local v2, rightSide:I
    if-lt p1, v1, :cond_0

    if-ge p1, v2, :cond_0

    .line 991
    .end local v0           #i:I
    .end local v1           #leftSide:I
    .end local v2           #rightSide:I
    :goto_1
    return v0

    .line 984
    .restart local v0       #i:I
    .restart local v1       #leftSide:I
    .restart local v2       #rightSide:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 991
    .end local v1           #leftSide:I
    .end local v2           #rightSide:I
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private handleDragOver(I)V
    .locals 11
    .parameter "x"

    .prologue
    .line 912
    const/4 v5, 0x0

    .line 913
    .local v5, nearestItem:Lcom/baidu/launcher/ui/homeview/DockBarItem;
    const/4 v4, -0x1

    .line 914
    .local v4, nearestIndex:I
    iget-object v8, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDockBarItemsOrder:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/baidu/launcher/ui/homeview/DockBar;->caculatSegment(I)I

    move-result v7

    .line 915
    .local v7, segment:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v8, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDockBarItemsOrder:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v1, v8, :cond_5

    .line 916
    mul-int v2, v7, v1

    .line 917
    .local v2, leftSide:I
    add-int/lit8 v8, v1, 0x1

    mul-int v6, v7, v8

    .line 918
    .local v6, rightSide:I
    if-lt p1, v2, :cond_7

    if-ge p1, v6, :cond_7

    .line 921
    iget-object v8, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mAnimator:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mAnimator:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    invoke-virtual {v8}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->isStarted()Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mAnimator:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    invoke-virtual {v8}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->isRunning()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 959
    .end local v2           #leftSide:I
    .end local v6           #rightSide:I
    :cond_0
    :goto_1
    return-void

    .line 925
    .restart local v2       #leftSide:I
    .restart local v6       #rightSide:I
    :cond_1
    iget-object v8, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDockBarItemsOrder:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #nearestItem:Lcom/baidu/launcher/ui/homeview/DockBarItem;
    check-cast v5, Lcom/baidu/launcher/ui/homeview/DockBarItem;

    .line 926
    .restart local v5       #nearestItem:Lcom/baidu/launcher/ui/homeview/DockBarItem;
    iget-object v8, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDraggedView:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    if-eq v8, v5, :cond_4

    iget-object v8, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDraggedView:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    invoke-virtual {v8}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->getShortcutInfo()Lcom/baidu/launcher/data/item/HomeItemInfo;

    move-result-object v8

    instance-of v8, v8, Lcom/baidu/launcher/data/item/IFolderInfo;

    if-nez v8, :cond_4

    .line 927
    div-int/lit8 v8, v7, 0x4

    add-int/2addr v8, v2

    if-lt p1, v8, :cond_4

    div-int/lit8 v8, v7, 0x4

    sub-int v8, v6, v8

    if-gt p1, v8, :cond_4

    invoke-virtual {v5}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->getShortcutInfo()Lcom/baidu/launcher/data/item/HomeItemInfo;

    move-result-object v8

    instance-of v8, v8, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    if-eqz v8, :cond_2

    invoke-virtual {v5}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->getShortcutInfo()Lcom/baidu/launcher/data/item/HomeItemInfo;

    move-result-object v8

    check-cast v8, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    iget-object v8, v8, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->intent:Landroid/content/Intent;

    if-eqz v8, :cond_4

    :cond_2
    iget-object v8, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDraggedView:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    invoke-virtual {v8}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->getShortcutInfo()Lcom/baidu/launcher/data/item/HomeItemInfo;

    move-result-object v8

    instance-of v8, v8, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDraggedView:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    invoke-virtual {v8}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->getShortcutInfo()Lcom/baidu/launcher/data/item/HomeItemInfo;

    move-result-object v8

    check-cast v8, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    iget-object v8, v8, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->intent:Landroid/content/Intent;

    if-eqz v8, :cond_4

    .line 933
    :cond_3
    invoke-direct {p0, v1}, Lcom/baidu/launcher/ui/homeview/DockBar;->changeToCreateFloderMode(I)V

    goto :goto_1

    .line 939
    :cond_4
    move v4, v1

    .line 945
    .end local v2           #leftSide:I
    .end local v6           #rightSide:I
    :cond_5
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/baidu/launcher/ui/homeview/DockBar;->setDragMode(I)V

    .line 946
    iget-object v8, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDockBarItemsOrder:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    iget v9, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mMaxDockBarItemCount:I

    if-gt v8, v9, :cond_0

    .line 950
    iget-object v8, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDraggedView:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    invoke-direct {p0, v8}, Lcom/baidu/launcher/ui/homeview/DockBar;->findIndexByItem(Lcom/baidu/launcher/ui/homeview/DockBarItem;)I

    move-result v0

    .line 951
    .local v0, draggedIndex:I
    const/4 v8, -0x1

    if-eq v0, v8, :cond_6

    iget-object v8, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDraggedView:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    if-ne v5, v8, :cond_8

    .line 952
    :cond_6
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/baidu/launcher/ui/homeview/DockBar;->cleanupReorder(Z)V

    goto :goto_1

    .line 915
    .end local v0           #draggedIndex:I
    .restart local v2       #leftSide:I
    .restart local v6       #rightSide:I
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 953
    .end local v2           #leftSide:I
    .end local v6           #rightSide:I
    .restart local v0       #draggedIndex:I
    :cond_8
    iget-object v8, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mReorderAlarm:Lcom/baidu/launcher/ui/animation/Alarm;

    invoke-virtual {v8}, Lcom/baidu/launcher/ui/animation/Alarm;->alarmPending()Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mLastNearestItem:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    if-eq v5, v8, :cond_0

    .line 954
    new-instance v3, Lcom/baidu/launcher/ui/homeview/DockBar$ReorderAlarmListener;

    invoke-direct {v3, p0, v5, v4, v0}, Lcom/baidu/launcher/ui/homeview/DockBar$ReorderAlarmListener;-><init>(Lcom/baidu/launcher/ui/homeview/DockBar;Lcom/baidu/launcher/ui/homeview/DockBarItem;II)V

    .line 956
    .local v3, listener:Lcom/baidu/launcher/ui/homeview/DockBar$ReorderAlarmListener;
    iget-object v8, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mReorderAlarm:Lcom/baidu/launcher/ui/animation/Alarm;

    invoke-virtual {v8, v3}, Lcom/baidu/launcher/ui/animation/Alarm;->setOnAlarmListener(Lcom/baidu/launcher/ui/animation/Alarm$OnAlarmListener;)V

    .line 957
    iget-object v8, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mReorderAlarm:Lcom/baidu/launcher/ui/animation/Alarm;

    const-wide/16 v9, 0x12c

    invoke-virtual {v8, v9, v10}, Lcom/baidu/launcher/ui/animation/Alarm;->setAlarm(J)V

    goto/16 :goto_1
.end method

.method private initAllAppButtonItem(Lcom/baidu/launcher/data/item/HomeShortcutInfo;Ljava/util/List;)Lcom/baidu/launcher/ui/homeview/DockBarItem;
    .locals 9
    .parameter "allAppListInfo"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/launcher/data/item/HomeShortcutInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/launcher/data/item/HomeItemInfo;",
            ">;)",
            "Lcom/baidu/launcher/ui/homeview/DockBarItem;"
        }
    .end annotation

    .prologue
    .local p2, infos:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/launcher/data/item/HomeItemInfo;>;"
    const/4 v7, -0x2

    .line 382
    iget-object v5, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mContext:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 384
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f03004e

    const/4 v6, 0x0

    invoke-virtual {v2, v5, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/ui/homeview/DockBarItem;

    .line 386
    .local v3, item:Lcom/baidu/launcher/ui/homeview/DockBarItem;
    invoke-direct {p0, p2}, Lcom/baidu/launcher/ui/homeview/DockBar;->findAllAppListItemIndex(Ljava/util/List;)I

    move-result v0

    .line 387
    .local v0, allAppListPosition:I
    iput v0, p1, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->cellX:I

    .line 388
    iget-object v5, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02000a

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 390
    .local v1, bitmap:Landroid/graphics/Bitmap;
    iput-object v1, p1, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->iconBitmap:Landroid/graphics/Bitmap;

    .line 391
    const v5, 0x7f020009

    invoke-virtual {v3, v5}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->setImageResource(I)V

    .line 392
    invoke-virtual {v3, p1}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->setShortcutInfo(Lcom/baidu/launcher/data/item/HomeItemInfo;)V

    .line 394
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/DockBar;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0111

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->LAYOUT_ADJ:I

    .line 396
    new-instance v4, Lcom/baidu/launcher/ui/homeview/DockBarItem$DockBarItemLayoutParams;

    invoke-direct {v4, v7, v7}, Lcom/baidu/launcher/ui/homeview/DockBarItem$DockBarItemLayoutParams;-><init>(II)V

    .line 398
    .local v4, params:Lcom/baidu/launcher/ui/homeview/DockBarItem$DockBarItemLayoutParams;
    invoke-virtual {v3, p0}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 399
    invoke-virtual {v3, p0}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 400
    iget v5, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->LAYOUT_ADJ:I

    iget v6, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->LAYOUT_ADJ:I

    iget v7, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->LAYOUT_ADJ:I

    iget v8, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->LAYOUT_ADJ:I

    invoke-virtual {v3, v5, v6, v7, v8}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->setPadding(IIII)V

    .line 401
    invoke-virtual {p0, v3, v4}, Lcom/baidu/launcher/ui/homeview/DockBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 402
    return-object v3
.end method

.method private initItem(Lcom/baidu/launcher/data/item/HomeItemInfo;)Lcom/baidu/launcher/ui/homeview/DockBarItem;
    .locals 8
    .parameter "info"

    .prologue
    const/4 v6, -0x2

    .line 358
    iget-object v4, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mContext:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 360
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f03004e

    const/4 v5, 0x0

    invoke-virtual {v1, v4, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/ui/homeview/DockBarItem;

    .line 362
    .local v2, item:Lcom/baidu/launcher/ui/homeview/DockBarItem;
    invoke-virtual {v2, p1}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->setShortcutInfo(Lcom/baidu/launcher/data/item/HomeItemInfo;)V

    .line 363
    invoke-virtual {v2, p1}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->setTag(Ljava/lang/Object;)V

    .line 364
    invoke-static {}, Lcom/baidu/launcher/utils/EventNumberUtil;->getInstance()Lcom/baidu/launcher/utils/EventNumberUtil;

    move-result-object v0

    .line 365
    .local v0, enventNumberUtil:Lcom/baidu/launcher/utils/EventNumberUtil;
    invoke-virtual {v2}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->getShortcutInfo()Lcom/baidu/launcher/data/item/HomeItemInfo;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/baidu/launcher/utils/EventNumberUtil;->checkEventInfo(Lcom/baidu/launcher/data/item/BaseItemInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 366
    invoke-virtual {v0, v2}, Lcom/baidu/launcher/utils/EventNumberUtil;->registerView(Landroid/view/View;)Z

    .line 369
    :cond_0
    iget-object v4, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->setImageBitmap(Landroid/content/Context;Z)V

    .line 370
    new-instance v3, Lcom/baidu/launcher/ui/homeview/DockBarItem$DockBarItemLayoutParams;

    invoke-direct {v3, v6, v6}, Lcom/baidu/launcher/ui/homeview/DockBarItem$DockBarItemLayoutParams;-><init>(II)V

    .line 372
    .local v3, params:Lcom/baidu/launcher/ui/homeview/DockBarItem$DockBarItemLayoutParams;
    invoke-virtual {v2, p0}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 373
    invoke-virtual {v2, p0}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 374
    iget v4, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->LAYOUT_ADJ:I

    iget v5, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->LAYOUT_ADJ:I

    iget v6, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->LAYOUT_ADJ:I

    iget v7, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->LAYOUT_ADJ:I

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->setPadding(IIII)V

    .line 375
    invoke-virtual {p0, v2, v3}, Lcom/baidu/launcher/ui/homeview/DockBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 376
    return-object v2
.end method

.method private postAnimation()V
    .locals 3

    .prologue
    .line 1469
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mAnimator:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 1470
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mAnimator:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->end()V

    .line 1472
    :cond_0
    new-instance v0, Lcom/baidu/launcher/ui/animation/ValueAnimator;

    invoke-direct {v0}, Lcom/baidu/launcher/ui/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mAnimator:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    .line 1473
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mAnimator:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->setFloatValues([F)V

    .line 1474
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mAnimator:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->setDuration(J)Lcom/baidu/launcher/ui/animation/ValueAnimator;

    .line 1475
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mAnimator:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    new-instance v1, Lcom/baidu/launcher/ui/homeview/DockBar$5;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/ui/homeview/DockBar$5;-><init>(Lcom/baidu/launcher/ui/homeview/DockBar;)V

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->addUpdateListener(Lcom/baidu/launcher/ui/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1487
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mAnimator:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    new-instance v1, Lcom/baidu/launcher/ui/homeview/DockBar$6;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/ui/homeview/DockBar$6;-><init>(Lcom/baidu/launcher/ui/homeview/DockBar;)V

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->addListener(Lcom/baidu/launcher/ui/animation/Animator$AnimatorListener;)V

    .line 1500
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mAnimator:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->start()V

    .line 1501
    return-void

    .line 1473
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private removeItem(Lcom/baidu/launcher/ui/homeview/DockBarItem;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 1128
    if-eqz p1, :cond_0

    .line 1129
    invoke-static {}, Lcom/baidu/launcher/utils/EventNumberUtil;->getInstance()Lcom/baidu/launcher/utils/EventNumberUtil;

    move-result-object v0

    .line 1130
    .local v0, enventNumberUtil:Lcom/baidu/launcher/utils/EventNumberUtil;
    invoke-virtual {p1}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->getShortcutInfo()Lcom/baidu/launcher/data/item/HomeItemInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/utils/EventNumberUtil;->checkEventInfo(Lcom/baidu/launcher/data/item/BaseItemInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1131
    invoke-virtual {v0, p1}, Lcom/baidu/launcher/utils/EventNumberUtil;->unregisterView(Landroid/view/View;)Z

    .line 1134
    .end local v0           #enventNumberUtil:Lcom/baidu/launcher/utils/EventNumberUtil;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/homeview/DockBar;->removeView(Landroid/view/View;)V

    .line 1137
    return-void
.end method

.method private resetAnimateViews()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1550
    const/4 v0, 0x0

    .line 1552
    .local v0, deleteOrAddItemCount:I
    iget v3, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDragMode:I

    if-nez v3, :cond_1

    .line 1558
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mAnimatorItemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/ui/homeview/DockBarItem;

    .line 1560
    .local v2, item:Lcom/baidu/launcher/ui/homeview/DockBarItem;
    iput-boolean v5, v2, Lcom/baidu/launcher/ui/homeview/DockBarItem;->animating:Z

    .line 1561
    iget v3, v2, Lcom/baidu/launcher/ui/homeview/DockBarItem;->destinationX:I

    iput v3, v2, Lcom/baidu/launcher/ui/homeview/DockBarItem;->originalX:I

    .line 1562
    iget v3, v2, Lcom/baidu/launcher/ui/homeview/DockBarItem;->dstIndex:I

    invoke-direct {p0, v3, v2}, Lcom/baidu/launcher/ui/homeview/DockBar;->addOrSetDockBarItem(ILcom/baidu/launcher/ui/homeview/DockBarItem;)V

    goto :goto_1

    .line 1554
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #item:Lcom/baidu/launcher/ui/homeview/DockBarItem;
    :cond_1
    iget v3, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDragMode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1555
    const/4 v0, -0x1

    goto :goto_0

    .line 1565
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    iget-object v3, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDraggedView:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    if-eqz v3, :cond_3

    .line 1567
    iget-object v3, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDraggedView:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    iput-boolean v5, v3, Lcom/baidu/launcher/ui/homeview/DockBarItem;->animating:Z

    .line 1568
    iget-object v3, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDraggedView:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    iget v3, v3, Lcom/baidu/launcher/ui/homeview/DockBarItem;->dstIndex:I

    iget-object v4, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDraggedView:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    invoke-direct {p0, v3, v4}, Lcom/baidu/launcher/ui/homeview/DockBar;->addOrSetDockBarItem(ILcom/baidu/launcher/ui/homeview/DockBarItem;)V

    .line 1571
    :cond_3
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/DockBar;->layoutItemsParams()V

    .line 1572
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/DockBar;->requestLayout()V

    .line 1574
    iget v3, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDragMode:I

    if-nez v3, :cond_4

    .line 1588
    :cond_4
    invoke-virtual {p0, v5}, Lcom/baidu/launcher/ui/homeview/DockBar;->setDragMode(I)V

    .line 1589
    iget-object v3, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mAnimatorItemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1590
    return-void
.end method

.method private resetItem()V
    .locals 6

    .prologue
    .line 594
    iget-object v3, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDraggedView:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    invoke-virtual {v3}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->getShortcutInfo()Lcom/baidu/launcher/data/item/HomeItemInfo;

    move-result-object v1

    .line 595
    .local v1, info:Lcom/baidu/launcher/data/item/HomeItemInfo;
    instance-of v3, v1, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    if-eqz v3, :cond_2

    .line 597
    const-string v3, "huzhenyuan"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mDraggedView.getParent = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDraggedView:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    invoke-virtual {v5}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    :try_start_0
    iget-object v3, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDraggedView:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    invoke-virtual {p0, v3}, Lcom/baidu/launcher/ui/homeview/DockBar;->addView(Landroid/view/View;)V

    .line 600
    iget v3, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mXPosition:I

    iget-object v4, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDockBarItemsOrder:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-direct {p0, v3, v4}, Lcom/baidu/launcher/ui/homeview/DockBar;->findNearestItemIndex(II)I

    move-result v2

    .line 602
    .local v2, nearestIndex:I
    iget-object v3, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDockBarItemsOrder:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 603
    iget-object v3, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDockBarItemsOrder:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDraggedView:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 621
    .end local v2           #nearestIndex:I
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/DockBar;->layoutItemsParams()V

    .line 622
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/DockBar;->requestLayout()V

    .line 623
    return-void

    .line 605
    .restart local v2       #nearestIndex:I
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDockBarItemsOrder:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDraggedView:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    invoke-virtual {v3, v2, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 607
    .end local v2           #nearestIndex:I
    :catch_0
    move-exception v0

    .line 608
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "DockBar"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/baidu/launcher/utils/LogEx;->debugErro(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 611
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    instance-of v3, v1, Lcom/baidu/launcher/data/item/HomeFolderInfo;

    if-eqz v3, :cond_0

    .line 612
    iget-object v3, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDraggedView:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    invoke-virtual {p0, v3}, Lcom/baidu/launcher/ui/homeview/DockBar;->addView(Landroid/view/View;)V

    .line 613
    iget v3, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mXPosition:I

    iget-object v4, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDockBarItemsOrder:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-direct {p0, v3, v4}, Lcom/baidu/launcher/ui/homeview/DockBar;->findNearestItemIndex(II)I

    move-result v2

    .line 615
    .restart local v2       #nearestIndex:I
    iget-object v3, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDockBarItemsOrder:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 616
    iget-object v3, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDockBarItemsOrder:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDraggedView:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 618
    :cond_3
    iget-object v3, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDockBarItemsOrder:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDraggedView:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    invoke-virtual {v3, v2, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private startDrag(Landroid/view/View;)Z
    .locals 16
    .parameter "view"

    .prologue
    .line 206
    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/baidu/launcher/ui/homeview/DockBarItem;

    if-eqz v2, :cond_4

    move-object/from16 v15, p1

    .line 207
    check-cast v15, Lcom/baidu/launcher/ui/homeview/DockBarItem;

    .line 208
    .local v15, item:Lcom/baidu/launcher/ui/homeview/DockBarItem;
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDraggedView:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    .line 209
    invoke-virtual {v15}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->getShortcutInfo()Lcom/baidu/launcher/data/item/HomeItemInfo;

    move-result-object v2

    const/4 v3, 0x0

    iput v3, v2, Lcom/baidu/launcher/data/item/HomeItemInfo;->eventCount:I

    .line 210
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/DockBar;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/logic/ViewManager;->getStatusBarHeight()I

    move-result v6

    .line 211
    .local v6, statusBarHeight:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/DockBar;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v15, v2, v3}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->setImageBitmap(Landroid/content/Context;Z)V

    .line 212
    invoke-virtual {v15}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->getShortcutInfo()Lcom/baidu/launcher/data/item/HomeItemInfo;

    move-result-object v4

    .line 213
    .local v4, info:Lcom/baidu/launcher/data/item/HomeItemInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/DockBar;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/logic/ViewManager;->getDragController()Lcom/baidu/launcher/ui/dragdrop/DragController;

    move-result-object v1

    .line 214
    .local v1, dragController:Lcom/baidu/launcher/ui/dragdrop/DragController;
    invoke-virtual {v15}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->getShortcutInfo()Lcom/baidu/launcher/data/item/HomeItemInfo;

    move-result-object v2

    iget-boolean v2, v2, Lcom/baidu/launcher/data/item/HomeItemInfo;->isPreset:Z

    if-eqz v2, :cond_1

    .line 215
    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object/from16 v2, p1

    move-object/from16 v3, p0

    invoke-virtual/range {v1 .. v8}, Lcom/baidu/launcher/ui/dragdrop/DragController;->startDrag(Landroid/view/View;Lcom/baidu/launcher/ui/dragdrop/DragSource;Ljava/lang/Object;IIZZ)V

    .line 235
    :cond_0
    :goto_0
    const/4 v2, 0x1

    .line 237
    .end local v1           #dragController:Lcom/baidu/launcher/ui/dragdrop/DragController;
    .end local v4           #info:Lcom/baidu/launcher/data/item/HomeItemInfo;
    .end local v6           #statusBarHeight:I
    .end local v15           #item:Lcom/baidu/launcher/ui/homeview/DockBarItem;
    :goto_1
    return v2

    .line 219
    .restart local v1       #dragController:Lcom/baidu/launcher/ui/dragdrop/DragController;
    .restart local v4       #info:Lcom/baidu/launcher/data/item/HomeItemInfo;
    .restart local v6       #statusBarHeight:I
    .restart local v15       #item:Lcom/baidu/launcher/ui/homeview/DockBarItem;
    :cond_1
    instance-of v2, v4, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    if-eqz v2, :cond_3

    move-object v2, v4

    .line 220
    check-cast v2, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    iget-object v2, v2, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->intent:Landroid/content/Intent;

    if-nez v2, :cond_2

    .line 221
    const/4 v11, 0x0

    add-int/lit8 v12, v6, 0xa

    const/4 v13, 0x1

    const/4 v14, 0x1

    move-object v7, v1

    move-object/from16 v8, p1

    move-object/from16 v9, p0

    move-object v10, v4

    invoke-virtual/range {v7 .. v14}, Lcom/baidu/launcher/ui/dragdrop/DragController;->startDrag(Landroid/view/View;Lcom/baidu/launcher/ui/dragdrop/DragSource;Ljava/lang/Object;IIZZ)V

    goto :goto_0

    .line 225
    :cond_2
    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object/from16 v2, p1

    move-object/from16 v3, p0

    invoke-virtual/range {v1 .. v8}, Lcom/baidu/launcher/ui/dragdrop/DragController;->startDrag(Landroid/view/View;Lcom/baidu/launcher/ui/dragdrop/DragSource;Ljava/lang/Object;IIZZ)V

    goto :goto_0

    .line 229
    :cond_3
    instance-of v2, v4, Lcom/baidu/launcher/data/item/HomeFolderInfo;

    if-eqz v2, :cond_0

    .line 230
    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object/from16 v2, p1

    move-object/from16 v3, p0

    invoke-virtual/range {v1 .. v8}, Lcom/baidu/launcher/ui/dragdrop/DragController;->startDrag(Landroid/view/View;Lcom/baidu/launcher/ui/dragdrop/DragSource;Ljava/lang/Object;IIZZ)V

    goto :goto_0

    .line 237
    .end local v1           #dragController:Lcom/baidu/launcher/ui/dragdrop/DragController;
    .end local v4           #info:Lcom/baidu/launcher/data/item/HomeItemInfo;
    .end local v6           #statusBarHeight:I
    .end local v15           #item:Lcom/baidu/launcher/ui/homeview/DockBarItem;
    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private updateAppClickCount(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 2
    .parameter "intent"
    .parameter "context"

    .prologue
    .line 1646
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1648
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/baidu/launcher/ui/homeview/DockBar$7;

    invoke-direct {v1, p0, p2, p1}, Lcom/baidu/launcher/ui/homeview/DockBar$7;-><init>(Lcom/baidu/launcher/ui/homeview/DockBar;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1663
    :cond_0
    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/baidu/launcher/ui/dragdrop/DragSource;IIIILcom/baidu/launcher/ui/dragdrop/DragView;Ljava/lang/Object;)Z
    .locals 6
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    const/4 v5, -0x1

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1144
    const-string v2, "DockBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "acceptDrop "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", dragInfo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1146
    iput-boolean v0, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mCanCreateFolder:Z

    .line 1148
    instance-of v2, p1, Lcom/baidu/launcher/ui/homeview/DockBar;

    if-nez v2, :cond_9

    .line 1149
    instance-of v2, p7, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    if-eqz v2, :cond_4

    .line 1150
    check-cast p7, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    .end local p7
    iget-boolean v2, p7, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->isPreset:Z

    if-eqz v2, :cond_1

    .line 1203
    :cond_0
    :goto_0
    return v0

    .line 1154
    :cond_1
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDockBarItemsOrder:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mMaxDockBarItemCount:I

    if-ne v2, v3, :cond_9

    .line 1155
    iget-boolean v2, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mNonDockBarDragEnterIn:Z

    if-eqz v2, :cond_3

    .line 1156
    iput-boolean v0, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mNonDockBarDragEnterIn:Z

    .line 1157
    iget v2, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDraggedOriginIndex:I

    if-ne v2, v5, :cond_2

    iget v2, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDragMode:I

    if-ne v2, v1, :cond_0

    :cond_2
    move v0, v1

    .line 1160
    goto :goto_0

    :cond_3
    move v0, v1

    .line 1163
    goto :goto_0

    .line 1165
    .restart local p7
    :cond_4
    instance-of v2, p7, Lcom/baidu/launcher/data/item/ListAppInfo;

    if-eqz v2, :cond_7

    .line 1166
    check-cast p7, Lcom/baidu/launcher/data/item/ListAppInfo;

    .end local p7
    iget-boolean v2, p7, Lcom/baidu/launcher/data/item/ListAppInfo;->isPreset:Z

    if-nez v2, :cond_0

    .line 1169
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDockBarItemsOrder:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mMaxDockBarItemCount:I

    if-ne v2, v3, :cond_9

    .line 1170
    iget-boolean v2, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mNonDockBarDragEnterIn:Z

    if-eqz v2, :cond_6

    .line 1171
    iput-boolean v0, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mNonDockBarDragEnterIn:Z

    .line 1172
    iget v2, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDraggedOriginIndex:I

    if-ne v2, v5, :cond_5

    iget v2, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDragMode:I

    if-ne v2, v1, :cond_0

    :cond_5
    move v0, v1

    .line 1175
    goto :goto_0

    :cond_6
    move v0, v1

    .line 1178
    goto :goto_0

    .line 1180
    .restart local p7
    :cond_7
    instance-of v2, p7, Lcom/baidu/launcher/data/item/IFolderInfo;

    if-eqz v2, :cond_8

    .line 1181
    check-cast p7, Lcom/baidu/launcher/data/item/BaseItemInfo;

    .end local p7
    iget-boolean v2, p7, Lcom/baidu/launcher/data/item/BaseItemInfo;->isPreset:Z

    if-nez v2, :cond_0

    .line 1184
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDockBarItemsOrder:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mMaxDockBarItemCount:I

    if-ne v2, v3, :cond_9

    .line 1185
    iget-boolean v2, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mNonDockBarDragEnterIn:Z

    if-eqz v2, :cond_0

    .line 1186
    iput-boolean v0, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mNonDockBarDragEnterIn:Z

    .line 1187
    iget v2, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDraggedOriginIndex:I

    if-eq v2, v5, :cond_0

    move v0, v1

    .line 1190
    goto :goto_0

    .line 1196
    .restart local p7
    :cond_8
    instance-of v1, p7, Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;

    if-eqz v1, :cond_0

    .line 1197
    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0212

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .end local p7
    :cond_9
    move v0, v1

    .line 1203
    goto :goto_0
.end method

.method public checkCreateFolderAction(Ljava/lang/Object;)Z
    .locals 3
    .parameter "dragInfo"

    .prologue
    .line 1432
    const-string v1, "DockBar"

    const-string v2, "checkCreateFolderAction in"

    invoke-static {v1, v2}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1433
    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mCreateFolderItem:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mCreateFolderItem:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    invoke-direct {p0, v1}, Lcom/baidu/launcher/ui/homeview/DockBar;->findIndexByItem(Lcom/baidu/launcher/ui/homeview/DockBarItem;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 1435
    :cond_0
    const/4 v0, 0x0

    .line 1444
    :cond_1
    :goto_0
    return v0

    .line 1437
    :cond_2
    const/4 v0, 0x1

    .line 1438
    .local v0, create:Z
    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mCreateFolderItem:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->getShortcutInfo()Lcom/baidu/launcher/data/item/HomeItemInfo;

    move-result-object v1

    instance-of v1, v1, Lcom/baidu/launcher/data/item/HomeFolderInfo;

    if-eqz v1, :cond_3

    .line 1439
    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mCreateFolderItem:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    invoke-virtual {v1, p1}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->acceptDrop(Ljava/lang/Object;)Z

    move-result v0

    .line 1441
    :cond_3
    if-eqz v0, :cond_1

    .line 1442
    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mCreateFolderItem:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/homeview/DockBar;->createFolder(Lcom/baidu/launcher/ui/homeview/DockBarItem;)V

    goto :goto_0
.end method

.method public createFolder(Lcom/baidu/launcher/ui/homeview/DockBarItem;)V
    .locals 14
    .parameter "item"

    .prologue
    .line 1369
    const-string v0, "DockBar"

    const-string v2, "createFolder in"

    invoke-static {v0, v2}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1371
    invoke-virtual {p1}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->getShortcutInfo()Lcom/baidu/launcher/data/item/HomeItemInfo;

    move-result-object v0

    instance-of v0, v0, Lcom/baidu/launcher/data/item/HomeFolderInfo;

    if-eqz v0, :cond_0

    .line 1372
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/logic/ViewManager;->getDragController()Lcom/baidu/launcher/ui/dragdrop/DragController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/dragdrop/DragController;->getDragInfo()Ljava/lang/Object;

    move-result-object v7

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->onDrop(Lcom/baidu/launcher/ui/dragdrop/DragSource;IIIILcom/baidu/launcher/ui/dragdrop/DragView;Ljava/lang/Object;)V

    .line 1375
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDraggedView:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    invoke-direct {p0, v0}, Lcom/baidu/launcher/ui/homeview/DockBar;->removeItem(Lcom/baidu/launcher/ui/homeview/DockBarItem;)V

    .line 1376
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDockBarItemsOrder:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDraggedView:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1378
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/DockBar;->layoutItemsParams()V

    .line 1379
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/DockBar;->requestLayout()V

    .line 1381
    invoke-direct {p0}, Lcom/baidu/launcher/ui/homeview/DockBar;->addOrMoveItemInDatabase()V

    .line 1382
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mNonDockBarDragEnterIn:Z

    .line 1426
    :goto_0
    const-string v0, "DockBar"

    const-string v2, "createFolder out"

    invoke-static {v0, v2}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1429
    return-void

    .line 1384
    :cond_0
    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/homeview/DockBar;->findIndexByItem(Lcom/baidu/launcher/ui/homeview/DockBarItem;)I

    move-result v10

    .line 1385
    .local v10, dstIndex:I
    const/4 v0, -0x1

    if-le v10, v0, :cond_2

    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDockBarItemsOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v10, v0, :cond_2

    .line 1386
    invoke-virtual {p1}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->getShortcutInfo()Lcom/baidu/launcher/data/item/HomeItemInfo;

    move-result-object v13

    check-cast v13, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    .line 1387
    .local v13, info:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    const-wide/16 v2, -0xc8

    iput-wide v2, v13, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->container:J

    .line 1389
    new-instance v1, Lcom/baidu/launcher/data/item/HomeFolderInfo;

    invoke-direct {v1}, Lcom/baidu/launcher/data/item/HomeFolderInfo;-><init>()V

    .line 1390
    .local v1, folderInfo:Lcom/baidu/launcher/data/item/HomeFolderInfo;
    invoke-direct {p0, v1}, Lcom/baidu/launcher/ui/homeview/DockBar;->initItem(Lcom/baidu/launcher/data/item/HomeItemInfo;)Lcom/baidu/launcher/ui/homeview/DockBarItem;

    move-result-object v12

    .line 1392
    .local v12, folderitem:Lcom/baidu/launcher/ui/homeview/DockBarItem;
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/launcher/data/HomeDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/HomeDataManager;

    move-result-object v0

    const-wide/16 v2, -0xc8

    const/4 v4, 0x0

    iget v5, v13, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->cellX:I

    iget v6, v13, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->cellY:I

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/baidu/launcher/data/HomeDataManager;->addItemToDatabase(Lcom/baidu/launcher/data/item/HomeItemInfo;JIIIZ)V

    .line 1396
    const/4 v0, 0x0

    iput v0, v13, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->cellX:I

    .line 1397
    invoke-virtual {v1, v13}, Lcom/baidu/launcher/data/item/HomeFolderInfo;->add(Lcom/baidu/launcher/data/item/BaseItemInfo;)V

    .line 1399
    invoke-static {}, Lcom/baidu/launcher/utils/EventNumberUtil;->getInstance()Lcom/baidu/launcher/utils/EventNumberUtil;

    move-result-object v11

    .line 1400
    .local v11, enventNumberUtil:Lcom/baidu/launcher/utils/EventNumberUtil;
    invoke-virtual {v11, v1}, Lcom/baidu/launcher/utils/EventNumberUtil;->checkEventInfo(Lcom/baidu/launcher/data/item/BaseItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1401
    invoke-virtual {v11, v12}, Lcom/baidu/launcher/utils/EventNumberUtil;->registerView(Landroid/view/View;)Z

    .line 1404
    :cond_1
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/launcher/data/HomeDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/HomeDataManager;

    move-result-object v2

    iget-wide v4, v1, Lcom/baidu/launcher/data/item/HomeFolderInfo;->id:J

    const/4 v6, 0x0

    invoke-virtual {v1}, Lcom/baidu/launcher/data/item/HomeFolderInfo;->getSize()I

    move-result v7

    const/4 v8, 0x0

    move-object v3, v13

    invoke-virtual/range {v2 .. v8}, Lcom/baidu/launcher/data/HomeDataManager;->addOrMoveItemInDatabase(Lcom/baidu/launcher/data/item/HomeItemInfo;JIII)V

    .line 1407
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/logic/ViewManager;->getDragController()Lcom/baidu/launcher/ui/dragdrop/DragController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/dragdrop/DragController;->getDragInfo()Ljava/lang/Object;

    move-result-object v9

    move-object v2, v12

    invoke-virtual/range {v2 .. v9}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->onDrop(Lcom/baidu/launcher/ui/dragdrop/DragSource;IIIILcom/baidu/launcher/ui/dragdrop/DragView;Ljava/lang/Object;)V

    .line 1410
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDockBarItemsOrder:Ljava/util/ArrayList;

    invoke-virtual {v0, v10, v12}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1412
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/DockBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/baidu/launcher/ubc/UBCMetric;->aboutFolder(Landroid/content/Context;Lcom/baidu/launcher/data/item/HomeFolderInfo;I)V

    .line 1413
    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/homeview/DockBar;->removeItem(Lcom/baidu/launcher/ui/homeview/DockBarItem;)V

    .line 1414
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDraggedView:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    invoke-direct {p0, v0}, Lcom/baidu/launcher/ui/homeview/DockBar;->removeItem(Lcom/baidu/launcher/ui/homeview/DockBarItem;)V

    .line 1415
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDockBarItemsOrder:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1416
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDockBarItemsOrder:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDraggedView:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1418
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/DockBar;->layoutItemsParams()V

    .line 1419
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/DockBar;->requestLayout()V

    .line 1421
    invoke-direct {p0}, Lcom/baidu/launcher/ui/homeview/DockBar;->addOrMoveItemInDatabase()V

    .line 1424
    .end local v1           #folderInfo:Lcom/baidu/launcher/data/item/HomeFolderInfo;
    .end local v11           #enventNumberUtil:Lcom/baidu/launcher/utils/EventNumberUtil;
    .end local v12           #folderitem:Lcom/baidu/launcher/ui/homeview/DockBarItem;
    .end local v13           #info:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mNonDockBarDragEnterIn:Z

    goto/16 :goto_0
.end method

.method public estimateDropLocation(Lcom/baidu/launcher/ui/dragdrop/DragSource;IIIILcom/baidu/launcher/ui/dragdrop/DragView;Ljava/lang/Object;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"
    .parameter "recycle"

    .prologue
    .line 1211
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCellTopPadding()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mPaddingTop:I

    return v0
.end method

.method hideFolderAccept()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1267
    const-string v0, "DockBar"

    const-string v1, "hideFolderAccept "

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1268
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mFolderHightItem:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    if-eqz v0, :cond_0

    .line 1269
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mFolderHightItem:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->removeOpenFolderCallbacks()V

    .line 1271
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mFolderCreationAlarm:Lcom/baidu/launcher/ui/animation/Alarm;

    if-eqz v0, :cond_1

    .line 1272
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mFolderCreationAlarm:Lcom/baidu/launcher/ui/animation/Alarm;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/animation/Alarm;->cancelAlarm()V

    .line 1274
    :cond_1
    iput-object v2, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mCreateFolderItem:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    .line 1275
    iput-object v2, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mLastFolderHightItem:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    .line 1276
    return-void
.end method

.method public isVerticalDockbar()Z
    .locals 1

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mIsLandscape:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 1226
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/DockBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/DockBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public layoutItemsParams()V
    .locals 8

    .prologue
    .line 423
    iget-object v5, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/baidu/launcher/ui/animation/Choreographer;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v6, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/baidu/launcher/ui/animation/Choreographer;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 425
    .local v4, screenWidth:I
    iget-object v5, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDockBarItemsOrder:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {}, Lcom/baidu/launcher/utils/Utilities;->getAppIconSize()I

    move-result v6

    iget v7, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->LAYOUT_ADJ:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    mul-int/2addr v5, v6

    sub-int v5, v4, v5

    iget-object v6, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDockBarItemsOrder:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    div-int v2, v5, v6

    .line 426
    .local v2, itemGap:I
    move v3, v2

    .line 427
    .local v3, paddingLeft:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v5, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDockBarItemsOrder:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 428
    iget-object v5, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDockBarItemsOrder:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/homeview/DockBarItem;

    .line 429
    .local v1, item:Lcom/baidu/launcher/ui/homeview/DockBarItem;
    invoke-static {}, Lcom/baidu/launcher/utils/Utilities;->getAppIconSize()I

    move-result v5

    mul-int/2addr v5, v0

    add-int/2addr v5, v3

    mul-int v6, v0, v2

    add-int/2addr v5, v6

    mul-int/lit8 v6, v0, 0x2

    iget v7, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->LAYOUT_ADJ:I

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    iput v5, v1, Lcom/baidu/launcher/ui/homeview/DockBarItem;->originalX:I

    .line 431
    const-string v5, "DockBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "title = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->getShortcutInfo()Lcom/baidu/launcher/data/item/HomeItemInfo;

    move-result-object v7

    iget-object v7, v7, Lcom/baidu/launcher/data/item/HomeItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", x = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Lcom/baidu/launcher/ui/homeview/DockBarItem;->originalX:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 434
    .end local v1           #item:Lcom/baidu/launcher/ui/homeview/DockBarItem;
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 14
    .parameter "v"

    .prologue
    const/4 v11, 0x0

    const/4 v13, 0x1

    .line 148
    move-object v4, p1

    check-cast v4, Lcom/baidu/launcher/ui/homeview/DockBarItem;

    .line 149
    .local v4, item:Lcom/baidu/launcher/ui/homeview/DockBarItem;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 150
    .local v5, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    iget-object v8, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v8}, Lcom/baidu/launcher/ui/logic/ViewManager;->getAppListView()Lcom/baidu/launcher/ui/applistview/AppListView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/baidu/launcher/ui/applistview/AppListView;->getAppsView()Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getDisableHandler()Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$DisableHandler;

    move-result-object v1

    .line 151
    .local v1, disableHandler:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$DisableHandler;
    invoke-virtual {v4}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->getShortcutInfo()Lcom/baidu/launcher/data/item/HomeItemInfo;

    move-result-object v8

    instance-of v8, v8, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    if-eqz v8, :cond_6

    .line 152
    invoke-virtual {v4}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->getShortcutInfo()Lcom/baidu/launcher/data/item/HomeItemInfo;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    .line 153
    .local v2, info:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    iget v8, v2, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->status:I

    const/4 v9, 0x5

    if-ne v8, v9, :cond_1

    .line 154
    iget-object v8, v2, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    new-instance v3, Landroid/content/Intent;

    const-string v8, "com.baidu.appdisable.action.PACKAGES_DISABLE"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 156
    .local v3, intent:Landroid/content/Intent;
    const-string v8, "PACKAGES_DISABLE_MAP"

    invoke-virtual {v3, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 157
    iget-object v8, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 158
    new-instance v6, Landroid/os/Message;

    invoke-direct {v6}, Landroid/os/Message;-><init>()V

    .line 159
    .local v6, msg:Landroid/os/Message;
    iput v13, v6, Landroid/os/Message;->what:I

    .line 160
    iput-object v2, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 161
    invoke-virtual {v1, v6}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$DisableHandler;->sendMessage(Landroid/os/Message;)Z

    .line 198
    .end local v2           #info:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v6           #msg:Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 164
    .restart local v2       #info:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    :cond_1
    iget-object v8, v2, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->intent:Landroid/content/Intent;

    if-nez v8, :cond_2

    .line 165
    new-instance v0, Lcom/baidu/launcher/ui/logic/IBaseView$SwitchData;

    invoke-direct {v0}, Lcom/baidu/launcher/ui/logic/IBaseView$SwitchData;-><init>()V

    .line 166
    .local v0, data:Lcom/baidu/launcher/ui/logic/IBaseView$SwitchData;
    iput-boolean v13, v0, Lcom/baidu/launcher/ui/logic/IBaseView$SwitchData;->hideAnim:Z

    .line 167
    iput-boolean v13, v0, Lcom/baidu/launcher/ui/logic/IBaseView$SwitchData;->showAnim:Z

    .line 168
    iget-object v8, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    const v9, 0x7f080009

    invoke-virtual {v8, v9, v0}, Lcom/baidu/launcher/ui/logic/ViewManager;->switchView(ILcom/baidu/launcher/ui/logic/IBaseView$SwitchData;)V

    .line 170
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/DockBar;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/baidu/launcher/ubc/UBCMetric;->enterLauncher(Landroid/content/Context;)V

    goto :goto_0

    .line 173
    .end local v0           #data:Lcom/baidu/launcher/ui/logic/IBaseView$SwitchData;
    :cond_2
    iget-object v8, v2, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->replacedIntent:Landroid/content/Intent;

    if-eqz v8, :cond_4

    iget v8, v2, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->eventCount:I

    if-eqz v8, :cond_4

    .line 174
    iget-object v8, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mContext:Landroid/content/Context;

    check-cast v8, Lcom/baidu/launcher/app/Launcher;

    iget-object v9, v2, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->replacedIntent:Landroid/content/Intent;

    invoke-virtual {v8, v9, v2}, Lcom/baidu/launcher/app/Launcher;->startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 175
    iget-object v8, v2, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->intent:Landroid/content/Intent;

    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mContext:Landroid/content/Context;

    invoke-direct {p0, v8, v9}, Lcom/baidu/launcher/ui/homeview/DockBar;->updateAppClickCount(Landroid/content/Intent;Landroid/content/Context;)V

    .line 178
    :cond_3
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/DockBar;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, v2, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->replacedIntent:Landroid/content/Intent;

    invoke-static {v8, v9}, Lcom/baidu/launcher/ubc/UBCMetric;->startAppFromDock(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 181
    :cond_4
    iget-object v3, v2, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->intent:Landroid/content/Intent;

    .line 182
    .restart local v3       #intent:Landroid/content/Intent;
    const/4 v8, 0x2

    new-array v7, v8, [I

    .line 183
    .local v7, pos:[I
    invoke-virtual {p1, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 184
    new-instance v8, Landroid/graphics/Rect;

    aget v9, v7, v11

    aget v10, v7, v13

    aget v11, v7, v11

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v12

    add-int/2addr v11, v12

    aget v12, v7, v13

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v13

    add-int/2addr v12, v13

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 186
    iget-object v8, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mContext:Landroid/content/Context;

    check-cast v8, Lcom/baidu/launcher/app/Launcher;

    invoke-virtual {v8, v3, v2}, Lcom/baidu/launcher/app/Launcher;->startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 187
    iget-object v8, v2, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->intent:Landroid/content/Intent;

    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mContext:Landroid/content/Context;

    invoke-direct {p0, v8, v9}, Lcom/baidu/launcher/ui/homeview/DockBar;->updateAppClickCount(Landroid/content/Intent;Landroid/content/Context;)V

    .line 190
    :cond_5
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/DockBar;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v3}, Lcom/baidu/launcher/ubc/UBCMetric;->startAppFromDock(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 193
    .end local v2           #info:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v7           #pos:[I
    :cond_6
    invoke-virtual {v4}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->getShortcutInfo()Lcom/baidu/launcher/data/item/HomeItemInfo;

    move-result-object v8

    instance-of v8, v8, Lcom/baidu/launcher/data/item/HomeFolderInfo;

    if-eqz v8, :cond_0

    .line 194
    invoke-virtual {v4}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->getShortcutInfo()Lcom/baidu/launcher/data/item/HomeItemInfo;

    move-result-object v8

    check-cast v8, Lcom/baidu/launcher/data/item/HomeFolderInfo;

    invoke-virtual {v8}, Lcom/baidu/launcher/data/item/HomeFolderInfo;->isOpened()Z

    move-result v8

    if-nez v8, :cond_0

    .line 195
    iget-object v8, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v8, v4, v11}, Lcom/baidu/launcher/ui/logic/ViewManager;->openFolder(Lcom/baidu/launcher/ui/folder/FolderHolder;Z)V

    goto/16 :goto_0
.end method

.method public onDragEnter(Lcom/baidu/launcher/ui/dragdrop/DragSource;IIIILcom/baidu/launcher/ui/dragdrop/DragView;Ljava/lang/Object;)V
    .locals 13
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 729
    const-string v9, "DockBar"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onDragEnter "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "info = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mAnimator:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mAnimator:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    invoke-virtual {v9}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->isStarted()Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mAnimator:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    invoke-virtual {v9}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->isRunning()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 854
    .end local p7
    :cond_0
    :goto_0
    return-void

    .line 735
    .restart local p7
    :cond_1
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mCanCreateFolder:Z

    .line 736
    const/4 v9, -0x1

    iput v9, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDraggedOriginIndex:I

    .line 737
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/baidu/launcher/ui/homeview/DockBar;->cleanupReorder(Z)V

    .line 738
    invoke-direct {p0}, Lcom/baidu/launcher/ui/homeview/DockBar;->cleanupFolderCreation()V

    .line 740
    sub-int v9, p2, p4

    invoke-virtual/range {p6 .. p6}, Lcom/baidu/launcher/ui/dragdrop/DragView;->getWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    add-int v2, v9, v10

    .line 741
    .local v2, dragViewCenterX:I
    iput v2, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mXPosition:I

    .line 742
    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDockBarItemsOrder:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    iput v9, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mOriginItemSize:I

    .line 743
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mNonDockBarDragEnterIn:Z

    .line 744
    const/4 v1, 0x0

    .line 745
    .local v1, allAppButtonItem:Lcom/baidu/launcher/ui/homeview/DockBarItem;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDockBarItemsOrder:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v5, v9, :cond_3

    .line 746
    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDockBarItemsOrder:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/baidu/launcher/ui/homeview/DockBarItem;

    .line 747
    .local v8, item:Lcom/baidu/launcher/ui/homeview/DockBarItem;
    invoke-virtual {v8}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->getShortcutInfo()Lcom/baidu/launcher/data/item/HomeItemInfo;

    move-result-object v7

    .line 748
    .local v7, info:Lcom/baidu/launcher/data/item/HomeItemInfo;
    instance-of v9, v7, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    if-eqz v9, :cond_2

    check-cast v7, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    .end local v7           #info:Lcom/baidu/launcher/data/item/HomeItemInfo;
    iget-object v9, v7, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->intent:Landroid/content/Intent;

    if-nez v9, :cond_2

    .line 749
    move-object v1, v8

    .line 745
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 753
    .end local v8           #item:Lcom/baidu/launcher/ui/homeview/DockBarItem;
    :cond_3
    if-nez v1, :cond_4

    move-object/from16 v0, p7

    instance-of v9, v0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    if-eqz v9, :cond_5

    move-object/from16 v9, p7

    check-cast v9, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    iget-object v9, v9, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->intent:Landroid/content/Intent;

    if-nez v9, :cond_5

    .line 754
    :cond_4
    const/4 v9, 0x5

    iput v9, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mMaxDockBarItemCount:I

    .line 756
    :cond_5
    instance-of v9, p1, Lcom/baidu/launcher/ui/homeview/DockBar;

    if-nez v9, :cond_b

    .line 757
    move-object/from16 v0, p7

    instance-of v9, v0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    if-eqz v9, :cond_7

    .line 758
    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDockBarItemsOrder:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    iget v10, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mMaxDockBarItemCount:I

    if-ge v9, v10, :cond_6

    move-object/from16 v7, p7

    .line 759
    check-cast v7, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    .line 760
    .local v7, info:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    iget-boolean v9, v7, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->isPreset:Z

    if-nez v9, :cond_0

    .line 763
    const/4 v9, 0x1

    invoke-direct {p0, p2, v7, v9}, Lcom/baidu/launcher/ui/homeview/DockBar;->createDraggedView(ILcom/baidu/launcher/data/item/HomeItemInfo;Z)V

    .line 764
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mNonDockBarDragEnterIn:Z

    goto :goto_0

    .line 765
    .end local v7           #info:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    :cond_6
    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDockBarItemsOrder:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    iget v10, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mMaxDockBarItemCount:I

    if-ne v9, v10, :cond_0

    move-object/from16 v7, p7

    .line 766
    check-cast v7, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    .line 767
    .restart local v7       #info:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    iget-boolean v9, v7, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->isPreset:Z

    if-nez v9, :cond_0

    .line 770
    invoke-direct {p0, v7}, Lcom/baidu/launcher/ui/homeview/DockBar;->initItem(Lcom/baidu/launcher/data/item/HomeItemInfo;)Lcom/baidu/launcher/ui/homeview/DockBarItem;

    move-result-object v9

    iput-object v9, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDraggedView:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    .line 771
    const/4 v9, -0x1

    iput v9, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDraggedOriginIndex:I

    .line 772
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mNonDockBarDragEnterIn:Z

    goto/16 :goto_0

    .line 774
    .end local v7           #info:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    :cond_7
    move-object/from16 v0, p7

    instance-of v9, v0, Lcom/baidu/launcher/data/item/ListAppInfo;

    if-eqz v9, :cond_9

    .line 775
    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDockBarItemsOrder:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    iget v10, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mMaxDockBarItemCount:I

    if-ge v9, v10, :cond_8

    move-object/from16 v7, p7

    .line 776
    check-cast v7, Lcom/baidu/launcher/data/item/ListAppInfo;

    .line 777
    .local v7, info:Lcom/baidu/launcher/data/item/ListAppInfo;
    iget-boolean v9, v7, Lcom/baidu/launcher/data/item/ListAppInfo;->isPreset:Z

    if-nez v9, :cond_0

    .line 780
    new-instance v4, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    invoke-direct {v4, v7}, Lcom/baidu/launcher/data/item/HomeShortcutInfo;-><init>(Lcom/baidu/launcher/data/item/ListAppInfo;)V

    .line 781
    .local v4, homeInfo:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    const/4 v9, 0x1

    invoke-direct {p0, p2, v4, v9}, Lcom/baidu/launcher/ui/homeview/DockBar;->createDraggedView(ILcom/baidu/launcher/data/item/HomeItemInfo;Z)V

    .line 782
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mNonDockBarDragEnterIn:Z

    goto/16 :goto_0

    .line 783
    .end local v4           #homeInfo:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    .end local v7           #info:Lcom/baidu/launcher/data/item/ListAppInfo;
    :cond_8
    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDockBarItemsOrder:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    iget v10, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mMaxDockBarItemCount:I

    if-ne v9, v10, :cond_0

    move-object/from16 v7, p7

    .line 784
    check-cast v7, Lcom/baidu/launcher/data/item/ListAppInfo;

    .line 785
    .restart local v7       #info:Lcom/baidu/launcher/data/item/ListAppInfo;
    iget-boolean v9, v7, Lcom/baidu/launcher/data/item/ListAppInfo;->isPreset:Z

    if-nez v9, :cond_0

    .line 788
    new-instance v4, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    invoke-direct {v4, v7}, Lcom/baidu/launcher/data/item/HomeShortcutInfo;-><init>(Lcom/baidu/launcher/data/item/ListAppInfo;)V

    .line 789
    .restart local v4       #homeInfo:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    invoke-direct {p0, v4}, Lcom/baidu/launcher/ui/homeview/DockBar;->initItem(Lcom/baidu/launcher/data/item/HomeItemInfo;)Lcom/baidu/launcher/ui/homeview/DockBarItem;

    move-result-object v9

    iput-object v9, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDraggedView:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    .line 790
    const/4 v9, -0x1

    iput v9, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDraggedOriginIndex:I

    .line 791
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mNonDockBarDragEnterIn:Z

    goto/16 :goto_0

    .line 793
    .end local v4           #homeInfo:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    .end local v7           #info:Lcom/baidu/launcher/data/item/ListAppInfo;
    :cond_9
    move-object/from16 v0, p7

    instance-of v9, v0, Lcom/baidu/launcher/data/item/ListFolderInfo;

    if-eqz v9, :cond_a

    .line 794
    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDockBarItemsOrder:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    iget v10, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mMaxDockBarItemCount:I

    if-ge v9, v10, :cond_0

    move-object/from16 v7, p7

    .line 795
    check-cast v7, Lcom/baidu/launcher/data/item/ListFolderInfo;

    .line 796
    .local v7, info:Lcom/baidu/launcher/data/item/ListFolderInfo;
    iget-boolean v9, v7, Lcom/baidu/launcher/data/item/ListFolderInfo;->isPreset:Z

    if-nez v9, :cond_0

    .line 799
    new-instance v4, Lcom/baidu/launcher/data/item/HomeFolderInfo;

    invoke-direct {v4, v7}, Lcom/baidu/launcher/data/item/HomeFolderInfo;-><init>(Lcom/baidu/launcher/data/item/ListFolderInfo;)V

    .line 800
    .local v4, homeInfo:Lcom/baidu/launcher/data/item/HomeFolderInfo;
    const/4 v9, 0x1

    invoke-direct {p0, p2, v4, v9}, Lcom/baidu/launcher/ui/homeview/DockBar;->createDraggedView(ILcom/baidu/launcher/data/item/HomeItemInfo;Z)V

    .line 801
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mNonDockBarDragEnterIn:Z

    goto/16 :goto_0

    .line 803
    .end local v4           #homeInfo:Lcom/baidu/launcher/data/item/HomeFolderInfo;
    .end local v7           #info:Lcom/baidu/launcher/data/item/ListFolderInfo;
    :cond_a
    move-object/from16 v0, p7

    instance-of v9, v0, Lcom/baidu/launcher/data/item/HomeFolderInfo;

    if-eqz v9, :cond_0

    .line 804
    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDockBarItemsOrder:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    iget v10, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mMaxDockBarItemCount:I

    if-ge v9, v10, :cond_0

    move-object/from16 v7, p7

    .line 805
    check-cast v7, Lcom/baidu/launcher/data/item/HomeFolderInfo;

    .line 806
    .local v7, info:Lcom/baidu/launcher/data/item/HomeFolderInfo;
    iget-boolean v9, v7, Lcom/baidu/launcher/data/item/HomeFolderInfo;->isPreset:Z

    if-nez v9, :cond_0

    .line 809
    const/4 v9, 0x1

    invoke-direct {p0, p2, v7, v9}, Lcom/baidu/launcher/ui/homeview/DockBar;->createDraggedView(ILcom/baidu/launcher/data/item/HomeItemInfo;Z)V

    .line 810
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mNonDockBarDragEnterIn:Z

    goto/16 :goto_0

    .line 814
    .end local v7           #info:Lcom/baidu/launcher/data/item/HomeFolderInfo;
    :cond_b
    move-object/from16 v0, p7

    instance-of v9, v0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    if-eqz v9, :cond_10

    .line 815
    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDockBarItemsOrder:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    iget v10, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mMaxDockBarItemCount:I

    if-ge v9, v10, :cond_f

    move-object/from16 v7, p7

    .line 816
    check-cast v7, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    .line 817
    .local v7, info:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    iget-boolean v9, v7, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->isPreset:Z

    if-nez v9, :cond_0

    .line 820
    const/4 v3, 0x0

    .line 821
    .local v3, hasContent:Z
    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDockBarItemsOrder:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/baidu/launcher/ui/homeview/DockBarItem;

    .line 822
    .restart local v8       #item:Lcom/baidu/launcher/ui/homeview/DockBarItem;
    iget-wide v9, v7, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->id:J

    invoke-virtual {v8}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->getShortcutInfo()Lcom/baidu/launcher/data/item/HomeItemInfo;

    move-result-object v11

    iget-wide v11, v11, Lcom/baidu/launcher/data/item/HomeItemInfo;->id:J

    cmp-long v9, v9, v11

    if-nez v9, :cond_c

    .line 823
    const/4 v3, 0x1

    .line 827
    .end local v8           #item:Lcom/baidu/launcher/ui/homeview/DockBarItem;
    :cond_d
    if-nez v3, :cond_e

    .line 828
    const/4 v9, 0x0

    invoke-direct {p0, p2, v7, v9}, Lcom/baidu/launcher/ui/homeview/DockBar;->createDraggedView(ILcom/baidu/launcher/data/item/HomeItemInfo;Z)V

    .line 830
    :cond_e
    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDraggedView:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->setVisibility(I)V

    .line 832
    .end local v3           #hasContent:Z
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #info:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    :cond_f
    invoke-static {}, Lcom/baidu/launcher/utils/EventNumberUtil;->getInstance()Lcom/baidu/launcher/utils/EventNumberUtil;

    move-result-object v9

    check-cast p7, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    .end local p7
    move-object/from16 v0, p7

    invoke-virtual {v9, v0}, Lcom/baidu/launcher/utils/EventNumberUtil;->checkEventInfo(Lcom/baidu/launcher/data/item/BaseItemInfo;)Z

    goto/16 :goto_0

    .line 833
    .restart local p7
    :cond_10
    move-object/from16 v0, p7

    instance-of v9, v0, Lcom/baidu/launcher/data/item/HomeFolderInfo;

    if-eqz v9, :cond_0

    .line 834
    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDockBarItemsOrder:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    iget v10, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mMaxDockBarItemCount:I

    if-ge v9, v10, :cond_14

    move-object/from16 v7, p7

    .line 835
    check-cast v7, Lcom/baidu/launcher/data/item/HomeFolderInfo;

    .line 836
    .local v7, info:Lcom/baidu/launcher/data/item/HomeFolderInfo;
    iget-boolean v9, v7, Lcom/baidu/launcher/data/item/HomeFolderInfo;->isPreset:Z

    if-nez v9, :cond_0

    .line 839
    const/4 v3, 0x0

    .line 840
    .restart local v3       #hasContent:Z
    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDockBarItemsOrder:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_11
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_12

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/baidu/launcher/ui/homeview/DockBarItem;

    .line 841
    .restart local v8       #item:Lcom/baidu/launcher/ui/homeview/DockBarItem;
    iget-wide v9, v7, Lcom/baidu/launcher/data/item/HomeFolderInfo;->id:J

    invoke-virtual {v8}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->getShortcutInfo()Lcom/baidu/launcher/data/item/HomeItemInfo;

    move-result-object v11

    iget-wide v11, v11, Lcom/baidu/launcher/data/item/HomeItemInfo;->id:J

    cmp-long v9, v9, v11

    if-nez v9, :cond_11

    .line 842
    const/4 v3, 0x1

    .line 846
    .end local v8           #item:Lcom/baidu/launcher/ui/homeview/DockBarItem;
    :cond_12
    if-nez v3, :cond_13

    .line 847
    const/4 v9, 0x0

    invoke-direct {p0, p2, v7, v9}, Lcom/baidu/launcher/ui/homeview/DockBar;->createDraggedView(ILcom/baidu/launcher/data/item/HomeItemInfo;Z)V

    .line 849
    :cond_13
    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDraggedView:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->setVisibility(I)V

    .line 851
    .end local v3           #hasContent:Z
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #info:Lcom/baidu/launcher/data/item/HomeFolderInfo;
    :cond_14
    invoke-static {}, Lcom/baidu/launcher/utils/EventNumberUtil;->getInstance()Lcom/baidu/launcher/utils/EventNumberUtil;

    move-result-object v9

    check-cast p7, Lcom/baidu/launcher/data/item/HomeFolderInfo;

    .end local p7
    move-object/from16 v0, p7

    invoke-virtual {v9, v0}, Lcom/baidu/launcher/utils/EventNumberUtil;->checkEventInfo(Lcom/baidu/launcher/data/item/BaseItemInfo;)Z

    goto/16 :goto_0
.end method

.method public onDragExit(Lcom/baidu/launcher/ui/dragdrop/DragSource;IIIILcom/baidu/launcher/ui/dragdrop/DragView;Ljava/lang/Object;)V
    .locals 6
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    const/4 v5, 0x0

    .line 999
    const-string v2, "DockBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDragExit "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", dragInfo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mAnimator:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mAnimator:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->isStarted()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mAnimator:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1124
    :cond_0
    :goto_0
    return-void

    .line 1006
    :cond_1
    invoke-virtual {p0, v5}, Lcom/baidu/launcher/ui/homeview/DockBar;->setDragMode(I)V

    .line 1007
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/baidu/launcher/ui/homeview/DockBar;->cleanupReorder(Z)V

    .line 1009
    sub-int v2, p2, p4

    invoke-virtual {p6}, Lcom/baidu/launcher/ui/dragdrop/DragView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int v0, v2, v3

    .line 1010
    .local v0, dragViewCenterX:I
    iput v0, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mXPosition:I

    .line 1011
    instance-of v2, p7, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    if-eqz v2, :cond_4

    .line 1012
    instance-of v2, p1, Lcom/baidu/launcher/ui/homeview/DockBar;

    if-eqz v2, :cond_3

    .line 1013
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDockBarItemsOrder:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mMaxDockBarItemCount:I

    if-gt v2, v3, :cond_2

    move-object v1, p7

    .line 1014
    check-cast v1, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    .line 1015
    .local v1, info:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    iget-boolean v2, v1, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->isPreset:Z

    if-nez v2, :cond_0

    .line 1019
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDraggedView:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    invoke-direct {p0, v2}, Lcom/baidu/launcher/ui/homeview/DockBar;->removeItem(Lcom/baidu/launcher/ui/homeview/DockBarItem;)V

    .line 1020
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDockBarItemsOrder:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDraggedView:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1021
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/DockBar;->layoutItemsParams()V

    .line 1022
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/DockBar;->requestLayout()V

    .line 1024
    iget-object v2, v1, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->intent:Landroid/content/Intent;

    if-nez v2, :cond_2

    .line 1025
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDockBarItemsOrder:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mOriginItemSize:I

    .line 1026
    const/4 v2, 0x4

    iput v2, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mMaxDockBarItemCount:I

    .line 1121
    .end local v1           #info:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    :cond_2
    :goto_1
    iput-boolean v5, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mNonDockBarDragEnterIn:Z

    .line 1122
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mLastNearestItem:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    .line 1123
    iput v5, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mOriginItemSize:I

    goto :goto_0

    .line 1030
    :cond_3
    iget v2, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mOriginItemSize:I

    iget v3, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mMaxDockBarItemCount:I

    if-ge v2, v3, :cond_2

    move-object v1, p7

    .line 1031
    check-cast v1, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    .line 1032
    .restart local v1       #info:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    iget-boolean v2, v1, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->isPreset:Z

    if-nez v2, :cond_0

    .line 1035
    iget-object v2, v1, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_2

    .line 1036
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDraggedView:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    invoke-direct {p0, v2}, Lcom/baidu/launcher/ui/homeview/DockBar;->removeItem(Lcom/baidu/launcher/ui/homeview/DockBarItem;)V

    .line 1037
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDockBarItemsOrder:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDraggedView:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1038
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/DockBar;->layoutItemsParams()V

    .line 1039
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/DockBar;->requestLayout()V

    goto :goto_1

    .line 1043
    .end local v1           #info:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    :cond_4
    instance-of v2, p7, Lcom/baidu/launcher/data/item/ListAppInfo;

    if-eqz v2, :cond_6

    .line 1044
    instance-of v2, p1, Lcom/baidu/launcher/ui/homeview/DockBar;

    if-eqz v2, :cond_5

    .line 1045
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDockBarItemsOrder:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mMaxDockBarItemCount:I

    if-gt v2, v3, :cond_2

    move-object v1, p7

    .line 1046
    check-cast v1, Lcom/baidu/launcher/data/item/ListAppInfo;

    .line 1047
    .local v1, info:Lcom/baidu/launcher/data/item/ListAppInfo;
    iget-boolean v2, v1, Lcom/baidu/launcher/data/item/ListAppInfo;->isPreset:Z

    if-nez v2, :cond_0

    .line 1050
    iget-object v2, v1, Lcom/baidu/launcher/data/item/ListAppInfo;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_2

    .line 1051
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDraggedView:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    invoke-direct {p0, v2}, Lcom/baidu/launcher/ui/homeview/DockBar;->removeItem(Lcom/baidu/launcher/ui/homeview/DockBarItem;)V

    .line 1052
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDockBarItemsOrder:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDraggedView:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1053
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/DockBar;->layoutItemsParams()V

    .line 1054
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/DockBar;->requestLayout()V

    goto :goto_1

    .line 1058
    .end local v1           #info:Lcom/baidu/launcher/data/item/ListAppInfo;
    :cond_5
    iget v2, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mOriginItemSize:I

    iget v3, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mMaxDockBarItemCount:I

    if-ge v2, v3, :cond_2

    move-object v1, p7

    .line 1059
    check-cast v1, Lcom/baidu/launcher/data/item/ListAppInfo;

    .line 1060
    .restart local v1       #info:Lcom/baidu/launcher/data/item/ListAppInfo;
    iget-boolean v2, v1, Lcom/baidu/launcher/data/item/ListAppInfo;->isPreset:Z

    if-nez v2, :cond_0

    .line 1063
    iget-object v2, v1, Lcom/baidu/launcher/data/item/ListAppInfo;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_2

    .line 1064
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDraggedView:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    invoke-direct {p0, v2}, Lcom/baidu/launcher/ui/homeview/DockBar;->removeItem(Lcom/baidu/launcher/ui/homeview/DockBarItem;)V

    .line 1065
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDockBarItemsOrder:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDraggedView:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1066
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/DockBar;->layoutItemsParams()V

    .line 1067
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/DockBar;->requestLayout()V

    goto :goto_1

    .line 1071
    .end local v1           #info:Lcom/baidu/launcher/data/item/ListAppInfo;
    :cond_6
    instance-of v2, p7, Lcom/baidu/launcher/data/item/ListFolderInfo;

    if-eqz v2, :cond_8

    .line 1072
    instance-of v2, p1, Lcom/baidu/launcher/ui/homeview/DockBar;

    if-eqz v2, :cond_7

    .line 1073
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDockBarItemsOrder:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mMaxDockBarItemCount:I

    if-gt v2, v3, :cond_2

    move-object v1, p7

    .line 1074
    check-cast v1, Lcom/baidu/launcher/data/item/ListFolderInfo;

    .line 1075
    .local v1, info:Lcom/baidu/launcher/data/item/ListFolderInfo;
    iget-boolean v2, v1, Lcom/baidu/launcher/data/item/ListFolderInfo;->isPreset:Z

    if-nez v2, :cond_0

    .line 1078
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDraggedView:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    invoke-direct {p0, v2}, Lcom/baidu/launcher/ui/homeview/DockBar;->removeItem(Lcom/baidu/launcher/ui/homeview/DockBarItem;)V

    .line 1079
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDockBarItemsOrder:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDraggedView:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1080
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/DockBar;->layoutItemsParams()V

    .line 1081
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/DockBar;->requestLayout()V

    goto/16 :goto_1

    .line 1084
    .end local v1           #info:Lcom/baidu/launcher/data/item/ListFolderInfo;
    :cond_7
    iget v2, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mOriginItemSize:I

    iget v3, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mMaxDockBarItemCount:I

    if-ge v2, v3, :cond_2

    move-object v1, p7

    .line 1085
    check-cast v1, Lcom/baidu/launcher/data/item/ListFolderInfo;

    .line 1086
    .restart local v1       #info:Lcom/baidu/launcher/data/item/ListFolderInfo;
    iget-boolean v2, v1, Lcom/baidu/launcher/data/item/ListFolderInfo;->isPreset:Z

    if-nez v2, :cond_0

    .line 1089
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDraggedView:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    invoke-direct {p0, v2}, Lcom/baidu/launcher/ui/homeview/DockBar;->removeItem(Lcom/baidu/launcher/ui/homeview/DockBarItem;)V

    .line 1090
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDockBarItemsOrder:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDraggedView:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1091
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/DockBar;->layoutItemsParams()V

    .line 1092
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/DockBar;->requestLayout()V

    goto/16 :goto_1

    .line 1095
    .end local v1           #info:Lcom/baidu/launcher/data/item/ListFolderInfo;
    :cond_8
    instance-of v2, p7, Lcom/baidu/launcher/data/item/HomeFolderInfo;

    if-eqz v2, :cond_2

    .line 1096
    instance-of v2, p1, Lcom/baidu/launcher/ui/homeview/DockBar;

    if-eqz v2, :cond_9

    .line 1097
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDockBarItemsOrder:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mMaxDockBarItemCount:I

    if-gt v2, v3, :cond_2

    move-object v1, p7

    .line 1098
    check-cast v1, Lcom/baidu/launcher/data/item/HomeFolderInfo;

    .line 1099
    .local v1, info:Lcom/baidu/launcher/data/item/HomeFolderInfo;
    iget-boolean v2, v1, Lcom/baidu/launcher/data/item/HomeFolderInfo;->isPreset:Z

    if-nez v2, :cond_0

    .line 1102
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDraggedView:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    invoke-direct {p0, v2}, Lcom/baidu/launcher/ui/homeview/DockBar;->removeItem(Lcom/baidu/launcher/ui/homeview/DockBarItem;)V

    .line 1103
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDockBarItemsOrder:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDraggedView:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1104
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/DockBar;->layoutItemsParams()V

    .line 1105
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/DockBar;->requestLayout()V

    goto/16 :goto_1

    .line 1108
    .end local v1           #info:Lcom/baidu/launcher/data/item/HomeFolderInfo;
    :cond_9
    iget v2, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mOriginItemSize:I

    iget v3, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mMaxDockBarItemCount:I

    if-ge v2, v3, :cond_2

    move-object v1, p7

    .line 1109
    check-cast v1, Lcom/baidu/launcher/data/item/HomeFolderInfo;

    .line 1110
    .restart local v1       #info:Lcom/baidu/launcher/data/item/HomeFolderInfo;
    iget-boolean v2, v1, Lcom/baidu/launcher/data/item/HomeFolderInfo;->isPreset:Z

    if-nez v2, :cond_0

    .line 1113
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDraggedView:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    invoke-direct {p0, v2}, Lcom/baidu/launcher/ui/homeview/DockBar;->removeItem(Lcom/baidu/launcher/ui/homeview/DockBarItem;)V

    .line 1114
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDockBarItemsOrder:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDraggedView:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1115
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/DockBar;->layoutItemsParams()V

    .line 1116
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/DockBar;->requestLayout()V

    goto/16 :goto_1
.end method

.method public onDragOver(Lcom/baidu/launcher/ui/dragdrop/DragSource;IIIILcom/baidu/launcher/ui/dragdrop/DragView;Ljava/lang/Object;)V
    .locals 4
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 877
    sub-int v2, p2, p4

    invoke-virtual {p6}, Lcom/baidu/launcher/ui/dragdrop/DragView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int v0, v2, v3

    .line 878
    .local v0, dragViewCenterX:I
    sub-int v2, p3, p4

    invoke-virtual {p6}, Lcom/baidu/launcher/ui/dragdrop/DragView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int v1, v2, v3

    .line 883
    .local v1, dragViewCenterY:I
    iput v0, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mXPosition:I

    .line 884
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/DockBar;->isVerticalDockbar()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 885
    instance-of v2, p1, Lcom/baidu/launcher/ui/homeview/DockBar;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDraggedView:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    if-eqz v2, :cond_1

    .line 887
    iget v2, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mPaddingTop:I

    sub-int v2, v1, v2

    invoke-direct {p0, v2}, Lcom/baidu/launcher/ui/homeview/DockBar;->handleDragOver(I)V

    .line 909
    :cond_0
    :goto_0
    return-void

    .line 891
    :cond_1
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDraggedView:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mNonDockBarDragEnterIn:Z

    if-eqz v2, :cond_0

    .line 892
    iget v2, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mPaddingTop:I

    sub-int v2, v1, v2

    invoke-direct {p0, v2}, Lcom/baidu/launcher/ui/homeview/DockBar;->handleDragOver(I)V

    goto :goto_0

    .line 897
    :cond_2
    instance-of v2, p1, Lcom/baidu/launcher/ui/homeview/DockBar;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDraggedView:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    if-eqz v2, :cond_3

    .line 899
    invoke-direct {p0, v0}, Lcom/baidu/launcher/ui/homeview/DockBar;->handleDragOver(I)V

    goto :goto_0

    .line 903
    :cond_3
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDraggedView:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mNonDockBarDragEnterIn:Z

    if-eqz v2, :cond_0

    .line 904
    invoke-direct {p0, v0}, Lcom/baidu/launcher/ui/homeview/DockBar;->handleDragOver(I)V

    goto :goto_0
.end method

.method public onDrop(Lcom/baidu/launcher/ui/dragdrop/DragSource;IIIILcom/baidu/launcher/ui/dragdrop/DragView;Ljava/lang/Object;)V
    .locals 12
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 676
    const-string v1, "DockBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDrop "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mAnimator:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 679
    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mAnimator:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->end()V

    .line 682
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mCanCreateFolder:Z

    .line 683
    move-object/from16 v0, p7

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/homeview/DockBar;->checkCreateFolderAction(Ljava/lang/Object;)Z

    move-result v10

    .line 684
    .local v10, createFolder:Z
    if-eqz v10, :cond_3

    .line 685
    instance-of v1, p1, Lcom/baidu/launcher/ui/folder/UserFolder;

    if-eqz v1, :cond_2

    .line 686
    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mCreateFolderItem:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    const/4 v2, 0x1

    invoke-interface {p1, v1, v2}, Lcom/baidu/launcher/ui/dragdrop/DragSource;->onDropCompleted(Landroid/view/View;Z)V

    .line 690
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/homeview/DockBar;->setDragMode(I)V

    .line 719
    :cond_1
    :goto_1
    return-void

    .line 688
    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, v1, v2}, Lcom/baidu/launcher/ui/dragdrop/DragSource;->onDropCompleted(Landroid/view/View;Z)V

    goto :goto_0

    .line 694
    :cond_3
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/baidu/launcher/ui/homeview/DockBar;->cleanupReorder(Z)V

    .line 695
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/homeview/DockBar;->setDragMode(I)V

    .line 696
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mLastNearestItem:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    .line 698
    instance-of v1, p1, Lcom/baidu/launcher/ui/homeview/DockBar;

    if-nez v1, :cond_5

    .line 699
    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDraggedView:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDraggedView:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    invoke-direct {p0, v1}, Lcom/baidu/launcher/ui/homeview/DockBar;->findIndexByItem(Lcom/baidu/launcher/ui/homeview/DockBarItem;)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_5

    .line 700
    invoke-direct {p0}, Lcom/baidu/launcher/ui/homeview/DockBar;->addOrMoveItemInDatabase()V

    .line 702
    move-object/from16 v0, p7

    instance-of v1, v0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    if-nez v1, :cond_4

    move-object/from16 v0, p7

    instance-of v1, v0, Lcom/baidu/launcher/data/item/ListAppInfo;

    if-eqz v1, :cond_5

    .line 703
    :cond_4
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/DockBar;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p7

    invoke-static {v1, v0}, Lcom/baidu/launcher/ubc/UBCMetric;->addShortcutToDock(Landroid/content/Context;Ljava/lang/Object;)V

    .line 707
    :cond_5
    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDraggedView:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    if-eqz v1, :cond_1

    .line 708
    const/4 v1, 0x2

    new-array v11, v1, [I

    .line 709
    .local v11, location:[I
    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDraggedView:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    invoke-virtual {v1, v11}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->getLocationOnScreen([I)V

    .line 710
    const/4 v1, 0x1

    aget v2, v11, v1

    invoke-virtual/range {p6 .. p6}, Lcom/baidu/launcher/ui/dragdrop/DragView;->getMeasuredHeight()I

    move-result v3

    iget-object v4, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDraggedView:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    invoke-virtual {v4}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    aput v2, v11, v1

    .line 712
    const/4 v1, 0x0

    aget v2, v11, v1

    invoke-virtual/range {p6 .. p6}, Lcom/baidu/launcher/ui/dragdrop/DragView;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDraggedView:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    invoke-virtual {v4}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    aput v2, v11, v1

    .line 714
    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDraggedView:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->setImageBitmap(Landroid/content/Context;Z)V

    .line 715
    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/logic/ViewManager;->getDragLayer()Lcom/baidu/launcher/ui/dragdrop/DragLayer;

    move-result-object v1

    iget-object v3, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDraggedView:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    const/4 v2, 0x2

    new-array v4, v2, [I

    const/4 v2, 0x0

    const/4 v5, 0x0

    aget v5, v11, v5

    aput v5, v4, v2

    const/4 v2, 0x1

    const/4 v5, 0x1

    aget v5, v11, v5

    aput v5, v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f80

    const/4 v9, 0x0

    move-object/from16 v2, p6

    invoke-virtual/range {v1 .. v9}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->animateViewIntoPosition(Landroid/view/View;Landroid/view/View;[ILcom/baidu/launcher/ui/dragdrop/DragSource;Ljava/lang/Object;Ljava/lang/Runnable;FI)V

    goto/16 :goto_1
.end method

.method public onDropCompleted(Landroid/view/View;Z)V
    .locals 12
    .parameter "target"
    .parameter "success"

    .prologue
    const/16 v11, 0x21

    const/16 v10, 0x16

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 510
    if-eqz p1, :cond_0

    .line 511
    const-string v5, "DockBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onDropCompleted "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    :cond_0
    invoke-virtual {p0, v8}, Lcom/baidu/launcher/ui/homeview/DockBar;->setDragMode(I)V

    .line 518
    instance-of v5, p1, Lcom/baidu/launcher/ui/dragdrop/DeleteZone;

    if-eqz v5, :cond_3

    .line 519
    if-eqz p2, :cond_2

    .line 520
    iget-object v5, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDraggedView:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    invoke-virtual {v5}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->getShortcutInfo()Lcom/baidu/launcher/data/item/HomeItemInfo;

    move-result-object v4

    .line 521
    .local v4, tag:Lcom/baidu/launcher/data/item/BaseItemInfo;
    instance-of v5, v4, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    if-eqz v5, :cond_1

    move-object v0, v4

    .line 522
    check-cast v0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    .line 523
    .local v0, info:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    iget-object v5, v0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->intent:Landroid/content/Intent;

    if-nez v5, :cond_1

    .line 524
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/DockBar;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c028e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 525
    .local v3, source:Ljava/lang/String;
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 526
    .local v2, sb:Landroid/text/SpannableString;
    new-instance v5, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v6, 0x10

    invoke-direct {v5, v6, v9}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {v2, v5, v8, v10, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 527
    new-instance v5, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v6, 0xd

    invoke-direct {v5, v6, v9}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2, v5, v10, v6, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 528
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mContext:Landroid/content/Context;

    const v7, 0x1030133

    invoke-direct {v5, v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v6, 0x7f0c028d

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/baidu/launcher/ui/homeview/DockBar$4;

    invoke-direct {v6, p0}, Lcom/baidu/launcher/ui/homeview/DockBar$4;-><init>(Lcom/baidu/launcher/ui/homeview/DockBar;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/high16 v6, 0x104

    new-instance v7, Lcom/baidu/launcher/ui/homeview/DockBar$3;

    invoke-direct {v7, p0}, Lcom/baidu/launcher/ui/homeview/DockBar$3;-><init>(Lcom/baidu/launcher/ui/homeview/DockBar;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x104000a

    new-instance v7, Lcom/baidu/launcher/ui/homeview/DockBar$2;

    invoke-direct {v7, p0}, Lcom/baidu/launcher/ui/homeview/DockBar$2;-><init>(Lcom/baidu/launcher/ui/homeview/DockBar;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 571
    .local v1, mConfirmDialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const v6, 0x7f020424

    invoke-virtual {v5, v6}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 573
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 590
    .end local v0           #info:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    .end local v1           #mConfirmDialog:Landroid/app/AlertDialog;
    .end local v2           #sb:Landroid/text/SpannableString;
    .end local v3           #source:Ljava/lang/String;
    .end local v4           #tag:Lcom/baidu/launcher/data/item/BaseItemInfo;
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/baidu/launcher/ui/homeview/DockBar;->addOrMoveItemInDatabase()V

    .line 591
    return-void

    .line 577
    :cond_2
    iget-object v5, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mAnimator:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    if-eqz v5, :cond_1

    .line 578
    iget-object v5, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mAnimator:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    invoke-virtual {v5}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->end()V

    goto :goto_0

    .line 582
    :cond_3
    if-nez p2, :cond_1

    .line 583
    iget-object v5, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mAnimator:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    if-eqz v5, :cond_4

    .line 584
    iget-object v5, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mAnimator:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    invoke-virtual {v5}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->end()V

    .line 586
    :cond_4
    invoke-direct {p0}, Lcom/baidu/launcher/ui/homeview/DockBar;->resetItem()V

    .line 587
    iget-object v5, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDraggedView:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    invoke-virtual {v5, v8}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->setVisibility(I)V

    goto :goto_0
.end method

.method public onFlingToDelete(Lcom/baidu/launcher/ui/dragdrop/DragSource;Ljava/lang/Object;IILandroid/graphics/PointF;)V
    .locals 2
    .parameter "source"
    .parameter "dragInfo"
    .parameter "x"
    .parameter "y"
    .parameter "vec"

    .prologue
    .line 1219
    const-string v0, "DockBar"

    const-string v1, "onFlingToDelete"

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1221
    return-void
.end method

.method public onFlingToDeleteCompleted()V
    .locals 2

    .prologue
    .line 668
    const-string v0, "DockBar"

    const-string v1, "onFlingToDeleteCompleted"

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v7, 0x0

    .line 440
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDockBarItemsOrder:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 441
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDockBarItemsOrder:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/homeview/DockBarItem;

    .line 451
    .local v1, item:Lcom/baidu/launcher/ui/homeview/DockBarItem;
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/DockBar;->isVerticalDockbar()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 452
    iget-boolean v2, v1, Lcom/baidu/launcher/ui/homeview/DockBarItem;->animating:Z

    if-eqz v2, :cond_0

    .line 453
    iget v2, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->LAYOUT_ADJ:I

    mul-int/lit8 v2, v2, 0x4

    iget v3, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mPaddingTop:I

    iget v4, v1, Lcom/baidu/launcher/ui/homeview/DockBarItem;->animationX:I

    add-int/2addr v3, v4

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget v5, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->LAYOUT_ADJ:I

    mul-int/lit8 v5, v5, 0x4

    add-int/2addr v4, v5

    iget v5, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mPaddingTop:I

    iget v6, v1, Lcom/baidu/launcher/ui/homeview/DockBarItem;->animationX:I

    add-int/2addr v5, v6

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->LAYOUT_ADJ:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->layout(IIII)V

    .line 440
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 458
    :cond_0
    iget v2, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->LAYOUT_ADJ:I

    mul-int/lit8 v2, v2, 0x4

    iget v3, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mPaddingTop:I

    iget v4, v1, Lcom/baidu/launcher/ui/homeview/DockBarItem;->originalX:I

    add-int/2addr v3, v4

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget v5, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->LAYOUT_ADJ:I

    mul-int/lit8 v5, v5, 0x4

    add-int/2addr v4, v5

    iget v5, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mPaddingTop:I

    iget v6, v1, Lcom/baidu/launcher/ui/homeview/DockBarItem;->originalX:I

    add-int/2addr v5, v6

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->LAYOUT_ADJ:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->layout(IIII)V

    goto :goto_1

    .line 468
    :cond_1
    iget-boolean v2, v1, Lcom/baidu/launcher/ui/homeview/DockBarItem;->animating:Z

    if-eqz v2, :cond_2

    .line 469
    iget v2, v1, Lcom/baidu/launcher/ui/homeview/DockBarItem;->animationX:I

    iget v3, v1, Lcom/baidu/launcher/ui/homeview/DockBarItem;->animationX:I

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->LAYOUT_ADJ:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    iget v5, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->LAYOUT_ADJ:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-virtual {v1, v2, v7, v3, v4}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->layout(IIII)V

    goto :goto_1

    .line 474
    :cond_2
    iget v2, v1, Lcom/baidu/launcher/ui/homeview/DockBarItem;->originalX:I

    iget v3, v1, Lcom/baidu/launcher/ui/homeview/DockBarItem;->originalX:I

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->LAYOUT_ADJ:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    iget v5, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->LAYOUT_ADJ:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-virtual {v1, v2, v7, v3, v4}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->layout(IIII)V

    goto :goto_1

    .line 489
    .end local v1           #item:Lcom/baidu/launcher/ui/homeview/DockBarItem;
    :cond_3
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 202
    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/homeview/DockBar;->startDrag(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public removeItems(Ljava/util/ArrayList;)V
    .locals 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/data/item/ListAppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1231
    .local p1, changes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListAppInfo;>;"
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 1232
    .local v10, packageNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1233
    .local v0, appCount:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 1234
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/baidu/launcher/data/item/ListAppInfo;

    iget-object v2, v12, Lcom/baidu/launcher/data/item/ListAppInfo;->componentName:Landroid/content/ComponentName;

    .line 1235
    .local v2, component:Landroid/content/ComponentName;
    if-nez v2, :cond_0

    .line 1233
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1236
    :cond_0
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1239
    .end local v2           #component:Landroid/content/ComponentName;
    :cond_1
    iget-object v12, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDockBarItemsOrder:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 1240
    .local v8, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/homeview/DockBarItem;>;"
    iget-object v12, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/baidu/launcher/data/HomeDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/HomeDataManager;

    move-result-object v3

    .line 1241
    .local v3, homeDataManager:Lcom/baidu/launcher/data/HomeDataManager;
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/baidu/launcher/ui/homeview/DockBarItem;

    .line 1242
    .local v7, item:Lcom/baidu/launcher/ui/homeview/DockBarItem;
    invoke-virtual {v7}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->getShortcutInfo()Lcom/baidu/launcher/data/item/HomeItemInfo;

    move-result-object v12

    instance-of v12, v12, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    if-eqz v12, :cond_5

    .line 1243
    invoke-virtual {v7}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->getShortcutInfo()Lcom/baidu/launcher/data/item/HomeItemInfo;

    move-result-object v11

    check-cast v11, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    .line 1245
    .local v11, shortcut:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    if-eqz v11, :cond_2

    iget-object v12, v11, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->intent:Landroid/content/Intent;

    if-eqz v12, :cond_2

    .line 1247
    iget-object v12, v11, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 1248
    .local v1, cn:Landroid/content/ComponentName;
    if-eqz v1, :cond_2

    .line 1250
    invoke-virtual {v10}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1251
    .local v9, packageName:Ljava/lang/String;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1252
    invoke-direct {p0, v7}, Lcom/baidu/launcher/ui/homeview/DockBar;->removeItem(Lcom/baidu/launcher/ui/homeview/DockBarItem;)V

    .line 1253
    iget-object v12, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDockBarItemsOrder:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1254
    invoke-virtual {v7}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->getShortcutInfo()Lcom/baidu/launcher/data/item/HomeItemInfo;

    move-result-object v12

    invoke-virtual {v3, v12}, Lcom/baidu/launcher/data/HomeDataManager;->deleteItemFromDatabase(Lcom/baidu/launcher/data/item/HomeItemInfo;)V

    .line 1258
    .end local v9           #packageName:Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/DockBar;->layoutItemsParams()V

    .line 1259
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/DockBar;->requestLayout()V

    goto :goto_2

    .line 1260
    .end local v1           #cn:Landroid/content/ComponentName;
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v11           #shortcut:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    :cond_5
    invoke-virtual {v7}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->getShortcutInfo()Lcom/baidu/launcher/data/item/HomeItemInfo;

    move-result-object v12

    instance-of v12, v12, Lcom/baidu/launcher/data/item/HomeFolderInfo;

    if-eqz v12, :cond_2

    goto :goto_2

    .line 1263
    .end local v7           #item:Lcom/baidu/launcher/ui/homeview/DockBarItem;
    :cond_6
    return-void
.end method

.method setDragMode(I)V
    .locals 2
    .parameter "dragMode"

    .prologue
    const/4 v1, 0x1

    .line 1448
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDragMode:I

    if-eq p1, v0, :cond_1

    .line 1449
    if-nez p1, :cond_2

    .line 1453
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/baidu/launcher/ui/homeview/DockBar;->cleanupReorder(Z)V

    .line 1454
    invoke-direct {p0}, Lcom/baidu/launcher/ui/homeview/DockBar;->cleanupFolderCreation()V

    .line 1460
    :cond_0
    :goto_0
    iput p1, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDragMode:I

    .line 1462
    :cond_1
    return-void

    .line 1455
    :cond_2
    if-ne p1, v1, :cond_3

    .line 1456
    invoke-direct {p0, v1}, Lcom/baidu/launcher/ui/homeview/DockBar;->cleanupReorder(Z)V

    goto :goto_0

    .line 1457
    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1458
    invoke-direct {p0}, Lcom/baidu/launcher/ui/homeview/DockBar;->cleanupFolderCreation()V

    goto :goto_0
.end method

.method public setItems(Ljava/util/List;)V
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/launcher/data/item/HomeItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 300
    .local p1, infos:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/launcher/data/item/HomeItemInfo;>;"
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/DockBar;->removeAllViews()V

    .line 301
    iget-object v8, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDockBarItemsOrder:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 302
    if-eqz p1, :cond_5

    .line 304
    iget-object v8, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "show_dockbar_applist_icon"

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 306
    .local v6, showDockbarApplistIcon:Z
    const-string v8, "DockBar"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "showDockbarApplistIcon:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    new-instance v0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    invoke-direct {v0}, Lcom/baidu/launcher/data/item/HomeShortcutInfo;-><init>()V

    .line 308
    .local v0, allAppListInfo:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    invoke-direct {p0, v0, p1}, Lcom/baidu/launcher/ui/homeview/DockBar;->initAllAppButtonItem(Lcom/baidu/launcher/data/item/HomeShortcutInfo;Ljava/util/List;)Lcom/baidu/launcher/ui/homeview/DockBarItem;

    move-result-object v1

    .line 309
    .local v1, allAppListView:Lcom/baidu/launcher/ui/homeview/DockBarItem;
    if-eqz v6, :cond_1

    .line 310
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    :goto_0
    const/4 v7, 0x0

    .line 316
    .local v7, tmpItem:Lcom/baidu/launcher/ui/homeview/DockBarItem;
    sget v4, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->iconScale:F

    .line 317
    .local v4, iconScale:F
    const/high16 v8, 0x3f80

    cmpl-float v8, v4, v8

    if-lez v8, :cond_0

    const/high16 v4, 0x3f80

    .line 318
    :cond_0
    iget-object v8, v0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v4

    float-to-int v8, v8

    iput v8, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mItemIconWidth:I

    .line 320
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_3

    .line 321
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne v2, v8, :cond_2

    if-eqz v6, :cond_2

    .line 322
    move-object v7, v1

    .line 326
    :goto_2
    iget-object v8, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDockBarItemsOrder:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 312
    .end local v2           #i:I
    .end local v4           #iconScale:F
    .end local v7           #tmpItem:Lcom/baidu/launcher/ui/homeview/DockBarItem;
    :cond_1
    const/4 v8, 0x4

    iput v8, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mMaxDockBarItemCount:I

    goto :goto_0

    .line 324
    .restart local v2       #i:I
    .restart local v4       #iconScale:F
    .restart local v7       #tmpItem:Lcom/baidu/launcher/ui/homeview/DockBarItem;
    :cond_2
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/baidu/launcher/data/item/HomeItemInfo;

    invoke-direct {p0, v8}, Lcom/baidu/launcher/ui/homeview/DockBar;->initItem(Lcom/baidu/launcher/data/item/HomeItemInfo;)Lcom/baidu/launcher/ui/homeview/DockBarItem;

    move-result-object v7

    goto :goto_2

    .line 328
    :cond_3
    iget-object v8, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDockBarItemsOrder:Ljava/util/ArrayList;

    new-instance v9, Lcom/baidu/launcher/ui/homeview/DockBar$1;

    invoke-direct {v9, p0}, Lcom/baidu/launcher/ui/homeview/DockBar$1;-><init>(Lcom/baidu/launcher/ui/homeview/DockBar;)V

    invoke-static {v8, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 336
    iget-object v8, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDockBarItemsOrder:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/launcher/ui/homeview/DockBarItem;

    .line 337
    .local v5, item:Lcom/baidu/launcher/ui/homeview/DockBarItem;
    const-string v8, "DockBar"

    invoke-virtual {v5}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 339
    .end local v5           #item:Lcom/baidu/launcher/ui/homeview/DockBarItem;
    :cond_4
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/DockBar;->layoutItemsParams()V

    .line 340
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/DockBar;->requestLayout()V

    .line 342
    .end local v0           #allAppListInfo:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    .end local v1           #allAppListView:Lcom/baidu/launcher/ui/homeview/DockBarItem;
    .end local v2           #i:I
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #iconScale:F
    .end local v6           #showDockbarApplistIcon:Z
    .end local v7           #tmpItem:Lcom/baidu/launcher/ui/homeview/DockBarItem;
    :cond_5
    return-void
.end method

.method public setTopPadding(I)V
    .locals 0
    .parameter "padding"

    .prologue
    .line 136
    iput p1, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mPaddingTop:I

    .line 137
    return-void
.end method

.method public setViewManager(Lcom/baidu/launcher/ui/logic/ViewManager;)V
    .locals 1
    .parameter "viewManager"

    .prologue
    .line 140
    if-eqz p1, :cond_0

    .line 141
    iput-object p1, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    .line 142
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/logic/ViewManager;->getDragController()Lcom/baidu/launcher/ui/dragdrop/DragController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/launcher/ui/dragdrop/DragController;->addDropTarget(Lcom/baidu/launcher/ui/dragdrop/DropTarget;)V

    .line 144
    :cond_0
    return-void
.end method

.method public showAllAppButtonItem(Z)V
    .locals 12
    .parameter "visible"

    .prologue
    const/4 v10, 0x5

    .line 253
    const/4 v7, 0x0

    .line 254
    .local v7, shown:Z
    const/4 v0, 0x0

    .line 255
    .local v0, allAppButtonItem:Lcom/baidu/launcher/ui/homeview/DockBarItem;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDockBarItemsOrder:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v4, v9, :cond_1

    .line 256
    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDockBarItemsOrder:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/baidu/launcher/ui/homeview/DockBarItem;

    .line 257
    .local v6, item:Lcom/baidu/launcher/ui/homeview/DockBarItem;
    invoke-virtual {v6}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->getShortcutInfo()Lcom/baidu/launcher/data/item/HomeItemInfo;

    move-result-object v5

    .line 258
    .local v5, info:Lcom/baidu/launcher/data/item/HomeItemInfo;
    instance-of v9, v5, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    if-eqz v9, :cond_0

    check-cast v5, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    .end local v5           #info:Lcom/baidu/launcher/data/item/HomeItemInfo;
    iget-object v9, v5, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->intent:Landroid/content/Intent;

    if-nez v9, :cond_0

    .line 259
    move-object v0, v6

    .line 260
    const/4 v7, 0x1

    .line 255
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 263
    .end local v6           #item:Lcom/baidu/launcher/ui/homeview/DockBarItem;
    :cond_1
    if-eqz v7, :cond_2

    if-eqz p1, :cond_2

    .line 298
    :goto_1
    return-void

    .line 266
    :cond_2
    if-nez v7, :cond_4

    if-eqz p1, :cond_4

    .line 267
    new-instance v1, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    invoke-direct {v1}, Lcom/baidu/launcher/data/item/HomeShortcutInfo;-><init>()V

    .line 268
    .local v1, allAppListInfo:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 269
    .local v3, dockBarInfos:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/launcher/data/item/HomeItemInfo;>;"
    const/4 v4, 0x0

    :goto_2
    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDockBarItemsOrder:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v4, v9, :cond_3

    .line 270
    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDockBarItemsOrder:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/baidu/launcher/ui/homeview/DockBarItem;

    .line 271
    .restart local v6       #item:Lcom/baidu/launcher/ui/homeview/DockBarItem;
    invoke-virtual {v6}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->getShortcutInfo()Lcom/baidu/launcher/data/item/HomeItemInfo;

    move-result-object v5

    .line 272
    .restart local v5       #info:Lcom/baidu/launcher/data/item/HomeItemInfo;
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 274
    .end local v5           #info:Lcom/baidu/launcher/data/item/HomeItemInfo;
    .end local v6           #item:Lcom/baidu/launcher/ui/homeview/DockBarItem;
    :cond_3
    invoke-direct {p0, v1, v3}, Lcom/baidu/launcher/ui/homeview/DockBar;->initAllAppButtonItem(Lcom/baidu/launcher/data/item/HomeShortcutInfo;Ljava/util/List;)Lcom/baidu/launcher/ui/homeview/DockBarItem;

    move-result-object v2

    .line 275
    .local v2, allAppListView:Lcom/baidu/launcher/ui/homeview/DockBarItem;
    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDockBarItemsOrder:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 276
    .local v8, size:I
    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDockBarItemsOrder:Ljava/util/ArrayList;

    div-int/lit8 v11, v8, 0x2

    invoke-virtual {v9, v11, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 277
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/DockBar;->layoutItemsParams()V

    .line 278
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/DockBar;->requestLayout()V

    .line 279
    iget v9, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mOriginItemSize:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mOriginItemSize:I

    .line 280
    iget v9, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mOriginItemSize:I

    if-ge v9, v10, :cond_7

    iget v9, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mOriginItemSize:I

    :goto_3
    iput v9, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mOriginItemSize:I

    .line 281
    iput v10, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mMaxDockBarItemCount:I

    .line 283
    .end local v1           #allAppListInfo:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    .end local v2           #allAppListView:Lcom/baidu/launcher/ui/homeview/DockBarItem;
    .end local v3           #dockBarInfos:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/launcher/data/item/HomeItemInfo;>;"
    .end local v8           #size:I
    :cond_4
    if-eqz v7, :cond_6

    if-nez p1, :cond_6

    .line 284
    if-eqz v0, :cond_5

    .line 285
    invoke-direct {p0, v0}, Lcom/baidu/launcher/ui/homeview/DockBar;->removeItem(Lcom/baidu/launcher/ui/homeview/DockBarItem;)V

    .line 286
    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDockBarItemsOrder:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 287
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/DockBar;->layoutItemsParams()V

    .line 288
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/DockBar;->requestLayout()V

    .line 289
    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/baidu/launcher/data/HomeDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/HomeDataManager;

    move-result-object v9

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->getShortcutInfo()Lcom/baidu/launcher/data/item/HomeItemInfo;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/baidu/launcher/data/HomeDataManager;->deleteItemFromDatabase(Lcom/baidu/launcher/data/item/HomeItemInfo;)V

    .line 292
    :cond_5
    iget v9, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mOriginItemSize:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mOriginItemSize:I

    .line 293
    iget v9, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mOriginItemSize:I

    if-ltz v9, :cond_8

    iget v9, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mOriginItemSize:I

    :goto_4
    iput v9, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mOriginItemSize:I

    .line 294
    const/4 v9, 0x4

    iput v9, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mMaxDockBarItemCount:I

    .line 296
    :cond_6
    invoke-direct {p0}, Lcom/baidu/launcher/ui/homeview/DockBar;->addOrMoveItemInDatabase()V

    goto/16 :goto_1

    .restart local v1       #allAppListInfo:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    .restart local v2       #allAppListView:Lcom/baidu/launcher/ui/homeview/DockBarItem;
    .restart local v3       #dockBarInfos:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/launcher/data/item/HomeItemInfo;>;"
    .restart local v8       #size:I
    :cond_7
    move v9, v10

    .line 280
    goto :goto_3

    .line 293
    .end local v1           #allAppListInfo:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    .end local v2           #allAppListView:Lcom/baidu/launcher/ui/homeview/DockBarItem;
    .end local v3           #dockBarInfos:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/launcher/data/item/HomeItemInfo;>;"
    .end local v8           #size:I
    :cond_8
    const/4 v9, 0x0

    goto :goto_4
.end method

.method public showDockbarBg(Z)V
    .locals 4
    .parameter "visible"

    .prologue
    .line 241
    if-eqz p1, :cond_1

    .line 242
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/DockBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 243
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/DockBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 248
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDockBarItemsOrder:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/homeview/DockBarItem;

    .line 249
    .local v1, item:Lcom/baidu/launcher/ui/homeview/DockBarItem;
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/DockBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->setImageBitmap(Landroid/content/Context;Z)V

    goto :goto_1

    .line 245
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #item:Lcom/baidu/launcher/ui/homeview/DockBarItem;
    :cond_1
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/DockBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 246
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/DockBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    .line 251
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method showFolderAccept(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 1280
    const-string v0, "DockBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showFolderAccept index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1281
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mCanCreateFolder:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDockBarItemsOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 1282
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDockBarItemsOrder:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/homeview/DockBarItem;

    iput-object v0, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mFolderHightItem:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    .line 1283
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mLastFolderHightItem:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mFolderHightItem:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    if-eq v0, v1, :cond_1

    .line 1284
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mLastFolderHightItem:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    if-eqz v0, :cond_0

    .line 1285
    const-string v0, "DockBar"

    const-string v1, "showFolderAccept cancelFolderHighlight"

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1286
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mLastFolderHightItem:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->cancelFolderHighlight()V

    .line 1288
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mFolderHightItem:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->drawFolderHighlight()V

    .line 1289
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mFolderHightItem:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    iput-object v0, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mLastFolderHightItem:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    .line 1291
    :cond_1
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mFolderHightItem:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    iput-object v0, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mCreateFolderItem:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    .line 1292
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/homeview/DockBar;->setDragMode(I)V

    .line 1296
    :goto_0
    return-void

    .line 1294
    :cond_2
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/DockBar;->hideFolderAccept()V

    goto :goto_0
.end method

.method public showOnDropFailureAnimation(Ljava/lang/Object;[I)Z
    .locals 2
    .parameter "mDragInfo"
    .parameter "mOriginatorXY"

    .prologue
    .line 647
    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDraggedView:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    if-eqz v1, :cond_0

    .line 648
    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDraggedView:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->getShortcutInfo()Lcom/baidu/launcher/data/item/HomeItemInfo;

    move-result-object v0

    .line 649
    .local v0, info:Lcom/baidu/launcher/data/item/HomeItemInfo;
    instance-of v1, v0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    if-eqz v1, :cond_0

    .line 650
    check-cast v0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    .end local v0           #info:Lcom/baidu/launcher/data/item/HomeItemInfo;
    iget-object v1, v0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->intent:Landroid/content/Intent;

    if-nez v1, :cond_0

    .line 651
    const/4 v1, 0x1

    .line 655
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public supportsFlingToDelete()Z
    .locals 1

    .prologue
    .line 661
    const/4 v0, 0x1

    return v0
.end method

.method public updateCalendarIcon(Landroid/graphics/Bitmap;)V
    .locals 9
    .parameter "icon"

    .prologue
    const/4 v8, 0x1

    .line 1616
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v6, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDockBarItemsOrder:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_4

    .line 1617
    iget-object v6, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDockBarItemsOrder:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/launcher/ui/homeview/DockBarItem;

    .line 1618
    .local v4, item:Lcom/baidu/launcher/ui/homeview/DockBarItem;
    invoke-virtual {v4}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->getShortcutInfo()Lcom/baidu/launcher/data/item/HomeItemInfo;

    move-result-object v5

    .line 1619
    .local v5, tag:Lcom/baidu/launcher/data/item/BaseItemInfo;
    instance-of v6, v5, Lcom/baidu/launcher/data/item/IFolderInfo;

    if-eqz v6, :cond_1

    move-object v0, v5

    .line 1620
    check-cast v0, Lcom/baidu/launcher/data/item/IFolderInfo;

    .line 1621
    .local v0, folder:Lcom/baidu/launcher/data/item/IFolderInfo;
    invoke-interface {v0}, Lcom/baidu/launcher/data/item/IFolderInfo;->getAll()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/data/item/BaseItemInfo;

    .line 1622
    .local v3, info:Lcom/baidu/launcher/data/item/BaseItemInfo;
    instance-of v6, v3, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    if-eqz v6, :cond_0

    .line 1623
    sget-object v7, Lcom/baidu/launcher/data/IconCache;->calendarComponent:Landroid/content/ComponentName;

    move-object v6, v3

    check-cast v6, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    iget-object v6, v6, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1624
    iput-object p1, v3, Lcom/baidu/launcher/data/item/BaseItemInfo;->iconBitmap:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 1629
    .end local v0           #folder:Lcom/baidu/launcher/data/item/IFolderInfo;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #info:Lcom/baidu/launcher/data/item/BaseItemInfo;
    :cond_1
    instance-of v6, v5, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    if-eqz v6, :cond_2

    move-object v3, v5

    .line 1630
    check-cast v3, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    .line 1631
    .local v3, info:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    iget-object v6, v3, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->intent:Landroid/content/Intent;

    if-eqz v6, :cond_2

    .line 1632
    sget-object v6, Lcom/baidu/launcher/data/IconCache;->calendarComponent:Landroid/content/ComponentName;

    iget-object v7, v3, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1633
    iput-object p1, v3, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->iconBitmap:Landroid/graphics/Bitmap;

    .line 1634
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/DockBar;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v4, v6, v8}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->setImageBitmap(Landroid/content/Context;Z)V

    .line 1639
    .end local v3           #info:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    :cond_2
    instance-of v6, v5, Lcom/baidu/launcher/data/item/IFolderInfo;

    if-eqz v6, :cond_3

    .line 1640
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/DockBar;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v4, v6, v8}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->setImageBitmap(Landroid/content/Context;Z)V

    .line 1616
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1643
    .end local v4           #item:Lcom/baidu/launcher/ui/homeview/DockBarItem;
    .end local v5           #tag:Lcom/baidu/launcher/data/item/BaseItemInfo;
    :cond_4
    return-void
.end method

.method public updateFolder(Lcom/baidu/launcher/data/item/IFolderInfo;)V
    .locals 4
    .parameter "folder"

    .prologue
    .line 1593
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDockBarItemsOrder:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1594
    iget-object v3, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDockBarItemsOrder:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/ui/homeview/DockBarItem;

    .line 1595
    .local v2, item:Lcom/baidu/launcher/ui/homeview/DockBarItem;
    invoke-virtual {v2}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->getShortcutInfo()Lcom/baidu/launcher/data/item/HomeItemInfo;

    move-result-object v1

    .line 1596
    .local v1, info:Lcom/baidu/launcher/data/item/BaseItemInfo;
    instance-of v3, v1, Lcom/baidu/launcher/data/item/IFolderInfo;

    if-eqz v3, :cond_0

    if-ne v1, p1, :cond_0

    .line 1597
    invoke-virtual {v2}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->updateFolderIcon()V

    .line 1593
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1600
    .end local v1           #info:Lcom/baidu/launcher/data/item/BaseItemInfo;
    .end local v2           #item:Lcom/baidu/launcher/ui/homeview/DockBarItem;
    :cond_1
    return-void
.end method

.method public updateFolderEventNumber()V
    .locals 5

    .prologue
    .line 1603
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDockBarItemsOrder:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 1604
    iget-object v4, p0, Lcom/baidu/launcher/ui/homeview/DockBar;->mDockBarItemsOrder:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/ui/homeview/DockBarItem;

    .line 1605
    .local v3, item:Lcom/baidu/launcher/ui/homeview/DockBarItem;
    invoke-virtual {v3}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->getShortcutInfo()Lcom/baidu/launcher/data/item/HomeItemInfo;

    move-result-object v2

    .line 1606
    .local v2, info:Lcom/baidu/launcher/data/item/BaseItemInfo;
    instance-of v4, v2, Lcom/baidu/launcher/data/item/IFolderInfo;

    if-eqz v4, :cond_0

    .line 1607
    invoke-static {}, Lcom/baidu/launcher/utils/EventNumberUtil;->getInstance()Lcom/baidu/launcher/utils/EventNumberUtil;

    move-result-object v0

    .line 1608
    .local v0, enventNumberUtil:Lcom/baidu/launcher/utils/EventNumberUtil;
    invoke-virtual {v0, v2}, Lcom/baidu/launcher/utils/EventNumberUtil;->checkEventInfo(Lcom/baidu/launcher/data/item/BaseItemInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1609
    invoke-virtual {v0, v3}, Lcom/baidu/launcher/utils/EventNumberUtil;->registerView(Landroid/view/View;)Z

    .line 1603
    .end local v0           #enventNumberUtil:Lcom/baidu/launcher/utils/EventNumberUtil;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1613
    .end local v2           #info:Lcom/baidu/launcher/data/item/BaseItemInfo;
    .end local v3           #item:Lcom/baidu/launcher/ui/homeview/DockBarItem;
    :cond_1
    return-void
.end method
