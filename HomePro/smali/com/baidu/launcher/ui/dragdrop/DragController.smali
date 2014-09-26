.class public Lcom/baidu/launcher/ui/dragdrop/DragController;
.super Ljava/lang/Object;
.source "DragController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/ui/dragdrop/DragController$ScrollRunnable;,
        Lcom/baidu/launcher/ui/dragdrop/DragController$DragListener;
    }
.end annotation


# static fields
.field public static final DRAG_ACTION_COPY:I = 0x1

.field public static final DRAG_ACTION_MOVE:I = 0x0

.field private static final MAX_FLING_DEGREES:F = 35.0f

.field private static final PROFILE_DRAWING_DURING_DRAG:Z = false

.field private static final SCROLL_DELAY:I = 0x258

.field static final SCROLL_LEFT:I = 0x0

.field private static final SCROLL_OUTSIDE_ZONE:I = 0x0

.field static final SCROLL_RIGHT:I = 0x1

.field private static final SCROLL_WAITING_IN_ZONE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Launcher.DragController"

.field public static final TOUCH_SLOP:I = 0x5

.field private static final VIBRATE_DURATION:I = 0x23


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mCoordinatesTemp:[I

.field private mDeleteRegion:Landroid/graphics/RectF;

.field private mDeleteZone:Lcom/baidu/launcher/ui/dragdrop/DeleteZone;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mDragInfo:Ljava/lang/Object;

.field private mDragScroller:Lcom/baidu/launcher/ui/dragdrop/DragScroller;

.field private mDragSource:Lcom/baidu/launcher/ui/dragdrop/DragSource;

.field private mDragView:Lcom/baidu/launcher/ui/dragdrop/DragView;

.field private mDragViewMultiplyColor:I

.field private mDragging:Z

.field private mDropTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/ui/dragdrop/DropTarget;",
            ">;"
        }
    .end annotation
.end field

.field private mFlingToDeleteDropTarget:Lcom/baidu/launcher/ui/dragdrop/DropTarget;

.field protected mFlingToDeleteThresholdVelocity:I

.field private mHandler:Landroid/os/Handler;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mLastDropTarget:Lcom/baidu/launcher/ui/dragdrop/DropTarget;

.field private mLastDropTargetNeedExitOnEndDrag:Z

.field private mLeftScrollOffsetInland:I

.field private mMotionDownX:F

.field private mMotionDownY:F

.field private mMoveTarget:Landroid/view/View;

.field private mOriginator:Landroid/view/View;

.field private mOriginatorXY:[I

.field private mRectTemp:Landroid/graphics/Rect;

.field private mScrollRunnable:Lcom/baidu/launcher/ui/dragdrop/DragController$ScrollRunnable;

.field private mScrollState:I

.field private mScrollView:Landroid/view/View;

.field private mScrollZone:I

.field private mTouchOffsetX:F

.field private mTouchOffsetY:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mVibrator:Landroid/os/Vibrator;

.field private mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

.field private mWindowToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/baidu/launcher/ui/logic/ViewManager;)V
    .locals 4
    .parameter "context"
    .parameter "viewManager"

    .prologue
    const/4 v3, 0x2

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mRectTemp:Landroid/graphics/Rect;

    .line 105
    new-array v2, v3, [I

    iput-object v2, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mCoordinatesTemp:[I

    .line 117
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v2, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 143
    new-array v2, v3, [I

    iput-object v2, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mOriginatorXY:[I

    .line 146
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDropTargets:Ljava/util/ArrayList;

    .line 159
    const/4 v2, 0x0

    iput v2, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mScrollState:I

    .line 160
    new-instance v2, Lcom/baidu/launcher/ui/dragdrop/DragController$ScrollRunnable;

    invoke-direct {v2, p0}, Lcom/baidu/launcher/ui/dragdrop/DragController$ScrollRunnable;-><init>(Lcom/baidu/launcher/ui/dragdrop/DragController;)V

    iput-object v2, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mScrollRunnable:Lcom/baidu/launcher/ui/dragdrop/DragController$ScrollRunnable;

    .line 163
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDeleteRegion:Landroid/graphics/RectF;

    .line 206
    iput-object p1, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mContext:Landroid/content/Context;

    .line 207
    iput-object p2, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    .line 208
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mHandler:Landroid/os/Handler;

    .line 209
    const-string v2, "vibrator"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    iput-object v2, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mVibrator:Landroid/os/Vibrator;

    .line 210
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b001c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mScrollZone:I

    .line 211
    const/high16 v2, 0x42c8

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mLeftScrollOffsetInland:I

    .line 213
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090023

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragViewMultiplyColor:I

    .line 214
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 216
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 217
    .local v1, r:Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 218
    .local v0, density:F
    const v2, 0x7f0d000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mFlingToDeleteThresholdVelocity:I

    .line 220
    return-void
.end method

.method private FlingToDelete(Landroid/graphics/PointF;)V
    .locals 8
    .parameter "vel"

    .prologue
    const/4 v4, 0x1

    .line 855
    iget-object v6, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mCoordinatesTemp:[I

    .line 856
    .local v6, coordinates:[I
    move-object v5, p1

    .line 858
    .local v5, pointF:Landroid/graphics/PointF;
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mFlingToDeleteDropTarget:Lcom/baidu/launcher/ui/dragdrop/DropTarget;

    iget-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDeleteZone:Lcom/baidu/launcher/ui/dragdrop/DeleteZone;

    if-ne v0, v1, :cond_0

    .line 859
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDeleteZone:Lcom/baidu/launcher/ui/dragdrop/DeleteZone;

    iget-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mOriginator:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/dragdrop/DeleteZone;->setDeleteView(Landroid/view/View;)V

    .line 861
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mFlingToDeleteDropTarget:Lcom/baidu/launcher/ui/dragdrop/DropTarget;

    iget-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragSource:Lcom/baidu/launcher/ui/dragdrop/DragSource;

    iget-object v2, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragInfo:Ljava/lang/Object;

    const/4 v3, 0x0

    aget v3, v6, v3

    aget v4, v6, v4

    invoke-interface/range {v0 .. v5}, Lcom/baidu/launcher/ui/dragdrop/DropTarget;->onFlingToDelete(Lcom/baidu/launcher/ui/dragdrop/DragSource;Ljava/lang/Object;IILandroid/graphics/PointF;)V

    .line 864
    :try_start_0
    iget-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragSource:Lcom/baidu/launcher/ui/dragdrop/DragSource;

    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mFlingToDeleteDropTarget:Lcom/baidu/launcher/ui/dragdrop/DropTarget;

    check-cast v0, Landroid/view/View;

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/baidu/launcher/ui/dragdrop/DragSource;->onDropCompleted(Landroid/view/View;Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 868
    :goto_0
    invoke-direct {p0}, Lcom/baidu/launcher/ui/dragdrop/DragController;->endFlingToDrop()V

    .line 869
    return-void

    .line 865
    :catch_0
    move-exception v7

    .line 866
    .local v7, e:Ljava/lang/NullPointerException;
    invoke-virtual {v7}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/baidu/launcher/ui/dragdrop/DragController;)Lcom/baidu/launcher/ui/logic/ViewManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/baidu/launcher/ui/dragdrop/DragController;Landroid/graphics/PointF;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/dragdrop/DragController;->FlingToDelete(Landroid/graphics/PointF;)V

    return-void
.end method

.method static synthetic access$200(Lcom/baidu/launcher/ui/dragdrop/DragController;)Lcom/baidu/launcher/ui/dragdrop/DragScroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragScroller:Lcom/baidu/launcher/ui/dragdrop/DragScroller;

    return-object v0
.end method

.method static synthetic access$302(Lcom/baidu/launcher/ui/dragdrop/DragController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput p1, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mScrollState:I

    return p1
.end method

.method static synthetic access$400(Lcom/baidu/launcher/ui/dragdrop/DragController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/baidu/launcher/ui/dragdrop/DragController;->forceMoveEvent()V

    return-void
.end method

.method private acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "ev"

    .prologue
    .line 1194
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 1195
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1197
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1198
    return-void
.end method

.method private backupCreateFolderViewOnDrop()V
    .locals 2

    .prologue
    .line 966
    iget-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    if-eqz v1, :cond_0

    .line 967
    iget-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/logic/ViewManager;->getWorkspace()Lcom/baidu/launcher/ui/homeview/Workspace;

    move-result-object v0

    .line 968
    .local v0, workspace:Lcom/baidu/launcher/ui/homeview/Workspace;
    if-eqz v0, :cond_0

    .line 969
    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/Workspace;->backupCreateFolderViewOnDrop()V

    .line 972
    .end local v0           #workspace:Lcom/baidu/launcher/ui/homeview/Workspace;
    :cond_0
    return-void
.end method

.method private static clamp(III)I
    .locals 0
    .parameter "val"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 1113
    if-ge p0, p1, :cond_0

    .line 1118
    .end local p1
    :goto_0
    return p1

    .line 1115
    .restart local p1
    :cond_0
    if-lt p0, p2, :cond_1

    .line 1116
    add-int/lit8 p1, p2, -0x1

    goto :goto_0

    :cond_1
    move p1, p0

    .line 1118
    goto :goto_0
.end method

.method private clearDragView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 582
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragView:Lcom/baidu/launcher/ui/dragdrop/DragView;

    if-eqz v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragView:Lcom/baidu/launcher/ui/dragdrop/DragView;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/dragdrop/DragView;->remove()V

    .line 584
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragView:Lcom/baidu/launcher/ui/dragdrop/DragView;

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/dragdrop/DragView;->setLastDropTarget(Lcom/baidu/launcher/ui/dragdrop/DropTarget;)V

    .line 585
    iput-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragView:Lcom/baidu/launcher/ui/dragdrop/DragView;

    .line 587
    :cond_0
    return-void
.end method

.method private clearScrollRunnable()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 957
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mScrollRunnable:Lcom/baidu/launcher/ui/dragdrop/DragController$ScrollRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 958
    iget v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mScrollState:I

    if-ne v0, v2, :cond_0

    .line 959
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mScrollState:I

    .line 960
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mScrollRunnable:Lcom/baidu/launcher/ui/dragdrop/DragController$ScrollRunnable;

    invoke-virtual {v0, v2}, Lcom/baidu/launcher/ui/dragdrop/DragController$ScrollRunnable;->setDirection(I)V

    .line 961
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/logic/ViewManager;->getDragLayer()Lcom/baidu/launcher/ui/dragdrop/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->onExitScrollArea()V

    .line 963
    :cond_0
    return-void
.end method

.method private createDragBitmap(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "v"
    .parameter "canvas"
    .parameter "padding"

    .prologue
    const/4 v6, 0x1

    .line 398
    iget-object v3, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090024

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 401
    .local v2, outlineColor:I
    instance-of v3, p1, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    move-object v3, p1

    .line 402
    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aget-object v1, v3, v6

    .line 403
    .local v1, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v3, p3

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v4, p3

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 410
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    .local v0, b:Landroid/graphics/Bitmap;
    :goto_0
    invoke-virtual {p2, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 411
    invoke-direct {p0, p1, p2, p3, v6}, Lcom/baidu/launcher/ui/dragdrop/DragController;->drawDragView(Landroid/view/View;Landroid/graphics/Canvas;IZ)V

    .line 414
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 415
    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 418
    :cond_0
    return-object v0

    .line 406
    .end local v0           #b:Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, p3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v4, p3

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0       #b:Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method private dragInAddMode()Z
    .locals 1

    .prologue
    .line 1239
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragSource:Lcom/baidu/launcher/ui/dragdrop/DragSource;

    instance-of v0, v0, Lcom/baidu/launcher/ui/editview/EditView;

    return v0
.end method

.method private drawDragView(Landroid/view/View;Landroid/graphics/Canvas;IZ)V
    .locals 6
    .parameter "v"
    .parameter "destCanvas"
    .parameter "padding"
    .parameter "pruneToDrawable"

    .prologue
    const/4 v5, 0x0

    .line 429
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 430
    .local v0, clipRect:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 432
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 433
    instance-of v3, p1, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    if-eqz p4, :cond_0

    .line 434
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v1, v3, v4

    .line 435
    .local v1, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v3, p3

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v4, p3

    invoke-virtual {v0, v5, v5, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 436
    div-int/lit8 v3, p3, 0x2

    int-to-float v3, v3

    div-int/lit8 v4, p3, 0x2

    int-to-float v4, v4

    invoke-virtual {p2, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 437
    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 459
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    .line 460
    return-void

    .line 446
    .restart local p1
    :cond_0
    instance-of v3, p1, Lcom/baidu/launcher/ui/common/BubbleTextView;

    if-eqz v3, :cond_2

    move-object v2, p1

    .line 447
    check-cast v2, Lcom/baidu/launcher/ui/common/BubbleTextView;

    .line 448
    .local v2, tv:Lcom/baidu/launcher/ui/common/BubbleTextView;
    invoke-virtual {v2}, Lcom/baidu/launcher/ui/common/BubbleTextView;->getExtendedPaddingTop()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/common/BubbleTextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 455
    .end local v2           #tv:Lcom/baidu/launcher/ui/common/BubbleTextView;
    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v3

    neg-int v3, v3

    div-int/lit8 v4, p3, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v4

    neg-int v4, v4

    div-int/lit8 v5, p3, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p2, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 456
    sget-object v3, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p2, v0, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 457
    invoke-virtual {p1, p2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 450
    :cond_2
    instance-of v3, p1, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    move-object v2, p1

    .line 451
    check-cast v2, Landroid/widget/TextView;

    .line 452
    .local v2, tv:Landroid/widget/TextView;
    invoke-virtual {v2}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v3

    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundDrawablePadding()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_1
.end method

.method private drop(FF)Z
    .locals 13
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 990
    iget-object v8, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mCoordinatesTemp:[I

    .line 994
    .local v8, coordinates:[I
    float-to-int v1, p1

    float-to-int v2, p2

    invoke-direct {p0, v1, v2, v8}, Lcom/baidu/launcher/ui/dragdrop/DragController;->findDropTarget(II[I)Lcom/baidu/launcher/ui/dragdrop/DropTarget;

    move-result-object v0

    .line 995
    .local v0, dropTarget:Lcom/baidu/launcher/ui/dragdrop/DropTarget;
    if-eqz v0, :cond_8

    .line 996
    const/4 v9, 0x0

    .line 997
    .local v9, createFolder:Z
    instance-of v1, v0, Lcom/baidu/launcher/ui/folder/UserFolder;

    if-eqz v1, :cond_3

    .line 998
    iget-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragSource:Lcom/baidu/launcher/ui/dragdrop/DragSource;

    aget v2, v8, v11

    aget v3, v8, v10

    iget v4, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mTouchOffsetX:F

    float-to-int v4, v4

    iget v5, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mTouchOffsetY:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragView:Lcom/baidu/launcher/ui/dragdrop/DragView;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface/range {v0 .. v7}, Lcom/baidu/launcher/ui/dragdrop/DropTarget;->onDragExit(Lcom/baidu/launcher/ui/dragdrop/DragSource;IIIILcom/baidu/launcher/ui/dragdrop/DragView;Ljava/lang/Object;)V

    .line 1022
    :cond_0
    iput-boolean v11, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mLastDropTargetNeedExitOnEndDrag:Z

    .line 1023
    iget-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragSource:Lcom/baidu/launcher/ui/dragdrop/DragSource;

    aget v2, v8, v11

    aget v3, v8, v10

    iget v4, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mTouchOffsetX:F

    float-to-int v4, v4

    iget v5, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mTouchOffsetY:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragView:Lcom/baidu/launcher/ui/dragdrop/DragView;

    iget-object v7, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v0 .. v7}, Lcom/baidu/launcher/ui/dragdrop/DropTarget;->acceptDrop(Lcom/baidu/launcher/ui/dragdrop/DragSource;IIIILcom/baidu/launcher/ui/dragdrop/DragView;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    if-nez v9, :cond_7

    .line 1025
    iget-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDeleteZone:Lcom/baidu/launcher/ui/dragdrop/DeleteZone;

    if-ne v0, v1, :cond_1

    .line 1026
    iget-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDeleteZone:Lcom/baidu/launcher/ui/dragdrop/DeleteZone;

    iget-object v2, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mOriginator:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/ui/dragdrop/DeleteZone;->setDeleteView(Landroid/view/View;)V

    .line 1028
    :cond_1
    iget-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragSource:Lcom/baidu/launcher/ui/dragdrop/DragSource;

    aget v2, v8, v11

    aget v3, v8, v10

    iget v4, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mTouchOffsetX:F

    float-to-int v4, v4

    iget v5, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mTouchOffsetY:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragView:Lcom/baidu/launcher/ui/dragdrop/DragView;

    iget-object v7, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v0 .. v7}, Lcom/baidu/launcher/ui/dragdrop/DropTarget;->onDrop(Lcom/baidu/launcher/ui/dragdrop/DragSource;IIIILcom/baidu/launcher/ui/dragdrop/DragView;Ljava/lang/Object;)V

    .line 1030
    iget-object v2, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragSource:Lcom/baidu/launcher/ui/dragdrop/DragSource;

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    invoke-interface {v2, v1, v10}, Lcom/baidu/launcher/ui/dragdrop/DragSource;->onDropCompleted(Landroid/view/View;Z)V

    .line 1031
    instance-of v1, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragSource:Lcom/baidu/launcher/ui/dragdrop/DragSource;

    instance-of v1, v1, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    if-nez v1, :cond_6

    move-object v1, v0

    .line 1032
    check-cast v1, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    check-cast v0, Landroid/view/View;

    .end local v0           #dropTarget:Lcom/baidu/launcher/ui/dragdrop/DropTarget;
    invoke-virtual {v1, v0, v10}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->onDropCompleted(Landroid/view/View;Z)V

    :cond_2
    :goto_0
    move v1, v10

    .line 1044
    .end local v9           #createFolder:Z
    :goto_1
    return v1

    .line 1000
    .restart local v0       #dropTarget:Lcom/baidu/launcher/ui/dragdrop/DropTarget;
    .restart local v9       #createFolder:Z
    :cond_3
    instance-of v1, v0, Lcom/baidu/launcher/ui/homeview/Workspace;

    if-eqz v1, :cond_4

    move-object v1, v0

    .line 1001
    check-cast v1, Lcom/baidu/launcher/ui/homeview/Workspace;

    iget-object v2, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragInfo:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/ui/homeview/Workspace;->checkCreateFolderAction(Ljava/lang/Object;)Z

    move-result v9

    .line 1002
    iget-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragSource:Lcom/baidu/launcher/ui/dragdrop/DragSource;

    aget v2, v8, v11

    aget v3, v8, v10

    iget v4, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mTouchOffsetX:F

    float-to-int v4, v4

    iget v5, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mTouchOffsetY:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragView:Lcom/baidu/launcher/ui/dragdrop/DragView;

    iget-object v7, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v0 .. v7}, Lcom/baidu/launcher/ui/dragdrop/DropTarget;->onDragExit(Lcom/baidu/launcher/ui/dragdrop/DragSource;IIIILcom/baidu/launcher/ui/dragdrop/DragView;Ljava/lang/Object;)V

    .line 1004
    if-eqz v9, :cond_0

    .line 1005
    iget-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragSource:Lcom/baidu/launcher/ui/dragdrop/DragSource;

    invoke-interface {v1, v12, v10}, Lcom/baidu/launcher/ui/dragdrop/DragSource;->onDropCompleted(Landroid/view/View;Z)V

    .line 1006
    iput-boolean v11, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mLastDropTargetNeedExitOnEndDrag:Z

    move v1, v10

    .line 1007
    goto :goto_1

    .line 1009
    :cond_4
    instance-of v1, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 1010
    check-cast v1, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    iget-object v2, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragInfo:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->checkCreateFolderAction(Ljava/lang/Object;)Z

    move-result v9

    .line 1011
    iget-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragSource:Lcom/baidu/launcher/ui/dragdrop/DragSource;

    aget v2, v8, v11

    aget v3, v8, v10

    iget v4, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mTouchOffsetX:F

    float-to-int v4, v4

    iget v5, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mTouchOffsetY:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragView:Lcom/baidu/launcher/ui/dragdrop/DragView;

    iget-object v7, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v0 .. v7}, Lcom/baidu/launcher/ui/dragdrop/DropTarget;->onDragExit(Lcom/baidu/launcher/ui/dragdrop/DragSource;IIIILcom/baidu/launcher/ui/dragdrop/DragView;Ljava/lang/Object;)V

    .line 1013
    if-eqz v9, :cond_0

    .line 1014
    iget-object v2, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragSource:Lcom/baidu/launcher/ui/dragdrop/DragSource;

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    invoke-interface {v2, v1, v10}, Lcom/baidu/launcher/ui/dragdrop/DragSource;->onDropCompleted(Landroid/view/View;Z)V

    .line 1015
    iget-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragSource:Lcom/baidu/launcher/ui/dragdrop/DragSource;

    instance-of v1, v1, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    if-nez v1, :cond_5

    .line 1016
    iget-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/logic/ViewManager;->getAppListView()Lcom/baidu/launcher/ui/applistview/AppListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/applistview/AppListView;->getAppsView()Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    move-result-object v1

    check-cast v0, Landroid/view/View;

    .end local v0           #dropTarget:Lcom/baidu/launcher/ui/dragdrop/DropTarget;
    invoke-virtual {v1, v0, v10}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->onDropCompleted(Landroid/view/View;Z)V

    .line 1018
    :cond_5
    iput-boolean v11, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mLastDropTargetNeedExitOnEndDrag:Z

    move v1, v10

    .line 1019
    goto :goto_1

    .line 1033
    .restart local v0       #dropTarget:Lcom/baidu/launcher/ui/dragdrop/DropTarget;
    :cond_6
    instance-of v1, v0, Lcom/baidu/launcher/ui/editview/ScreenSnapshot;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragSource:Lcom/baidu/launcher/ui/dragdrop/DragSource;

    instance-of v1, v1, Lcom/baidu/launcher/ui/folder/UserFolder;

    if-eqz v1, :cond_2

    .line 1034
    iget-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/logic/ViewManager;->getAppListView()Lcom/baidu/launcher/ui/applistview/AppListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/applistview/AppListView;->getAppsView()Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    move-result-object v1

    check-cast v0, Landroid/view/View;

    .end local v0           #dropTarget:Lcom/baidu/launcher/ui/dragdrop/DropTarget;
    invoke-virtual {v1, v0, v10}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->onDropCompleted(Landroid/view/View;Z)V

    goto/16 :goto_0

    .line 1038
    .restart local v0       #dropTarget:Lcom/baidu/launcher/ui/dragdrop/DropTarget;
    :cond_7
    check-cast v0, Landroid/view/View;

    .end local v0           #dropTarget:Lcom/baidu/launcher/ui/dragdrop/DropTarget;
    invoke-direct {p0, v0}, Lcom/baidu/launcher/ui/dragdrop/DragController;->showDropFailureAnimation(Landroid/view/View;)V

    move v1, v11

    .line 1039
    goto/16 :goto_1

    .line 1042
    .end local v9           #createFolder:Z
    .restart local v0       #dropTarget:Lcom/baidu/launcher/ui/dragdrop/DropTarget;
    :cond_8
    invoke-direct {p0, v12}, Lcom/baidu/launcher/ui/dragdrop/DragController;->showDropFailureAnimation(Landroid/view/View;)V

    move v1, v10

    .line 1044
    goto/16 :goto_1
.end method

.method private dropOnFlingToDeleteTarget(FFLandroid/graphics/PointF;)V
    .locals 9
    .parameter "x"
    .parameter "y"
    .parameter "vel"

    .prologue
    .line 754
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mFlingToDeleteDropTarget:Lcom/baidu/launcher/ui/dragdrop/DropTarget;

    invoke-interface {v0}, Lcom/baidu/launcher/ui/dragdrop/DropTarget;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 755
    const-string v0, "Launcher.DragController"

    const-string v1, "system app can\'t fling to delete"

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mFlingToDeleteDropTarget:Lcom/baidu/launcher/ui/dragdrop/DropTarget;

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/baidu/launcher/ui/dragdrop/DragController;->showDropFailureAnimation(Landroid/view/View;)V

    .line 757
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/baidu/launcher/ui/dragdrop/DragController;->endDrag(Z)V

    .line 784
    :goto_0
    return-void

    .line 761
    :cond_0
    iget-object v8, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mCoordinatesTemp:[I

    .line 765
    .local v8, coordinates:[I
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mLastDropTarget:Lcom/baidu/launcher/ui/dragdrop/DropTarget;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mFlingToDeleteDropTarget:Lcom/baidu/launcher/ui/dragdrop/DropTarget;

    iget-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mLastDropTarget:Lcom/baidu/launcher/ui/dragdrop/DropTarget;

    if-eq v0, v1, :cond_1

    .line 766
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mLastDropTarget:Lcom/baidu/launcher/ui/dragdrop/DropTarget;

    iget-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragSource:Lcom/baidu/launcher/ui/dragdrop/DragSource;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragView:Lcom/baidu/launcher/ui/dragdrop/DragView;

    iget-object v7, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v0 .. v7}, Lcom/baidu/launcher/ui/dragdrop/DropTarget;->onDragExit(Lcom/baidu/launcher/ui/dragdrop/DragSource;IIIILcom/baidu/launcher/ui/dragdrop/DragView;Ljava/lang/Object;)V

    .line 767
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mLastDropTargetNeedExitOnEndDrag:Z

    .line 771
    :cond_1
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mFlingToDeleteDropTarget:Lcom/baidu/launcher/ui/dragdrop/DropTarget;

    iget-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragSource:Lcom/baidu/launcher/ui/dragdrop/DragSource;

    const/4 v2, 0x0

    aget v2, v8, v2

    const/4 v3, 0x1

    aget v3, v8, v3

    iget v4, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mTouchOffsetX:F

    float-to-int v4, v4

    iget v5, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mTouchOffsetY:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragView:Lcom/baidu/launcher/ui/dragdrop/DragView;

    iget-object v7, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v0 .. v7}, Lcom/baidu/launcher/ui/dragdrop/DropTarget;->onDragEnter(Lcom/baidu/launcher/ui/dragdrop/DragSource;IIIILcom/baidu/launcher/ui/dragdrop/DragView;Ljava/lang/Object;)V

    .line 774
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mFlingToDeleteDropTarget:Lcom/baidu/launcher/ui/dragdrop/DropTarget;

    iget-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragSource:Lcom/baidu/launcher/ui/dragdrop/DragSource;

    const/4 v2, 0x0

    aget v2, v8, v2

    const/4 v3, 0x1

    aget v3, v8, v3

    iget v4, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mTouchOffsetX:F

    float-to-int v4, v4

    iget v5, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mTouchOffsetY:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragView:Lcom/baidu/launcher/ui/dragdrop/DragView;

    iget-object v7, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v0 .. v7}, Lcom/baidu/launcher/ui/dragdrop/DropTarget;->onDragExit(Lcom/baidu/launcher/ui/dragdrop/DragSource;IIIILcom/baidu/launcher/ui/dragdrop/DragView;Ljava/lang/Object;)V

    .line 777
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mFlingToDeleteDropTarget:Lcom/baidu/launcher/ui/dragdrop/DropTarget;

    iget-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragSource:Lcom/baidu/launcher/ui/dragdrop/DragSource;

    const/4 v2, 0x0

    aget v2, v8, v2

    const/4 v3, 0x1

    aget v3, v8, v3

    iget v4, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mTouchOffsetX:F

    float-to-int v4, v4

    iget v5, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mTouchOffsetY:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragView:Lcom/baidu/launcher/ui/dragdrop/DragView;

    iget-object v7, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v0 .. v7}, Lcom/baidu/launcher/ui/dragdrop/DropTarget;->acceptDrop(Lcom/baidu/launcher/ui/dragdrop/DragSource;IIIILcom/baidu/launcher/ui/dragdrop/DragView;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 779
    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/launcher/ui/dragdrop/DragController;->showFlingToDeleteAnimation(FFLandroid/graphics/PointF;)V

    goto :goto_0

    .line 781
    :cond_2
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mFlingToDeleteDropTarget:Lcom/baidu/launcher/ui/dragdrop/DropTarget;

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/baidu/launcher/ui/dragdrop/DragController;->showDropFailureAnimation(Landroid/view/View;)V

    .line 782
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/baidu/launcher/ui/dragdrop/DragController;->endDrag(Z)V

    goto :goto_0
.end method

.method private endDrag(Z)V
    .locals 9
    .parameter "animation"

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 550
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mLastDropTarget:Lcom/baidu/launcher/ui/dragdrop/DropTarget;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mLastDropTargetNeedExitOnEndDrag:Z

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mLastDropTarget:Lcom/baidu/launcher/ui/dragdrop/DropTarget;

    iget-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragSource:Lcom/baidu/launcher/ui/dragdrop/DragSource;

    iget-object v6, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragView:Lcom/baidu/launcher/ui/dragdrop/DragView;

    iget-object v7, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragInfo:Ljava/lang/Object;

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-interface/range {v0 .. v7}, Lcom/baidu/launcher/ui/dragdrop/DropTarget;->onDragExit(Lcom/baidu/launcher/ui/dragdrop/DragSource;IIIILcom/baidu/launcher/ui/dragdrop/DragView;Ljava/lang/Object;)V

    .line 552
    iput-boolean v2, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mLastDropTargetNeedExitOnEndDrag:Z

    .line 554
    :cond_0
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragging:Z

    if-eqz v0, :cond_2

    .line 555
    iput-boolean v2, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragging:Z

    .line 556
    invoke-direct {p0}, Lcom/baidu/launcher/ui/dragdrop/DragController;->clearScrollRunnable()V

    .line 558
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mOriginator:Landroid/view/View;

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 559
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mOriginator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 562
    :cond_1
    invoke-direct {p0}, Lcom/baidu/launcher/ui/dragdrop/DragController;->clearDragView()V

    .line 564
    invoke-direct {p0}, Lcom/baidu/launcher/ui/dragdrop/DragController;->dragInAddMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 565
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDeleteZone:Lcom/baidu/launcher/ui/dragdrop/DeleteZone;

    invoke-virtual {v0, p1}, Lcom/baidu/launcher/ui/dragdrop/DeleteZone;->onDragEnd(Z)V

    .line 566
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/launcher/ui/dragdrop/DragController$1;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/ui/dragdrop/DragController$1;-><init>(Lcom/baidu/launcher/ui/dragdrop/DragController;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 574
    :cond_2
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/logic/ViewManager;->getWorkspace()Lcom/baidu/launcher/ui/homeview/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/Workspace;->clearOutLine()V

    .line 575
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/logic/ViewManager;->getWorkspace()Lcom/baidu/launcher/ui/homeview/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/Workspace;->removeCreateFolderCallbacks()V

    .line 576
    iput-object v8, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mLastDropTarget:Lcom/baidu/launcher/ui/dragdrop/DropTarget;

    .line 577
    iput-object v8, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragSource:Lcom/baidu/launcher/ui/dragdrop/DragSource;

    .line 578
    invoke-direct {p0}, Lcom/baidu/launcher/ui/dragdrop/DragController;->releaseVelocityTracker()V

    .line 579
    return-void
.end method

.method private endFlingToDrop()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 872
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragging:Z

    .line 873
    invoke-direct {p0}, Lcom/baidu/launcher/ui/dragdrop/DragController;->clearScrollRunnable()V

    .line 875
    invoke-direct {p0}, Lcom/baidu/launcher/ui/dragdrop/DragController;->clearDragView()V

    .line 877
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDeleteZone:Lcom/baidu/launcher/ui/dragdrop/DeleteZone;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/dragdrop/DeleteZone;->onDragEnd(Z)V

    .line 878
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/launcher/ui/dragdrop/DragController$4;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/ui/dragdrop/DragController$4;-><init>(Lcom/baidu/launcher/ui/dragdrop/DragController;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 885
    iput-object v4, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mLastDropTarget:Lcom/baidu/launcher/ui/dragdrop/DropTarget;

    .line 886
    iput-object v4, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragSource:Lcom/baidu/launcher/ui/dragdrop/DragSource;

    .line 887
    invoke-direct {p0}, Lcom/baidu/launcher/ui/dragdrop/DragController;->releaseVelocityTracker()V

    .line 888
    const-string v0, "Launcher.DragController"

    const-string v1, "endFlingToDrop"

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    return-void
.end method

.method private findDropTarget(II[I)Lcom/baidu/launcher/ui/dragdrop/DropTarget;
    .locals 10
    .parameter "x"
    .parameter "y"
    .parameter "dropCoordinates"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1078
    iget-object v3, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mRectTemp:Landroid/graphics/Rect;

    .line 1080
    .local v3, r:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDropTargets:Ljava/util/ArrayList;

    .line 1081
    .local v1, dropTargets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/dragdrop/DropTarget;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1082
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 1083
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/launcher/ui/dragdrop/DropTarget;

    .line 1084
    .local v4, target:Lcom/baidu/launcher/ui/dragdrop/DropTarget;
    invoke-interface {v4}, Lcom/baidu/launcher/ui/dragdrop/DropTarget;->isVisible()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1082
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1087
    :cond_1
    invoke-interface {v4, v3}, Lcom/baidu/launcher/ui/dragdrop/DropTarget;->getHitRect(Landroid/graphics/Rect;)V

    .line 1088
    invoke-interface {v4, p3}, Lcom/baidu/launcher/ui/dragdrop/DropTarget;->getLocationOnScreen([I)V

    .line 1089
    aget v5, p3, v8

    invoke-interface {v4}, Lcom/baidu/launcher/ui/dragdrop/DropTarget;->getLeft()I

    move-result v6

    sub-int/2addr v5, v6

    aget v6, p3, v9

    invoke-interface {v4}, Lcom/baidu/launcher/ui/dragdrop/DropTarget;->getTop()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 1090
    invoke-virtual {v3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1092
    aget v5, p3, v8

    sub-int v5, p1, v5

    aput v5, p3, v8

    .line 1093
    aget v5, p3, v9

    sub-int v5, p2, v5

    aput v5, p3, v9

    .line 1097
    .end local v4           #target:Lcom/baidu/launcher/ui/dragdrop/DropTarget;
    :goto_1
    return-object v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private forceMoveEvent()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1303
    iget-boolean v4, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragging:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragView:Lcom/baidu/launcher/ui/dragdrop/DragView;

    if-eqz v4, :cond_0

    .line 1304
    iget-object v4, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragView:Lcom/baidu/launcher/ui/dragdrop/DragView;

    iget v2, v4, Lcom/baidu/launcher/ui/dragdrop/DragView;->x:I

    .line 1305
    .local v2, x:I
    iget-object v4, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragView:Lcom/baidu/launcher/ui/dragdrop/DragView;

    iget v3, v4, Lcom/baidu/launcher/ui/dragdrop/DragView;->y:I

    .line 1306
    .local v3, y:I
    iget-object v4, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v2, v5, v4}, Lcom/baidu/launcher/ui/dragdrop/DragController;->clamp(III)I

    move-result v0

    .line 1307
    .local v0, screenX:I
    iget-object v4, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v5, v4}, Lcom/baidu/launcher/ui/dragdrop/DragController;->clamp(III)I

    move-result v1

    .line 1308
    .local v1, screenY:I
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/baidu/launcher/ui/dragdrop/DragController;->handleMoveEvent(IIII)V

    .line 1310
    .end local v0           #screenX:I
    .end local v1           #screenY:I
    .end local v2           #x:I
    .end local v3           #y:I
    :cond_0
    return-void
.end method

.method private handleMoveEvent(IIII)V
    .locals 11
    .parameter "x"
    .parameter "y"
    .parameter "screenX"
    .parameter "screenY"

    .prologue
    .line 892
    iget-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragView:Lcom/baidu/launcher/ui/dragdrop/DragView;

    invoke-virtual {v1, p1, p2}, Lcom/baidu/launcher/ui/dragdrop/DragView;->move(II)V

    .line 894
    iget-object v9, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mCoordinatesTemp:[I

    .line 895
    .local v9, coordinates:[I
    invoke-direct {p0, p3, p4, v9}, Lcom/baidu/launcher/ui/dragdrop/DragController;->findDropTarget(II[I)Lcom/baidu/launcher/ui/dragdrop/DropTarget;

    move-result-object v0

    .line 896
    .local v0, dropTarget:Lcom/baidu/launcher/ui/dragdrop/DropTarget;
    if-eqz v0, :cond_5

    .line 897
    iget-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mLastDropTarget:Lcom/baidu/launcher/ui/dragdrop/DropTarget;

    if-ne v1, v0, :cond_3

    .line 898
    iget-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragSource:Lcom/baidu/launcher/ui/dragdrop/DragSource;

    const/4 v2, 0x0

    aget v2, v9, v2

    const/4 v3, 0x1

    aget v3, v9, v3

    iget v4, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mTouchOffsetX:F

    float-to-int v4, v4

    iget v5, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mTouchOffsetY:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragView:Lcom/baidu/launcher/ui/dragdrop/DragView;

    iget-object v7, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v0 .. v7}, Lcom/baidu/launcher/ui/dragdrop/DropTarget;->onDragOver(Lcom/baidu/launcher/ui/dragdrop/DragSource;IIIILcom/baidu/launcher/ui/dragdrop/DragView;Ljava/lang/Object;)V

    .line 918
    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mLastDropTarget:Lcom/baidu/launcher/ui/dragdrop/DropTarget;

    .line 921
    const/4 v10, 0x0

    .line 922
    .local v10, inDeleteRegion:Z
    iget-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDeleteRegion:Landroid/graphics/RectF;

    if-eqz v1, :cond_1

    .line 923
    iget-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDeleteRegion:Landroid/graphics/RectF;

    int-to-float v2, p3

    int-to-float v3, p4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v10

    .line 926
    :cond_1
    iget-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDeleteZone:Lcom/baidu/launcher/ui/dragdrop/DeleteZone;

    if-ne v0, v1, :cond_6

    const/4 v1, 0x1

    :goto_1
    or-int/2addr v10, v1

    .line 928
    invoke-direct {p0}, Lcom/baidu/launcher/ui/dragdrop/DragController;->isFolderOpen()Z

    move-result v1

    or-int/2addr v10, v1

    .line 930
    instance-of v1, v0, Lcom/baidu/launcher/ui/editview/ScreenSnapshot;

    or-int/2addr v10, v1

    .line 934
    if-nez v10, :cond_8

    iget v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mScrollZone:I

    iget v2, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mLeftScrollOffsetInland:I

    sub-int/2addr v1, v2

    if-lez v1, :cond_7

    iget v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mScrollZone:I

    iget v2, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mLeftScrollOffsetInland:I

    sub-int/2addr v1, v2

    :goto_2
    if-ge p3, v1, :cond_8

    .line 935
    iget-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragSource:Lcom/baidu/launcher/ui/dragdrop/DragSource;

    invoke-direct {p0, v1}, Lcom/baidu/launcher/ui/dragdrop/DragController;->removeCreateFolderCallbacks(Lcom/baidu/launcher/ui/dragdrop/DragSource;)V

    .line 936
    iget v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mScrollState:I

    if-nez v1, :cond_2

    .line 937
    const/4 v1, 0x1

    iput v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mScrollState:I

    .line 938
    iget-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/logic/ViewManager;->getDragLayer()Lcom/baidu/launcher/ui/dragdrop/DragLayer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->onEnterScrollArea(I)V

    .line 939
    iget-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mScrollRunnable:Lcom/baidu/launcher/ui/dragdrop/DragController$ScrollRunnable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/ui/dragdrop/DragController$ScrollRunnable;->setDirection(I)V

    .line 940
    iget-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mScrollRunnable:Lcom/baidu/launcher/ui/dragdrop/DragController$ScrollRunnable;

    const-wide/16 v3, 0x258

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 954
    :cond_2
    :goto_3
    return-void

    .line 901
    .end local v10           #inDeleteRegion:Z
    :cond_3
    iget-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mLastDropTarget:Lcom/baidu/launcher/ui/dragdrop/DropTarget;

    if-eqz v1, :cond_4

    .line 902
    iget-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mLastDropTarget:Lcom/baidu/launcher/ui/dragdrop/DropTarget;

    iget-object v2, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragSource:Lcom/baidu/launcher/ui/dragdrop/DragSource;

    const/4 v3, 0x0

    aget v3, v9, v3

    const/4 v4, 0x1

    aget v4, v9, v4

    iget v5, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mTouchOffsetX:F

    float-to-int v5, v5

    iget v6, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mTouchOffsetY:F

    float-to-int v6, v6

    iget-object v7, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragView:Lcom/baidu/launcher/ui/dragdrop/DragView;

    iget-object v8, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v1 .. v8}, Lcom/baidu/launcher/ui/dragdrop/DropTarget;->onDragExit(Lcom/baidu/launcher/ui/dragdrop/DragSource;IIIILcom/baidu/launcher/ui/dragdrop/DragView;Ljava/lang/Object;)V

    .line 904
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mLastDropTargetNeedExitOnEndDrag:Z

    .line 906
    :cond_4
    iget-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragView:Lcom/baidu/launcher/ui/dragdrop/DragView;

    iget-object v2, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mLastDropTarget:Lcom/baidu/launcher/ui/dragdrop/DropTarget;

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/ui/dragdrop/DragView;->setLastDropTarget(Lcom/baidu/launcher/ui/dragdrop/DropTarget;)V

    .line 907
    iget-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragSource:Lcom/baidu/launcher/ui/dragdrop/DragSource;

    const/4 v2, 0x0

    aget v2, v9, v2

    const/4 v3, 0x1

    aget v3, v9, v3

    iget v4, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mTouchOffsetX:F

    float-to-int v4, v4

    iget v5, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mTouchOffsetY:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragView:Lcom/baidu/launcher/ui/dragdrop/DragView;

    iget-object v7, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v0 .. v7}, Lcom/baidu/launcher/ui/dragdrop/DropTarget;->onDragEnter(Lcom/baidu/launcher/ui/dragdrop/DragSource;IIIILcom/baidu/launcher/ui/dragdrop/DragView;Ljava/lang/Object;)V

    .line 909
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mLastDropTargetNeedExitOnEndDrag:Z

    goto/16 :goto_0

    .line 912
    :cond_5
    iget-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mLastDropTarget:Lcom/baidu/launcher/ui/dragdrop/DropTarget;

    if-eqz v1, :cond_0

    .line 913
    iget-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mLastDropTarget:Lcom/baidu/launcher/ui/dragdrop/DropTarget;

    iget-object v2, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragSource:Lcom/baidu/launcher/ui/dragdrop/DragSource;

    const/4 v3, 0x0

    aget v3, v9, v3

    const/4 v4, 0x1

    aget v4, v9, v4

    iget v5, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mTouchOffsetX:F

    float-to-int v5, v5

    iget v6, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mTouchOffsetY:F

    float-to-int v6, v6

    iget-object v7, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragView:Lcom/baidu/launcher/ui/dragdrop/DragView;

    iget-object v8, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v1 .. v8}, Lcom/baidu/launcher/ui/dragdrop/DropTarget;->onDragExit(Lcom/baidu/launcher/ui/dragdrop/DragSource;IIIILcom/baidu/launcher/ui/dragdrop/DragView;Ljava/lang/Object;)V

    .line 915
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mLastDropTargetNeedExitOnEndDrag:Z

    goto/16 :goto_0

    .line 926
    .restart local v10       #inDeleteRegion:Z
    :cond_6
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 934
    :cond_7
    iget v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mScrollZone:I

    goto/16 :goto_2

    .line 942
    :cond_8
    if-nez v10, :cond_9

    iget-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mScrollView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mScrollZone:I

    sub-int/2addr v1, v2

    if-le p3, v1, :cond_9

    .line 943
    iget-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragSource:Lcom/baidu/launcher/ui/dragdrop/DragSource;

    invoke-direct {p0, v1}, Lcom/baidu/launcher/ui/dragdrop/DragController;->removeCreateFolderCallbacks(Lcom/baidu/launcher/ui/dragdrop/DragSource;)V

    .line 944
    iget v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mScrollState:I

    if-nez v1, :cond_2

    .line 945
    const/4 v1, 0x1

    iput v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mScrollState:I

    .line 946
    iget-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/logic/ViewManager;->getDragLayer()Lcom/baidu/launcher/ui/dragdrop/DragLayer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->onEnterScrollArea(I)V

    .line 947
    iget-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mScrollRunnable:Lcom/baidu/launcher/ui/dragdrop/DragController$ScrollRunnable;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/ui/dragdrop/DragController$ScrollRunnable;->setDirection(I)V

    .line 948
    iget-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mScrollRunnable:Lcom/baidu/launcher/ui/dragdrop/DragController$ScrollRunnable;

    const-wide/16 v3, 0x258

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_3

    .line 951
    :cond_9
    invoke-direct {p0}, Lcom/baidu/launcher/ui/dragdrop/DragController;->clearScrollRunnable()V

    goto/16 :goto_3
.end method

.method private isFlingingToDelete(Lcom/baidu/launcher/ui/dragdrop/DragSource;)Landroid/graphics/PointF;
    .locals 9
    .parameter "source"

    .prologue
    const/4 v4, 0x0

    .line 728
    iget-object v5, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mFlingToDeleteDropTarget:Lcom/baidu/launcher/ui/dragdrop/DropTarget;

    if-nez v5, :cond_0

    move-object v3, v4

    .line 747
    :goto_0
    return-object v3

    .line 729
    :cond_0
    invoke-interface {p1}, Lcom/baidu/launcher/ui/dragdrop/DragSource;->supportsFlingToDelete()Z

    move-result v5

    if-nez v5, :cond_1

    move-object v3, v4

    goto :goto_0

    .line 730
    :cond_1
    iget-object v5, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v5}, Lcom/baidu/launcher/ui/logic/ViewManager;->getWorkspace()Lcom/baidu/launcher/ui/homeview/Workspace;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/launcher/ui/homeview/Workspace;->isVisible()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v5}, Lcom/baidu/launcher/ui/logic/ViewManager;->getPreview()Lcom/baidu/launcher/ui/preview/Preview;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/launcher/ui/preview/Preview;->isVisible()Z

    move-result v5

    if-nez v5, :cond_2

    move-object v3, v4

    goto :goto_0

    .line 732
    :cond_2
    iget-object v5, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 733
    .local v0, config:Landroid/view/ViewConfiguration;
    iget-object v5, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v6, 0x3e8

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 735
    iget-object v5, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v5

    iget v6, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mFlingToDeleteThresholdVelocity:I

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_3

    .line 737
    new-instance v3, Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v5

    iget-object v6, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v6

    invoke-direct {v3, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 739
    .local v3, vel:Landroid/graphics/PointF;
    new-instance v2, Landroid/graphics/PointF;

    const/4 v5, 0x0

    const/high16 v6, -0x4080

    invoke-direct {v2, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 740
    .local v2, upVec:Landroid/graphics/PointF;
    iget v5, v3, Landroid/graphics/PointF;->x:F

    iget v6, v2, Landroid/graphics/PointF;->x:F

    mul-float/2addr v5, v6

    iget v6, v3, Landroid/graphics/PointF;->y:F

    iget v7, v2, Landroid/graphics/PointF;->y:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-virtual {v3}, Landroid/graphics/PointF;->length()F

    move-result v6

    invoke-virtual {v2}, Landroid/graphics/PointF;->length()F

    move-result v7

    mul-float/2addr v6, v7

    div-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->acos(D)D

    move-result-wide v5

    double-to-float v1, v5

    .line 742
    .local v1, theta:F
    float-to-double v5, v1

    const-wide v7, 0x4041800000000000L

    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    cmpg-double v5, v5, v7

    if-gtz v5, :cond_3

    .line 743
    iget-object v4, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v4}, Lcom/baidu/launcher/ui/logic/ViewManager;->getWorkspace()Lcom/baidu/launcher/ui/homeview/Workspace;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/launcher/ui/homeview/Workspace;->removeCreateFolderCallbacks()V

    goto/16 :goto_0

    .end local v1           #theta:F
    .end local v2           #upVec:Landroid/graphics/PointF;
    .end local v3           #vel:Landroid/graphics/PointF;
    :cond_3
    move-object v3, v4

    .line 747
    goto/16 :goto_0
.end method

.method private isFolderOpen()Z
    .locals 1

    .prologue
    .line 1235
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/logic/ViewManager;->getFolderLayer()Lcom/baidu/launcher/ui/folder/FolderLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/folder/FolderLayer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private printTargets()V
    .locals 0

    .prologue
    .line 1173
    return-void
.end method

.method private recordScreenSize()V
    .locals 2

    .prologue
    .line 1105
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1107
    return-void
.end method

.method private releaseVelocityTracker()V
    .locals 1

    .prologue
    .line 1201
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1202
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1203
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1205
    :cond_0
    return-void
.end method

.method private removeCreateFolderCallbacks(Lcom/baidu/launcher/ui/dragdrop/DragSource;)V
    .locals 2
    .parameter "ds"

    .prologue
    .line 974
    iget-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    if-eqz v1, :cond_0

    .line 975
    iget-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/logic/ViewManager;->getWorkspace()Lcom/baidu/launcher/ui/homeview/Workspace;

    move-result-object v0

    .line 976
    .local v0, workspace:Lcom/baidu/launcher/ui/homeview/Workspace;
    if-eqz v0, :cond_0

    .line 977
    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/Workspace;->removeCreateFolderCallbacks()V

    .line 980
    .end local v0           #workspace:Lcom/baidu/launcher/ui/homeview/Workspace;
    :cond_0
    iget-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mLastDropTarget:Lcom/baidu/launcher/ui/dragdrop/DropTarget;

    instance-of v1, v1, Lcom/baidu/launcher/ui/folder/FolderHolder;

    if-eqz v1, :cond_1

    .line 981
    iget-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mLastDropTarget:Lcom/baidu/launcher/ui/dragdrop/DropTarget;

    check-cast v1, Lcom/baidu/launcher/ui/folder/FolderHolder;

    invoke-interface {v1}, Lcom/baidu/launcher/ui/folder/FolderHolder;->removeOpenFolderCallbacks()V

    .line 983
    :cond_1
    return-void
.end method

.method private removeOtherForFolders()V
    .locals 5

    .prologue
    .line 1157
    iget-object v3, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDropTargets:Ljava/util/ArrayList;

    .line 1158
    .local v3, targets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/dragdrop/DropTarget;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1159
    .local v2, removed:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/dragdrop/DropTarget;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/dragdrop/DropTarget;

    .line 1160
    .local v0, dropTarget:Lcom/baidu/launcher/ui/dragdrop/DropTarget;
    instance-of v4, v0, Lcom/baidu/launcher/ui/folder/UserFolder;

    if-eqz v4, :cond_0

    .line 1161
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1164
    .end local v0           #dropTarget:Lcom/baidu/launcher/ui/dragdrop/DropTarget;
    :cond_1
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1165
    return-void
.end method

.method private showDropFailureAnimation(Landroid/view/View;)V
    .locals 12
    .parameter "target"

    .prologue
    const/4 v6, 0x0

    const/high16 v7, 0x3f80

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 1048
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragSource:Lcom/baidu/launcher/ui/dragdrop/DragSource;

    invoke-interface {v0, p1, v8}, Lcom/baidu/launcher/ui/dragdrop/DragSource;->onDropCompleted(Landroid/view/View;Z)V

    .line 1050
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/logic/ViewManager;->getAppListView()Lcom/baidu/launcher/ui/applistview/AppListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/applistview/AppListView;->getAppsView()Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    move-result-object v0

    invoke-virtual {v0, p1, v5}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->onDropCompleted(Landroid/view/View;Z)V

    .line 1051
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragSource:Lcom/baidu/launcher/ui/dragdrop/DragSource;

    iget-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragInfo:Ljava/lang/Object;

    iget-object v2, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mOriginatorXY:[I

    invoke-interface {v0, v1, v2}, Lcom/baidu/launcher/ui/dragdrop/DragSource;->showOnDropFailureAnimation(Ljava/lang/Object;[I)Z

    move-result v9

    .line 1052
    .local v9, isShowOnDropFailureAnimation:Z
    if-eqz v9, :cond_0

    .line 1053
    new-array v10, v3, [I

    .line 1054
    .local v10, loc:[I
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragView:Lcom/baidu/launcher/ui/dragdrop/DragView;

    invoke-virtual {v0, v10}, Lcom/baidu/launcher/ui/dragdrop/DragView;->getLocationOnScreen([I)V

    .line 1056
    aget v0, v10, v8

    if-nez v0, :cond_1

    aget v0, v10, v5

    if-nez v0, :cond_1

    .line 1075
    .end local v10           #loc:[I
    :cond_0
    :goto_0
    return-void

    .line 1059
    .restart local v10       #loc:[I
    :cond_1
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragSource:Lcom/baidu/launcher/ui/dragdrop/DragSource;

    instance-of v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    if-eqz v0, :cond_2

    .line 1060
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragSource:Lcom/baidu/launcher/ui/dragdrop/DragSource;

    check-cast v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    iget-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragView:Lcom/baidu/launcher/ui/dragdrop/DragView;

    iget-object v2, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragInfo:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->showOnDropFailureAnimation(Lcom/baidu/launcher/ui/dragdrop/DragView;Ljava/lang/Object;)V

    goto :goto_0

    .line 1062
    :cond_2
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragSource:Lcom/baidu/launcher/ui/dragdrop/DragSource;

    instance-of v0, v0, Lcom/baidu/launcher/ui/homeview/DockBar;

    if-eqz v0, :cond_3

    .line 1063
    new-array v11, v3, [I

    .line 1064
    .local v11, location:[I
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mOriginatorXY:[I

    aget v0, v0, v8

    aput v0, v11, v8

    .line 1065
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mOriginatorXY:[I

    aget v0, v0, v5

    iget-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mOriginator:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0xa

    aput v0, v11, v5

    .line 1066
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/logic/ViewManager;->getDragLayer()Lcom/baidu/launcher/ui/dragdrop/DragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragView:Lcom/baidu/launcher/ui/dragdrop/DragView;

    iget-object v2, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mOriginator:Landroid/view/View;

    new-array v3, v3, [I

    aget v4, v11, v8

    aput v4, v3, v8

    aget v4, v11, v5

    aput v4, v3, v5

    iget-object v4, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragSource:Lcom/baidu/launcher/ui/dragdrop/DragSource;

    iget-object v5, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragInfo:Ljava/lang/Object;

    invoke-virtual/range {v0 .. v8}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->animateViewIntoPosition(Landroid/view/View;Landroid/view/View;[ILcom/baidu/launcher/ui/dragdrop/DragSource;Ljava/lang/Object;Ljava/lang/Runnable;FI)V

    goto :goto_0

    .line 1071
    .end local v11           #location:[I
    :cond_3
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/logic/ViewManager;->getDragLayer()Lcom/baidu/launcher/ui/dragdrop/DragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragView:Lcom/baidu/launcher/ui/dragdrop/DragView;

    iget-object v2, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mOriginator:Landroid/view/View;

    iget-object v3, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mOriginatorXY:[I

    iget-object v4, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragSource:Lcom/baidu/launcher/ui/dragdrop/DragSource;

    iget-object v5, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragInfo:Ljava/lang/Object;

    invoke-virtual/range {v0 .. v8}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->animateViewIntoPosition(Landroid/view/View;Landroid/view/View;[ILcom/baidu/launcher/ui/dragdrop/DragSource;Ljava/lang/Object;Ljava/lang/Runnable;FI)V

    goto :goto_0
.end method

.method private startDrag(Landroid/graphics/Bitmap;IILcom/baidu/launcher/ui/dragdrop/DragSource;Ljava/lang/Object;ILandroid/graphics/Point;Landroid/graphics/Rect;ZZ)V
    .locals 22
    .parameter "b"
    .parameter "dragLayerX"
    .parameter "dragLayerY"
    .parameter "source"
    .parameter "dragInfo"
    .parameter "dragAction"
    .parameter "dragOffset"
    .parameter "dragRegion"
    .parameter "fullScrenn"
    .parameter "isShowDeleteZone"

    .prologue
    .line 321
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-nez v6, :cond_0

    .line 322
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mContext:Landroid/content/Context;

    const-string v7, "input_method"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodManager;

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 325
    :cond_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mWindowToken:Landroid/os/IBinder;

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v10}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 327
    move-object/from16 v0, p0

    iget v6, v0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mMotionDownX:F

    float-to-int v6, v6

    sub-int v8, v6, p2

    .line 328
    .local v8, registrationX:I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mMotionDownY:F

    float-to-int v6, v6

    sub-int v9, v6, p3

    .line 330
    .local v9, registrationY:I
    if-nez p8, :cond_7

    const/4 v14, 0x0

    .line 331
    .local v14, dragRegionLeft:I
    :goto_0
    if-nez p8, :cond_8

    const/4 v15, 0x0

    .line 333
    .local v15, dragRegionTop:I
    :goto_1
    move-object/from16 v0, p0

    iget v6, v0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mMotionDownX:F

    move/from16 v0, p2

    int-to-float v7, v0

    sub-float/2addr v6, v7

    int-to-float v7, v14

    sub-float/2addr v6, v7

    move-object/from16 v0, p0

    iput v6, v0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mTouchOffsetX:F

    .line 334
    move-object/from16 v0, p0

    iget v6, v0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mMotionDownY:F

    move/from16 v0, p3

    int-to-float v7, v0

    sub-float/2addr v6, v7

    int-to-float v7, v15

    sub-float/2addr v6, v7

    move-object/from16 v0, p0

    iput v6, v0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mTouchOffsetY:F

    .line 335
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mOriginatorXY:[I

    const/4 v7, 0x0

    aput p2, v6, v7

    .line 336
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mOriginatorXY:[I

    const/4 v7, 0x1

    aput p3, v6, v7

    .line 337
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragging:Z

    .line 338
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragSource:Lcom/baidu/launcher/ui/dragdrop/DragSource;

    .line 339
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragInfo:Ljava/lang/Object;

    .line 341
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "haptic_feedback_enabled"

    const/4 v10, 0x0

    invoke-static {v6, v7, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_9

    const/16 v16, 0x1

    .line 343
    .local v16, hapticEnable:Z
    :goto_2
    if-eqz v16, :cond_1

    .line 344
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v10, 0x23

    invoke-virtual {v6, v10, v11}, Landroid/os/Vibrator;->vibrate(J)V

    .line 346
    :cond_1
    if-eqz p9, :cond_2

    .line 347
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v6}, Lcom/baidu/launcher/ui/logic/ViewManager;->enterFullscreen()V

    .line 349
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/baidu/launcher/ui/dragdrop/DragController;->dragInAddMode()Z

    move-result v6

    if-nez v6, :cond_4

    .line 351
    if-eqz p10, :cond_4

    .line 352
    move-object/from16 v0, p5

    instance-of v6, v0, Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;

    if-eqz v6, :cond_a

    move-object/from16 v17, p5

    .line 353
    check-cast v17, Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;

    .line 357
    .local v17, info:Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;
    move-object/from16 v0, v17

    iget v6, v0, Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;->currentIndex:I

    sget v7, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->defaultScreen:I

    if-ne v6, v7, :cond_3

    move-object/from16 v0, v17

    iget v6, v0, Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;->currentIndex:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v6}, Lcom/baidu/launcher/ui/logic/ViewManager;->getWorkspace()Lcom/baidu/launcher/ui/homeview/Workspace;

    move-result-object v6

    invoke-virtual {v6}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_4

    .line 360
    :cond_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDeleteZone:Lcom/baidu/launcher/ui/dragdrop/DeleteZone;

    const/4 v7, 0x0

    const/4 v10, 0x1

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-virtual {v6, v0, v1, v7, v10}, Lcom/baidu/launcher/ui/dragdrop/DeleteZone;->onDragStart(Lcom/baidu/launcher/ui/dragdrop/DragSource;Ljava/lang/Object;IZ)V

    .line 373
    .end local v17           #info:Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;
    :cond_4
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/baidu/launcher/ui/dragdrop/DragController;->clearDragView()V

    .line 374
    new-instance v5, Lcom/baidu/launcher/ui/dragdrop/DragView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v6}, Lcom/baidu/launcher/ui/logic/ViewManager;->getDragLayer()Lcom/baidu/launcher/ui/dragdrop/DragLayer;

    move-result-object v6

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    move-object/from16 v7, p1

    invoke-direct/range {v5 .. v13}, Lcom/baidu/launcher/ui/dragdrop/DragView;-><init>(Lcom/baidu/launcher/ui/dragdrop/DragLayer;Landroid/graphics/Bitmap;IIIIII)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragView:Lcom/baidu/launcher/ui/dragdrop/DragView;

    .line 376
    .local v5, dragView:Lcom/baidu/launcher/ui/dragdrop/DragView;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragView:Lcom/baidu/launcher/ui/dragdrop/DragView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragInfo:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Lcom/baidu/launcher/ui/dragdrop/DragView;->setTag(Ljava/lang/Object;)V

    .line 377
    const/high16 v6, 0x3f80

    invoke-virtual {v5, v6}, Lcom/baidu/launcher/ui/dragdrop/DragView;->setAlpha(F)V

    .line 378
    if-eqz p7, :cond_5

    .line 379
    new-instance v6, Landroid/graphics/Point;

    move-object/from16 v0, p7

    invoke-direct {v6, v0}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    invoke-virtual {v5, v6}, Lcom/baidu/launcher/ui/dragdrop/DragView;->setDragVisualizeOffset(Landroid/graphics/Point;)V

    .line 381
    :cond_5
    if-eqz p8, :cond_6

    .line 382
    new-instance v6, Landroid/graphics/Rect;

    move-object/from16 v0, p8

    invoke-direct {v6, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v5, v6}, Lcom/baidu/launcher/ui/dragdrop/DragView;->setDragRegion(Landroid/graphics/Rect;)V

    .line 384
    :cond_6
    move-object/from16 v0, p0

    iget v6, v0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mMotionDownX:F

    float-to-int v0, v6

    move/from16 v20, v0

    .line 385
    .local v20, x:I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mMotionDownY:F

    float-to-int v0, v6

    move/from16 v21, v0

    .line 386
    .local v21, y:I
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v0, v20

    invoke-static {v0, v6, v7}, Lcom/baidu/launcher/ui/dragdrop/DragController;->clamp(III)I

    move-result v18

    .line 387
    .local v18, screenX:I
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v0, v21

    invoke-static {v0, v6, v7}, Lcom/baidu/launcher/ui/dragdrop/DragController;->clamp(III)I

    move-result v19

    .line 388
    .local v19, screenY:I
    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Lcom/baidu/launcher/ui/dragdrop/DragView;->show(II)V

    .line 389
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/baidu/launcher/ui/dragdrop/DragController;->handleMoveEvent(IIII)V

    .line 390
    return-void

    .line 330
    .end local v5           #dragView:Lcom/baidu/launcher/ui/dragdrop/DragView;
    .end local v14           #dragRegionLeft:I
    .end local v15           #dragRegionTop:I
    .end local v16           #hapticEnable:Z
    .end local v18           #screenX:I
    .end local v19           #screenY:I
    .end local v20           #x:I
    .end local v21           #y:I
    :cond_7
    move-object/from16 v0, p8

    iget v14, v0, Landroid/graphics/Rect;->left:I

    goto/16 :goto_0

    .line 331
    .restart local v14       #dragRegionLeft:I
    :cond_8
    move-object/from16 v0, p8

    iget v15, v0, Landroid/graphics/Rect;->top:I

    goto/16 :goto_1

    .line 341
    .restart local v15       #dragRegionTop:I
    :cond_9
    const/16 v16, 0x0

    goto/16 :goto_2

    .line 364
    .restart local v16       #hapticEnable:Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDeleteZone:Lcom/baidu/launcher/ui/dragdrop/DeleteZone;

    const/4 v7, 0x0

    const/4 v10, 0x1

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-virtual {v6, v0, v1, v7, v10}, Lcom/baidu/launcher/ui/dragdrop/DeleteZone;->onDragStart(Lcom/baidu/launcher/ui/dragdrop/DragSource;Ljava/lang/Object;IZ)V

    goto/16 :goto_3
.end method


# virtual methods
.method public addDropTarget(Lcom/baidu/launcher/ui/dragdrop/DropTarget;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 1134
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDropTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1143
    :goto_0
    return-void

    .line 1137
    :cond_0
    instance-of v0, p1, Lcom/baidu/launcher/ui/folder/UserFolder;

    if-eqz v0, :cond_1

    .line 1139
    invoke-direct {p0}, Lcom/baidu/launcher/ui/dragdrop/DragController;->removeOtherForFolders()V

    .line 1141
    :cond_1
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDropTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1142
    invoke-direct {p0}, Lcom/baidu/launcher/ui/dragdrop/DragController;->printTargets()V

    goto :goto_0
.end method

.method public bringDragViewToFront()V
    .locals 1

    .prologue
    .line 1317
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragView:Lcom/baidu/launcher/ui/dragdrop/DragView;

    if-eqz v0, :cond_0

    .line 1318
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragView:Lcom/baidu/launcher/ui/dragdrop/DragView;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/dragdrop/DragView;->bringToFront()V

    .line 1320
    :cond_0
    return-void
.end method

.method public cancelDrag()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 533
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mLastDropTarget:Lcom/baidu/launcher/ui/dragdrop/DropTarget;

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mLastDropTarget:Lcom/baidu/launcher/ui/dragdrop/DropTarget;

    iget-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragSource:Lcom/baidu/launcher/ui/dragdrop/DragSource;

    iget-object v6, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragView:Lcom/baidu/launcher/ui/dragdrop/DragView;

    iget-object v7, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragInfo:Ljava/lang/Object;

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-interface/range {v0 .. v7}, Lcom/baidu/launcher/ui/dragdrop/DropTarget;->onDragExit(Lcom/baidu/launcher/ui/dragdrop/DragSource;IIIILcom/baidu/launcher/ui/dragdrop/DragView;Ljava/lang/Object;)V

    .line 535
    iput-boolean v2, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mLastDropTargetNeedExitOnEndDrag:Z

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragSource:Lcom/baidu/launcher/ui/dragdrop/DragSource;

    instance-of v0, v0, Lcom/baidu/launcher/ui/folder/UserFolder;

    if-eqz v0, :cond_1

    .line 538
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragSource:Lcom/baidu/launcher/ui/dragdrop/DragSource;

    invoke-interface {v0, v8, v2}, Lcom/baidu/launcher/ui/dragdrop/DragSource;->onDropCompleted(Landroid/view/View;Z)V

    .line 541
    :cond_1
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/logic/ViewManager;->getAppListView()Lcom/baidu/launcher/ui/applistview/AppListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/applistview/AppListView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 542
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/logic/ViewManager;->getAppListView()Lcom/baidu/launcher/ui/applistview/AppListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/applistview/AppListView;->getAppsView()Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v8, v1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->onDropCompleted(Landroid/view/View;Z)V

    .line 544
    :cond_2
    invoke-direct {p0, v2}, Lcom/baidu/launcher/ui/dragdrop/DragController;->endDrag(Z)V

    .line 545
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 519
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragging:Z

    return v0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1
    .parameter "focused"
    .parameter "direction"

    .prologue
    .line 645
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mMoveTarget:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mMoveTarget:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDockRegion()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 1224
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDeleteRegion:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1225
    const/4 v0, 0x0

    .line 1227
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDeleteRegion:Landroid/graphics/RectF;

    goto :goto_0
.end method

.method public getDragInfo()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragInfo:Ljava/lang/Object;

    return-object v0
.end method

.method public getDragView()Lcom/baidu/launcher/ui/dragdrop/DragView;
    .locals 1

    .prologue
    .line 1273
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragView:Lcom/baidu/launcher/ui/dragdrop/DragView;

    return-object v0
.end method

.method public getDropTargets()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/ui/dragdrop/DropTarget;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1338
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDropTargets:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getOriginalView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1277
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mOriginator:Landroid/view/View;

    return-object v0
.end method

.method public insertDropTarget(ILcom/baidu/launcher/ui/dragdrop/DropTarget;)V
    .locals 1
    .parameter "index"
    .parameter "target"

    .prologue
    .line 1327
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDropTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1335
    :goto_0
    return-void

    .line 1330
    :cond_0
    instance-of v0, p2, Lcom/baidu/launcher/ui/folder/UserFolder;

    if-eqz v0, :cond_1

    .line 1331
    invoke-direct {p0}, Lcom/baidu/launcher/ui/dragdrop/DragController;->removeOtherForFolders()V

    .line 1333
    :cond_1
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDropTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1334
    invoke-direct {p0}, Lcom/baidu/launcher/ui/dragdrop/DragController;->printTargets()V

    goto :goto_0
.end method

.method public insertDropTarget(Lcom/baidu/launcher/ui/dragdrop/DropTarget;I)V
    .locals 1
    .parameter "target"
    .parameter "index"

    .prologue
    .line 1146
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDropTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1154
    :goto_0
    return-void

    .line 1149
    :cond_0
    instance-of v0, p1, Lcom/baidu/launcher/ui/folder/UserFolder;

    if-eqz v0, :cond_1

    .line 1151
    invoke-direct {p0}, Lcom/baidu/launcher/ui/dragdrop/DragController;->removeOtherForFolders()V

    .line 1153
    :cond_1
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDropTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public isDragging()Z
    .locals 1

    .prologue
    .line 1313
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragging:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "ev"

    .prologue
    const/4 v6, 0x0

    .line 594
    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/dragdrop/DragController;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 596
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 598
    .local v0, action:I
    if-nez v0, :cond_0

    .line 599
    invoke-direct {p0}, Lcom/baidu/launcher/ui/dragdrop/DragController;->recordScreenSize()V

    .line 602
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v4, v6, v5}, Lcom/baidu/launcher/ui/dragdrop/DragController;->clamp(III)I

    move-result v1

    .line 603
    .local v1, screenX:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v4, v6, v5}, Lcom/baidu/launcher/ui/dragdrop/DragController;->clamp(III)I

    move-result v2

    .line 605
    .local v2, screenY:I
    packed-switch v0, :pswitch_data_0

    .line 634
    :cond_1
    :goto_0
    :pswitch_0
    iget-boolean v4, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragging:Z

    return v4

    .line 611
    :pswitch_1
    int-to-float v4, v1

    iput v4, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mMotionDownX:F

    .line 612
    int-to-float v4, v2

    iput v4, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mMotionDownY:F

    .line 615
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mLastDropTarget:Lcom/baidu/launcher/ui/dragdrop/DropTarget;

    goto :goto_0

    .line 620
    :pswitch_2
    iget-boolean v4, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragging:Z

    if-eqz v4, :cond_1

    .line 621
    iget-object v4, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragSource:Lcom/baidu/launcher/ui/dragdrop/DragSource;

    invoke-direct {p0, v4}, Lcom/baidu/launcher/ui/dragdrop/DragController;->isFlingingToDelete(Lcom/baidu/launcher/ui/dragdrop/DragSource;)Landroid/graphics/PointF;

    move-result-object v3

    .line 622
    .local v3, vec:Landroid/graphics/PointF;
    if-eqz v3, :cond_2

    .line 623
    int-to-float v4, v1

    int-to-float v5, v2

    invoke-direct {p0, v4, v5, v3}, Lcom/baidu/launcher/ui/dragdrop/DragController;->dropOnFlingToDeleteTarget(FFLandroid/graphics/PointF;)V

    goto :goto_0

    .line 625
    :cond_2
    int-to-float v4, v1

    int-to-float v5, v2

    invoke-direct {p0, v4, v5}, Lcom/baidu/launcher/ui/dragdrop/DragController;->drop(FF)Z

    .line 626
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/baidu/launcher/ui/dragdrop/DragController;->endDrag(Z)V

    goto :goto_0

    .line 605
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragSource:Lcom/baidu/launcher/ui/dragdrop/DragSource;

    instance-of v0, v0, Lcom/baidu/launcher/ui/editview/EditView;

    if-eqz v0, :cond_0

    .line 526
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/dragdrop/DragController;->cancelDrag()V

    .line 527
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "ev"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 652
    iget-boolean v6, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragging:Z

    if-nez v6, :cond_0

    .line 720
    :goto_0
    return v4

    .line 657
    :cond_0
    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/dragdrop/DragController;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 659
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 660
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    float-to-int v6, v6

    iget-object v7, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v6, v4, v7}, Lcom/baidu/launcher/ui/dragdrop/DragController;->clamp(III)I

    move-result v1

    .line 661
    .local v1, screenX:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    float-to-int v6, v6

    iget-object v7, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v6, v4, v7}, Lcom/baidu/launcher/ui/dragdrop/DragController;->clamp(III)I

    move-result v2

    .line 663
    .local v2, screenY:I
    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    move v4, v5

    .line 720
    goto :goto_0

    .line 666
    :pswitch_0
    int-to-float v6, v1

    iput v6, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mMotionDownX:F

    .line 667
    int-to-float v6, v2

    iput v6, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mMotionDownY:F

    .line 671
    iget v6, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mScrollZone:I

    iget v7, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mLeftScrollOffsetInland:I

    sub-int/2addr v6, v7

    if-lez v6, :cond_3

    iget v6, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mScrollZone:I

    iget v7, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mLeftScrollOffsetInland:I

    sub-int/2addr v6, v7

    :goto_2
    if-lt v1, v6, :cond_2

    iget-object v6, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mScrollView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    iget v7, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mScrollZone:I

    sub-int/2addr v6, v7

    if-le v1, v6, :cond_4

    .line 672
    :cond_2
    iput v5, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mScrollState:I

    .line 673
    iget-object v4, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mScrollRunnable:Lcom/baidu/launcher/ui/dragdrop/DragController$ScrollRunnable;

    const-wide/16 v7, 0x258

    invoke-virtual {v4, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 671
    :cond_3
    iget v6, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mScrollZone:I

    goto :goto_2

    .line 675
    :cond_4
    iput v4, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mScrollState:I

    goto :goto_1

    .line 696
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    float-to-int v6, v6

    invoke-direct {p0, v4, v6, v1, v2}, Lcom/baidu/launcher/ui/dragdrop/DragController;->handleMoveEvent(IIII)V

    goto :goto_1

    .line 700
    :pswitch_2
    invoke-direct {p0}, Lcom/baidu/launcher/ui/dragdrop/DragController;->backupCreateFolderViewOnDrop()V

    .line 701
    iget-object v4, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragSource:Lcom/baidu/launcher/ui/dragdrop/DragSource;

    invoke-direct {p0, v4}, Lcom/baidu/launcher/ui/dragdrop/DragController;->removeCreateFolderCallbacks(Lcom/baidu/launcher/ui/dragdrop/DragSource;)V

    .line 702
    iget-object v4, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mScrollRunnable:Lcom/baidu/launcher/ui/dragdrop/DragController$ScrollRunnable;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 703
    iget-boolean v4, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragging:Z

    if-eqz v4, :cond_1

    .line 704
    iget-object v4, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragSource:Lcom/baidu/launcher/ui/dragdrop/DragSource;

    invoke-direct {p0, v4}, Lcom/baidu/launcher/ui/dragdrop/DragController;->isFlingingToDelete(Lcom/baidu/launcher/ui/dragdrop/DragSource;)Landroid/graphics/PointF;

    move-result-object v3

    .line 705
    .local v3, vec:Landroid/graphics/PointF;
    if-eqz v3, :cond_5

    .line 706
    int-to-float v4, v1

    int-to-float v6, v2

    invoke-direct {p0, v4, v6, v3}, Lcom/baidu/launcher/ui/dragdrop/DragController;->dropOnFlingToDeleteTarget(FFLandroid/graphics/PointF;)V

    goto :goto_1

    .line 708
    :cond_5
    int-to-float v4, v1

    int-to-float v6, v2

    invoke-direct {p0, v4, v6}, Lcom/baidu/launcher/ui/dragdrop/DragController;->drop(FF)Z

    .line 709
    invoke-direct {p0, v5}, Lcom/baidu/launcher/ui/dragdrop/DragController;->endDrag(Z)V

    goto :goto_1

    .line 715
    .end local v3           #vec:Landroid/graphics/PointF;
    :pswitch_3
    iget-object v4, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragSource:Lcom/baidu/launcher/ui/dragdrop/DragSource;

    invoke-direct {p0, v4}, Lcom/baidu/launcher/ui/dragdrop/DragController;->removeCreateFolderCallbacks(Lcom/baidu/launcher/ui/dragdrop/DragSource;)V

    .line 717
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/dragdrop/DragController;->cancelDrag()V

    goto :goto_1

    .line 663
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public removeDropTarget(Lcom/baidu/launcher/ui/dragdrop/DropTarget;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 1182
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDropTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1183
    invoke-direct {p0}, Lcom/baidu/launcher/ui/dragdrop/DragController;->printTargets()V

    .line 1184
    return-void
.end method

.method public removeScrollCallbacks()V
    .locals 2

    .prologue
    .line 986
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mScrollRunnable:Lcom/baidu/launcher/ui/dragdrop/DragController$ScrollRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 987
    return-void
.end method

.method public setDeleteRegion(Landroid/graphics/RectF;)V
    .locals 0
    .parameter "region"

    .prologue
    .line 1220
    iput-object p1, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDeleteRegion:Landroid/graphics/RectF;

    .line 1221
    return-void
.end method

.method public setDeleteZone(Lcom/baidu/launcher/ui/dragdrop/DeleteZone;)V
    .locals 0
    .parameter "deleteZone"

    .prologue
    .line 1299
    iput-object p1, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDeleteZone:Lcom/baidu/launcher/ui/dragdrop/DeleteZone;

    .line 1300
    return-void
.end method

.method public setDragScoller(Lcom/baidu/launcher/ui/dragdrop/DragScroller;)V
    .locals 0
    .parameter "scroller"

    .prologue
    .line 1123
    iput-object p1, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragScroller:Lcom/baidu/launcher/ui/dragdrop/DragScroller;

    .line 1124
    return-void
.end method

.method public setFlingToDeleteDropTarget(Lcom/baidu/launcher/ui/dragdrop/DropTarget;)V
    .locals 0
    .parameter "target"

    .prologue
    .line 1190
    iput-object p1, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mFlingToDeleteDropTarget:Lcom/baidu/launcher/ui/dragdrop/DropTarget;

    .line 1191
    return-void
.end method

.method public setMoveTarget(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 641
    iput-object p1, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mMoveTarget:Landroid/view/View;

    .line 642
    return-void
.end method

.method public setOriginalView(Landroid/view/View;)V
    .locals 0
    .parameter "originalView"

    .prologue
    .line 1281
    iput-object p1, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mOriginator:Landroid/view/View;

    .line 1282
    return-void
.end method

.method public setScrollView(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 1211
    iput-object p1, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mScrollView:Landroid/view/View;

    .line 1212
    return-void
.end method

.method public setWindowToken(Landroid/os/IBinder;)V
    .locals 0
    .parameter "token"

    .prologue
    .line 1127
    iput-object p1, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mWindowToken:Landroid/os/IBinder;

    .line 1128
    return-void
.end method

.method public showFlingToDeleteAnimation(FFLandroid/graphics/PointF;)V
    .locals 11
    .parameter "x"
    .parameter "y"
    .parameter "vel"

    .prologue
    const/4 v10, 0x0

    .line 788
    move-object v6, p3

    .line 789
    .local v6, pointF:Landroid/graphics/PointF;
    iget-object v8, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragView:Lcom/baidu/launcher/ui/dragdrop/DragView;

    if-nez v8, :cond_1

    .line 852
    :cond_0
    :goto_0
    return-void

    .line 790
    :cond_1
    iget-object v8, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDeleteZone:Lcom/baidu/launcher/ui/dragdrop/DeleteZone;

    if-eqz v8, :cond_0

    .line 792
    iget-object v8, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDeleteZone:Lcom/baidu/launcher/ui/dragdrop/DeleteZone;

    invoke-virtual {v8}, Lcom/baidu/launcher/ui/dragdrop/DeleteZone;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v4, v8

    .line 793
    .local v4, destinationX:F
    const/4 v5, 0x0

    .line 794
    .local v5, destinationY:F
    const/4 v3, 0x0

    .line 796
    .local v3, destinationAlpha:F
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 797
    iget-object v8, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragView:Lcom/baidu/launcher/ui/dragdrop/DragView;

    invoke-virtual {v8}, Lcom/baidu/launcher/ui/dragdrop/DragView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 798
    .local v2, animator:Landroid/view/ViewPropertyAnimator;
    new-instance v8, Lcom/baidu/launcher/ui/dragdrop/DragController$2;

    invoke-direct {v8, p0, v6}, Lcom/baidu/launcher/ui/dragdrop/DragController$2;-><init>(Lcom/baidu/launcher/ui/dragdrop/DragController;Landroid/graphics/PointF;)V

    invoke-virtual {v2, v8}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 819
    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 821
    .end local v2           #animator:Landroid/view/ViewPropertyAnimator;
    :cond_2
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v8, 0x1

    invoke-direct {v1, v8}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 822
    .local v1, animSet:Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v8, 0x3f80

    invoke-direct {v0, v8, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 823
    .local v0, alphaAnimation:Landroid/view/animation/AlphaAnimation;
    new-instance v7, Landroid/view/animation/TranslateAnimation;

    iget-object v8, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragView:Lcom/baidu/launcher/ui/dragdrop/DragView;

    invoke-virtual {v8}, Lcom/baidu/launcher/ui/dragdrop/DragView;->getLeft()I

    move-result v8

    int-to-float v8, v8

    sub-float v8, v4, v8

    iget-object v9, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragView:Lcom/baidu/launcher/ui/dragdrop/DragView;

    invoke-virtual {v9}, Lcom/baidu/launcher/ui/dragdrop/DragView;->getTop()I

    move-result v9

    int-to-float v9, v9

    sub-float v9, v5, v9

    invoke-direct {v7, v10, v8, v10, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 825
    .local v7, translateAnimation:Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v1, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 826
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 827
    new-instance v8, Lcom/baidu/launcher/ui/dragdrop/DragController$3;

    invoke-direct {v8, p0, v6}, Lcom/baidu/launcher/ui/dragdrop/DragController$3;-><init>(Lcom/baidu/launcher/ui/dragdrop/DragController;Landroid/graphics/PointF;)V

    invoke-virtual {v1, v8}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 847
    const-wide/16 v8, 0xc8

    invoke-virtual {v1, v8, v9}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 848
    new-instance v8, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v8}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 849
    iget-object v8, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragView:Lcom/baidu/launcher/ui/dragdrop/DragView;

    invoke-virtual {v8, v1}, Lcom/baidu/launcher/ui/dragdrop/DragView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public startDrag(Landroid/view/View;Landroid/graphics/Bitmap;Lcom/baidu/launcher/ui/dragdrop/DragSource;Ljava/lang/Object;IIZ)V
    .locals 12
    .parameter "v"
    .parameter "bmp"
    .parameter "source"
    .parameter "dragInfo"
    .parameter "dragAction"
    .parameter "deltaY"
    .parameter "fullScreen"

    .prologue
    .line 282
    const/4 v0, 0x2

    new-array v11, v0, [I

    .line 283
    .local v11, mTempXY:[I
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/logic/ViewManager;->getDragLayer()Lcom/baidu/launcher/ui/dragdrop/DragLayer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v11, v1}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[II)F

    .line 284
    const/4 v0, 0x1

    aget v1, v11, v0

    add-int v1, v1, p6

    aput v1, v11, v0

    .line 285
    const/4 v0, 0x0

    aget v2, v11, v0

    .line 286
    .local v2, dragLayerX:I
    const/4 v0, 0x1

    aget v3, v11, v0

    .line 288
    .local v3, dragLayerY:I
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v9, p7

    invoke-direct/range {v0 .. v10}, Lcom/baidu/launcher/ui/dragdrop/DragController;->startDrag(Landroid/graphics/Bitmap;IILcom/baidu/launcher/ui/dragdrop/DragSource;Ljava/lang/Object;ILandroid/graphics/Point;Landroid/graphics/Rect;ZZ)V

    .line 290
    if-nez p5, :cond_0

    .line 291
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 293
    :cond_0
    return-void
.end method

.method public startDrag(Landroid/view/View;Lcom/baidu/launcher/ui/dragdrop/DragSource;Ljava/lang/Object;IIZZ)V
    .locals 26
    .parameter "v"
    .parameter "source"
    .parameter "dragInfo"
    .parameter "dragAction"
    .parameter "deltaY"
    .parameter "fullScreen"
    .parameter "isShowDeleteZone"

    .prologue
    .line 232
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/baidu/launcher/ui/dragdrop/DragController;->mOriginator:Landroid/view/View;

    .line 233
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragSource:Lcom/baidu/launcher/ui/dragdrop/DragSource;

    .line 234
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->clearFocus()V

    .line 235
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->setPressed(Z)V

    .line 236
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    .line 239
    .local v23, r:Landroid/content/res/Resources;
    sget v15, Lcom/baidu/launcher/app/LauncherApplication;->MAX_OUTER_BLUR_RADIUS:I

    .line 242
    .local v15, bitmapPadding:I
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4}, Landroid/graphics/Canvas;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v15}, Lcom/baidu/launcher/ui/dragdrop/DragController;->createDragBitmap(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 244
    .local v5, b:Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    .line 245
    .local v16, bmpWidth:I
    const/4 v4, 0x2

    new-array v0, v4, [I

    move-object/from16 v22, v0

    .line 246
    .local v22, mTempXY:[I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v4}, Lcom/baidu/launcher/ui/logic/ViewManager;->getDragLayer()Lcom/baidu/launcher/ui/dragdrop/DragLayer;

    move-result-object v4

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, p5

    invoke-virtual {v4, v0, v1, v2}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[II)F

    .line 247
    const/4 v4, 0x0

    aget v4, v22, v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v8

    sub-int v8, v8, v16

    div-int/lit8 v8, v8, 0x2

    add-int v6, v4, v8

    .line 248
    .local v6, dragLayerX:I
    const/4 v4, 0x1

    aget v4, v22, v4

    div-int/lit8 v8, v15, 0x2

    sub-int v7, v4, v8

    .line 250
    .local v7, dragLayerY:I
    const/4 v12, 0x0

    .line 251
    .local v12, dragRect:Landroid/graphics/Rect;
    const/4 v11, 0x0

    .line 252
    .local v11, dragVisualizeOffset:Landroid/graphics/Point;
    move-object/from16 v0, p1

    instance-of v4, v0, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 254
    sget v4, Lcom/baidu/launcher/utils/DefaultConfigurationHelper;->app_icon_size:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/baidu/launcher/ui/dragdrop/DragController;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v8

    float-to-int v0, v4

    move/from16 v20, v0

    .line 256
    .local v20, iconSize:I
    const v4, 0x7f0b003b

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v19

    .line 257
    .local v19, iconPaddingTop:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingTop()I

    move-result v25

    .line 258
    .local v25, top:I
    sub-int v4, v16, v20

    div-int/lit8 v21, v4, 0x2

    .line 259
    .local v21, left:I
    add-int v24, v21, v20

    .line 260
    .local v24, right:I
    add-int v17, v25, v20

    .line 261
    .local v17, bottom:I
    add-int v7, v7, v25

    .line 262
    new-instance v12, Landroid/graphics/Rect;

    .end local v12           #dragRect:Landroid/graphics/Rect;
    move/from16 v0, v21

    move/from16 v1, v25

    move/from16 v2, v24

    move/from16 v3, v17

    invoke-direct {v12, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 263
    .restart local v12       #dragRect:Landroid/graphics/Rect;
    new-instance v11, Landroid/graphics/Point;

    .end local v11           #dragVisualizeOffset:Landroid/graphics/Point;
    const/4 v4, -0x1

    add-int v8, v25, v19

    add-int/lit8 v8, v8, -0x1

    invoke-direct {v11, v4, v8}, Landroid/graphics/Point;-><init>(II)V

    .line 267
    .end local v17           #bottom:I
    .end local v19           #iconPaddingTop:I
    .end local v20           #iconSize:I
    .end local v21           #left:I
    .end local v24           #right:I
    .end local v25           #top:I
    .restart local v11       #dragVisualizeOffset:Landroid/graphics/Point;
    :cond_0
    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/baidu/launcher/ui/common/PressedView;

    if-eqz v4, :cond_1

    move-object/from16 v18, p1

    .line 268
    check-cast v18, Lcom/baidu/launcher/ui/common/PressedView;

    .line 269
    .local v18, icon:Lcom/baidu/launcher/ui/common/PressedView;
    invoke-interface/range {v18 .. v18}, Lcom/baidu/launcher/ui/common/PressedView;->clearPressedOrFocusedBackground()V

    .end local v18           #icon:Lcom/baidu/launcher/ui/common/PressedView;
    :cond_1
    move-object/from16 v4, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move/from16 v10, p4

    move/from16 v13, p6

    move/from16 v14, p7

    .line 272
    invoke-direct/range {v4 .. v14}, Lcom/baidu/launcher/ui/dragdrop/DragController;->startDrag(Landroid/graphics/Bitmap;IILcom/baidu/launcher/ui/dragdrop/DragSource;Ljava/lang/Object;ILandroid/graphics/Point;Landroid/graphics/Rect;ZZ)V

    .line 274
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 276
    if-nez p4, :cond_2

    .line 277
    const/16 v4, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 279
    :cond_2
    return-void
.end method
