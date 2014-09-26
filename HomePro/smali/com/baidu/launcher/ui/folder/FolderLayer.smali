.class public Lcom/baidu/launcher/ui/folder/FolderLayer;
.super Landroid/widget/LinearLayout;
.source "FolderLayer.java"

# interfaces
.implements Lcom/baidu/launcher/ui/dragdrop/DropTarget;


# static fields
.field private static final ALPHA_BLUR:I = 0xc8


# instance fields
.field private mCellHeight:I

.field private mCellHeightGap:I

.field private mEditPadding:I

.field private mFadeLayerAnim:Lcom/baidu/launcher/ui/animation/ValueAnimator;

.field private mFirstLayout:Z

.field private mFolder:Lcom/baidu/launcher/ui/folder/Folder;

.field private mFolderAnimationTime:J

.field private mFolderDealyAnimTime:J

.field private mFolderLayout:Lcom/baidu/launcher/ui/folder/FolderContainer;

.field private mFolderPaddingBottom:I

.field private mFolderPaddingTop:I

.field private mFolderPaddingVertical:I

.field private mFolderTopPaddingView:Landroid/view/View;

.field private mLastCloseTime:J

.field private mLastTouchTime:J

.field private mPivotX:I

.field private mPivotY:I

.field private mRectTemp:Landroid/graphics/Rect;

.field private mTitleHeight:I

.field private mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

.field private scaleX:F

.field private scaleY:F

.field private startTime:J

.field private final tempLoc:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mRectTemp:Landroid/graphics/Rect;

    .line 67
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->tempLoc:[I

    .line 71
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mFirstLayout:Z

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 78
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0b0022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mCellHeightGap:I

    .line 79
    const v1, 0x7f0b0023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mCellHeight:I

    .line 80
    const v1, 0x7f0b0024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mTitleHeight:I

    .line 81
    const v1, 0x7f0d0013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mFolderAnimationTime:J

    .line 82
    const v1, 0x7f0d0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mFolderDealyAnimTime:J

    .line 83
    const v1, 0x7f0b0026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mFolderPaddingTop:I

    .line 84
    const v1, 0x7f0b0025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mFolderPaddingBottom:I

    .line 85
    const v1, 0x7f0b0027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mFolderPaddingVertical:I

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/launcher/ui/folder/FolderLayer;)Lcom/baidu/launcher/ui/folder/FolderContainer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mFolderLayout:Lcom/baidu/launcher/ui/folder/FolderContainer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/baidu/launcher/ui/folder/FolderLayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/baidu/launcher/ui/folder/FolderLayer;->enableAndBuildHardwareLayer()V

    return-void
.end method

.method static synthetic access$200(Lcom/baidu/launcher/ui/folder/FolderLayer;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->scaleY:F

    return v0
.end method

.method static synthetic access$300(Lcom/baidu/launcher/ui/folder/FolderLayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mPivotX:I

    return v0
.end method

.method static synthetic access$400(Lcom/baidu/launcher/ui/folder/FolderLayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mPivotY:I

    return v0
.end method

.method static synthetic access$500(Lcom/baidu/launcher/ui/folder/FolderLayer;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mFolderAnimationTime:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/baidu/launcher/ui/folder/FolderLayer;Ljava/lang/Runnable;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/launcher/ui/folder/FolderLayer;->fadeLayer(Ljava/lang/Runnable;ZZ)V

    return-void
.end method

.method static synthetic access$700(Lcom/baidu/launcher/ui/folder/FolderLayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/baidu/launcher/ui/folder/FolderLayer;->onFolderClosed()V

    return-void
.end method

.method private clearAnim()V
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mFadeLayerAnim:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mFadeLayerAnim:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mFadeLayerAnim:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->cancel()V

    .line 454
    :cond_0
    return-void
.end method

.method private enableAndBuildHardwareLayer()V
    .locals 3

    .prologue
    .line 433
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mFolderLayout:Lcom/baidu/launcher/ui/folder/FolderContainer;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/folder/FolderContainer;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mFolderLayout:Lcom/baidu/launcher/ui/folder/FolderContainer;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/baidu/launcher/ui/folder/FolderContainer;->setLayerType(ILandroid/graphics/Paint;)V

    .line 439
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mFolderLayout:Lcom/baidu/launcher/ui/folder/FolderContainer;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/folder/FolderContainer;->buildLayer()V

    .line 441
    :cond_0
    return-void
.end method

.method private fadeLayer(Ljava/lang/Runnable;ZZ)V
    .locals 6
    .parameter "runnable"
    .parameter "delay"
    .parameter "out"

    .prologue
    const-wide/16 v4, 0x0

    .line 457
    invoke-direct {p0}, Lcom/baidu/launcher/ui/folder/FolderLayer;->clearAnim()V

    .line 458
    iget-object v2, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mFolderLayout:Lcom/baidu/launcher/ui/folder/FolderContainer;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/baidu/launcher/ui/folder/FolderContainer;->setVisibility(I)V

    .line 459
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->ofFloat([F)Lcom/baidu/launcher/ui/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mFadeLayerAnim:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    .line 472
    iget-object v2, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mFadeLayerAnim:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    new-instance v3, Lcom/baidu/launcher/ui/folder/FolderLayer$4;

    invoke-direct {v3, p0, p3, p1}, Lcom/baidu/launcher/ui/folder/FolderLayer$4;-><init>(Lcom/baidu/launcher/ui/folder/FolderLayer;ZLjava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->addListener(Lcom/baidu/launcher/ui/animation/Animator$AnimatorListener;)V

    .line 483
    if-eqz p2, :cond_0

    iget-wide v0, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mFolderDealyAnimTime:J

    .line 484
    .local v0, duration:J
    :goto_0
    iget-object v2, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mFadeLayerAnim:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    invoke-virtual {v2, v4, v5}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->setDuration(J)Lcom/baidu/launcher/ui/animation/ValueAnimator;

    .line 485
    iget-object v2, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mFadeLayerAnim:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    invoke-virtual {v2, v4, v5}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->setStartDelay(J)V

    .line 486
    iget-object v2, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mFadeLayerAnim:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->start()V

    .line 487
    return-void

    .line 483
    .end local v0           #duration:J
    :cond_0
    if-eqz p3, :cond_1

    const-wide/16 v0, 0xc8

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x64

    goto :goto_0

    .line 459
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private onFolderClosed()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 444
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/folder/FolderLayer;->setVisibility(I)V

    .line 445
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mFolderLayout:Lcom/baidu/launcher/ui/folder/FolderContainer;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/folder/FolderContainer;->removeAllViewsInLayout()V

    .line 446
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mFolderLayout:Lcom/baidu/launcher/ui/folder/FolderContainer;

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/folder/FolderContainer;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 447
    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/folder/FolderLayer;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 448
    return-void
.end method

.method private setFolderPaddingTop(Lcom/baidu/launcher/ui/folder/FolderHolder;Z)I
    .locals 13
    .parameter "v"
    .parameter "addStatusBarHeight"

    .prologue
    .line 216
    invoke-interface {p1}, Lcom/baidu/launcher/ui/folder/FolderHolder;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/launcher/data/item/IFolderInfo;

    .line 217
    .local v4, folderInfo:Lcom/baidu/launcher/data/item/IFolderInfo;
    invoke-interface {p1}, Lcom/baidu/launcher/ui/folder/FolderHolder;->getHeight()I

    move-result v9

    .line 218
    .local v9, viewHeight:I
    iget-object v11, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->tempLoc:[I

    invoke-interface {p1, v11}, Lcom/baidu/launcher/ui/folder/FolderHolder;->getLocationOnScreen([I)V

    .line 219
    iget-object v11, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->tempLoc:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    invoke-interface {p1}, Lcom/baidu/launcher/ui/folder/FolderHolder;->getWidth()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    iput v11, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mPivotX:I

    .line 220
    iget-object v11, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->tempLoc:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    div-int/lit8 v12, v9, 0x2

    add-int/2addr v11, v12

    iput v11, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mPivotY:I

    .line 221
    iget-object v11, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->tempLoc:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    add-int v1, v11, v9

    .line 223
    .local v1, bottom:I
    invoke-interface {v4}, Lcom/baidu/launcher/data/item/IFolderInfo;->getSize()I

    move-result v11

    add-int/lit8 v0, v11, 0x1

    .line 224
    .local v0, appCount:I
    iget v11, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mTitleHeight:I

    iget v12, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mCellHeightGap:I

    add-int/2addr v11, v12

    iget v12, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mFolderPaddingVertical:I

    add-int v5, v11, v12

    .line 225
    .local v5, h:I
    const/4 v3, 0x0

    .line 226
    .local v3, extraHeight:I
    if-nez v0, :cond_6

    .line 227
    const/4 v0, 0x1

    .line 232
    :cond_0
    :goto_0
    div-int/lit8 v12, v0, 0x3

    rem-int/lit8 v11, v0, 0x3

    if-nez v11, :cond_7

    const/4 v11, 0x0

    :goto_1
    add-int v7, v12, v11

    .line 233
    .local v7, row:I
    iget v11, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mCellHeight:I

    iget v12, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mCellHeightGap:I

    add-int/2addr v11, v12

    mul-int/2addr v11, v7

    add-int/2addr v11, v3

    iget v12, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mCellHeightGap:I

    add-int/2addr v11, v12

    add-int/2addr v5, v11

    .line 234
    div-int/lit8 v11, v9, 0x2

    sub-int v11, v1, v11

    div-int/lit8 v12, v5, 0x2

    sub-int v10, v11, v12

    .line 235
    .local v10, y:I
    if-gez v10, :cond_1

    const/4 v10, 0x0

    .line 236
    :cond_1
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/folder/FolderLayer;->getHeight()I

    move-result v6

    .line 237
    .local v6, height:I
    iget v2, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mFolderPaddingBottom:I

    .line 238
    .local v2, delta:I
    :cond_2
    add-int v11, v10, v5

    sub-int v12, v6, v2

    if-gt v11, v12, :cond_3

    iget v11, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mFolderPaddingTop:I

    if-ge v10, v11, :cond_4

    .line 239
    :cond_3
    sub-int v11, v6, v5

    sub-int v10, v11, v2

    .line 240
    add-int/lit8 v2, v2, -0x14

    .line 241
    if-gez v2, :cond_2

    .line 246
    :cond_4
    iput v10, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mEditPadding:I

    .line 247
    if-eqz p2, :cond_5

    .line 248
    iget-object v11, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v11}, Lcom/baidu/launcher/ui/logic/ViewManager;->getStatusBarHeight()I

    move-result v8

    .line 249
    .local v8, sbh:I
    add-int v11, v10, v8

    iput v11, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mEditPadding:I

    .line 250
    iget v11, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mPivotY:I

    sub-int/2addr v11, v8

    iput v11, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mPivotY:I

    .line 252
    .end local v8           #sbh:I
    :cond_5
    iget v11, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mPivotY:I

    sub-int/2addr v11, v10

    iput v11, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mPivotY:I

    .line 253
    invoke-interface {p1}, Lcom/baidu/launcher/ui/folder/FolderHolder;->getWidth()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/folder/FolderLayer;->getWidth()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v11, v12

    iput v11, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->scaleX:F

    .line 254
    invoke-interface {p1}, Lcom/baidu/launcher/ui/folder/FolderHolder;->getHeight()I

    move-result v11

    int-to-float v11, v11

    int-to-float v12, v5

    div-float/2addr v11, v12

    iput v11, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->scaleY:F

    .line 259
    return v5

    .line 228
    .end local v2           #delta:I
    .end local v6           #height:I
    .end local v7           #row:I
    .end local v10           #y:I
    :cond_6
    const/16 v11, 0xc

    if-le v0, v11, :cond_0

    .line 229
    const/16 v0, 0xc

    .line 230
    iget v11, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mCellHeight:I

    div-int/lit8 v11, v11, 0x3

    add-int/2addr v3, v11

    goto :goto_0

    .line 232
    :cond_7
    const/4 v11, 0x1

    goto :goto_1
.end method


# virtual methods
.method public acceptDrop(Lcom/baidu/launcher/ui/dragdrop/DragSource;IIIILcom/baidu/launcher/ui/dragdrop/DragView;Ljava/lang/Object;)Z
    .locals 8
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 325
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mFolder:Lcom/baidu/launcher/ui/folder/Folder;

    instance-of v0, v0, Lcom/baidu/launcher/ui/folder/UserFolder;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mFolder:Lcom/baidu/launcher/ui/folder/Folder;

    check-cast v0, Lcom/baidu/launcher/ui/folder/UserFolder;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/baidu/launcher/ui/folder/UserFolder;->acceptDrop(Lcom/baidu/launcher/ui/dragdrop/DragSource;IIIILcom/baidu/launcher/ui/dragdrop/DragView;Ljava/lang/Object;)Z

    move-result v0

    .line 329
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bindFolder(Lcom/baidu/launcher/ui/folder/Folder;Lcom/baidu/launcher/ui/folder/FolderHolder;Z)V
    .locals 2
    .parameter "folder"
    .parameter "v"
    .parameter "addStatusBarHeight"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->tempLoc:[I

    invoke-interface {p2, v0}, Lcom/baidu/launcher/ui/folder/FolderHolder;->getLocationOnScreen([I)V

    .line 192
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/logic/ViewManager;->getmHomeView()Lcom/baidu/launcher/ui/homeview/HomeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/HomeView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mPivotX:I

    .line 193
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/logic/ViewManager;->getmHomeView()Lcom/baidu/launcher/ui/homeview/HomeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/HomeView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mPivotY:I

    .line 195
    iput-object p1, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mFolder:Lcom/baidu/launcher/ui/folder/Folder;

    .line 196
    if-nez p1, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mFolderLayout:Lcom/baidu/launcher/ui/folder/FolderContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/folder/FolderContainer;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mFolderLayout:Lcom/baidu/launcher/ui/folder/FolderContainer;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/folder/FolderContainer;->removeAllViewsInLayout()V

    .line 203
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mFolderLayout:Lcom/baidu/launcher/ui/folder/FolderContainer;

    invoke-virtual {v0, p1}, Lcom/baidu/launcher/ui/folder/FolderContainer;->addView(Landroid/view/View;)V

    .line 204
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mFolderLayout:Lcom/baidu/launcher/ui/folder/FolderContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/folder/FolderContainer;->setAlpha(F)V

    goto :goto_0
.end method

.method destoryLayerBackground()V
    .locals 1

    .prologue
    .line 340
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/folder/FolderLayer;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 341
    return-void
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
    .line 336
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFolder()Lcom/baidu/launcher/ui/folder/Folder;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mFolder:Lcom/baidu/launcher/ui/folder/Folder;

    return-object v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 497
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/folder/FolderLayer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDragEnter(Lcom/baidu/launcher/ui/dragdrop/DragSource;IIIILcom/baidu/launcher/ui/dragdrop/DragView;Ljava/lang/Object;)V
    .locals 7
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    const/4 v6, 0x1

    .line 291
    invoke-virtual {p6}, Lcom/baidu/launcher/ui/dragdrop/DragView;->getLastDropTarget()Lcom/baidu/launcher/ui/dragdrop/DropTarget;

    move-result-object v2

    instance-of v2, v2, Lcom/baidu/launcher/ui/folder/Folder;

    if-eqz v2, :cond_0

    move-object v1, p7

    .line 292
    check-cast v1, Lcom/baidu/launcher/data/item/BaseItemInfo;

    .line 293
    .local v1, info:Lcom/baidu/launcher/data/item/BaseItemInfo;
    instance-of v2, p1, Lcom/baidu/launcher/ui/folder/UserFolder;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 294
    check-cast v0, Lcom/baidu/launcher/ui/folder/UserFolder;

    .line 295
    .local v0, folder:Lcom/baidu/launcher/ui/folder/UserFolder;
    iget-wide v2, v1, Lcom/baidu/launcher/data/item/BaseItemInfo;->id:J

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/folder/UserFolder;->getInfo()Lcom/baidu/launcher/data/item/IFolderInfo;

    move-result-object v4

    invoke-interface {v4}, Lcom/baidu/launcher/data/item/IFolderInfo;->getID()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 296
    iget-object v2, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v2, v6, v6}, Lcom/baidu/launcher/ui/logic/ViewManager;->closeFolder(ZZ)V

    .line 297
    instance-of v2, p7, Lcom/baidu/launcher/data/item/ListAppInfo;

    if-eqz v2, :cond_0

    .line 298
    iget-object v2, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/logic/ViewManager;->getAppListView()Lcom/baidu/launcher/ui/applistview/AppListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/applistview/AppListView;->enterEditMode()V

    .line 308
    .end local v0           #folder:Lcom/baidu/launcher/ui/folder/UserFolder;
    .end local v1           #info:Lcom/baidu/launcher/data/item/BaseItemInfo;
    :cond_0
    :goto_0
    return-void

    .line 303
    .restart local v1       #info:Lcom/baidu/launcher/data/item/BaseItemInfo;
    :cond_1
    iget-object v2, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v2, v6, v6}, Lcom/baidu/launcher/ui/logic/ViewManager;->closeFolder(ZZ)V

    .line 304
    instance-of v2, p7, Lcom/baidu/launcher/data/item/ListAppInfo;

    if-eqz v2, :cond_0

    .line 305
    iget-object v2, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/logic/ViewManager;->getAppListView()Lcom/baidu/launcher/ui/applistview/AppListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/applistview/AppListView;->enterEditMode()V

    goto :goto_0
.end method

.method public onDragExit(Lcom/baidu/launcher/ui/dragdrop/DragSource;IIIILcom/baidu/launcher/ui/dragdrop/DragView;Ljava/lang/Object;)V
    .locals 0
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 320
    return-void
.end method

.method public onDragOver(Lcom/baidu/launcher/ui/dragdrop/DragSource;IIIILcom/baidu/launcher/ui/dragdrop/DragView;Ljava/lang/Object;)V
    .locals 0
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 314
    return-void
.end method

.method public onDrop(Lcom/baidu/launcher/ui/dragdrop/DragSource;IIIILcom/baidu/launcher/ui/dragdrop/DragView;Ljava/lang/Object;)V
    .locals 8
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 281
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mFolder:Lcom/baidu/launcher/ui/folder/Folder;

    instance-of v0, v0, Lcom/baidu/launcher/ui/folder/UserFolder;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mFolder:Lcom/baidu/launcher/ui/folder/Folder;

    check-cast v0, Lcom/baidu/launcher/ui/folder/UserFolder;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/baidu/launcher/ui/folder/UserFolder;->onDrop(Lcom/baidu/launcher/ui/dragdrop/DragSource;IIIILcom/baidu/launcher/ui/dragdrop/DragView;Ljava/lang/Object;)V

    .line 284
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/logic/ViewManager;->cancelFolderHighlight()V

    .line 286
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 121
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 122
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/folder/FolderLayer;->setFocusableInTouchMode(Z)V

    .line 123
    const v0, 0x7f080132

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/folder/FolderLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/folder/FolderContainer;

    iput-object v0, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mFolderLayout:Lcom/baidu/launcher/ui/folder/FolderContainer;

    .line 151
    return-void
.end method

.method public onFlingToDelete(Lcom/baidu/launcher/ui/dragdrop/DragSource;Ljava/lang/Object;IILandroid/graphics/PointF;)V
    .locals 0
    .parameter "source"
    .parameter "dragInfo"
    .parameter "x"
    .parameter "y"
    .parameter "vec"

    .prologue
    .line 493
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 90
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 92
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 93
    .local v9, width:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    .line 94
    .local v10, widthMode:I
    const/high16 v11, 0x4000

    if-eq v10, v11, :cond_0

    .line 95
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "Folder can only be used in EXACTLY mode."

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 98
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 99
    .local v4, height:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 100
    .local v5, heightMode:I
    const/high16 v11, 0x4000

    if-eq v5, v11, :cond_1

    .line 101
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "Folder can only be used in EXACTLY mode."

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 104
    :cond_1
    iget v11, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mPaddingTop:I

    iget v12, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mPaddingBottom:I

    add-int v8, v11, v12

    .line 105
    .local v8, verticalPadding:I
    iget v11, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mPaddingLeft:I

    iget v12, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mPaddingRight:I

    add-int v6, v11, v12

    .line 108
    .local v6, horizontalPadding:I
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/folder/FolderLayer;->getChildCount()I

    move-result v3

    .line 109
    .local v3, count:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v3, :cond_2

    .line 110
    invoke-virtual {p0, v7}, Lcom/baidu/launcher/ui/folder/FolderLayer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 111
    .local v0, child:Landroid/view/View;
    sub-int v11, v9, v6

    const/high16 v12, 0x4000

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 113
    .local v2, childWidthMeasureSpec:I
    sub-int v11, v4, v8

    const/high16 v12, 0x4000

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 115
    .local v1, childHeightMeasureSpec:I
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    .line 109
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 117
    .end local v0           #child:Landroid/view/View;
    .end local v1           #childHeightMeasureSpec:I
    .end local v2           #childWidthMeasureSpec:I
    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "ev"

    .prologue
    const-wide/16 v9, 0x12c

    const/4 v4, 0x1

    .line 155
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mLastCloseTime:J

    sub-long/2addr v5, v7

    cmp-long v5, v5, v9

    if-gez v5, :cond_1

    .line 181
    :cond_0
    :goto_0
    return v4

    .line 158
    :cond_1
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/folder/FolderLayer;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_2

    .line 159
    const/4 v4, 0x0

    goto :goto_0

    .line 161
    :cond_2
    iget-object v5, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mFolder:Lcom/baidu/launcher/ui/folder/Folder;

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v4, :cond_0

    .line 162
    iget-object v5, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mFolder:Lcom/baidu/launcher/ui/folder/Folder;

    invoke-virtual {v5}, Lcom/baidu/launcher/ui/folder/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 163
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 164
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v2, v5

    .line 165
    .local v2, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v3, v5

    .line 166
    .local v3, y:I
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mRectTemp:Landroid/graphics/Rect;

    .line 167
    .local v0, r:Landroid/graphics/Rect;
    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 169
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mLastTouchTime:J

    sub-long/2addr v5, v7

    cmp-long v5, v5, v9

    if-lez v5, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->startTime:J

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x1f4

    cmp-long v5, v5, v7

    if-ltz v5, :cond_3

    .line 170
    iget-object v5, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mFolder:Lcom/baidu/launcher/ui/folder/Folder;

    invoke-virtual {v5}, Lcom/baidu/launcher/ui/folder/Folder;->getVisibility()I

    move-result v5

    if-nez v5, :cond_3

    .line 171
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mLastCloseTime:J

    .line 172
    iget-object v5, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    if-eqz v5, :cond_3

    .line 173
    iget-object v5, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v5, v4, v4}, Lcom/baidu/launcher/ui/logic/ViewManager;->closeFolder(ZZ)V

    .line 177
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mLastTouchTime:J

    goto :goto_0
.end method

.method public setStartTime(J)V
    .locals 0
    .parameter "startTime"

    .prologue
    .line 506
    iput-wide p1, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->startTime:J

    .line 507
    return-void
.end method

.method public setTopPadding(I)V
    .locals 0
    .parameter "padding"

    .prologue
    .line 501
    iput p1, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mPaddingTop:I

    .line 502
    return-void
.end method

.method public setViewManager(Lcom/baidu/launcher/ui/logic/ViewManager;)V
    .locals 1
    .parameter "viewManager"

    .prologue
    .line 184
    iput-object p1, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    .line 185
    invoke-virtual {p1}, Lcom/baidu/launcher/ui/logic/ViewManager;->getDragController()Lcom/baidu/launcher/ui/dragdrop/DragController;

    move-result-object v0

    .line 186
    .local v0, dragController:Lcom/baidu/launcher/ui/dragdrop/DragController;
    invoke-virtual {v0, p0}, Lcom/baidu/launcher/ui/dragdrop/DragController;->addDropTarget(Lcom/baidu/launcher/ui/dragdrop/DropTarget;)V

    .line 187
    return-void
.end method

.method public startFolderCloseAnim(ZZ)V
    .locals 9
    .parameter "animate"
    .parameter "keepBackground"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/high16 v1, 0x3f80

    .line 384
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/folder/FolderLayer;->requestFocus()Z

    .line 385
    if-eqz p2, :cond_0

    .line 386
    iget-object v1, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mFolderLayout:Lcom/baidu/launcher/ui/folder/FolderContainer;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/ui/folder/FolderContainer;->setVisibility(I)V

    .line 387
    iget-object v1, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mFolderLayout:Lcom/baidu/launcher/ui/folder/FolderContainer;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/folder/FolderContainer;->removeAllViewsInLayout()V

    .line 388
    iget-object v1, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mFolderLayout:Lcom/baidu/launcher/ui/folder/FolderContainer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/ui/folder/FolderContainer;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 430
    :goto_0
    return-void

    .line 392
    :cond_0
    if-nez p1, :cond_1

    .line 393
    invoke-direct {p0}, Lcom/baidu/launcher/ui/folder/FolderLayer;->onFolderClosed()V

    goto :goto_0

    .line 396
    :cond_1
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 397
    invoke-direct {p0}, Lcom/baidu/launcher/ui/folder/FolderLayer;->enableAndBuildHardwareLayer()V

    .line 398
    const-string v1, "alpha"

    new-array v2, v3, [F

    aput v4, v2, v5

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .line 403
    .local v7, alphaOut:Landroid/animation/PropertyValuesHolder;
    iget-object v1, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mFolderLayout:Lcom/baidu/launcher/ui/folder/FolderContainer;

    new-array v2, v3, [Landroid/animation/PropertyValuesHolder;

    aput-object v7, v2, v5

    invoke-static {v1, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 404
    .local v8, mFolderCloseAnim:Landroid/animation/ObjectAnimator;
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v8, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 405
    const-wide/16 v1, 0x0

    invoke-virtual {v8, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 406
    new-instance v1, Lcom/baidu/launcher/ui/folder/FolderLayer$2;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/ui/folder/FolderLayer$2;-><init>(Lcom/baidu/launcher/ui/folder/FolderLayer;)V

    invoke-virtual {v8, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 413
    invoke-virtual {v8}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 415
    .end local v7           #alphaOut:Landroid/animation/PropertyValuesHolder;
    .end local v8           #mFolderCloseAnim:Landroid/animation/ObjectAnimator;
    :cond_2
    iget-object v2, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mFolderLayout:Lcom/baidu/launcher/ui/folder/FolderContainer;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/folder/FolderContainer;->clearAnimation()V

    .line 416
    new-instance v8, Landroid/view/animation/AnimationSet;

    invoke-direct {v8, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 417
    .local v8, mFolderCloseAnim:Landroid/view/animation/AnimationSet;
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v7, v1, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 418
    .local v7, alphaOut:Landroid/view/animation/AlphaAnimation;
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget v2, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->scaleX:F

    iget v4, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->scaleY:F

    iget v3, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mPivotX:I

    int-to-float v5, v3

    iget v3, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mPivotY:I

    int-to-float v6, v3

    move v3, v1

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 419
    .local v0, scaleOut:Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v8, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 420
    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 421
    iget-wide v1, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mFolderAnimationTime:J

    invoke-virtual {v8, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 422
    new-instance v1, Lcom/baidu/launcher/ui/folder/FolderLayer$3;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/ui/folder/FolderLayer$3;-><init>(Lcom/baidu/launcher/ui/folder/FolderLayer;)V

    invoke-virtual {v8, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 428
    iget-object v1, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mFolderLayout:Lcom/baidu/launcher/ui/folder/FolderContainer;

    invoke-virtual {v1, v8}, Lcom/baidu/launcher/ui/folder/FolderContainer;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public startFolderOpenAnim(Z)V
    .locals 4
    .parameter "onlyShowBackground"

    .prologue
    const/4 v3, 0x0

    .line 345
    invoke-virtual {p0, v3}, Lcom/baidu/launcher/ui/folder/FolderLayer;->setVisibility(I)V

    .line 346
    if-eqz p1, :cond_0

    .line 347
    iget-object v1, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mFolderLayout:Lcom/baidu/launcher/ui/folder/FolderContainer;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/ui/folder/FolderContainer;->setVisibility(I)V

    .line 348
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/baidu/launcher/ui/folder/FolderLayer;->fadeLayer(Ljava/lang/Runnable;ZZ)V

    .line 381
    :goto_0
    return-void

    .line 351
    :cond_0
    new-instance v0, Lcom/baidu/launcher/ui/folder/FolderLayer$1;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/ui/folder/FolderLayer$1;-><init>(Lcom/baidu/launcher/ui/folder/FolderLayer;)V

    .line 379
    .local v0, onCompleteRunnable:Ljava/lang/Runnable;
    invoke-direct {p0, v0, v3, v3}, Lcom/baidu/launcher/ui/folder/FolderLayer;->fadeLayer(Ljava/lang/Runnable;ZZ)V

    goto :goto_0
.end method

.method public unbindFolder()V
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mFolder:Lcom/baidu/launcher/ui/folder/Folder;

    .line 213
    return-void
.end method

.method public updateFolderPaddingTop(Z)V
    .locals 3
    .parameter "showStatusBar"

    .prologue
    .line 263
    iget-object v2, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/logic/ViewManager;->getStatusBarHeight()I

    move-result v0

    .line 264
    .local v0, sbh:I
    iget v1, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mEditPadding:I

    .line 265
    .local v1, top:I
    if-eqz p1, :cond_0

    .line 266
    iget v2, p0, Lcom/baidu/launcher/ui/folder/FolderLayer;->mEditPadding:I

    sub-int v1, v2, v0

    .line 272
    :cond_0
    return-void
.end method
