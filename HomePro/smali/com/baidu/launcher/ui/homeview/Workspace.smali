.class public Lcom/baidu/launcher/ui/homeview/Workspace;
.super Landroid/view/ViewGroup;
.source "Workspace.java"

# interfaces
.implements Lcom/baidu/launcher/ui/dragdrop/DropTarget;
.implements Lcom/baidu/launcher/ui/dragdrop/DragSource;
.implements Lcom/baidu/launcher/ui/dragdrop/DragScroller;
.implements Lcom/baidu/launcher/ui/homeview/MultiTouchController$MultiTouchObjectCanvas;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;,
        Lcom/baidu/launcher/ui/homeview/Workspace$IndicatorCallback;,
        Lcom/baidu/launcher/ui/homeview/Workspace$ReorderAlarmListener;,
        Lcom/baidu/launcher/ui/homeview/Workspace$FolderCreationAlarmListener;,
        Lcom/baidu/launcher/ui/homeview/Workspace$DragCheck;,
        Lcom/baidu/launcher/ui/homeview/Workspace$SavedState;,
        Lcom/baidu/launcher/ui/homeview/Workspace$DropAnimation;,
        Lcom/baidu/launcher/ui/homeview/Workspace$WorkspaceUpdateListener;,
        Lcom/baidu/launcher/ui/homeview/Workspace$WorkspaceOvershootInterpolator;,
        Lcom/baidu/launcher/ui/homeview/Workspace$ZoomInInterpolator;,
        Lcom/baidu/launcher/ui/homeview/Workspace$ZoomOutInterpolator;,
        Lcom/baidu/launcher/ui/homeview/Workspace$InverseZInterpolator;,
        Lcom/baidu/launcher/ui/homeview/Workspace$ZInterpolator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/view/ViewGroup;",
        "Lcom/baidu/launcher/ui/dragdrop/DropTarget;",
        "Lcom/baidu/launcher/ui/dragdrop/DragSource;",
        "Lcom/baidu/launcher/ui/dragdrop/DragScroller;",
        "Lcom/baidu/launcher/ui/homeview/MultiTouchController$MultiTouchObjectCanvas",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final ANIMATION_DURATION:I = 0x12c

.field private static CAMERA_DISTANCE:F = 0.0f

.field private static CUBE_MAX_DEGREE:F = 0.0f

.field public static final DRAG_BITMAP_PADDING:I = 0x2

.field private static final DRAG_MODE_CREATE_FOLDER:I = 0x1

.field private static final DRAG_MODE_NONE:I = 0x0

.field private static final DRAG_MODE_REORDER:I = 0x2

.field private static final FOLDER_CREATION_TIMEOUT:I = 0x0

.field private static final FRICTION_SCALE:F = 10.0f

.field private static final INVALID_SCREEN:I = -0x2

.field private static final NANOTIME_DIV:F = 1.0E9f

.field private static final OVERSCROLL_ACCELERATE_FACTOR:F = 2.0f

.field public static final PAGE_SNAP_DEFAULT_DURATION:I = 0x226

.field private static final PREVIEW_ANIMATION_DURATION:J = 0x12cL

.field private static final PREVIEW_GAP:I = 0xa

.field private static final REORDER_TIMEOUT:I = 0xfa

.field private static ROTARY_MAX_DEGREE:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final SMOOTHING_CONSTANT:F = 0.0f

.field private static final SMOOTHING_SPEED:F = 0.82f

.field private static final SNAP_TO_SCREEN_DUARTION_DETAL:I = 0x64

.field private static final SNAP_TO_SCREEN_DUARTION_SCALE:I = 0x4

.field private static final SNAP_TO_SCREEN_SLOWLY_DUARTION:I = 0xc8

.field public static final SNAP_VELOCITY:I = 0x258

.field private static final TAG:Ljava/lang/String; = "Launcher.Workspace"

.field private static final TOUCH_STATE_REST:I = 0x0

.field private static final TOUCH_STATE_SCROLLING:I = 0x1

.field private static TRANSITION_MAX_OVERSCROLL:F = 0.0f

.field private static final WORKSPACE_OVERSCROLL_ROTATION:F = 24.0f

#the value of this static final field might be set in the static constructor
.field private static final ZOOM_LOG_BASE_INV:D = 0.0

.field private static final ZOOM_SENSITIVITY:D = 1.6

.field private static final distro:[[I


# instance fields
.field private mAllowLongPress:Z

.field private mBeforeDegree:F

.field private mBulletinEmbedder:Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;

.field private mCamera:Landroid/graphics/Camera;

.field private mCellAlpha:I

.field private mChildOffsets:[I

.field private mChildRelativeOffsets:[I

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mCorrectionFactor:I

.field private mCubeDegreeLeft:F

.field private mCubeDegreeRight:F

.field private mCubeDistance:I

.field private mCurrentScreen:I

.field private mDelayedResizeRunnable:Ljava/lang/Runnable;

.field mDockAllAppItem:Lcom/baidu/launcher/ui/homeview/DockBarItem;

.field mDockbar:Landroid/view/View;

.field private mDragCheck:Lcom/baidu/launcher/ui/homeview/Workspace$DragCheck;

.field private mDragController:Lcom/baidu/launcher/ui/dragdrop/DragController;

.field private mDragInfo:Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;

.field private mDragMode:I

.field private mDragOutline:Landroid/graphics/Bitmap;

.field private mDragOverX:I

.field private mDragOverY:I

.field private mDragPoint:[F

.field private mDragTargetLayout:Lcom/baidu/launcher/ui/homeview/CellLayout;

.field private mDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

.field private mFirstDownX:F

.field private mFirstLayout:Z

.field private final mFolderCreationAlarm:Lcom/baidu/launcher/ui/animation/Alarm;

.field private mIndicator:Lcom/baidu/launcher/ui/homeview/Indicator;

.field private mIsAnimating:Z

.field private mLastDownX:F

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLastReorderX:I

.field private mLastReorderY:I

.field private mLastScreenCenter:I

.field private mLauncher:Lcom/baidu/launcher/app/Launcher;

.field private mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMaxDistanceForFolderCreation:F

.field private mMaxScrollX:I

.field private mMaximumVelocity:I

.field private mMinimumWidth:I

.field private mMoveDeltaX:F

.field private mMoveOffset:F

.field private mMoveToRight:Z

.field private mNextScreen:I

.field private mOldPaddingBottom:[I

.field private mOldPaddingTop:[I

.field private mOverScrollX:I

.field protected mPageSpacing:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPreview:Lcom/baidu/launcher/ui/preview/Preview;

.field public mPreviewClosing:Z

.field private mPreviewScale:F

.field private mPreviewStartTime:J

.field private final mReorderAlarm:Lcom/baidu/launcher/ui/animation/Alarm;

.field private mScrollInterpolator:Lcom/baidu/launcher/ui/homeview/Workspace$WorkspaceOvershootInterpolator;

.field private mScrollType:I

.field private mScroller:Landroid/widget/Scroller;

.field public mShowingPreview:Z

.field private mSmoothingTime:F

.field private final mSnapRunnable:Ljava/lang/Runnable;

.field private mStateRestored:Z

.field private mTargetCell:[I

.field private mTempCell:[I

.field private mTempEstimate:[I

.field private mTempInverseMatrix:Landroid/graphics/Matrix;

.field private final mTempRect:Landroid/graphics/Rect;

.field protected mTempVisiblePagesRange:[I

.field private mThumbnailRect:Landroid/graphics/RectF;

.field private mTouchSlop:I

.field private mTouchState:I

.field private mTouchX:F

.field private mVacantCache:Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

.field private multiTouchController:Lcom/baidu/launcher/ui/homeview/MultiTouchController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/baidu/launcher/ui/homeview/MultiTouchController",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private unlockAnimation:Landroid/view/animation/Animation;

.field private workspaceUpdateListener:Lcom/baidu/launcher/ui/homeview/Workspace$WorkspaceUpdateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x3

    .line 137
    const v0, 0x45cb2000

    sput v0, Lcom/baidu/launcher/ui/homeview/Workspace;->CAMERA_DISTANCE:F

    .line 149
    const v0, 0x3ec28f5c

    sput v0, Lcom/baidu/launcher/ui/homeview/Workspace;->TRANSITION_MAX_OVERSCROLL:F

    .line 218
    const-wide v0, 0x3f90624dd2f1a9fcL

    const-wide v2, 0x3fea3d70a0000000L

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lcom/baidu/launcher/ui/homeview/Workspace;->SMOOTHING_CONSTANT:F

    .line 338
    const/high16 v0, 0x4270

    sput v0, Lcom/baidu/launcher/ui/homeview/Workspace;->CUBE_MAX_DEGREE:F

    .line 339
    const/high16 v0, 0x41f0

    sput v0, Lcom/baidu/launcher/ui/homeview/Workspace;->ROTARY_MAX_DEGREE:F

    .line 368
    const-wide/high16 v0, 0x3ff0

    const-wide/high16 v2, 0x3ff4

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    sput-wide v0, Lcom/baidu/launcher/ui/homeview/Workspace;->ZOOM_LOG_BASE_INV:D

    .line 379
    const/16 v0, 0x9

    new-array v0, v0, [[I

    new-array v1, v5, [I

    aput v5, v1, v7

    aput-object v1, v0, v7

    new-array v1, v5, [I

    aput v6, v1, v7

    aput-object v1, v0, v5

    new-array v1, v6, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v6

    new-array v1, v6, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v4

    const/4 v1, 0x4

    new-array v2, v4, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v4, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v4, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v4, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v4, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    sput-object v0, Lcom/baidu/launcher/ui/homeview/Workspace;->distro:[[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_5
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_6
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 424
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/baidu/launcher/ui/homeview/Workspace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 425
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 436
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mFirstLayout:Z

    .line 161
    const/4 v0, -0x2

    iput v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mNextScreen:I

    .line 175
    iput-object v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTargetCell:[I

    .line 187
    iput v1, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTouchState:I

    .line 201
    iput-object v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mVacantCache:Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;

    .line 203
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTempCell:[I

    .line 205
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTempEstimate:[I

    .line 207
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mAllowLongPress:Z

    .line 208
    iput-boolean v1, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mStateRestored:Z

    .line 229
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    invoke-direct {v0, v1, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    .line 230
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCamera:Landroid/graphics/Camera;

    .line 231
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mMatrix:Landroid/graphics/Matrix;

    .line 232
    iput v1, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollType:I

    .line 242
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTempVisiblePagesRange:[I

    .line 244
    iput-object v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragTargetLayout:Lcom/baidu/launcher/ui/homeview/CellLayout;

    .line 245
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTempInverseMatrix:Landroid/graphics/Matrix;

    .line 246
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragPoint:[F

    .line 248
    iput v5, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mLastReorderX:I

    .line 249
    iput v5, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mLastReorderY:I

    .line 250
    iput v5, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragOverX:I

    .line 251
    iput v5, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragOverY:I

    .line 256
    iput v1, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragMode:I

    .line 259
    new-instance v0, Lcom/baidu/launcher/ui/animation/Alarm;

    invoke-direct {v0}, Lcom/baidu/launcher/ui/animation/Alarm;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mFolderCreationAlarm:Lcom/baidu/launcher/ui/animation/Alarm;

    .line 260
    new-instance v0, Lcom/baidu/launcher/ui/animation/Alarm;

    invoke-direct {v0}, Lcom/baidu/launcher/ui/animation/Alarm;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mReorderAlarm:Lcom/baidu/launcher/ui/animation/Alarm;

    .line 266
    iput-boolean v1, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mMoveToRight:Z

    .line 332
    iput v4, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mMoveOffset:F

    .line 334
    const/16 v0, 0xff

    iput v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCellAlpha:I

    .line 335
    iput v1, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCubeDistance:I

    .line 336
    iput v4, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCubeDegreeLeft:F

    .line 337
    iput v4, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCubeDegreeRight:F

    .line 362
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mPreviewScale:F

    .line 373
    iput-boolean v1, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mPreviewClosing:Z

    .line 406
    iput-object v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    .line 408
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTempRect:Landroid/graphics/Rect;

    .line 2977
    iput-object v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mIndicator:Lcom/baidu/launcher/ui/homeview/Indicator;

    .line 4552
    new-instance v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;

    invoke-direct {v0, p0, v2}, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;-><init>(Lcom/baidu/launcher/ui/homeview/Workspace;Lcom/baidu/launcher/ui/homeview/Workspace$1;)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mBulletinEmbedder:Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;

    .line 5363
    iput v4, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mBeforeDegree:F

    .line 437
    new-instance v0, Lcom/baidu/launcher/ui/homeview/Workspace$1;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/ui/homeview/Workspace$1;-><init>(Lcom/baidu/launcher/ui/homeview/Workspace;)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mSnapRunnable:Ljava/lang/Runnable;

    .line 443
    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->setHapticFeedbackEnabled(Z)V

    .line 444
    invoke-direct {p0, v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->setPageSpacing(I)V

    .line 445
    invoke-direct {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->initWorkspace()V

    .line 446
    return-void
.end method

.method private acceleratedOverScroll(F)V
    .locals 6
    .parameter "amount"

    .prologue
    const/4 v5, 0x0

    .line 910
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getMeasuredWidth()I

    move-result v2

    .line 913
    .local v2, screenSize:I
    const/high16 v3, 0x4000

    int-to-float v4, v2

    div-float v4, p1, v4

    mul-float v0, v3, v4

    .line 914
    .local v0, f:F
    cmpl-float v3, v0, v5

    if-nez v3, :cond_0

    .line 929
    :goto_0
    return-void

    .line 918
    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f80

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    .line 919
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v0, v3

    .line 921
    :cond_1
    int-to-float v3, v2

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 922
    .local v1, overScrollAmount:I
    cmpg-float v3, p1, v5

    if-gez v3, :cond_2

    .line 923
    iput v1, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mOverScrollX:I

    .line 924
    const/4 v3, 0x0

    iput v3, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollX:I

    goto :goto_0

    .line 926
    :cond_2
    iget v3, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mMaxScrollX:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mOverScrollX:I

    .line 927
    iget v3, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mMaxScrollX:I

    iput v3, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollX:I

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/baidu/launcher/ui/homeview/Workspace;)Lcom/baidu/launcher/ui/logic/ViewManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/baidu/launcher/ui/homeview/Workspace;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragPoint:[F

    return-object v0
.end method

.method static synthetic access$1100(Lcom/baidu/launcher/ui/homeview/Workspace;)Lcom/baidu/launcher/ui/homeview/CellLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragTargetLayout:Lcom/baidu/launcher/ui/homeview/CellLayout;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/baidu/launcher/ui/homeview/Workspace;IIIILcom/baidu/launcher/ui/homeview/CellLayout;[I)[I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 130
    invoke-direct/range {p0 .. p6}, Lcom/baidu/launcher/ui/homeview/Workspace;->findNearestArea(IIIILcom/baidu/launcher/ui/homeview/CellLayout;[I)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1302(Lcom/baidu/launcher/ui/homeview/Workspace;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput p1, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mLastReorderX:I

    return p1
.end method

.method static synthetic access$1402(Lcom/baidu/launcher/ui/homeview/Workspace;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput p1, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mLastReorderY:I

    return p1
.end method

.method static synthetic access$1500(Lcom/baidu/launcher/ui/homeview/Workspace;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/baidu/launcher/ui/homeview/Workspace;)Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mBulletinEmbedder:Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/baidu/launcher/ui/homeview/Workspace;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mOverScrollX:I

    return v0
.end method

.method static synthetic access$1802(Lcom/baidu/launcher/ui/homeview/Workspace;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput p1, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mOverScrollX:I

    return p1
.end method

.method static synthetic access$1900(Lcom/baidu/launcher/ui/homeview/Workspace;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollX:I

    return v0
.end method

.method static synthetic access$2000(Lcom/baidu/launcher/ui/homeview/Workspace;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mMaxScrollX:I

    return v0
.end method

.method static synthetic access$2002(Lcom/baidu/launcher/ui/homeview/Workspace;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput p1, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mMaxScrollX:I

    return p1
.end method

.method static synthetic access$202(Lcom/baidu/launcher/ui/homeview/Workspace;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDelayedResizeRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/baidu/launcher/ui/homeview/Workspace;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollX:I

    return v0
.end method

.method static synthetic access$2200(Lcom/baidu/launcher/ui/homeview/Workspace;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTouchX:F

    return v0
.end method

.method static synthetic access$2302(Lcom/baidu/launcher/ui/homeview/Workspace;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput p1, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollX:I

    return p1
.end method

.method static synthetic access$2400(Lcom/baidu/launcher/ui/homeview/Workspace;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollX:I

    return v0
.end method

.method static synthetic access$2502(Lcom/baidu/launcher/ui/homeview/Workspace;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput p1, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollX:I

    return p1
.end method

.method static synthetic access$2602(Lcom/baidu/launcher/ui/homeview/Workspace;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput p1, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollX:I

    return p1
.end method

.method static synthetic access$2702(Lcom/baidu/launcher/ui/homeview/Workspace;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput p1, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollX:I

    return p1
.end method

.method static synthetic access$2802(Lcom/baidu/launcher/ui/homeview/Workspace;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput p1, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollX:I

    return p1
.end method

.method static synthetic access$2900(Lcom/baidu/launcher/ui/homeview/Workspace;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollX:I

    return v0
.end method

.method static synthetic access$300(Lcom/baidu/launcher/ui/homeview/Workspace;Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/homeview/Workspace;->updateBaiduWidget(Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;)V

    return-void
.end method

.method static synthetic access$3002(Lcom/baidu/launcher/ui/homeview/Workspace;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput p1, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollX:I

    return p1
.end method

.method static synthetic access$3100(Lcom/baidu/launcher/ui/homeview/Workspace;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollX:I

    return v0
.end method

.method static synthetic access$3202(Lcom/baidu/launcher/ui/homeview/Workspace;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput p1, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCorrectionFactor:I

    return p1
.end method

.method static synthetic access$3300(Lcom/baidu/launcher/ui/homeview/Workspace;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->clearVacantCache()V

    return-void
.end method

.method static synthetic access$3400(Lcom/baidu/launcher/ui/homeview/Workspace;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mNextScreen:I

    return v0
.end method

.method static synthetic access$3402(Lcom/baidu/launcher/ui/homeview/Workspace;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput p1, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mNextScreen:I

    return p1
.end method

.method static synthetic access$3500(Lcom/baidu/launcher/ui/homeview/Workspace;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollX:I

    return v0
.end method

.method static synthetic access$3600(Lcom/baidu/launcher/ui/homeview/Workspace;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollX:I

    return v0
.end method

.method static synthetic access$3700(Lcom/baidu/launcher/ui/homeview/Workspace;)Landroid/widget/Scroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/baidu/launcher/ui/homeview/Workspace;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/homeview/Workspace;->awakenScrollBars(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Lcom/baidu/launcher/ui/homeview/Workspace;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollType:I

    return v0
.end method

.method static synthetic access$400(Lcom/baidu/launcher/ui/homeview/Workspace;)Lcom/baidu/launcher/ui/dragdrop/DragController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragController:Lcom/baidu/launcher/ui/dragdrop/DragController;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/baidu/launcher/ui/homeview/Workspace;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 130
    iget-wide v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mPreviewStartTime:J

    return-wide v0
.end method

.method static synthetic access$4002(Lcom/baidu/launcher/ui/homeview/Workspace;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput-wide p1, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mPreviewStartTime:J

    return-wide p1
.end method

.method static synthetic access$4102(Lcom/baidu/launcher/ui/homeview/Workspace;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mIsAnimating:Z

    return p1
.end method

.method static synthetic access$4202(Lcom/baidu/launcher/ui/homeview/Workspace;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mThumbnailRect:Landroid/graphics/RectF;

    return-object p1
.end method

.method static synthetic access$4300(Lcom/baidu/launcher/ui/homeview/Workspace;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mLastScreenCenter:I

    return v0
.end method

.method static synthetic access$4302(Lcom/baidu/launcher/ui/homeview/Workspace;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput p1, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mLastScreenCenter:I

    return p1
.end method

.method static synthetic access$4400(Lcom/baidu/launcher/ui/homeview/Workspace;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollX:I

    return v0
.end method

.method static synthetic access$4500(Lcom/baidu/launcher/ui/homeview/Workspace;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollY:I

    return v0
.end method

.method static synthetic access$4600(Lcom/baidu/launcher/ui/homeview/Workspace;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollX:I

    return v0
.end method

.method static synthetic access$4700(Lcom/baidu/launcher/ui/homeview/Workspace;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mRight:I

    return v0
.end method

.method static synthetic access$4800(Lcom/baidu/launcher/ui/homeview/Workspace;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mLeft:I

    return v0
.end method

.method static synthetic access$4900(Lcom/baidu/launcher/ui/homeview/Workspace;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollY:I

    return v0
.end method

.method static synthetic access$500(Lcom/baidu/launcher/ui/homeview/Workspace;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 130
    invoke-direct {p0, p1, p2}, Lcom/baidu/launcher/ui/homeview/Workspace;->workspaceUpdated(IZ)V

    return-void
.end method

.method static synthetic access$5000(Lcom/baidu/launcher/ui/homeview/Workspace;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mBottom:I

    return v0
.end method

.method static synthetic access$5100(Lcom/baidu/launcher/ui/homeview/Workspace;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTop:I

    return v0
.end method

.method static synthetic access$5200(Lcom/baidu/launcher/ui/homeview/Workspace;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTouchState:I

    return v0
.end method

.method static synthetic access$5300(Lcom/baidu/launcher/ui/homeview/Workspace;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollX:I

    return v0
.end method

.method static synthetic access$5400(Lcom/baidu/launcher/ui/homeview/Workspace;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollX:I

    return v0
.end method

.method static synthetic access$5500(Lcom/baidu/launcher/ui/homeview/Workspace;Landroid/view/View;Landroid/graphics/Canvas;IIZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 130
    invoke-direct/range {p0 .. p6}, Lcom/baidu/launcher/ui/homeview/Workspace;->scrollAnimation(Landroid/view/View;Landroid/graphics/Canvas;IIZI)V

    return-void
.end method

.method static synthetic access$5600(Lcom/baidu/launcher/ui/homeview/Workspace;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollX:I

    return v0
.end method

.method static synthetic access$5700(Lcom/baidu/launcher/ui/homeview/Workspace;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollX:I

    return v0
.end method

.method static synthetic access$5800()F
    .locals 1

    .prologue
    .line 130
    sget v0, Lcom/baidu/launcher/ui/homeview/Workspace;->CAMERA_DISTANCE:F

    return v0
.end method

.method static synthetic access$5900(Lcom/baidu/launcher/ui/homeview/Workspace;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollX:I

    return v0
.end method

.method static synthetic access$6000(Lcom/baidu/launcher/ui/homeview/Workspace;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCellAlpha:I

    return v0
.end method

.method static synthetic access$6100(Lcom/baidu/launcher/ui/homeview/Workspace;)Landroid/graphics/Camera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCamera:Landroid/graphics/Camera;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/baidu/launcher/ui/homeview/Workspace;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCubeDegreeLeft:F

    return v0
.end method

.method static synthetic access$6300(Lcom/baidu/launcher/ui/homeview/Workspace;)Landroid/graphics/Matrix;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/baidu/launcher/ui/homeview/Workspace;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mMoveOffset:F

    return v0
.end method

.method static synthetic access$6500(Lcom/baidu/launcher/ui/homeview/Workspace;)Landroid/graphics/PaintFlagsDrawFilter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    return-object v0
.end method

.method static synthetic access$6600(Lcom/baidu/launcher/ui/homeview/Workspace;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCubeDistance:I

    return v0
.end method

.method static synthetic access$6700(Lcom/baidu/launcher/ui/homeview/Workspace;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCubeDegreeRight:F

    return v0
.end method

.method static synthetic access$6800(Lcom/baidu/launcher/ui/homeview/Workspace;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollX:I

    return v0
.end method

.method static synthetic access$6900(Lcom/baidu/launcher/ui/homeview/Workspace;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollX:I

    return v0
.end method

.method static synthetic access$700(Lcom/baidu/launcher/ui/homeview/Workspace;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I

    return v0
.end method

.method static synthetic access$7000(Lcom/baidu/launcher/ui/homeview/Workspace;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollX:I

    return v0
.end method

.method static synthetic access$7100(Lcom/baidu/launcher/ui/homeview/Workspace;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollX:I

    return v0
.end method

.method static synthetic access$7200(Lcom/baidu/launcher/ui/homeview/Workspace;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollX:I

    return v0
.end method

.method static synthetic access$7300(Lcom/baidu/launcher/ui/homeview/Workspace;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollX:I

    return v0
.end method

.method static synthetic access$7400(Lcom/baidu/launcher/ui/homeview/Workspace;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollX:I

    return v0
.end method

.method static synthetic access$7500(Lcom/baidu/launcher/ui/homeview/Workspace;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollX:I

    return v0
.end method

.method static synthetic access$7600(Lcom/baidu/launcher/ui/homeview/Workspace;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollX:I

    return v0
.end method

.method static synthetic access$7700(Lcom/baidu/launcher/ui/homeview/Workspace;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTouchSlop:I

    return v0
.end method

.method static synthetic access$7800(Lcom/baidu/launcher/ui/homeview/Workspace;)Lcom/baidu/launcher/ui/homeview/Indicator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mIndicator:Lcom/baidu/launcher/ui/homeview/Indicator;

    return-object v0
.end method

.method static synthetic access$7900(Lcom/baidu/launcher/ui/homeview/Workspace;)Lcom/baidu/launcher/app/Launcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    return-object v0
.end method

.method static synthetic access$800(Lcom/baidu/launcher/ui/homeview/Workspace;)Lcom/baidu/launcher/ui/homeview/Workspace$WorkspaceUpdateListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->workspaceUpdateListener:Lcom/baidu/launcher/ui/homeview/Workspace$WorkspaceUpdateListener;

    return-object v0
.end method

.method static synthetic access$8002(Lcom/baidu/launcher/ui/homeview/Workspace;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput p1, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mBeforeDegree:F

    return p1
.end method

.method static synthetic access$8102(Lcom/baidu/launcher/ui/homeview/Workspace;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput p1, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mMoveDeltaX:F

    return p1
.end method

.method static synthetic access$8202(Lcom/baidu/launcher/ui/homeview/Workspace;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput p1, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mFirstDownX:F

    return p1
.end method

.method static synthetic access$900(Lcom/baidu/launcher/ui/homeview/Workspace;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTargetCell:[I

    return-object v0
.end method

.method static synthetic access$902(Lcom/baidu/launcher/ui/homeview/Workspace;[I)[I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTargetCell:[I

    return-object p1
.end method

.method private acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "ev"

    .prologue
    .line 1607
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 1608
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1610
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1611
    return-void
.end method

.method private activeManager(Landroid/content/ComponentName;)V
    .locals 4
    .parameter "aComponentName"

    .prologue
    .line 4455
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.ADD_DEVICE_ADMIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4456
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.app.extra.DEVICE_ADMIN"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4457
    const-string v1, "android.app.extra.ADD_EXPLANATION"

    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mContext:Landroid/content/Context;

    const v3, 0x7f0c0092

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4458
    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/baidu/launcher/app/Launcher;

    invoke-virtual {v1, v0}, Lcom/baidu/launcher/app/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 4459
    return-void
.end method

.method private callBaiduWidgetOnSnap(I)V
    .locals 3
    .parameter "screen"

    .prologue
    .line 5319
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 5320
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/homeview/CellLayout;

    .line 5321
    .local v1, layout:Lcom/baidu/launcher/ui/homeview/CellLayout;
    invoke-virtual {v1, p1}, Lcom/baidu/launcher/ui/homeview/CellLayout;->onSnap(I)V

    .line 5319
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5323
    .end local v1           #layout:Lcom/baidu/launcher/ui/homeview/CellLayout;
    :cond_0
    return-void
.end method

.method private cancelCurrentPageLongPress()V
    .locals 2

    .prologue
    .line 1397
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getCurrentScreen()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/homeview/CellLayout;

    .line 1398
    .local v0, cl:Lcom/baidu/launcher/ui/homeview/CellLayout;
    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->cancelLongPress()V

    .line 1399
    return-void
.end method

.method private checkForOverScroll()V
    .locals 4

    .prologue
    .line 845
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mBulletinEmbedder:Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->interceptCheckForOverScroll()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 861
    :goto_0
    return-void

    .line 847
    :cond_0
    const/4 v1, 0x0

    .line 848
    .local v1, overScroll:I
    iget v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollX:I

    iput v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mOverScrollX:I

    .line 849
    iget v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mMaxScrollX:I

    if-nez v2, :cond_1

    .line 850
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v0

    .line 851
    .local v0, count:I
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildOffset(I)I

    move-result v2

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Lcom/baidu/launcher/ui/homeview/Workspace;->getRelativeChildOffset(I)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mMaxScrollX:I

    .line 853
    .end local v0           #count:I
    :cond_1
    iget v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollX:I

    if-gez v2, :cond_3

    .line 854
    iget v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTouchX:F

    float-to-int v1, v2

    .line 855
    const/4 v2, 0x0

    iput v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollX:I

    .line 860
    :cond_2
    :goto_1
    int-to-float v2, v1

    invoke-direct {p0, v2}, Lcom/baidu/launcher/ui/homeview/Workspace;->acceleratedOverScroll(F)V

    goto :goto_0

    .line 856
    :cond_3
    iget v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollX:I

    iget v3, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mMaxScrollX:I

    if-le v2, v3, :cond_2

    .line 857
    iget v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTouchX:F

    float-to-int v2, v2

    iget v3, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mMaxScrollX:I

    sub-int v1, v2, v3

    .line 858
    iget v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mMaxScrollX:I

    iput v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollX:I

    goto :goto_1
.end method

.method private checkForUpdatePresets(Ljava/util/ArrayList;Lcom/baidu/launcher/data/item/HomeShortcutInfo;)Z
    .locals 5
    .parameter
    .parameter "info"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/data/item/ListAppInfo;",
            ">;",
            "Lcom/baidu/launcher/data/item/HomeShortcutInfo;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, changes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListAppInfo;>;"
    const/4 v3, 0x0

    .line 2724
    iget-boolean v4, p2, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->isPreset:Z

    if-eqz v4, :cond_0

    .line 2725
    iget-object v1, p2, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->dependPackage:Ljava/lang/String;

    .line 2726
    .local v1, dependPackage:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 2738
    .end local v1           #dependPackage:Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 2727
    .restart local v1       #dependPackage:Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/data/item/ListAppInfo;

    .line 2728
    .local v0, app:Lcom/baidu/launcher/data/item/ListAppInfo;
    iget-object v4, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2729
    const/4 v4, 0x3

    iput v4, p2, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->status:I

    .line 2730
    iput-boolean v3, p2, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->isPreset:Z

    .line 2731
    iget-object v3, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->intent:Landroid/content/Intent;

    iput-object v3, p2, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->intent:Landroid/content/Intent;

    .line 2732
    const/4 v3, 0x0

    iput-object v3, p2, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->dependPackage:Ljava/lang/String;

    .line 2733
    iget-object v3, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/baidu/launcher/data/HomeDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/HomeDataManager;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/baidu/launcher/data/HomeDataManager;->updateItemInDatabase(Lcom/baidu/launcher/data/item/HomeItemInfo;)V

    .line 2734
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private cleanupFolderCreation()V
    .locals 1

    .prologue
    .line 3900
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragTargetLayout:Lcom/baidu/launcher/ui/homeview/CellLayout;

    if-eqz v0, :cond_0

    .line 3901
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragTargetLayout:Lcom/baidu/launcher/ui/homeview/CellLayout;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->hideFolderAccept()V

    .line 3903
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mFolderCreationAlarm:Lcom/baidu/launcher/ui/animation/Alarm;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/animation/Alarm;->cancelAlarm()V

    .line 3904
    return-void
.end method

.method private cleanupReorder(Z)V
    .locals 2
    .parameter "cancelAlarm"

    .prologue
    const/4 v1, -0x1

    .line 3908
    if-eqz p1, :cond_0

    .line 3909
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mReorderAlarm:Lcom/baidu/launcher/ui/animation/Alarm;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/animation/Alarm;->cancelAlarm()V

    .line 3911
    :cond_0
    iput v1, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mLastReorderX:I

    .line 3912
    iput v1, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mLastReorderY:I

    .line 3913
    return-void
.end method

.method private clearChildAnimation()V
    .locals 2

    .prologue
    .line 3234
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3235
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 3234
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3237
    :cond_0
    return-void
.end method

.method private clearVacantCache()V
    .locals 1

    .prologue
    .line 698
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mVacantCache:Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;

    if-eqz v0, :cond_0

    .line 699
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mVacantCache:Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->clearVacantCells()V

    .line 700
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mVacantCache:Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;

    .line 702
    :cond_0
    return-void
.end method

.method private computeScrollData(II)V
    .locals 5
    .parameter "scrollX"
    .parameter "scrollType"

    .prologue
    .line 4161
    int-to-float v0, p1

    .line 4162
    .local v0, tmpX:F
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getWidth()I

    move-result v1

    .line 4163
    .local v1, width:I
    if-nez v1, :cond_0

    .line 4205
    :goto_0
    :pswitch_0
    return-void

    .line 4166
    :cond_0
    :goto_1
    const/4 v2, 0x0

    cmpg-float v2, v0, v2

    if-gez v2, :cond_1

    .line 4167
    int-to-float v2, v1

    add-float/2addr v0, v2

    goto :goto_1

    .line 4169
    :cond_1
    int-to-float v2, v1

    rem-float/2addr v0, v2

    .line 4170
    iput v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mMoveOffset:F

    .line 4171
    packed-switch p2, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    .line 4175
    :pswitch_2
    float-to-int v2, v0

    mul-int/lit16 v2, v2, 0xff

    div-int/2addr v2, v1

    rsub-int v2, v2, 0xff

    iput v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCellAlpha:I

    goto :goto_0

    .line 4180
    :pswitch_3
    neg-float v2, v0

    sget v3, Lcom/baidu/launcher/ui/homeview/Workspace;->CUBE_MAX_DEGREE:F

    mul-float/2addr v2, v3

    int-to-float v3, v1

    div-float/2addr v2, v3

    iput v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCubeDegreeLeft:F

    .line 4181
    iget v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCubeDegreeLeft:F

    sget v3, Lcom/baidu/launcher/ui/homeview/Workspace;->CUBE_MAX_DEGREE:F

    add-float/2addr v2, v3

    iput v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCubeDegreeRight:F

    .line 4182
    mul-float v2, v0, v0

    neg-float v2, v2

    int-to-float v3, v1

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    int-to-float v3, v1

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCubeDistance:I

    goto :goto_0

    .line 4195
    :pswitch_4
    neg-float v2, v0

    sget v3, Lcom/baidu/launcher/ui/homeview/Workspace;->ROTARY_MAX_DEGREE:F

    mul-float/2addr v2, v3

    int-to-float v3, v1

    div-float/2addr v2, v3

    iput v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCubeDegreeLeft:F

    .line 4196
    iget v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCubeDegreeLeft:F

    sget v3, Lcom/baidu/launcher/ui/homeview/Workspace;->ROTARY_MAX_DEGREE:F

    add-float/2addr v2, v3

    iput v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCubeDegreeRight:F

    .line 4197
    const/high16 v2, 0x3f80

    const v3, 0x3f666666

    mul-float/2addr v3, v0

    int-to-float v4, v1

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    mul-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCellAlpha:I

    goto :goto_0

    .line 4171
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private createDragOutline(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;IIILandroid/graphics/Paint;)Landroid/graphics/Bitmap;
    .locals 13
    .parameter "orig"
    .parameter "canvas"
    .parameter "padding"
    .parameter "w"
    .parameter "h"
    .parameter "alphaClipPaint"

    .prologue
    .line 4045
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f090024

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 4046
    .local v4, outlineColor:I
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-static {v0, v1, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 4047
    .local v2, b:Landroid/graphics/Bitmap;
    invoke-virtual {p2, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 4049
    new-instance v8, Landroid/graphics/Rect;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 4050
    .local v8, src:Landroid/graphics/Rect;
    sub-int v9, p4, p3

    int-to-float v9, v9

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    sub-int v10, p5, p3

    int-to-float v10, v10

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 4052
    .local v5, scaleFactor:F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v5

    float-to-int v7, v9

    .line 4053
    .local v7, scaledWidth:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v5

    float-to-int v6, v9

    .line 4054
    .local v6, scaledHeight:I
    new-instance v3, Landroid/graphics/Rect;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v3, v9, v10, v7, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 4057
    .local v3, dst:Landroid/graphics/Rect;
    sub-int v9, p4, v7

    div-int/lit8 v9, v9, 0x2

    sub-int v10, p5, v6

    div-int/lit8 v10, v10, 0x2

    invoke-virtual {v3, v9, v10}, Landroid/graphics/Rect;->offset(II)V

    .line 4059
    const/4 v9, 0x0

    invoke-virtual {p2, p1, v8, v3, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 4062
    const/4 v9, 0x0

    invoke-virtual {p2, v9}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 4064
    return-object v2
.end method

.method private createDragOutline(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "v"
    .parameter "canvas"
    .parameter "padding"

    .prologue
    .line 4025
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090024

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 4026
    .local v1, outlineColor:I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v3, p3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 4029
    .local v0, b:Landroid/graphics/Bitmap;
    invoke-virtual {p2, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 4030
    const/4 v2, 0x1

    invoke-direct {p0, p1, p2, p3, v2}, Lcom/baidu/launcher/ui/homeview/Workspace;->drawDragView(Landroid/view/View;Landroid/graphics/Canvas;IZ)V

    .line 4033
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4034
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 4036
    :cond_0
    return-object v0
.end method

.method private drawDragView(Landroid/view/View;Landroid/graphics/Canvas;IZ)V
    .locals 6
    .parameter "v"
    .parameter "destCanvas"
    .parameter "padding"
    .parameter "pruneToDrawable"

    .prologue
    const/4 v5, 0x0

    .line 4075
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTempRect:Landroid/graphics/Rect;

    .line 4076
    .local v0, clipRect:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 4077
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 4078
    instance-of v3, p1, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    if-eqz p4, :cond_0

    .line 4079
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v1, v3, v4

    .line 4080
    .local v1, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v3, p3

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v4, p3

    invoke-virtual {v0, v5, v5, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 4081
    div-int/lit8 v3, p3, 0x2

    int-to-float v3, v3

    div-int/lit8 v4, p3, 0x2

    int-to-float v4, v4

    invoke-virtual {p2, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4082
    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4097
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    .line 4098
    return-void

    .line 4084
    .restart local p1
    :cond_0
    instance-of v3, p1, Lcom/baidu/launcher/ui/common/BubbleTextView;

    if-eqz v3, :cond_2

    move-object v2, p1

    .line 4085
    check-cast v2, Lcom/baidu/launcher/ui/common/BubbleTextView;

    .line 4086
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

    .line 4093
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

    .line 4094
    sget-object v3, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p2, v0, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 4095
    invoke-virtual {p1, p2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 4088
    :cond_2
    instance-of v3, p1, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    move-object v2, p1

    .line 4089
    check-cast v2, Landroid/widget/TextView;

    .line 4090
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

.method private easeOut(FFFF)F
    .locals 5
    .parameter "time"
    .parameter "begin"
    .parameter "end"
    .parameter "duration"

    .prologue
    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    .line 3240
    sub-float v0, p3, p2

    .line 3241
    .local v0, change:F
    div-float v2, p1, p4

    sub-float p1, v2, v4

    mul-float v2, p1, p1

    mul-float/2addr v2, p1

    add-float/2addr v2, v4

    mul-float/2addr v2, v0

    add-float v1, v2, p2

    .line 3242
    .local v1, value:F
    cmpl-float v2, v0, v3

    if-lez v2, :cond_0

    cmpl-float v2, v1, p3

    if-lez v2, :cond_0

    .line 3243
    move v1, p3

    .line 3244
    :cond_0
    cmpg-float v2, v0, v3

    if-gez v2, :cond_1

    cmpg-float v2, v1, p3

    if-gez v2, :cond_1

    .line 3245
    move v1, p3

    .line 3246
    :cond_1
    return v1
.end method

.method private elasticAnimation()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 4143
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTouchState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4144
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getWidth()I

    move-result v6

    .line 4145
    .local v6, width:I
    if-nez v6, :cond_1

    .line 4158
    .end local v6           #width:I
    :cond_0
    :goto_0
    return-void

    .line 4148
    .restart local v6       #width:I
    :cond_1
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    rem-int v3, v0, v6

    .line 4149
    .local v3, offset:I
    if-eqz v3, :cond_0

    .line 4150
    div-int/lit8 v0, v6, 0x2

    if-le v3, v0, :cond_2

    .line 4151
    sub-int v3, v6, v3

    .line 4155
    :goto_1
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScroller:Landroid/widget/Scroller;

    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    const/16 v5, 0x12c

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_0

    .line 4153
    :cond_2
    neg-int v3, v3

    goto :goto_1
.end method

.method private estimateDropCell(IIIILandroid/view/View;Lcom/baidu/launcher/ui/homeview/CellLayout;[I)[I
    .locals 7
    .parameter "pixelX"
    .parameter "pixelY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "ignoreView"
    .parameter "layout"
    .parameter "recycle"

    .prologue
    .line 2319
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mVacantCache:Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;

    if-nez v0, :cond_0

    .line 2320
    const/4 v0, 0x0

    invoke-virtual {p6, v0, p5}, Lcom/baidu/launcher/ui/homeview/CellLayout;->findAllVacantCells([ZLandroid/view/View;)Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mVacantCache:Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;

    .line 2324
    :cond_0
    iget-object v5, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mVacantCache:Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;

    move-object v0, p6

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/launcher/ui/homeview/CellLayout;->findNearestVacantArea(IIIILcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;[I)[I

    move-result-object v0

    return-object v0
.end method

.method private findNearestArea(IIIILcom/baidu/launcher/ui/homeview/CellLayout;[I)[I
    .locals 6
    .parameter "pixelX"
    .parameter "pixelY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "layout"
    .parameter "recycle"

    .prologue
    .line 3852
    move-object v0, p5

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/launcher/ui/homeview/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object v0

    return-object v0
.end method

.method private getAllAppItem(Landroid/view/ViewGroup;)Lcom/baidu/launcher/ui/homeview/DockBarItem;
    .locals 4
    .parameter "dockbar"

    .prologue
    .line 5400
    const/4 v0, 0x0

    .line 5401
    .local v0, allAppItem:Lcom/baidu/launcher/ui/homeview/DockBarItem;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 5402
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/ui/homeview/DockBarItem;

    .line 5403
    .local v2, temp:Lcom/baidu/launcher/ui/homeview/DockBarItem;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->getShortcutInfo()Lcom/baidu/launcher/data/item/HomeItemInfo;

    move-result-object v3

    instance-of v3, v3, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->getShortcutInfo()Lcom/baidu/launcher/data/item/HomeItemInfo;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    iget-object v3, v3, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->intent:Landroid/content/Intent;

    if-nez v3, :cond_1

    .line 5405
    move-object v0, v2

    .line 5409
    .end local v2           #temp:Lcom/baidu/launcher/ui/homeview/DockBarItem;
    :cond_0
    return-object v0

    .line 5401
    .restart local v2       #temp:Lcom/baidu/launcher/ui/homeview/DockBarItem;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getCurrentDropLayout()Lcom/baidu/launcher/ui/homeview/CellLayout;
    .locals 2

    .prologue
    .line 2199
    invoke-direct {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getCurrentScreenIndex()I

    move-result v0

    .line 2200
    .local v0, index:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2201
    const/4 v1, 0x0

    .line 2203
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/homeview/CellLayout;

    goto :goto_0
.end method

.method private getCurrentScreenIndex()I
    .locals 2

    .prologue
    .line 1926
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mNextScreen:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mNextScreen:I

    goto :goto_0
.end method

.method private getDragViewVisualCenter(IIIILcom/baidu/launcher/ui/dragdrop/DragView;[F)[F
    .locals 5
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "recycle"

    .prologue
    .line 3824
    if-nez p6, :cond_0

    .line 3825
    const/4 v3, 0x2

    new-array v1, v3, [F

    .line 3836
    .local v1, res:[F
    :goto_0
    sub-int v0, p1, p3

    .line 3837
    .local v0, left:I
    sub-int v2, p2, p4

    .line 3840
    .local v2, top:I
    const/4 v3, 0x0

    invoke-virtual {p5}, Lcom/baidu/launcher/ui/dragdrop/DragView;->getDragRegion()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v0

    int-to-float v4, v4

    aput v4, v1, v3

    .line 3841
    const/4 v3, 0x1

    invoke-virtual {p5}, Lcom/baidu/launcher/ui/dragdrop/DragView;->getDragRegion()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v2

    int-to-float v4, v4

    aput v4, v1, v3

    .line 3843
    return-object v1

    .line 3827
    .end local v0           #left:I
    .end local v1           #res:[F
    .end local v2           #top:I
    :cond_0
    move-object v1, p6

    .restart local v1       #res:[F
    goto :goto_0
.end method

.method private getScaledChild(Landroid/view/View;)Landroid/graphics/RectF;
    .locals 20
    .parameter "child"

    .prologue
    .line 3250
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mThumbnailRect:Landroid/graphics/RectF;

    if-eqz v15, :cond_0

    .line 3251
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mThumbnailRect:Landroid/graphics/RectF;

    .line 3286
    :goto_0
    return-object v15

    .line 3253
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v6

    .line 3254
    .local v6, count:I
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getWidth()I

    move-result v12

    .line 3255
    .local v12, width:I
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getHeight()I

    move-result v8

    .line 3256
    .local v8, height:I
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getScrollX()I

    move-result v15

    add-int/lit8 v13, v15, 0xa

    .line 3257
    .local v13, xpos:I
    const/16 v14, 0xa

    .line 3259
    .local v14, ypos:I
    add-int/lit8 v7, v6, -0x1

    .line 3260
    .local v7, distro_set:I
    const/4 v3, 0x0

    .line 3262
    .local v3, childPos:I
    int-to-float v15, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mPreviewScale:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    float-to-int v4, v15

    .line 3263
    .local v4, childWidth:I
    int-to-float v15, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mPreviewScale:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    float-to-int v2, v15

    .line 3265
    .local v2, childHeight:I
    div-int/lit8 v15, v8, 0x2

    add-int/lit8 v16, v2, 0xa

    sget-object v17, Lcom/baidu/launcher/ui/homeview/Workspace;->distro:[[I

    aget-object v17, v17, v7

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    mul-int v16, v16, v17

    add-int/lit8 v16, v16, 0xa

    div-int/lit8 v16, v16, 0x2

    sub-int v11, v15, v16

    .line 3267
    .local v11, topMargin:I
    const/4 v10, 0x0

    .local v10, rows:I
    :goto_1
    sget-object v15, Lcom/baidu/launcher/ui/homeview/Workspace;->distro:[[I

    aget-object v15, v15, v7

    array-length v15, v15

    if-ge v10, v15, :cond_4

    .line 3268
    div-int/lit8 v15, v12, 0x2

    add-int/lit8 v16, v4, 0xa

    sget-object v17, Lcom/baidu/launcher/ui/homeview/Workspace;->distro:[[I

    aget-object v17, v17, v7

    aget v17, v17, v10

    mul-int v16, v16, v17

    add-int/lit8 v16, v16, 0xa

    div-int/lit8 v16, v16, 0x2

    sub-int v9, v15, v16

    .line 3270
    .local v9, leftMargin:I
    const/4 v5, 0x0

    .local v5, columns:I
    :goto_2
    sget-object v15, Lcom/baidu/launcher/ui/homeview/Workspace;->distro:[[I

    aget-object v15, v15, v7

    aget v15, v15, v10

    if-ge v5, v15, :cond_1

    .line 3271
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    if-le v3, v15, :cond_2

    .line 3283
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getScrollX()I

    move-result v15

    add-int/lit8 v13, v15, 0xa

    .line 3284
    add-int/lit8 v15, v2, 0xa

    add-int/2addr v14, v15

    .line 3267
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 3273
    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3274
    .local v1, c:Landroid/view/View;
    move-object/from16 v0, p1

    if-ne v0, v1, :cond_3

    .line 3275
    new-instance v15, Landroid/graphics/RectF;

    add-int v16, v9, v13

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    add-int v17, v11, v14

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    add-int v18, v9, v13

    add-int v18, v18, v4

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    add-int v19, v11, v14

    add-int v19, v19, v2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-direct/range {v15 .. v19}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto/16 :goto_0

    .line 3279
    :cond_3
    add-int/lit8 v15, v4, 0xa

    add-int/2addr v13, v15

    .line 3281
    add-int/lit8 v3, v3, 0x1

    .line 3270
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 3286
    .end local v1           #c:Landroid/view/View;
    .end local v5           #columns:I
    .end local v9           #leftMargin:I
    :cond_4
    new-instance v15, Landroid/graphics/RectF;

    invoke-direct {v15}, Landroid/graphics/RectF;-><init>()V

    goto/16 :goto_0
.end method

.method private getScrollProgress(ILandroid/view/View;I)F
    .locals 7
    .parameter "screenCenter"
    .parameter "v"
    .parameter "page"

    .prologue
    const/high16 v6, 0x3f80

    .line 897
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getMeasuredWidth()I

    move-result v4

    div-int/lit8 v1, v4, 0x2

    .line 899
    .local v1, halfScreenSize:I
    invoke-virtual {p0, p2}, Lcom/baidu/launcher/ui/homeview/Workspace;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v4

    iget v5, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mPageSpacing:I

    add-int v3, v4, v5

    .line 900
    .local v3, totalDistance:I
    invoke-virtual {p0, p3}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildOffset(I)I

    move-result v4

    invoke-virtual {p0, p3}, Lcom/baidu/launcher/ui/homeview/Workspace;->getRelativeChildOffset(I)I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v4, v1

    sub-int v0, p1, v4

    .line 903
    .local v0, delta:I
    int-to-float v4, v0

    int-to-float v5, v3

    mul-float/2addr v5, v6

    div-float v2, v4, v5

    .line 904
    .local v2, scrollProgress:F
    invoke-static {v2, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 905
    const/high16 v4, -0x4080

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 906
    return v2
.end method

.method private inCurrentScreenWidgetRange(FF)Z
    .locals 12
    .parameter "xPos"
    .parameter "yPos"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 5413
    const/4 v2, 0x0

    .line 5414
    .local v2, inRange:Z
    invoke-direct {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getCurrentDropLayout()Lcom/baidu/launcher/ui/homeview/CellLayout;

    move-result-object v3

    .line 5415
    .local v3, mCellLayout:Lcom/baidu/launcher/ui/homeview/CellLayout;
    if-nez v3, :cond_0

    .line 5435
    :goto_0
    return v9

    .line 5418
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {v3}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getChildCount()I

    move-result v10

    if-ge v1, v10, :cond_2

    .line 5419
    invoke-virtual {v3, v1}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5420
    .local v0, childView:Landroid/view/View;
    if-eqz v0, :cond_6

    .line 5421
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    .line 5422
    .local v5, tag:Ljava/lang/Object;
    if-eqz v5, :cond_6

    instance-of v10, v5, Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;

    if-nez v10, :cond_1

    instance-of v10, v5, Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;

    if-eqz v10, :cond_6

    .line 5423
    :cond_1
    const/4 v10, 0x2

    new-array v4, v10, [I

    .line 5424
    .local v4, mViewPos:[I
    invoke-virtual {v0, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 5425
    aget v10, v4, v9

    int-to-float v10, v10

    cmpl-float v10, p1, v10

    if-lez v10, :cond_3

    aget v10, v4, v9

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v11

    add-int/2addr v10, v11

    int-to-float v10, v10

    cmpg-float v10, p1, v10

    if-gez v10, :cond_3

    move v6, v8

    .line 5427
    .local v6, xInner:Z
    :goto_2
    aget v10, v4, v8

    int-to-float v10, v10

    cmpl-float v10, p2, v10

    if-lez v10, :cond_4

    aget v10, v4, v8

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v11

    add-int/2addr v10, v11

    int-to-float v10, v10

    cmpg-float v10, p2, v10

    if-gez v10, :cond_4

    move v7, v8

    .line 5429
    .local v7, yInner:Z
    :goto_3
    if-eqz v6, :cond_5

    if-eqz v7, :cond_5

    move v2, v8

    .line 5430
    :goto_4
    if-eqz v2, :cond_6

    .end local v0           #childView:Landroid/view/View;
    .end local v4           #mViewPos:[I
    .end local v5           #tag:Ljava/lang/Object;
    .end local v6           #xInner:Z
    .end local v7           #yInner:Z
    :cond_2
    move v9, v2

    .line 5435
    goto :goto_0

    .restart local v0       #childView:Landroid/view/View;
    .restart local v4       #mViewPos:[I
    .restart local v5       #tag:Ljava/lang/Object;
    :cond_3
    move v6, v9

    .line 5425
    goto :goto_2

    .restart local v6       #xInner:Z
    :cond_4
    move v7, v9

    .line 5427
    goto :goto_3

    .restart local v7       #yInner:Z
    :cond_5
    move v2, v9

    .line 5429
    goto :goto_4

    .line 5418
    .end local v4           #mViewPos:[I
    .end local v5           #tag:Ljava/lang/Object;
    .end local v6           #xInner:Z
    .end local v7           #yInner:Z
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private initWorkspace()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 456
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 457
    .local v1, context:Landroid/content/Context;
    invoke-direct {p0, v5}, Lcom/baidu/launcher/ui/homeview/Workspace;->setPageSpacing(I)V

    .line 458
    new-instance v2, Lcom/baidu/launcher/ui/homeview/Workspace$WorkspaceOvershootInterpolator;

    invoke-direct {v2}, Lcom/baidu/launcher/ui/homeview/Workspace$WorkspaceOvershootInterpolator;-><init>()V

    iput-object v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollInterpolator:Lcom/baidu/launcher/ui/homeview/Workspace$WorkspaceOvershootInterpolator;

    .line 459
    new-instance v2, Landroid/widget/Scroller;

    iget-object v3, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollInterpolator:Lcom/baidu/launcher/ui/homeview/Workspace$WorkspaceOvershootInterpolator;

    invoke-direct {v2, v1, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScroller:Landroid/widget/Scroller;

    .line 460
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v3

    const/high16 v4, 0x4120

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/Scroller;->setFriction(F)V

    .line 461
    sget v2, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->currentScreen:I

    iput v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I

    .line 462
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mPaint:Landroid/graphics/Paint;

    .line 464
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setDither(Z)V

    .line 465
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 467
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 468
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTouchSlop:I

    .line 469
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mMaximumVelocity:I

    .line 471
    new-instance v2, Lcom/baidu/launcher/ui/homeview/MultiTouchController;

    invoke-direct {v2, p0, v5}, Lcom/baidu/launcher/ui/homeview/MultiTouchController;-><init>(Lcom/baidu/launcher/ui/homeview/MultiTouchController$MultiTouchObjectCanvas;Z)V

    iput-object v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->multiTouchController:Lcom/baidu/launcher/ui/homeview/MultiTouchController;

    .line 474
    const v2, 0x3f0ccccd

    sget v3, Lcom/baidu/launcher/utils/DefaultConfigurationHelper;->app_icon_size:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mMaxDistanceForFolderCreation:F

    .line 476
    return-void
.end method

.method private invalidateCachedOffsets()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 3578
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v0

    .line 3579
    .local v0, count:I
    if-nez v0, :cond_1

    .line 3580
    iput-object v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mChildOffsets:[I

    .line 3581
    iput-object v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mChildRelativeOffsets:[I

    .line 3591
    :cond_0
    return-void

    .line 3585
    :cond_1
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mChildOffsets:[I

    .line 3586
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mChildRelativeOffsets:[I

    .line 3587
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3588
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mChildOffsets:[I

    aput v3, v2, v1

    .line 3589
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mChildRelativeOffsets:[I

    aput v3, v2, v1

    .line 3587
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private isScreenNoValid(I)Z
    .locals 1
    .parameter "screen"

    .prologue
    .line 1028
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private manageFolderFeedback(Ljava/lang/Object;Lcom/baidu/launcher/ui/homeview/CellLayout;[IFLandroid/view/View;)V
    .locals 8
    .parameter "info"
    .parameter "targetLayout"
    .parameter "targetCell"
    .parameter "distance"
    .parameter "dragOverView"

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 3946
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/launcher/ui/homeview/Workspace;->willCauseFolderAction(Ljava/lang/Object;Lcom/baidu/launcher/ui/homeview/CellLayout;[IFZ)Z

    move-result v6

    .line 3948
    .local v6, userFolderPending:Z
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragMode:I

    if-nez v0, :cond_0

    if-eqz v6, :cond_0

    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mFolderCreationAlarm:Lcom/baidu/launcher/ui/animation/Alarm;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/animation/Alarm;->alarmPending()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3950
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mFolderCreationAlarm:Lcom/baidu/launcher/ui/animation/Alarm;

    new-instance v1, Lcom/baidu/launcher/ui/homeview/Workspace$FolderCreationAlarmListener;

    aget v2, p3, v5

    aget v3, p3, v7

    invoke-direct {v1, p0, p2, v2, v3}, Lcom/baidu/launcher/ui/homeview/Workspace$FolderCreationAlarmListener;-><init>(Lcom/baidu/launcher/ui/homeview/Workspace;Lcom/baidu/launcher/ui/homeview/CellLayout;II)V

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/animation/Alarm;->setOnAlarmListener(Lcom/baidu/launcher/ui/animation/Alarm$OnAlarmListener;)V

    .line 3952
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mFolderCreationAlarm:Lcom/baidu/launcher/ui/animation/Alarm;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/baidu/launcher/ui/animation/Alarm;->setAlarm(J)V

    .line 3954
    :cond_0
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragMode:I

    if-ne v0, v7, :cond_1

    if-nez v6, :cond_1

    .line 3955
    invoke-virtual {p0, v5}, Lcom/baidu/launcher/ui/homeview/Workspace;->setDragMode(I)V

    .line 3957
    :cond_1
    return-void
.end method

.method private onDropExternal(IILcom/baidu/launcher/ui/dragdrop/DragView;Ljava/lang/Object;Lcom/baidu/launcher/ui/homeview/CellLayout;)V
    .locals 7
    .parameter "x"
    .parameter "y"
    .parameter "dragView"
    .parameter "dragInfo"
    .parameter "cellLayout"

    .prologue
    .line 2086
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/baidu/launcher/ui/homeview/Workspace;->onDropExternal(IILcom/baidu/launcher/ui/dragdrop/DragView;Ljava/lang/Object;Lcom/baidu/launcher/ui/homeview/CellLayout;Z)V

    .line 2087
    return-void
.end method

.method private onDropExternal(IILcom/baidu/launcher/ui/dragdrop/DragView;Ljava/lang/Object;Lcom/baidu/launcher/ui/homeview/CellLayout;Z)V
    .locals 33
    .parameter "x"
    .parameter "y"
    .parameter "dragView"
    .parameter "dragInfo"
    .parameter "cellLayout"
    .parameter "insertAtFirst"

    .prologue
    .line 2092
    move-object/from16 v0, p4

    instance-of v2, v0, Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v2, :cond_1

    move-object/from16 v32, p4

    .line 2093
    check-cast v32, Landroid/appwidget/AppWidgetProviderInfo;

    .line 2094
    .local v32, widgetInfo:Landroid/appwidget/AppWidgetProviderInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v32

    invoke-static {v2, v0}, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->getSpanForWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)[I

    move-result-object v29

    .line 2095
    .local v29, span:[I
    const/4 v2, 0x2

    new-array v11, v2, [I

    .line 2096
    .local v11, resultSpan:[I
    const/4 v2, 0x0

    aget v5, v29, v2

    const/4 v2, 0x1

    aget v6, v29, v2

    const/4 v2, 0x0

    aget v7, v29, v2

    const/4 v2, 0x1

    aget v8, v29, v2

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTargetCell:[I

    const/4 v12, 0x2

    move-object/from16 v2, p5

    move/from16 v3, p1

    move/from16 v4, p2

    invoke-virtual/range {v2 .. v12}, Lcom/baidu/launcher/ui/homeview/CellLayout;->createArea(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTargetCell:[I

    .line 2098
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/logic/ViewManager;->getDragLayer()Lcom/baidu/launcher/ui/dragdrop/DragLayer;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTargetCell:[I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/logic/ViewManager;->getStatusBarHeight()I

    move-result v9

    move-object/from16 v2, p5

    move-object/from16 v3, p3

    move-object/from16 v5, v32

    move-object/from16 v7, v29

    invoke-virtual/range {v2 .. v9}, Lcom/baidu/launcher/ui/homeview/CellLayout;->onDropWidgetFromLauncher(Lcom/baidu/launcher/ui/dragdrop/DragView;Lcom/baidu/launcher/ui/dragdrop/DragLayer;Ljava/lang/Object;I[I[II)V

    .line 2192
    .end local v11           #resultSpan:[I
    .end local v29           #span:[I
    .end local v32           #widgetInfo:Landroid/appwidget/AppWidgetProviderInfo;
    :cond_0
    :goto_0
    return-void

    .line 2099
    :cond_1
    move-object/from16 v0, p4

    instance-of v2, v0, Lcom/baidu/launcher/data/item/ListWidgetInfo;

    if-eqz v2, :cond_2

    move-object/from16 v28, p4

    .line 2100
    check-cast v28, Lcom/baidu/launcher/data/item/ListWidgetInfo;

    .line 2101
    .local v28, lwi:Lcom/baidu/launcher/data/item/ListWidgetInfo;
    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 v29, v0

    const/4 v2, 0x0

    move-object/from16 v0, v28

    iget v3, v0, Lcom/baidu/launcher/data/item/ListWidgetInfo;->spanX:I

    aput v3, v29, v2

    const/4 v2, 0x1

    move-object/from16 v0, v28

    iget v3, v0, Lcom/baidu/launcher/data/item/ListWidgetInfo;->spanY:I

    aput v3, v29, v2

    .line 2102
    .restart local v29       #span:[I
    const/4 v2, 0x2

    new-array v11, v2, [I

    .line 2103
    .restart local v11       #resultSpan:[I
    const/4 v2, 0x0

    aget v5, v29, v2

    const/4 v2, 0x1

    aget v6, v29, v2

    const/4 v2, 0x0

    aget v7, v29, v2

    const/4 v2, 0x1

    aget v8, v29, v2

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTargetCell:[I

    const/4 v12, 0x2

    move-object/from16 v2, p5

    move/from16 v3, p1

    move/from16 v4, p2

    invoke-virtual/range {v2 .. v12}, Lcom/baidu/launcher/ui/homeview/CellLayout;->createArea(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTargetCell:[I

    .line 2105
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/logic/ViewManager;->getDragLayer()Lcom/baidu/launcher/ui/dragdrop/DragLayer;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTargetCell:[I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/logic/ViewManager;->getStatusBarHeight()I

    move-result v9

    move-object/from16 v2, p5

    move-object/from16 v3, p3

    move-object/from16 v5, v28

    move-object/from16 v7, v29

    invoke-virtual/range {v2 .. v9}, Lcom/baidu/launcher/ui/homeview/CellLayout;->onDropWidgetFromLauncher(Lcom/baidu/launcher/ui/dragdrop/DragView;Lcom/baidu/launcher/ui/dragdrop/DragLayer;Ljava/lang/Object;I[I[II)V

    goto :goto_0

    .line 2106
    .end local v11           #resultSpan:[I
    .end local v28           #lwi:Lcom/baidu/launcher/data/item/ListWidgetInfo;
    .end local v29           #span:[I
    :cond_2
    move-object/from16 v0, p4

    instance-of v2, v0, Lcom/baidu/launcher/data/item/BaseItemInfo;

    if-eqz v2, :cond_0

    move-object/from16 v25, p4

    .line 2108
    check-cast v25, Lcom/baidu/launcher/data/item/BaseItemInfo;

    .line 2109
    .local v25, info:Lcom/baidu/launcher/data/item/BaseItemInfo;
    const/16 v23, 0x0

    .line 2111
    .local v23, addFolderFromAppList:Z
    move-object/from16 v0, v25

    iget v2, v0, Lcom/baidu/launcher/data/item/BaseItemInfo;->itemType:I

    sparse-switch v2, :sswitch_data_0

    .line 2144
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown item type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v25

    iget v4, v0, Lcom/baidu/launcher/data/item/BaseItemInfo;->itemType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2115
    :sswitch_0
    move-object/from16 v0, v25

    instance-of v2, v0, Lcom/baidu/launcher/data/item/ListAppInfo;

    if-eqz v2, :cond_3

    .line 2117
    new-instance v26, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    check-cast v25, Lcom/baidu/launcher/data/item/ListAppInfo;

    .end local v25           #info:Lcom/baidu/launcher/data/item/BaseItemInfo;
    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/baidu/launcher/data/item/HomeShortcutInfo;-><init>(Lcom/baidu/launcher/data/item/ListAppInfo;)V

    .local v26, info:Lcom/baidu/launcher/data/item/BaseItemInfo;
    move-object/from16 v25, v26

    .line 2119
    .end local v26           #info:Lcom/baidu/launcher/data/item/BaseItemInfo;
    .restart local v25       #info:Lcom/baidu/launcher/data/item/BaseItemInfo;
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    move-object/from16 v2, v25

    check-cast v2, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    invoke-virtual {v3, v2}, Lcom/baidu/launcher/ui/logic/ViewManager;->createShortcut(Lcom/baidu/launcher/data/item/HomeShortcutInfo;)Landroid/view/View;

    move-result-object v15

    .local v15, view:Landroid/view/View;
    move-object/from16 v30, v15

    .line 2120
    check-cast v30, Lcom/baidu/launcher/ui/common/BubbleTextView;

    .line 2147
    :cond_4
    :goto_1
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    .line 2148
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v15, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2149
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v15, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2150
    instance-of v2, v15, Lcom/baidu/launcher/ui/dragdrop/DropTarget;

    if-eqz v2, :cond_5

    .line 2151
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragController:Lcom/baidu/launcher/ui/dragdrop/DragController;

    move-object v2, v15

    check-cast v2, Lcom/baidu/launcher/ui/dragdrop/DropTarget;

    invoke-virtual {v3, v2}, Lcom/baidu/launcher/ui/dragdrop/DragController;->addDropTarget(Lcom/baidu/launcher/ui/dragdrop/DropTarget;)V

    .line 2156
    :cond_5
    const/4 v5, 0x1

    .line 2157
    .local v5, spanX:I
    const/4 v6, 0x1

    .line 2158
    .local v6, spanY:I
    move-object/from16 v0, v25

    instance-of v2, v0, Lcom/baidu/launcher/data/item/HomeItemInfo;

    if-eqz v2, :cond_6

    move-object/from16 v24, v25

    .line 2159
    check-cast v24, Lcom/baidu/launcher/data/item/HomeItemInfo;

    .line 2160
    .local v24, hif:Lcom/baidu/launcher/data/item/HomeItemInfo;
    move-object/from16 v0, v24

    iget v5, v0, Lcom/baidu/launcher/data/item/HomeItemInfo;->spanX:I

    .line 2161
    move-object/from16 v0, v24

    iget v6, v0, Lcom/baidu/launcher/data/item/HomeItemInfo;->spanY:I

    .line 2163
    .end local v24           #hif:Lcom/baidu/launcher/data/item/HomeItemInfo;
    :cond_6
    const/4 v2, 0x2

    new-array v11, v2, [I

    .line 2164
    .restart local v11       #resultSpan:[I
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTargetCell:[I

    const/4 v12, 0x2

    move-object/from16 v2, p5

    move/from16 v3, p1

    move/from16 v4, p2

    move v7, v5

    move v8, v6

    invoke-virtual/range {v2 .. v12}, Lcom/baidu/launcher/ui/homeview/CellLayout;->createArea(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTargetCell:[I

    .line 2166
    if-eqz p6, :cond_9

    const/4 v2, 0x0

    :goto_2
    move-object/from16 v0, p5

    invoke-virtual {v0, v15, v2}, Lcom/baidu/launcher/ui/homeview/CellLayout;->addView(Landroid/view/View;I)V

    .line 2167
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v27

    check-cast v27, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;

    .line 2168
    .local v27, lp:Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTargetCell:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, v27

    iput v2, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->tmpCellX:I

    move-object/from16 v0, v27

    iput v2, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellX:I

    .line 2169
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTargetCell:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    move-object/from16 v0, v27

    iput v2, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->tmpCellY:I

    move-object/from16 v0, v27

    iput v2, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellY:I

    .line 2170
    move-object/from16 v0, v27

    iput v5, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellHSpan:I

    .line 2171
    move-object/from16 v0, v27

    iput v6, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellVSpan:I

    .line 2172
    const/4 v2, 0x1

    move-object/from16 v0, v27

    iput-boolean v2, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 2173
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/logic/ViewManager;->getDragLayer()Lcom/baidu/launcher/ui/dragdrop/DragLayer;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTargetCell:[I

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/logic/ViewManager;->getStatusBarHeight()I

    move-result v17

    move-object/from16 v12, p5

    move-object/from16 v13, p3

    invoke-virtual/range {v12 .. v17}, Lcom/baidu/launcher/ui/homeview/CellLayout;->onDropChild(Lcom/baidu/launcher/ui/dragdrop/DragView;Lcom/baidu/launcher/ui/dragdrop/DragLayer;Landroid/view/View;[II)V

    .line 2181
    if-eqz v23, :cond_a

    .line 2182
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/launcher/data/HomeDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/HomeDataManager;

    move-result-object v16

    move-object/from16 v17, v25

    check-cast v17, Lcom/baidu/launcher/data/item/HomeFolderInfo;

    const-wide/16 v18, -0x64

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I

    move/from16 v20, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellX:I

    move/from16 v21, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellY:I

    move/from16 v22, v0

    invoke-virtual/range {v16 .. v22}, Lcom/baidu/launcher/data/HomeDataManager;->addFolderInDatabase(Lcom/baidu/launcher/data/item/HomeFolderInfo;JIII)V

    goto/16 :goto_0

    .line 2126
    .end local v5           #spanX:I
    .end local v6           #spanY:I
    .end local v11           #resultSpan:[I
    .end local v15           #view:Landroid/view/View;
    .end local v27           #lp:Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;
    :sswitch_1
    move-object/from16 v0, v25

    instance-of v2, v0, Lcom/baidu/launcher/data/item/ListFolderInfo;

    if-eqz v2, :cond_7

    .line 2127
    new-instance v26, Lcom/baidu/launcher/data/item/HomeFolderInfo;

    check-cast v25, Lcom/baidu/launcher/data/item/ListFolderInfo;

    .end local v25           #info:Lcom/baidu/launcher/data/item/BaseItemInfo;
    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/baidu/launcher/data/item/HomeFolderInfo;-><init>(Lcom/baidu/launcher/data/item/ListFolderInfo;)V

    .line 2128
    .restart local v26       #info:Lcom/baidu/launcher/data/item/BaseItemInfo;
    const/16 v23, 0x1

    move-object/from16 v25, v26

    .line 2130
    .end local v26           #info:Lcom/baidu/launcher/data/item/BaseItemInfo;
    .restart local v25       #info:Lcom/baidu/launcher/data/item/BaseItemInfo;
    :cond_7
    const v4, 0x7f030057

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object/from16 v3, v25

    check-cast v3, Lcom/baidu/launcher/data/item/HomeFolderInfo;

    invoke-static {v4, v7, v2, v3}, Lcom/baidu/launcher/ui/folder/FolderIcon;->fromXml(ILandroid/content/Context;Landroid/view/ViewGroup;Lcom/baidu/launcher/data/item/IFolderInfo;)Lcom/baidu/launcher/ui/folder/FolderIcon;

    move-result-object v15

    .line 2132
    .restart local v15       #view:Landroid/view/View;
    goto/16 :goto_1

    .line 2134
    .end local v15           #view:Landroid/view/View;
    :sswitch_2
    move-object/from16 v0, v25

    instance-of v2, v0, Lcom/baidu/launcher/data/item/ListAppInfo;

    if-eqz v2, :cond_8

    .line 2136
    new-instance v26, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    check-cast v25, Lcom/baidu/launcher/data/item/ListAppInfo;

    .end local v25           #info:Lcom/baidu/launcher/data/item/BaseItemInfo;
    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/baidu/launcher/data/item/HomeShortcutInfo;-><init>(Lcom/baidu/launcher/data/item/ListAppInfo;)V

    .restart local v26       #info:Lcom/baidu/launcher/data/item/BaseItemInfo;
    move-object/from16 v25, v26

    .line 2138
    .end local v26           #info:Lcom/baidu/launcher/data/item/BaseItemInfo;
    .restart local v25       #info:Lcom/baidu/launcher/data/item/BaseItemInfo;
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    move-object/from16 v2, v25

    check-cast v2, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    invoke-virtual {v3, v2}, Lcom/baidu/launcher/ui/logic/ViewManager;->createShortcut(Lcom/baidu/launcher/data/item/HomeShortcutInfo;)Landroid/view/View;

    move-result-object v15

    .restart local v15       #view:Landroid/view/View;
    move-object/from16 v31, v15

    .line 2139
    check-cast v31, Lcom/baidu/launcher/ui/common/BubbleTextView;

    .line 2140
    .local v31, tv1:Lcom/baidu/launcher/ui/common/BubbleTextView;
    sget v2, Lcom/baidu/launcher/utils/DefaultConfigurationHelper;->defaultLauncherApplicationBoxTextSize:I

    const/4 v3, 0x5

    if-le v2, v3, :cond_4

    .line 2141
    const/4 v2, 0x1

    sget v3, Lcom/baidu/launcher/utils/DefaultConfigurationHelper;->defaultLauncherApplicationBoxTextSize:I

    int-to-float v3, v3

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v3}, Lcom/baidu/launcher/ui/common/BubbleTextView;->setTextSize(IF)V

    goto/16 :goto_1

    .line 2166
    .end local v31           #tv1:Lcom/baidu/launcher/ui/common/BubbleTextView;
    .restart local v5       #spanX:I
    .restart local v6       #spanY:I
    .restart local v11       #resultSpan:[I
    :cond_9
    const/4 v2, -0x1

    goto/16 :goto_2

    .line 2186
    .restart local v27       #lp:Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/launcher/data/HomeDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/HomeDataManager;

    move-result-object v16

    move-object/from16 v17, v25

    check-cast v17, Lcom/baidu/launcher/data/item/HomeItemInfo;

    const-wide/16 v18, -0x64

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I

    move/from16 v20, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellX:I

    move/from16 v21, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellY:I

    move/from16 v22, v0

    invoke-virtual/range {v16 .. v22}, Lcom/baidu/launcher/data/HomeDataManager;->addOrMoveItemInDatabase(Lcom/baidu/launcher/data/item/HomeItemInfo;JIII)V

    goto/16 :goto_0

    .line 2111
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0xa -> :sswitch_0
        0xb -> :sswitch_1
        0x14 -> :sswitch_2
    .end sparse-switch
.end method

.method private releaseVelocityTracker()V
    .locals 1

    .prologue
    .line 1614
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1615
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1616
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1618
    :cond_0
    return-void
.end method

.method private resetChildState(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 4374
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4375
    sget v0, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->scrollType:I

    .line 4376
    .local v0, scrollType:I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 4377
    :cond_0
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/high16 v2, 0x3f80

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 4380
    .end local v0           #scrollType:I
    :cond_1
    return-void
.end method

.method private screenScrolled(I)V
    .locals 10
    .parameter "screenCenter"

    .prologue
    const/4 v6, 0x1

    const/4 v9, 0x0

    const/4 v5, 0x0

    .line 864
    iget v4, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollType:I

    .line 865
    .local v4, scrollType:I
    iget v7, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mOverScrollX:I

    if-ltz v7, :cond_0

    iget v7, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mOverScrollX:I

    iget v8, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mMaxScrollX:I

    if-le v7, v8, :cond_5

    :cond_0
    if-nez v4, :cond_5

    .line 867
    iget v7, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mOverScrollX:I

    if-gez v7, :cond_2

    move v1, v5

    .line 868
    .local v1, index:I
    :goto_0
    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/homeview/CellLayout;

    .line 869
    .local v0, cl:Lcom/baidu/launcher/ui/homeview/CellLayout;
    invoke-direct {p0, p1, v0, v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->getScrollProgress(ILandroid/view/View;I)F

    move-result v3

    .line 870
    .local v3, scrollProgress:F
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 871
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v7

    if-nez v1, :cond_1

    move v5, v6

    :cond_1
    invoke-virtual {v0, v7, v5}, Lcom/baidu/launcher/ui/homeview/CellLayout;->setOverScrollAmount(FZ)V

    .line 872
    const/high16 v5, -0x3e40

    mul-float v2, v5, v3

    .line 873
    .local v2, rotation:F
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    sget v7, Lcom/baidu/launcher/ui/homeview/Workspace;->CAMERA_DISTANCE:F

    mul-float/2addr v5, v7

    invoke-virtual {v0, v5}, Lcom/baidu/launcher/ui/homeview/CellLayout;->setCameraDistance(F)V

    .line 874
    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getMeasuredWidth()I

    move-result v5

    int-to-float v7, v5

    if-nez v1, :cond_3

    const/high16 v5, 0x3f40

    :goto_1
    mul-float/2addr v5, v7

    invoke-virtual {v0, v5}, Lcom/baidu/launcher/ui/homeview/CellLayout;->setPivotX(F)V

    .line 875
    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    const/high16 v7, 0x3f00

    mul-float/2addr v5, v7

    invoke-virtual {v0, v5}, Lcom/baidu/launcher/ui/homeview/CellLayout;->setPivotY(F)V

    .line 876
    invoke-virtual {v0, v2}, Lcom/baidu/launcher/ui/homeview/CellLayout;->setRotationY(F)V

    .line 877
    invoke-virtual {v0, v6}, Lcom/baidu/launcher/ui/homeview/CellLayout;->setOverscrollTransformsDirty(Z)V

    .line 894
    .end local v0           #cl:Lcom/baidu/launcher/ui/homeview/CellLayout;
    .end local v1           #index:I
    .end local v2           #rotation:F
    .end local v3           #scrollProgress:F
    :goto_2
    return-void

    .line 867
    :cond_2
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    goto :goto_0

    .line 874
    .restart local v0       #cl:Lcom/baidu/launcher/ui/homeview/CellLayout;
    .restart local v1       #index:I
    .restart local v2       #rotation:F
    .restart local v3       #scrollProgress:F
    :cond_3
    const/high16 v5, 0x3e80

    goto :goto_1

    .line 879
    .end local v2           #rotation:F
    :cond_4
    neg-float v5, v3

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    sget v6, Lcom/baidu/launcher/ui/homeview/Workspace;->TRANSITION_MAX_OVERSCROLL:F

    mul-float/2addr v5, v6

    invoke-virtual {v0, v5}, Lcom/baidu/launcher/ui/homeview/CellLayout;->setTranslationX(F)V

    goto :goto_2

    .line 883
    .end local v0           #cl:Lcom/baidu/launcher/ui/homeview/CellLayout;
    .end local v1           #index:I
    .end local v3           #scrollProgress:F
    :cond_5
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 886
    invoke-virtual {p0, v5}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/baidu/launcher/ui/homeview/CellLayout;

    invoke-virtual {v5}, Lcom/baidu/launcher/ui/homeview/CellLayout;->resetOverscrollTransforms()V

    .line 887
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v5}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/baidu/launcher/ui/homeview/CellLayout;

    invoke-virtual {v5}, Lcom/baidu/launcher/ui/homeview/CellLayout;->resetOverscrollTransforms()V

    goto :goto_2

    .line 889
    :cond_6
    invoke-virtual {p0, v5}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/baidu/launcher/ui/homeview/CellLayout;

    invoke-virtual {v5, v9}, Lcom/baidu/launcher/ui/homeview/CellLayout;->setTranslationX(F)V

    .line 890
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v5}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/baidu/launcher/ui/homeview/CellLayout;

    invoke-virtual {v5, v9}, Lcom/baidu/launcher/ui/homeview/CellLayout;->setTranslationX(F)V

    goto :goto_2
.end method

.method private scrollAnimation(Landroid/view/View;Landroid/graphics/Canvas;IIZI)V
    .locals 18
    .parameter "child"
    .parameter "canvas"
    .parameter "dir"
    .parameter "animType"
    .parameter "isLoop"
    .parameter "scrollEndType"

    .prologue
    .line 4209
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mBulletinEmbedder:Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-virtual/range {v3 .. v9}, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->interceptScrollAnimation(Landroid/view/View;Landroid/graphics/Canvas;IIZI)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4371
    :cond_0
    :goto_0
    return-void

    .line 4212
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getWidth()I

    move-result v17

    .line 4213
    .local v17, width:I
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getHeight()I

    move-result v13

    .line 4214
    .local v13, heitht:I
    if-eqz v17, :cond_0

    .line 4217
    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollX:I

    int-to-float v3, v3

    move/from16 v0, v17

    int-to-float v4, v0

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v0, v3

    move/from16 v16, v0

    .line 4218
    .local v16, scrollPos:I
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getDrawingTime()J

    move-result-wide v11

    .line 4219
    .local v11, drawingTime:J
    if-eqz p1, :cond_0

    .line 4222
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Canvas;->save()I

    move-result v15

    .line 4223
    .local v15, saveCount:I
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v10

    .line 4224
    .local v10, childCount:I
    if-eqz p5, :cond_6

    const/4 v3, 0x1

    move/from16 v0, p6

    if-ne v0, v3, :cond_6

    if-nez p3, :cond_6

    .line 4225
    mul-int v14, v10, v17

    .line 4226
    .local v14, offset:I
    neg-int v3, v14

    int-to-float v3, v3

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4231
    .end local v14           #offset:I
    :cond_2
    :goto_1
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v3

    if-eqz v3, :cond_3

    sget v3, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->scrollType:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_3

    .line 4232
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getAlpha()F

    move-result v3

    const/high16 v4, 0x3f80

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    .line 4233
    const/high16 v3, 0x3f80

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 4236
    :cond_3
    if-nez p3, :cond_9

    .line 4237
    if-gez v16, :cond_4

    if-eqz p5, :cond_4

    .line 4238
    add-int/lit8 v16, v10, -0x1

    .line 4240
    :cond_4
    packed-switch p4, :pswitch_data_0

    .line 4370
    :cond_5
    :goto_2
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    .line 4227
    :cond_6
    if-eqz p5, :cond_2

    const/4 v3, 0x2

    move/from16 v0, p6

    if-ne v0, v3, :cond_2

    const/4 v3, 0x1

    move/from16 v0, p3

    if-ne v0, v3, :cond_2

    .line 4228
    mul-int v14, v10, v17

    .line 4229
    .restart local v14       #offset:I
    int-to-float v3, v14

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 4243
    .end local v14           #offset:I
    :pswitch_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2, v11, v12}, Lcom/baidu/launcher/ui/homeview/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_2

    .line 4246
    :pswitch_1
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 4247
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayerType()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 4249
    const/4 v3, 0x2

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 4252
    :cond_7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCellAlpha:I

    int-to-float v3, v3

    const/high16 v4, 0x437f

    div-float/2addr v3, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 4253
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2, v11, v12}, Lcom/baidu/launcher/ui/homeview/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_2

    .line 4255
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mMoveOffset:F

    add-float/2addr v4, v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v5, v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v6, v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v3

    int-to-float v7, v3

    move-object/from16 v0, p0

    iget v8, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCellAlpha:I

    const/16 v9, 0x1f

    move-object/from16 v3, p2

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 4258
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2, v11, v12}, Lcom/baidu/launcher/ui/homeview/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 4259
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_2

    .line 4263
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v3}, Landroid/graphics/Camera;->save()V

    .line 4264
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCamera:Landroid/graphics/Camera;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCubeDegreeLeft:F

    invoke-virtual {v3, v4}, Landroid/graphics/Camera;->rotateY(F)V

    .line 4265
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCamera:Landroid/graphics/Camera;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 4266
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v3}, Landroid/graphics/Camera;->restore()V

    .line 4267
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mMatrix:Landroid/graphics/Matrix;

    add-int/lit8 v4, v16, 0x1

    mul-int v4, v4, v17

    neg-int v4, v4

    int-to-float v4, v4

    neg-int v5, v13

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 4268
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mMatrix:Landroid/graphics/Matrix;

    add-int/lit8 v4, v16, 0x1

    mul-int v4, v4, v17

    int-to-float v4, v4

    div-int/lit8 v5, v13, 0x2

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 4269
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mMoveOffset:F

    float-to-int v5, v5

    add-int/2addr v4, v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 4271
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 4272
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 4273
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2, v11, v12}, Lcom/baidu/launcher/ui/homeview/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto/16 :goto_2

    .line 4276
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v3}, Landroid/graphics/Camera;->save()V

    .line 4277
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCamera:Landroid/graphics/Camera;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCubeDistance:I

    int-to-float v6, v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Camera;->translate(FFF)V

    .line 4278
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCamera:Landroid/graphics/Camera;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCubeDegreeLeft:F

    neg-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Camera;->rotateY(F)V

    .line 4279
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCamera:Landroid/graphics/Camera;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 4280
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v3}, Landroid/graphics/Camera;->restore()V

    .line 4281
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mMatrix:Landroid/graphics/Matrix;

    add-int/lit8 v4, v16, 0x1

    mul-int v4, v4, v17

    neg-int v4, v4

    int-to-float v4, v4

    neg-int v5, v13

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 4282
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mMatrix:Landroid/graphics/Matrix;

    add-int/lit8 v4, v16, 0x1

    mul-int v4, v4, v17

    int-to-float v4, v4

    div-int/lit8 v5, v13, 0x2

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 4283
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mMoveOffset:F

    float-to-int v5, v5

    add-int/2addr v4, v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 4285
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 4286
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 4287
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2, v11, v12}, Lcom/baidu/launcher/ui/homeview/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto/16 :goto_2

    .line 4291
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCubeDegreeLeft:F

    mul-int v5, v17, v16

    shr-int/lit8 v6, v17, 0x1

    add-int/2addr v5, v6

    int-to-float v5, v5

    int-to-float v6, v13

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 4292
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mMoveOffset:F

    float-to-int v5, v5

    add-int/2addr v4, v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 4294
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 4295
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 4296
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2, v11, v12}, Lcom/baidu/launcher/ui/homeview/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto/16 :goto_2

    .line 4302
    :cond_9
    const/4 v3, 0x1

    move/from16 v0, p3

    if-ne v0, v3, :cond_5

    .line 4303
    add-int/lit8 v3, v10, -0x1

    move/from16 v0, v16

    if-lt v0, v3, :cond_a

    if-eqz p5, :cond_a

    .line 4304
    const/16 v16, -0x1

    .line 4306
    :cond_a
    packed-switch p4, :pswitch_data_1

    goto/16 :goto_2

    .line 4309
    :pswitch_5
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2, v11, v12}, Lcom/baidu/launcher/ui/homeview/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto/16 :goto_2

    .line 4312
    :pswitch_6
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 4313
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayerType()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_b

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 4315
    const/4 v3, 0x2

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 4317
    :cond_b
    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCellAlpha:I

    rsub-int v3, v3, 0xff

    int-to-float v3, v3

    const/high16 v4, 0x437f

    div-float/2addr v3, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 4318
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2, v11, v12}, Lcom/baidu/launcher/ui/homeview/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto/16 :goto_2

    .line 4320
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v4, v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v5, v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v6, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mMoveOffset:F

    add-float/2addr v6, v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v3

    int-to-float v7, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCellAlpha:I

    rsub-int v8, v3, 0xff

    const/16 v9, 0x1f

    move-object/from16 v3, p2

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 4325
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2, v11, v12}, Lcom/baidu/launcher/ui/homeview/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 4326
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_2

    .line 4330
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v3}, Landroid/graphics/Camera;->save()V

    .line 4332
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCamera:Landroid/graphics/Camera;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCubeDegreeRight:F

    invoke-virtual {v3, v4}, Landroid/graphics/Camera;->rotateY(F)V

    .line 4333
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCamera:Landroid/graphics/Camera;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 4334
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v3}, Landroid/graphics/Camera;->restore()V

    .line 4335
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mMatrix:Landroid/graphics/Matrix;

    add-int/lit8 v4, v16, 0x1

    mul-int v4, v4, v17

    neg-int v4, v4

    int-to-float v4, v4

    neg-int v5, v13

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 4336
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mMatrix:Landroid/graphics/Matrix;

    add-int/lit8 v4, v16, 0x1

    mul-int v4, v4, v17

    int-to-float v4, v4

    div-int/lit8 v5, v13, 0x2

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 4337
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mMoveOffset:F

    float-to-int v7, v7

    add-int/2addr v6, v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 4339
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 4340
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 4341
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2, v11, v12}, Lcom/baidu/launcher/ui/homeview/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto/16 :goto_2

    .line 4344
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v3}, Landroid/graphics/Camera;->save()V

    .line 4345
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCamera:Landroid/graphics/Camera;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCubeDistance:I

    int-to-float v6, v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Camera;->translate(FFF)V

    .line 4346
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCamera:Landroid/graphics/Camera;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCubeDegreeRight:F

    neg-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Camera;->rotateY(F)V

    .line 4347
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCamera:Landroid/graphics/Camera;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 4348
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v3}, Landroid/graphics/Camera;->restore()V

    .line 4349
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mMatrix:Landroid/graphics/Matrix;

    add-int/lit8 v4, v16, 0x1

    mul-int v4, v4, v17

    neg-int v4, v4

    int-to-float v4, v4

    neg-int v5, v13

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 4350
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mMatrix:Landroid/graphics/Matrix;

    add-int/lit8 v4, v16, 0x1

    mul-int v4, v4, v17

    int-to-float v4, v4

    div-int/lit8 v5, v13, 0x2

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 4351
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mMoveOffset:F

    float-to-int v7, v7

    add-int/2addr v6, v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 4353
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 4354
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 4355
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2, v11, v12}, Lcom/baidu/launcher/ui/homeview/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto/16 :goto_2

    .line 4358
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCubeDegreeRight:F

    add-int/lit8 v5, v16, 0x1

    mul-int v5, v5, v17

    shr-int/lit8 v6, v17, 0x1

    add-int/2addr v5, v6

    int-to-float v5, v5

    int-to-float v6, v13

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 4360
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mMoveOffset:F

    float-to-int v7, v7

    add-int/2addr v6, v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 4362
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 4363
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 4364
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2, v11, v12}, Lcom/baidu/launcher/ui/homeview/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto/16 :goto_2

    .line 4240
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 4306
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private setPageSpacing(I)V
    .locals 0
    .parameter "pageSpacing"

    .prologue
    .line 3753
    iput p1, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mPageSpacing:I

    .line 3754
    invoke-direct {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->invalidateCachedOffsets()V

    .line 3755
    return-void
.end method

.method private showAllAppItemAnim(ZZ)V
    .locals 13
    .parameter "snapToScreen"
    .parameter "changeScreen"

    .prologue
    const/high16 v7, 0x43b4

    const/4 v8, 0x0

    const/high16 v4, 0x3f00

    const/4 v3, 0x1

    .line 5368
    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDockbar:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->getAllAppItem(Landroid/view/ViewGroup;)Lcom/baidu/launcher/ui/homeview/DockBarItem;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDockAllAppItem:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    .line 5369
    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDockAllAppItem:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    if-nez v1, :cond_0

    .line 5397
    :goto_0
    return-void

    .line 5372
    :cond_0
    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/launcher/ui/animation/Choreographer;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v12, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 5373
    .local v12, screenWidth:I
    iget v1, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mMoveDeltaX:F

    int-to-float v5, v12

    div-float/2addr v1, v5

    mul-float v2, v1, v7

    .line 5374
    .local v2, targetDegree:F
    new-instance v0, Landroid/view/animation/RotateAnimation;

    iget v1, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mBeforeDegree:F

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 5375
    .local v0, roteAnim:Landroid/view/animation/Animation;
    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 5376
    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 5377
    if-eqz p1, :cond_1

    .line 5378
    if-nez p2, :cond_4

    .line 5379
    new-instance v0, Landroid/view/animation/RotateAnimation;

    .end local v0           #roteAnim:Landroid/view/animation/Animation;
    cmpg-float v1, v2, v8

    if-gez v1, :cond_2

    iget v1, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mBeforeDegree:F

    add-float v6, v7, v1

    :goto_1
    cmpg-float v1, v2, v8

    if-gez v1, :cond_3

    :goto_2
    move-object v5, v0

    move v8, v3

    move v9, v4

    move v10, v3

    move v11, v4

    invoke-direct/range {v5 .. v11}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 5385
    .restart local v0       #roteAnim:Landroid/view/animation/Animation;
    :goto_3
    const-wide/16 v3, 0x190

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 5386
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 5387
    new-instance v1, Lcom/baidu/launcher/ui/homeview/Workspace$9;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/ui/homeview/Workspace$9;-><init>(Lcom/baidu/launcher/ui/homeview/Workspace;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 5395
    :cond_1
    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDockAllAppItem:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    invoke-virtual {v1, v0}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->startAnimation(Landroid/view/animation/Animation;)V

    .line 5396
    iput v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mBeforeDegree:F

    goto :goto_0

    .line 5379
    .end local v0           #roteAnim:Landroid/view/animation/Animation;
    :cond_2
    iget v6, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mBeforeDegree:F

    goto :goto_1

    :cond_3
    move v7, v8

    goto :goto_2

    .line 5382
    .restart local v0       #roteAnim:Landroid/view/animation/Animation;
    :cond_4
    new-instance v0, Landroid/view/animation/RotateAnimation;

    .end local v0           #roteAnim:Landroid/view/animation/Animation;
    iget v6, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mBeforeDegree:F

    iget v1, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mBeforeDegree:F

    cmpl-float v1, v1, v8

    if-lez v1, :cond_5

    :goto_4
    move-object v5, v0

    move v8, v3

    move v9, v4

    move v10, v3

    move v11, v4

    invoke-direct/range {v5 .. v11}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .restart local v0       #roteAnim:Landroid/view/animation/Animation;
    goto :goto_3

    .end local v0           #roteAnim:Landroid/view/animation/Animation;
    :cond_5
    const/high16 v7, -0x3c4c

    goto :goto_4
.end method

.method private showFlingAnim(IJ)V
    .locals 12
    .parameter "delta"
    .parameter "duration"

    .prologue
    const/4 v11, 0x0

    .line 5332
    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.baidu.home.intent.action.WORKSPACE_FLING"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5333
    .local v8, workSpaceFlingIntent:Landroid/content/Intent;
    const-string v9, "move_to_right"

    iget-boolean v10, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mMoveToRight:Z

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5334
    const-string v9, "move_delta"

    invoke-virtual {v8, v9, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5335
    const-string v9, "move_time"

    invoke-virtual {v8, v9, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 5336
    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 5338
    invoke-direct {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getCurrentDropLayout()Lcom/baidu/launcher/ui/homeview/CellLayout;

    move-result-object v4

    .line 5339
    .local v4, mCellLayout:Lcom/baidu/launcher/ui/homeview/CellLayout;
    div-int/lit8 p1, p1, 0x4

    .line 5340
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v4}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getChildCount()I

    move-result v9

    if-ge v2, v9, :cond_2

    .line 5341
    invoke-virtual {v4, v2}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 5342
    .local v1, childView:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 5343
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    .line 5344
    .local v5, tag:Ljava/lang/Object;
    if-eqz v5, :cond_0

    instance-of v9, v5, Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;

    if-nez v9, :cond_0

    instance-of v9, v5, Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;

    if-nez v9, :cond_0

    move-object v3, v5

    .line 5346
    check-cast v3, Lcom/baidu/launcher/data/item/HomeItemInfo;

    .line 5348
    .local v3, itemInfo:Lcom/baidu/launcher/data/item/HomeItemInfo;
    const/4 v0, 0x3

    .line 5349
    .local v0, cellXCount:I
    iget-boolean v9, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mMoveToRight:Z

    if-eqz v9, :cond_1

    .line 5350
    iget v9, v3, Lcom/baidu/launcher/data/item/HomeItemInfo;->cellX:I

    sub-int v9, v0, v9

    add-int/lit8 v9, v9, 0x1

    mul-int v6, v9, p1

    .line 5354
    .local v6, toX:I
    :goto_1
    new-instance v7, Landroid/view/animation/TranslateAnimation;

    int-to-float v9, v6

    invoke-direct {v7, v9, v11, v11, v11}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 5355
    .local v7, translateAnimation:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v9, 0x12c

    invoke-virtual {v7, v9, v10}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 5356
    new-instance v9, Landroid/view/animation/AnticipateOvershootInterpolator;

    invoke-direct {v9, v11}, Landroid/view/animation/AnticipateOvershootInterpolator;-><init>(F)V

    invoke-virtual {v7, v9}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 5357
    invoke-virtual {v1, v7}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 5340
    .end local v0           #cellXCount:I
    .end local v3           #itemInfo:Lcom/baidu/launcher/data/item/HomeItemInfo;
    .end local v5           #tag:Ljava/lang/Object;
    .end local v6           #toX:I
    .end local v7           #translateAnimation:Landroid/view/animation/TranslateAnimation;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5352
    .restart local v0       #cellXCount:I
    .restart local v3       #itemInfo:Lcom/baidu/launcher/data/item/HomeItemInfo;
    .restart local v5       #tag:Ljava/lang/Object;
    :cond_1
    iget v9, v3, Lcom/baidu/launcher/data/item/HomeItemInfo;->cellX:I

    add-int/lit8 v9, v9, 0x1

    mul-int v6, v9, p1

    .restart local v6       #toX:I
    goto :goto_1

    .line 5361
    .end local v0           #cellXCount:I
    .end local v1           #childView:Landroid/view/View;
    .end local v3           #itemInfo:Lcom/baidu/launcher/data/item/HomeItemInfo;
    .end local v5           #tag:Ljava/lang/Object;
    .end local v6           #toX:I
    :cond_2
    return-void
.end method

.method private updateBaiduWidget(Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;)V
    .locals 10
    .parameter "bwhv"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 2764
    invoke-virtual {p1}, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;

    .line 2765
    .local v3, hbwi:Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;
    iget-object v8, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/baidu/launcher/data/AppsDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/AppsDataManager;

    move-result-object v8

    iget v9, v3, Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;->baiduWidgetId:I

    invoke-virtual {v8, v9}, Lcom/baidu/launcher/data/AppsDataManager;->getWidgetByID(I)Lcom/baidu/launcher/data/item/ListWidgetInfo;

    move-result-object v0

    .line 2767
    .local v0, bwi:Lcom/baidu/launcher/data/item/ListWidgetInfo;
    if-eqz v0, :cond_0

    iget-object v8, v0, Lcom/baidu/launcher/data/item/ListWidgetInfo;->dependentOn:Landroid/content/ComponentName;

    if-nez v8, :cond_1

    iget-object v8, v3, Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;->dependPackage:Ljava/lang/String;

    if-nez v8, :cond_1

    .line 2807
    :cond_0
    :goto_0
    return-void

    .line 2768
    :cond_1
    const/4 v1, 0x0

    .line 2770
    .local v1, change:Z
    :try_start_0
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 2771
    .local v4, pm:Landroid/content/pm/PackageManager;
    iget-boolean v8, v3, Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;->isPreset:Z

    if-eqz v8, :cond_3

    .line 2772
    iget-object v8, v3, Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;->dependPackage:Ljava/lang/String;

    invoke-virtual {v4, v8}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    iput-object v8, v3, Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;->replacedIntent:Landroid/content/Intent;

    .line 2773
    iget-object v8, v3, Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;->replacedIntent:Landroid/content/Intent;

    if-eqz v8, :cond_2

    .line 2774
    const/4 v8, 0x0

    iput-boolean v8, v3, Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;->isPreset:Z

    .line 2775
    const/4 v8, 0x3

    iput v8, v3, Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;->status:I

    .line 2776
    iget-boolean v1, v3, Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;->empty:Z

    .line 2777
    const/4 v8, 0x0

    iput-boolean v8, v3, Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;->empty:Z

    .line 2778
    iget-object v8, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/baidu/launcher/data/HomeDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/HomeDataManager;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/baidu/launcher/data/HomeDataManager;->updateItemInDatabase(Lcom/baidu/launcher/data/item/HomeItemInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2796
    .end local v4           #pm:Landroid/content/pm/PackageManager;
    :cond_2
    :goto_1
    if-eqz v1, :cond_0

    .line 2797
    invoke-virtual {p1}, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;->removeAllViews()V

    .line 2798
    iget-boolean v7, v3, Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;->empty:Z

    if-eqz v7, :cond_7

    .line 2799
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    iget v7, v0, Lcom/baidu/launcher/data/item/ListWidgetInfo;->emptyLayout:I

    invoke-virtual {v6, v7, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0

    .line 2780
    .restart local v4       #pm:Landroid/content/pm/PackageManager;
    :cond_3
    :try_start_1
    iget-object v8, v3, Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;->replacedIntent:Landroid/content/Intent;

    if-eqz v8, :cond_5

    .line 2781
    iget-object v8, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mContext:Landroid/content/Context;

    iget-object v9, v3, Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;->dependPackage:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/baidu/launcher/utils/Utilities;->isPackageInsalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    move v5, v6

    .line 2782
    .local v5, uninstalled:Z
    :goto_2
    if-eqz v5, :cond_2

    .line 2783
    invoke-virtual {p1}, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;->onRemove()V

    .line 2784
    iget-object v8, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/baidu/launcher/data/HomeDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/HomeDataManager;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/baidu/launcher/data/HomeDataManager;->deleteItemFromDatabase(Lcom/baidu/launcher/data/item/HomeItemInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2792
    .end local v4           #pm:Landroid/content/pm/PackageManager;
    .end local v5           #uninstalled:Z
    :catch_0
    move-exception v2

    .line 2793
    .local v2, e:Ljava/lang/Exception;
    iget-boolean v8, v3, Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;->empty:Z

    if-nez v8, :cond_6

    move v1, v6

    .line 2794
    :goto_3
    iput-boolean v6, v3, Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;->empty:Z

    goto :goto_1

    .end local v2           #e:Ljava/lang/Exception;
    .restart local v4       #pm:Landroid/content/pm/PackageManager;
    :cond_4
    move v5, v7

    .line 2781
    goto :goto_2

    .line 2788
    :cond_5
    :try_start_2
    iget-object v8, v0, Lcom/baidu/launcher/data/item/ListWidgetInfo;->dependentOn:Landroid/content/ComponentName;

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    .line 2789
    iget-boolean v1, v3, Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;->empty:Z

    .line 2790
    const/4 v8, 0x0

    iput-boolean v8, v3, Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;->empty:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .end local v4           #pm:Landroid/content/pm/PackageManager;
    .restart local v2       #e:Ljava/lang/Exception;
    :cond_6
    move v1, v7

    .line 2793
    goto :goto_3

    .line 2801
    .end local v2           #e:Ljava/lang/Exception;
    :cond_7
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    iget v8, v0, Lcom/baidu/launcher/data/item/ListWidgetInfo;->layout:I

    invoke-virtual {v7, v8, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 2802
    iget v7, v0, Lcom/baidu/launcher/data/item/ListWidgetInfo;->widgetID:I

    if-ne v7, v6, :cond_0

    .line 2803
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/baidu/launcher/ubc/UBC;->reportSearchAdd(Landroid/content/Context;)V

    goto/16 :goto_0
.end method

.method private updateCurrentPageScroll()V
    .locals 3

    .prologue
    .line 580
    iget v1, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildOffset(I)I

    move-result v1

    iget v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/homeview/Workspace;->getRelativeChildOffset(I)I

    move-result v2

    sub-int v0, v1, v2

    .line 581
    .local v0, newX:I
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->scrollTo(II)V

    .line 582
    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1, v0}, Landroid/widget/Scroller;->setFinalX(I)V

    .line 583
    return-void
.end method

.method private updateItemsScreen(Lcom/baidu/launcher/ui/homeview/CellLayout;I)V
    .locals 3
    .parameter "cl"
    .parameter "index"

    .prologue
    .line 3492
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 3493
    invoke-virtual {p1, v0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/data/item/HomeItemInfo;

    .line 3494
    .local v1, info:Lcom/baidu/launcher/data/item/HomeItemInfo;
    if-eqz v1, :cond_0

    .line 3495
    iput p2, v1, Lcom/baidu/launcher/data/item/HomeItemInfo;->screen:I

    .line 3492
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3498
    .end local v1           #info:Lcom/baidu/launcher/data/item/HomeItemInfo;
    :cond_1
    return-void
.end method

.method private updateWallpaperOffset()V
    .locals 3

    .prologue
    .line 725
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mBulletinEmbedder:Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;

    #calls: Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->interceptUpdateWallpaperOffset()Z
    invoke-static {v0}, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->access$000(Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 730
    :goto_0
    return-void

    .line 726
    :cond_0
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollX:I

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getMeasuredWidth()I

    move-result v1

    sget v2, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->screenCount:I

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v1, v2

    if-eq v0, v1, :cond_1

    .line 727
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/logic/ViewManager;->getDragLayer()Lcom/baidu/launcher/ui/dragdrop/DragLayer;

    move-result-object v0

    iget v1, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollX:I

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->changeWallpaperOffset(I)V

    goto :goto_0

    .line 729
    :cond_1
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/logic/ViewManager;->getDragLayer()Lcom/baidu/launcher/ui/dragdrop/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->updateWallpaperOffset()V

    goto :goto_0
.end method

.method private workspaceUpdated(IZ)V
    .locals 3
    .parameter "screen"
    .parameter "delay"

    .prologue
    .line 3086
    new-instance v2, Lcom/baidu/launcher/ui/homeview/Workspace$7;

    invoke-direct {v2, p0, p1}, Lcom/baidu/launcher/ui/homeview/Workspace$7;-><init>(Lcom/baidu/launcher/ui/homeview/Workspace;I)V

    if-eqz p2, :cond_0

    const-wide/16 v0, 0x12c

    :goto_0
    invoke-virtual {p0, v2, v0, v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3094
    return-void

    .line 3086
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public acceptDrop(Lcom/baidu/launcher/ui/dragdrop/DragSource;IIIILcom/baidu/launcher/ui/dragdrop/DragView;Ljava/lang/Object;)Z
    .locals 27
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 2211
    invoke-direct/range {p0 .. p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getCurrentDropLayout()Lcom/baidu/launcher/ui/homeview/CellLayout;

    move-result-object v13

    .line 2212
    .local v13, layout:Lcom/baidu/launcher/ui/homeview/CellLayout;
    if-nez v13, :cond_1

    const/16 v24, 0x0

    .line 2273
    :cond_0
    :goto_0
    return v24

    .line 2213
    :cond_1
    move-object/from16 v0, p1

    instance-of v1, v0, Lcom/baidu/launcher/ui/homeview/DockBar;

    if-eqz v1, :cond_3

    .line 2214
    move-object/from16 v0, p7

    instance-of v1, v0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    if-eqz v1, :cond_3

    move-object/from16 v25, p7

    .line 2215
    check-cast v25, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    .line 2216
    .local v25, info:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    move-object/from16 v0, v25

    iget-boolean v1, v0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->isPreset:Z

    if-eqz v1, :cond_2

    .line 2217
    const/16 v24, 0x1

    goto :goto_0

    .line 2219
    :cond_2
    move-object/from16 v0, v25

    iget-object v1, v0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->intent:Landroid/content/Intent;

    if-nez v1, :cond_3

    .line 2220
    const/16 v24, 0x0

    goto :goto_0

    .line 2225
    .end local v25           #info:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    :cond_3
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragPoint:[F

    .local v7, dragPos:[F
    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    .line 2226
    invoke-direct/range {v1 .. v7}, Lcom/baidu/launcher/ui/homeview/Workspace;->getDragViewVisualCenter(IIIILcom/baidu/launcher/ui/dragdrop/DragView;[F)[F

    .line 2227
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v7, v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->mapPointFromSelfToChild(Lcom/baidu/launcher/ui/homeview/CellLayout;[FLandroid/graphics/Matrix;)V

    .line 2229
    const/4 v11, 0x1

    .line 2230
    .local v11, spanX:I
    const/4 v12, 0x1

    .line 2233
    .local v12, spanY:I
    move-object/from16 v0, p7

    instance-of v1, v0, Lcom/baidu/launcher/data/item/HomeItemInfo;

    if-eqz v1, :cond_5

    move-object/from16 v25, p7

    .line 2234
    check-cast v25, Lcom/baidu/launcher/data/item/HomeItemInfo;

    .line 2235
    .local v25, info:Lcom/baidu/launcher/data/item/HomeItemInfo;
    move-object/from16 v0, v25

    iget v11, v0, Lcom/baidu/launcher/data/item/HomeItemInfo;->spanX:I

    .line 2236
    move-object/from16 v0, v25

    iget v12, v0, Lcom/baidu/launcher/data/item/HomeItemInfo;->spanY:I

    .line 2255
    .end local v25           #info:Lcom/baidu/launcher/data/item/HomeItemInfo;
    :cond_4
    :goto_1
    const/4 v1, 0x0

    aget v1, v7, v1

    float-to-int v9, v1

    const/4 v1, 0x1

    aget v1, v7, v1

    float-to-int v10, v1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTargetCell:[I

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v14}, Lcom/baidu/launcher/ui/homeview/Workspace;->findNearestArea(IIIILcom/baidu/launcher/ui/homeview/CellLayout;[I)[I

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTargetCell:[I

    .line 2258
    const/4 v1, 0x0

    aget v1, v7, v1

    const/4 v2, 0x1

    aget v2, v7, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTargetCell:[I

    invoke-virtual {v13, v1, v2, v3}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getDistanceFromCell(FF[I)F

    move-result v5

    .line 2260
    .local v5, distance:F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTargetCell:[I

    const/4 v6, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p7

    move-object v3, v13

    invoke-virtual/range {v1 .. v6}, Lcom/baidu/launcher/ui/homeview/Workspace;->willCauseFolderAction(Ljava/lang/Object;Lcom/baidu/launcher/ui/homeview/CellLayout;[IFZ)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2262
    const/16 v24, 0x1

    goto/16 :goto_0

    .line 2239
    .end local v5           #distance:F
    :cond_5
    move-object/from16 v0, p7

    instance-of v1, v0, Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v1, :cond_6

    move-object/from16 v25, p7

    .line 2240
    check-cast v25, Landroid/appwidget/AppWidgetProviderInfo;

    .line 2241
    .local v25, info:Landroid/appwidget/AppWidgetProviderInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mContext:Landroid/content/Context;

    move-object/from16 v0, v25

    invoke-static {v1, v0}, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->getSpanForWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)[I

    move-result-object v26

    .line 2243
    .local v26, spans:[I
    const/4 v1, 0x0

    aget v11, v26, v1

    .line 2244
    const/4 v1, 0x1

    aget v12, v26, v1

    .line 2249
    goto :goto_1

    .end local v25           #info:Landroid/appwidget/AppWidgetProviderInfo;
    .end local v26           #spans:[I
    :cond_6
    move-object/from16 v0, p7

    instance-of v1, v0, Lcom/baidu/launcher/data/item/ListWidgetInfo;

    if-eqz v1, :cond_4

    move-object/from16 v25, p7

    .line 2250
    check-cast v25, Lcom/baidu/launcher/data/item/ListWidgetInfo;

    .line 2251
    .local v25, info:Lcom/baidu/launcher/data/item/ListWidgetInfo;
    move-object/from16 v0, v25

    iget v11, v0, Lcom/baidu/launcher/data/item/ListWidgetInfo;->spanX:I

    .line 2252
    move-object/from16 v0, v25

    iget v12, v0, Lcom/baidu/launcher/data/item/ListWidgetInfo;->spanY:I

    goto :goto_1

    .line 2265
    .end local v25           #info:Lcom/baidu/launcher/data/item/ListWidgetInfo;
    .restart local v5       #distance:F
    :cond_7
    const/4 v1, 0x2

    new-array v0, v1, [I

    move-object/from16 v22, v0

    .line 2266
    .local v22, resultSpan:[I
    const/4 v1, 0x0

    aget v1, v7, v1

    float-to-int v14, v1

    const/4 v1, 0x1

    aget v1, v7, v1

    float-to-int v15, v1

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTargetCell:[I

    move-object/from16 v21, v0

    const/16 v23, 0x3

    move/from16 v16, v11

    move/from16 v17, v12

    move/from16 v18, v11

    move/from16 v19, v12

    invoke-virtual/range {v13 .. v23}, Lcom/baidu/launcher/ui/homeview/CellLayout;->createArea(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTargetCell:[I

    .line 2269
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTargetCell:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    if-ltz v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTargetCell:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    if-ltz v1, :cond_8

    const/16 v24, 0x1

    .line 2270
    .local v24, foundCell:Z
    :goto_2
    if-nez v24, :cond_0

    .line 2271
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c004d

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 2269
    .end local v24           #foundCell:Z
    :cond_8
    const/16 v24, 0x0

    goto :goto_2
.end method

.method public addApplicationShortcut(Lcom/baidu/launcher/data/item/HomeItemInfo;Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;)V
    .locals 1
    .parameter "info"
    .parameter "cellInfo"

    .prologue
    .line 1807
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/baidu/launcher/ui/homeview/Workspace;->addApplicationShortcut(Lcom/baidu/launcher/data/item/HomeItemInfo;Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;Z)V

    .line 1808
    return-void
.end method

.method public addApplicationShortcut(Lcom/baidu/launcher/data/item/HomeItemInfo;Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;Z)V
    .locals 8
    .parameter "info"
    .parameter "cellInfo"
    .parameter "insertAtFirst"

    .prologue
    .line 1812
    iget v0, p2, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->screen:I

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/baidu/launcher/ui/homeview/CellLayout;

    .line 1813
    .local v5, layout:Lcom/baidu/launcher/ui/homeview/CellLayout;
    const/4 v0, 0x2

    new-array v7, v0, [I

    .line 1815
    .local v7, result:[I
    iget v0, p2, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->cellX:I

    iget v1, p2, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->cellY:I

    invoke-virtual {v5, v0, v1, v7}, Lcom/baidu/launcher/ui/homeview/CellLayout;->cellToPoint(II[I)V

    .line 1816
    const/4 v0, 0x0

    aget v1, v7, v0

    const/4 v0, 0x1

    aget v2, v7, v0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/baidu/launcher/ui/homeview/Workspace;->onDropExternal(IILcom/baidu/launcher/ui/dragdrop/DragView;Ljava/lang/Object;Lcom/baidu/launcher/ui/homeview/CellLayout;Z)V

    .line 1817
    return-void
.end method

.method public addDropTarget(Lcom/baidu/launcher/ui/dragdrop/DropTarget;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 3065
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragController:Lcom/baidu/launcher/ui/dragdrop/DragController;

    if-eqz v0, :cond_0

    .line 3066
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragController:Lcom/baidu/launcher/ui/dragdrop/DragController;

    invoke-virtual {v0, p1}, Lcom/baidu/launcher/ui/dragdrop/DragController;->addDropTarget(Lcom/baidu/launcher/ui/dragdrop/DropTarget;)V

    .line 3067
    :cond_0
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 3
    .parameter
    .parameter "direction"
    .parameter "focusableMode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 1198
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 1199
    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/logic/ViewManager;->getOpenFolder()Lcom/baidu/launcher/ui/folder/Folder;

    move-result-object v0

    .line 1200
    .local v0, openFolder:Lcom/baidu/launcher/ui/folder/Folder;
    if-nez v0, :cond_2

    .line 1201
    iget v1, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    .line 1202
    const/16 v1, 0x11

    if-ne p2, v1, :cond_1

    .line 1203
    iget v1, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I

    if-lez v1, :cond_0

    .line 1204
    iget v1, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    .line 1215
    .end local v0           #openFolder:Lcom/baidu/launcher/ui/folder/Folder;
    :cond_0
    :goto_0
    return-void

    .line 1206
    .restart local v0       #openFolder:Lcom/baidu/launcher/ui/folder/Folder;
    :cond_1
    const/16 v1, 0x42

    if-ne p2, v1, :cond_0

    .line 1207
    iget v1, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 1208
    iget v1, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    goto :goto_0

    .line 1212
    :cond_2
    invoke-virtual {v0, p1, p2}, Lcom/baidu/launcher/ui/folder/Folder;->addFocusables(Ljava/util/ArrayList;I)V

    goto :goto_0
.end method

.method addInCurrentScreen(Landroid/view/View;IIII)V
    .locals 8
    .parameter "child"
    .parameter "x"
    .parameter "y"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 596
    iget v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/baidu/launcher/ui/homeview/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    .line 597
    return-void
.end method

.method public addInCurrentScreen(Landroid/view/View;IIIIZ)V
    .locals 8
    .parameter "child"
    .parameter "x"
    .parameter "y"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "insert"

    .prologue
    .line 612
    iget v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/baidu/launcher/ui/homeview/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    .line 613
    return-void
.end method

.method public addInScreen(Landroid/view/View;IIIII)V
    .locals 8
    .parameter "child"
    .parameter "screen"
    .parameter "x"
    .parameter "y"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 627
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/baidu/launcher/ui/homeview/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    .line 628
    return-void
.end method

.method public addInScreen(Landroid/view/View;IIIIIZ)V
    .locals 6
    .parameter "child"
    .parameter "screen"
    .parameter "x"
    .parameter "y"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "insert"

    .prologue
    const/4 v4, 0x0

    .line 645
    if-ltz p2, :cond_0

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v3

    if-lt p2, v3, :cond_2

    .line 646
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 647
    .local v2, tag:Ljava/lang/Object;
    instance-of v3, v2, Lcom/baidu/launcher/data/item/HomeItemInfo;

    if-eqz v3, :cond_1

    .line 648
    iget-object v3, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/baidu/launcher/data/HomeDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/HomeDataManager;

    move-result-object v3

    check-cast v2, Lcom/baidu/launcher/data/item/HomeItemInfo;

    .end local v2           #tag:Ljava/lang/Object;
    invoke-virtual {v3, v2}, Lcom/baidu/launcher/data/HomeDataManager;->deleteItemFromDatabase(Lcom/baidu/launcher/data/item/HomeItemInfo;)V

    .line 650
    :cond_1
    const-string v3, "Launcher.Workspace"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The screen must be >= 0 and < "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "); skipping child"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/launcher/utils/LogEx;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    :goto_0
    return-void

    .line 655
    :cond_2
    invoke-direct {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->clearVacantCache()V

    .line 657
    invoke-virtual {p0, p2}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/homeview/CellLayout;

    .line 658
    .local v0, group:Lcom/baidu/launcher/ui/homeview/CellLayout;
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;

    .line 659
    .local v1, lp:Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;
    if-nez v1, :cond_5

    .line 660
    new-instance v1, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;

    .end local v1           #lp:Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;
    invoke-direct {v1, p3, p4, p5, p6}, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;-><init>(IIII)V

    .line 668
    .restart local v1       #lp:Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;
    :goto_1
    if-eqz p7, :cond_6

    move v3, v4

    :goto_2
    invoke-virtual {v0, p1, v3, v1}, Lcom/baidu/launcher/ui/homeview/CellLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 669
    instance-of v3, p1, Lcom/baidu/launcher/ui/folder/Folder;

    if-nez v3, :cond_3

    .line 670
    invoke-virtual {p1, v4}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    .line 671
    iget-object v3, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 672
    iget-object v3, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 674
    :cond_3
    instance-of v3, p1, Lcom/baidu/launcher/ui/dragdrop/DropTarget;

    if-eqz v3, :cond_4

    .line 675
    iget-object v4, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragController:Lcom/baidu/launcher/ui/dragdrop/DragController;

    move-object v3, p1

    check-cast v3, Lcom/baidu/launcher/ui/dragdrop/DropTarget;

    invoke-virtual {v4, v3}, Lcom/baidu/launcher/ui/dragdrop/DragController;->addDropTarget(Lcom/baidu/launcher/ui/dragdrop/DropTarget;)V

    .line 677
    :cond_4
    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->invalidate()V

    .line 678
    instance-of v3, p1, Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;

    invoke-direct {p0, p2, v3}, Lcom/baidu/launcher/ui/homeview/Workspace;->workspaceUpdated(IZ)V

    goto :goto_0

    .line 662
    :cond_5
    iput p3, v1, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellX:I

    .line 663
    iput p4, v1, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellY:I

    .line 664
    iput p5, v1, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellHSpan:I

    .line 665
    iput p6, v1, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellVSpan:I

    goto :goto_1

    .line 668
    :cond_6
    const/4 v3, -0x1

    goto :goto_2
.end method

.method public addScreen()Lcom/baidu/launcher/ui/homeview/CellLayout;
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/16 v4, 0xa

    .line 3516
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v2

    if-lt v2, v4, :cond_1

    .line 3531
    :cond_0
    :goto_0
    return-object v0

    .line 3519
    :cond_1
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .line 3520
    .local v1, nextCount:I
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0300d3

    invoke-virtual {v2, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/homeview/CellLayout;

    .line 3522
    .local v0, cell:Lcom/baidu/launcher/ui/homeview/CellLayout;
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v2}, Lcom/baidu/launcher/ui/homeview/CellLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 3523
    sget v2, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->defaultScreen:I

    iget-object v3, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->updateScreenConfig(IILandroid/content/Context;)V

    .line 3525
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/homeview/Workspace;->addView(Landroid/view/View;)V

    .line 3527
    const/4 v2, 0x0

    iput v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mMaxScrollX:I

    .line 3528
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v2

    if-eq v2, v4, :cond_0

    .line 3529
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/logic/ViewManager;->getThumbnailGroup()Lcom/baidu/launcher/ui/editview/ThumbnailGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->getEditViewIndicator()Lcom/baidu/launcher/ui/editview/EditViewIndicator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/editview/EditViewIndicator;->addScreen()V

    goto :goto_0
.end method

.method public addView(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 4469
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4470
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mIndicator:Lcom/baidu/launcher/ui/homeview/Indicator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mIndicator:Lcom/baidu/launcher/ui/homeview/Indicator;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/Indicator;->getChildCount()I

    move-result v0

    sget v1, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->screenCount:I

    if-ge v0, v1, :cond_0

    .line 4471
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mIndicator:Lcom/baidu/launcher/ui/homeview/Indicator;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/Indicator;->addScreen()V

    .line 4472
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mIndicator:Lcom/baidu/launcher/ui/homeview/Indicator;

    sget v1, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->currentScreen:I

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/homeview/Indicator;->setCurrentScreen(I)V

    .line 4474
    :cond_0
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 493
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 494
    invoke-direct {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->invalidateCachedOffsets()V

    .line 495
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mMaxScrollX:I

    .line 496
    return-void
.end method

.method addWidget(Ljava/lang/Object;I[I)V
    .locals 7
    .parameter "widgetInfo"
    .parameter "screen"
    .parameter "targetXY"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 5292
    instance-of v1, p1, Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 5293
    check-cast v0, Landroid/appwidget/AppWidgetProviderInfo;

    .line 5294
    .local v0, info:Landroid/appwidget/AppWidgetProviderInfo;
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    aget v3, p3, v5

    aget v4, p3, v6

    invoke-static {v1, v2, p2, v3, v4}, Lcom/baidu/launcher/ubc/UBCMetric;->addWidget(Landroid/content/Context;Landroid/content/ComponentName;III)V

    .line 5296
    .end local v0           #info:Landroid/appwidget/AppWidgetProviderInfo;
    :cond_0
    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    aget v2, p3, v5

    aget v3, p3, v6

    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/baidu/launcher/ui/logic/ViewManager;->processAddItem(Ljava/lang/Object;III)V

    .line 5297
    return-void
.end method

.method public allowLongPress()Z
    .locals 1

    .prologue
    .line 2485
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mAllowLongPress:Z

    return v0
.end method

.method public backupCreateFolderViewOnDrop()V
    .locals 2

    .prologue
    .line 2067
    iget v1, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/homeview/CellLayout;

    .line 2068
    .local v0, cellLayout:Lcom/baidu/launcher/ui/homeview/CellLayout;
    if-eqz v0, :cond_0

    .line 2069
    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->backupCreateFolderViewOnDrop()V

    .line 2071
    :cond_0
    return-void
.end method

.method public changeScreensOlder(III)V
    .locals 12
    .parameter "fromIndex"
    .parameter "toIndex"
    .parameter "defaultScreen"

    .prologue
    .line 3461
    if-ne p1, p2, :cond_0

    .line 3489
    :goto_0
    return-void

    .line 3463
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v10

    iget-object v11, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mContext:Landroid/content/Context;

    invoke-static {v10, p3, v11}, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->updateScreenConfig(IILandroid/content/Context;)V

    .line 3464
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3465
    .local v1, changeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    if-le p1, p2, :cond_1

    const/4 v0, 0x1

    .line 3466
    .local v0, ascend:Z
    :goto_1
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 3467
    .local v9, start:I
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v10

    add-int/lit8 v4, v10, 0x1

    .line 3468
    .local v4, end:I
    sub-int v3, v4, v9

    .line 3469
    .local v3, count:I
    move v6, v9

    .line 3470
    .local v6, index:I
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 3471
    .local v8, orignalIndex:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    move v5, v9

    .local v5, i:I
    :goto_2
    if-ge v5, v4, :cond_2

    .line 3472
    invoke-virtual {p0, v5}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3473
    .local v2, child:Landroid/view/View;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3474
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3471
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 3465
    .end local v0           #ascend:Z
    .end local v2           #child:Landroid/view/View;
    .end local v3           #count:I
    .end local v4           #end:I
    .end local v5           #i:I
    .end local v6           #index:I
    .end local v8           #orignalIndex:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    .end local v9           #start:I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 3476
    .restart local v0       #ascend:Z
    .restart local v3       #count:I
    .restart local v4       #end:I
    .restart local v5       #i:I
    .restart local v6       #index:I
    .restart local v8       #orignalIndex:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    .restart local v9       #start:I
    :cond_2
    invoke-virtual {p0, v9, v3}, Lcom/baidu/launcher/ui/homeview/Workspace;->removeViews(II)V

    .line 3477
    if-eqz v0, :cond_3

    .line 3478
    const/4 v10, 0x0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3482
    :goto_3
    const/4 v5, 0x0

    :goto_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v5, v10, :cond_4

    .line 3483
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/ui/homeview/CellLayout;

    .line 3484
    .local v2, child:Lcom/baidu/launcher/ui/homeview/CellLayout;
    invoke-direct {p0, v2, v6}, Lcom/baidu/launcher/ui/homeview/Workspace;->updateItemsScreen(Lcom/baidu/launcher/ui/homeview/CellLayout;I)V

    .line 3485
    iget-object v10, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v2, v10}, Lcom/baidu/launcher/ui/homeview/CellLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 3486
    add-int/lit8 v7, v6, 0x1

    .end local v6           #index:I
    .local v7, index:I
    invoke-virtual {p0, v2, v6}, Lcom/baidu/launcher/ui/homeview/Workspace;->addView(Landroid/view/View;I)V

    .line 3482
    add-int/lit8 v5, v5, 0x1

    move v6, v7

    .end local v7           #index:I
    .restart local v6       #index:I
    goto :goto_4

    .line 3480
    .end local v2           #child:Lcom/baidu/launcher/ui/homeview/CellLayout;
    :cond_3
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 3488
    :cond_4
    iget-object v10, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/baidu/launcher/data/HomeDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/HomeDataManager;

    move-result-object v10

    invoke-virtual {v10, p1, p2}, Lcom/baidu/launcher/data/HomeDataManager;->updateContentScreenFromDatabase(II)V

    goto :goto_0
.end method

.method public checkCreateFolderAction(Ljava/lang/Object;)Z
    .locals 2
    .parameter "dragInfo"

    .prologue
    .line 2062
    iget v1, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/homeview/CellLayout;

    .line 2063
    .local v0, cellLayout:Lcom/baidu/launcher/ui/homeview/CellLayout;
    invoke-virtual {v0, p1}, Lcom/baidu/launcher/ui/homeview/CellLayout;->createFolderOnDropCell(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public clearChildrenCache()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1463
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v0

    .line 1464
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1465
    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/ui/homeview/CellLayout;

    .line 1466
    .local v2, layout:Lcom/baidu/launcher/ui/homeview/CellLayout;
    invoke-virtual {v2, v4}, Lcom/baidu/launcher/ui/homeview/CellLayout;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 1468
    invoke-virtual {v2, v4}, Lcom/baidu/launcher/ui/homeview/CellLayout;->onScroll(Z)V

    .line 1464
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1470
    .end local v2           #layout:Lcom/baidu/launcher/ui/homeview/CellLayout;
    :cond_0
    iget-object v3, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mBulletinEmbedder:Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;

    invoke-virtual {v3, v4}, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->enablePanelCache(Z)V

    .line 1471
    return-void
.end method

.method public clearOutLine()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4101
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragTargetLayout:Lcom/baidu/launcher/ui/homeview/CellLayout;

    if-eqz v0, :cond_0

    .line 4102
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragTargetLayout:Lcom/baidu/launcher/ui/homeview/CellLayout;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->clearDragOutlines()V

    .line 4104
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 4105
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 4107
    :cond_1
    iput-object v1, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    .line 4108
    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->setCurrentDropLayout(Lcom/baidu/launcher/ui/homeview/CellLayout;)V

    .line 4109
    return-void
.end method

.method public computeScroll()V
    .locals 13

    .prologue
    const/4 v12, -0x2

    const v11, 0x4e6e6b28

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 756
    sget-boolean v9, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->loop:Z

    if-eqz v9, :cond_3

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v9

    if-le v9, v7, :cond_3

    move v0, v7

    .line 757
    .local v0, LOOP_SCROLLING:Z
    :goto_0
    sget v9, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->scrollType:I

    const/4 v10, 0x6

    if-ne v9, v10, :cond_4

    .line 758
    iget v9, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTouchState:I

    if-eq v9, v7, :cond_0

    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->isFinished()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 760
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->setRandEffectStype()V

    .line 765
    :cond_0
    :goto_1
    iget v5, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollType:I

    .line 766
    .local v5, scrollType:I
    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 767
    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->getCurrX()I

    move-result v6

    .line 768
    .local v6, scrollX:I
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    long-to-float v9, v9

    div-float/2addr v9, v11

    iput v9, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mSmoothingTime:F

    .line 769
    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->getCurrY()I

    move-result v9

    iput v9, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollY:I

    .line 770
    if-eqz v0, :cond_5

    if-ltz v6, :cond_1

    iget v9, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mMaxScrollX:I

    if-le v6, v9, :cond_5

    :cond_1
    move v3, v7

    .line 771
    .local v3, isLoop:Z
    :goto_2
    iget v8, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollX:I

    if-ne v8, v6, :cond_6

    if-nez v3, :cond_6

    if-eq v5, v7, :cond_6

    .line 773
    iget-object v7, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mSnapRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v7}, Lcom/baidu/launcher/ui/homeview/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 774
    iget-object v7, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mSnapRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v7}, Lcom/baidu/launcher/ui/homeview/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 837
    .end local v3           #isLoop:Z
    .end local v6           #scrollX:I
    :cond_2
    :goto_3
    return-void

    .end local v0           #LOOP_SCROLLING:Z
    .end local v5           #scrollType:I
    :cond_3
    move v0, v8

    .line 756
    goto :goto_0

    .line 763
    .restart local v0       #LOOP_SCROLLING:Z
    :cond_4
    sget v9, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->scrollType:I

    iput v9, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollType:I

    goto :goto_1

    .restart local v5       #scrollType:I
    .restart local v6       #scrollX:I
    :cond_5
    move v3, v8

    .line 770
    goto :goto_2

    .line 777
    .restart local v3       #isLoop:Z
    :cond_6
    iget-object v8, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mSnapRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v8}, Lcom/baidu/launcher/ui/homeview/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 778
    iput v6, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollX:I

    int-to-float v8, v6

    iput v8, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTouchX:F

    .line 779
    if-nez v0, :cond_7

    if-eqz v5, :cond_8

    :cond_7
    iget-object v8, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mBulletinEmbedder:Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;

    invoke-virtual {v8}, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->canOverScroll()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 780
    :cond_8
    invoke-direct {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->checkForOverScroll()V

    .line 782
    :cond_9
    iget-object v8, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mBulletinEmbedder:Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;

    invoke-virtual {v8}, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->onScrolled()V

    .line 783
    invoke-direct {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->updateWallpaperOffset()V

    .line 784
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->postInvalidate()V

    .line 832
    .end local v3           #isLoop:Z
    .end local v6           #scrollX:I
    :cond_a
    :goto_4
    iget v8, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollX:I

    invoke-direct {p0, v8, v5}, Lcom/baidu/launcher/ui/homeview/Workspace;->computeScrollData(II)V

    .line 833
    if-ne v5, v7, :cond_2

    .line 834
    invoke-direct {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->elasticAnimation()V

    goto :goto_3

    .line 785
    :cond_b
    iget v9, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mNextScreen:I

    if-eq v9, v12, :cond_f

    .line 786
    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mBulletinEmbedder:Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;

    invoke-virtual {v9}, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->isBulletinVisible()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 787
    iget v9, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mNextScreen:I

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I

    .line 791
    :goto_5
    iget v9, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I

    if-nez v9, :cond_e

    .line 792
    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    invoke-virtual {v9, v8}, Lcom/baidu/launcher/app/Launcher;->setStatusBarTransparent(Z)V

    .line 798
    :cond_c
    :goto_6
    iget-object v8, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mBulletinEmbedder:Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;

    iget v9, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I

    invoke-virtual {v8, v9}, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->setIndicatorScreen(I)V

    .line 799
    iget v8, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I

    sput v8, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->currentScreen:I

    .line 800
    iput v12, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mNextScreen:I

    .line 801
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->clearChildrenCache()V

    .line 802
    iget v8, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTouchState:I

    if-nez v8, :cond_a

    iget-object v8, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDelayedResizeRunnable:Ljava/lang/Runnable;

    if-eqz v8, :cond_a

    .line 803
    iget-object v8, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDelayedResizeRunnable:Ljava/lang/Runnable;

    invoke-interface {v8}, Ljava/lang/Runnable;->run()V

    .line 804
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDelayedResizeRunnable:Ljava/lang/Runnable;

    goto :goto_4

    .line 789
    :cond_d
    iget v9, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mNextScreen:I

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I

    goto :goto_5

    .line 794
    :cond_e
    iget-object v8, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v8}, Lcom/baidu/launcher/ui/logic/ViewManager;->getCurrentView()Lcom/baidu/launcher/ui/logic/IBaseView;

    move-result-object v8

    instance-of v8, v8, Lcom/baidu/launcher/ui/homeview/HomeView;

    if-eqz v8, :cond_c

    .line 795
    iget-object v8, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    invoke-virtual {v8, v7}, Lcom/baidu/launcher/app/Launcher;->setStatusBarTransparent(Z)V

    goto :goto_6

    .line 806
    :cond_f
    iget v8, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTouchState:I

    if-ne v8, v7, :cond_a

    .line 807
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    long-to-float v8, v8

    div-float v4, v8, v11

    .line 809
    .local v4, now:F
    iget v8, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTouchX:F

    iget v9, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollX:I

    int-to-float v9, v9

    sub-float v2, v8, v9

    .line 811
    .local v2, dx:F
    float-to-int v1, v2

    .line 812
    .local v1, delta:I
    iget v8, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCorrectionFactor:I

    if-ge v8, v7, :cond_10

    .line 813
    iget v8, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCorrectionFactor:I

    rsub-int/lit8 v8, v8, 0x2

    div-int/2addr v1, v8

    .line 814
    iget v8, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCorrectionFactor:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCorrectionFactor:I

    .line 816
    :cond_10
    iget v8, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollX:I

    add-int/2addr v8, v1

    iput v8, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollX:I

    .line 817
    iput v4, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mSmoothingTime:F

    .line 818
    if-nez v0, :cond_11

    if-eqz v5, :cond_12

    :cond_11
    iget-object v8, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mBulletinEmbedder:Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;

    invoke-virtual {v8}, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->canOverScroll()Z

    move-result v8

    if-eqz v8, :cond_13

    .line 819
    :cond_12
    invoke-direct {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->checkForOverScroll()V

    .line 824
    :cond_13
    iget-object v8, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mBulletinEmbedder:Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;

    invoke-virtual {v8}, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->onScrolled()V

    .line 825
    float-to-int v8, v2

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-lez v8, :cond_a

    .line 826
    invoke-direct {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->updateWallpaperOffset()V

    .line 827
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->postInvalidate()V

    goto/16 :goto_4
.end method

.method public createFolder(Landroid/view/View;)V
    .locals 13
    .parameter "view"

    .prologue
    .line 3009
    instance-of v2, p1, Lcom/baidu/launcher/ui/folder/FolderIcon;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 3010
    check-cast v0, Lcom/baidu/launcher/ui/folder/FolderIcon;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragController:Lcom/baidu/launcher/ui/dragdrop/DragController;

    invoke-virtual {v7}, Lcom/baidu/launcher/ui/dragdrop/DragController;->getDragInfo()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual/range {v0 .. v7}, Lcom/baidu/launcher/ui/folder/FolderIcon;->onDrop(Lcom/baidu/launcher/ui/dragdrop/DragSource;IIIILcom/baidu/launcher/ui/dragdrop/DragView;Ljava/lang/Object;)V

    .line 3044
    :goto_0
    return-void

    .line 3012
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    .line 3013
    .local v11, info:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    new-instance v1, Lcom/baidu/launcher/data/item/HomeFolderInfo;

    invoke-direct {v1}, Lcom/baidu/launcher/data/item/HomeFolderInfo;-><init>()V

    .line 3014
    .local v1, folderInfo:Lcom/baidu/launcher/data/item/HomeFolderInfo;
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/launcher/data/HomeDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/HomeDataManager;

    move-result-object v0

    .line 3015
    .local v0, dataManager:Lcom/baidu/launcher/data/HomeDataManager;
    const-wide/16 v2, -0x64

    iget v4, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I

    iget v5, v11, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->cellX:I

    iget v6, v11, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->cellY:I

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/baidu/launcher/data/HomeDataManager;->addItemToDatabase(Lcom/baidu/launcher/data/item/HomeItemInfo;JIIIZ)V

    .line 3017
    const/4 v2, 0x0

    iput v2, v11, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->cellX:I

    .line 3018
    invoke-virtual {v1, v11}, Lcom/baidu/launcher/data/item/HomeFolderInfo;->add(Lcom/baidu/launcher/data/item/BaseItemInfo;)V

    .line 3019
    iget-wide v4, v1, Lcom/baidu/launcher/data/item/HomeFolderInfo;->id:J

    const/4 v6, 0x0

    invoke-virtual {v1}, Lcom/baidu/launcher/data/item/HomeFolderInfo;->getSize()I

    move-result v2

    add-int/lit8 v7, v2, -0x1

    const/4 v8, 0x0

    move-object v2, v0

    move-object v3, v11

    invoke-virtual/range {v2 .. v8}, Lcom/baidu/launcher/data/HomeDataManager;->addOrMoveItemInDatabase(Lcom/baidu/launcher/data/item/HomeItemInfo;JIII)V

    .line 3021
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    .line 3022
    .local v12, vg:Landroid/view/ViewGroup;
    invoke-virtual {v12, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3023
    invoke-virtual {v12}, Landroid/view/ViewGroup;->clearDisappearingChildren()V

    .line 3025
    const v4, 0x7f030057

    iget-object v5, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v4, v5, v2, v1}, Lcom/baidu/launcher/ui/folder/FolderIcon;->fromXml(ILandroid/content/Context;Landroid/view/ViewGroup;Lcom/baidu/launcher/data/item/IFolderInfo;)Lcom/baidu/launcher/ui/folder/FolderIcon;

    move-result-object v3

    .line 3027
    .local v3, folderIcon:Lcom/baidu/launcher/ui/folder/FolderIcon;
    sget-boolean v2, Lcom/baidu/launcher/utils/Utilities;->useShadow:Z

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->show_icon_floor:Z

    if-eqz v2, :cond_1

    .line 3028
    const v2, 0x7f020314

    invoke-virtual {v3, v2}, Lcom/baidu/launcher/ui/folder/FolderIcon;->setBackgroundResource(I)V

    .line 3030
    :cond_1
    iget v4, v1, Lcom/baidu/launcher/data/item/HomeFolderInfo;->cellX:I

    iget v5, v1, Lcom/baidu/launcher/data/item/HomeFolderInfo;->cellY:I

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/baidu/launcher/ui/homeview/Workspace;->addInCurrentScreen(Landroid/view/View;IIII)V

    .line 3032
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragController:Lcom/baidu/launcher/ui/dragdrop/DragController;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/dragdrop/DragController;->getDragInfo()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual/range {v3 .. v10}, Lcom/baidu/launcher/ui/folder/FolderIcon;->onDrop(Lcom/baidu/launcher/ui/dragdrop/DragSource;IIIILcom/baidu/launcher/ui/dragdrop/DragView;Ljava/lang/Object;)V

    .line 3035
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v2, v1, v4}, Lcom/baidu/launcher/ubc/UBCMetric;->aboutFolder(Landroid/content/Context;Lcom/baidu/launcher/data/item/HomeFolderInfo;I)V

    goto :goto_0
.end method

.method public dismissDockbar()V
    .locals 2

    .prologue
    .line 4533
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDockbar:Landroid/view/View;

    if-nez v0, :cond_0

    .line 4536
    :goto_0
    return-void

    .line 4534
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDockbar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4535
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDockbar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 25
    .parameter "canvas"

    .prologue
    .line 933
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mBulletinEmbedder:Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->interceptDispatchDraw(Landroid/graphics/Canvas;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1025
    :cond_0
    :goto_0
    return-void

    .line 935
    :cond_1
    const/16 v17, 0x0

    .line 936
    .local v17, restore:Z
    const/16 v18, 0x0

    .line 941
    .local v18, restoreCount:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mShowingPreview:Z

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mPreviewClosing:Z

    if-eqz v2, :cond_5

    .line 943
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mPreviewStartTime:J

    const-wide/16 v23, 0x0

    cmp-long v2, v4, v23

    if-nez v2, :cond_3

    .line 944
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mPreviewStartTime:J

    .line 945
    const-wide/16 v10, 0x0

    .line 949
    .local v10, currentTime:J
    :goto_1
    const-wide/16 v4, 0x12c

    cmp-long v2, v10, v4

    if-ltz v2, :cond_4

    .line 950
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mIsAnimating:Z

    .line 951
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mShowingPreview:Z

    .line 952
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mPreviewClosing:Z

    .line 953
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mThumbnailRect:Landroid/graphics/RectF;

    .line 954
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->clearChildrenCache()V

    .line 955
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->postInvalidate()V

    .line 959
    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getDrawingTime()J

    move-result-wide v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/baidu/launcher/ui/homeview/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 1022
    .end local v10           #currentTime:J
    :cond_2
    :goto_3
    if-eqz v17, :cond_0

    .line 1023
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    .line 947
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mPreviewStartTime:J

    move-wide/from16 v23, v0

    sub-long v10, v4, v23

    .restart local v10       #currentTime:J
    goto :goto_1

    .line 957
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->postInvalidate()V

    goto :goto_2

    .line 962
    .end local v10           #currentTime:J
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v14, v2, 0x2

    .line 966
    .local v14, halfScreenSize:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mOverScrollX:I

    add-int v20, v2, v14

    .line 968
    .local v20, screenCenter:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mLastScreenCenter:I

    move/from16 v0, v20

    if-eq v0, v2, :cond_6

    .line 969
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->screenScrolled(I)V

    .line 970
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/baidu/launcher/ui/homeview/Workspace;->mLastScreenCenter:I

    .line 973
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTouchState:I

    const/4 v4, 0x1

    if-eq v2, v4, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mNextScreen:I

    const/4 v4, -0x2

    if-ne v2, v4, :cond_7

    const/4 v13, 0x1

    .line 976
    .local v13, fastDraw:Z
    :goto_4
    if-eqz v13, :cond_8

    .line 977
    move-object/from16 v0, p0

    iget v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/ui/homeview/CellLayout;

    .line 978
    .local v3, child:Lcom/baidu/launcher/ui/homeview/CellLayout;
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getDrawingTime()J

    move-result-wide v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/baidu/launcher/ui/homeview/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_3

    .line 973
    .end local v3           #child:Lcom/baidu/launcher/ui/homeview/CellLayout;
    .end local v13           #fastDraw:Z
    :cond_7
    const/4 v13, 0x0

    goto :goto_4

    .line 981
    .restart local v13       #fastDraw:Z
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getWidth()I

    move-result v22

    .line 982
    .local v22, width:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollX:I

    int-to-float v2, v2

    move/from16 v0, v22

    int-to-float v4, v0

    div-float/2addr v2, v4

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-float v0, v4

    move/from16 v21, v0

    .line 983
    .local v21, scrollPos:F
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v9

    .line 984
    .local v9, childCount:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollX:I

    rem-int v2, v2, v22

    if-eqz v2, :cond_d

    const/4 v12, 0x1

    .line 987
    .local v12, drawRight:Z
    :goto_5
    const/4 v15, 0x0

    .line 988
    .local v15, isScrollToRight:Z
    sget-boolean v2, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->loop:Z

    if-eqz v2, :cond_e

    const/4 v2, 0x1

    if-le v9, v2, :cond_e

    const/4 v7, 0x1

    .line 989
    .local v7, loop:Z
    :goto_6
    const/4 v2, 0x0

    cmpg-float v2, v21, v2

    if-gez v2, :cond_f

    if-eqz v7, :cond_f

    .line 990
    add-int/lit8 v16, v9, -0x1

    .line 991
    .local v16, leftScreen:I
    const/16 v19, 0x0

    .line 1001
    .local v19, rightScreen:I
    :cond_9
    :goto_7
    const/4 v8, 0x0

    .line 1002
    .local v8, scrollType:I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->isScreenNoValid(I)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1003
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/ui/homeview/CellLayout;

    .line 1004
    .restart local v3       #child:Lcom/baidu/launcher/ui/homeview/CellLayout;
    if-nez v19, :cond_a

    if-nez v15, :cond_a

    .line 1005
    const/4 v8, 0x1

    .line 1007
    :cond_a
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollType:I

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/baidu/launcher/ui/homeview/Workspace;->scrollAnimation(Landroid/view/View;Landroid/graphics/Canvas;IIZI)V

    .line 1010
    .end local v3           #child:Lcom/baidu/launcher/ui/homeview/CellLayout;
    :cond_b
    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->isScreenNoValid(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1011
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/ui/homeview/CellLayout;

    .line 1012
    .restart local v3       #child:Lcom/baidu/launcher/ui/homeview/CellLayout;
    if-nez v19, :cond_c

    if-eqz v15, :cond_c

    .line 1013
    const/4 v8, 0x2

    .line 1015
    :cond_c
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollType:I

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/baidu/launcher/ui/homeview/Workspace;->scrollAnimation(Landroid/view/View;Landroid/graphics/Canvas;IIZI)V

    goto/16 :goto_3

    .line 984
    .end local v3           #child:Lcom/baidu/launcher/ui/homeview/CellLayout;
    .end local v7           #loop:Z
    .end local v8           #scrollType:I
    .end local v12           #drawRight:Z
    .end local v15           #isScrollToRight:Z
    .end local v16           #leftScreen:I
    .end local v19           #rightScreen:I
    :cond_d
    const/4 v12, 0x0

    goto :goto_5

    .line 988
    .restart local v12       #drawRight:Z
    .restart local v15       #isScrollToRight:Z
    :cond_e
    const/4 v7, 0x0

    goto :goto_6

    .line 993
    .restart local v7       #loop:Z
    :cond_f
    move/from16 v0, v21

    float-to-int v2, v0

    add-int/lit8 v4, v9, -0x1

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 994
    .restart local v16       #leftScreen:I
    add-int/lit8 v19, v16, 0x1

    .line 995
    .restart local v19       #rightScreen:I
    if-eqz v7, :cond_9

    .line 996
    rem-int v19, v19, v9

    .line 997
    const/4 v15, 0x1

    goto :goto_7
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 1219
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 1220
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1221
    const/4 v0, 0x0

    .line 1224
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 3
    .parameter "focused"
    .parameter "direction"

    .prologue
    const/4 v0, 0x1

    .line 1179
    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/logic/ViewManager;->isFolderOpened()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1193
    :goto_0
    return v0

    .line 1182
    :cond_0
    const/16 v1, 0x11

    if-ne p2, v1, :cond_1

    .line 1183
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getCurrentScreen()I

    move-result v1

    if-lez v1, :cond_2

    .line 1184
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getCurrentScreen()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->snapToScreen(I)V

    goto :goto_0

    .line 1187
    :cond_1
    const/16 v1, 0x42

    if-ne p2, v1, :cond_2

    .line 1188
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getCurrentScreen()I

    move-result v1

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2

    .line 1189
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getCurrentScreen()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->snapToScreen(I)V

    goto :goto_0

    .line 1193
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method distanceInfluenceForSnapDuration(F)F
    .locals 4
    .parameter "f"

    .prologue
    .line 1749
    const/high16 v0, 0x3f00

    sub-float/2addr p1, v0

    .line 1750
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 1751
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public doDoubleClick(Landroid/graphics/Rect;)V
    .locals 8
    .parameter "sourceBounds"

    .prologue
    const/4 v7, 0x1

    .line 4421
    invoke-static {}, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->getDoubleclickType()I

    move-result v4

    .line 4422
    .local v4, type:I
    packed-switch v4, :pswitch_data_0

    .line 4453
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 4426
    :pswitch_1
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->isScrolling()Z

    move-result v5

    if-nez v5, :cond_0

    .line 4427
    iget-object v5, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mContext:Landroid/content/Context;

    const-string v6, "device_policy"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    .line 4428
    .local v3, policyManager:Landroid/app/admin/DevicePolicyManager;
    new-instance v0, Landroid/content/ComponentName;

    iget-object v5, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mContext:Landroid/content/Context;

    const-class v6, Lcom/baidu/launcher/app/LockScreenReceiver;

    invoke-direct {v0, v5, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4431
    .local v0, componentName:Landroid/content/ComponentName;
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {v3, v0, v5}, Landroid/app/admin/DevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;Z)V

    .line 4432
    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->lockNow()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4433
    :catch_0
    move-exception v1

    .line 4434
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 4442
    .end local v0           #componentName:Landroid/content/ComponentName;
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #policyManager:Landroid/app/admin/DevicePolicyManager;
    :pswitch_2
    invoke-static {}, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->getDoubleclickAction()Landroid/content/Intent;

    move-result-object v2

    .line 4443
    .local v2, intent:Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 4445
    :try_start_1
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 4446
    iget-object v5, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mContext:Landroid/content/Context;

    check-cast v5, Lcom/baidu/launcher/app/Launcher;

    invoke-virtual {v5, v2}, Lcom/baidu/launcher/app/Launcher;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 4447
    :catch_1
    move-exception v1

    .line 4448
    .restart local v1       #e:Ljava/lang/Exception;
    iget-object v5, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mContext:Landroid/content/Context;

    const v6, 0x7f0c0210

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 4422
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public doUpDownGesture(I)V
    .locals 5
    .parameter "diff"

    .prologue
    .line 4395
    sget-boolean v3, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->gestureDown:Z

    if-eqz v3, :cond_2

    if-lez p1, :cond_2

    .line 4397
    :try_start_0
    iget-object v3, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mContext:Landroid/content/Context;

    const-string v4, "statusbar"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 4398
    .local v1, service:Ljava/lang/Object;
    const-string v3, "android.app.StatusBarManager"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 4399
    .local v2, statusbarManager:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v2, :cond_0

    .line 4400
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKJBMR1()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4401
    const-string v3, "Launcher.Workspace"

    const-string v4, "isSDKJBMR1:statusbarManager:expandNotificationsPanel"

    invoke-static {v3, v4}, Lcom/baidu/launcher/utils/LogEx;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4402
    const-string v3, "expandNotificationsPanel"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 4403
    .local v0, method:Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4418
    .end local v0           #method:Ljava/lang/reflect/Method;
    .end local v1           #service:Ljava/lang/Object;
    .end local v2           #statusbarManager:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    return-void

    .line 4405
    .restart local v1       #service:Ljava/lang/Object;
    .restart local v2       #statusbarManager:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_1
    const-string v3, "expand"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 4406
    .restart local v0       #method:Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4410
    .end local v0           #method:Ljava/lang/reflect/Method;
    .end local v1           #service:Ljava/lang/Object;
    .end local v2           #statusbarManager:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_0
    move-exception v3

    goto :goto_0

    .line 4414
    :cond_2
    sget-boolean v3, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->gestureUp:Z

    if-eqz v3, :cond_0

    if-gez p1, :cond_0

    .line 4415
    iget-object v3, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/baidu/launcher/app/Launcher;

    invoke-virtual {v3}, Lcom/baidu/launcher/app/Launcher;->prepareMenu()Z

    .line 4416
    iget-object v3, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/baidu/launcher/app/Launcher;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/baidu/launcher/app/Launcher;->showMenu(Z)Z

    goto :goto_0
.end method

.method public dragWithWidget(Landroid/graphics/Bitmap;IILjava/lang/Object;)V
    .locals 8
    .parameter "preview"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "info"

    .prologue
    .line 4112
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    .line 4113
    .local v2, canvas:Landroid/graphics/Canvas;
    invoke-virtual {p0, p2, p3, p4}, Lcom/baidu/launcher/ui/homeview/Workspace;->estimateItemSize(IILjava/lang/Object;)[I

    move-result-object v7

    .line 4114
    .local v7, size:[I
    const/4 v3, 0x2

    const/4 v0, 0x0

    aget v4, v7, v0

    const/4 v0, 0x1

    aget v5, v7, v0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/baidu/launcher/ui/homeview/Workspace;->createDragOutline(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;IIILandroid/graphics/Paint;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    .line 4116
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 17
    .parameter "canvas"
    .parameter "child"
    .parameter "drawingTime"

    .prologue
    .line 1033
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v7

    .line 1034
    .local v7, saveCount:I
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mShowingPreview:Z

    if-eqz v12, :cond_2

    .line 1035
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mIsAnimating:Z

    if-eqz v12, :cond_1

    .line 1036
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mPreviewStartTime:J

    sub-long v3, v12, v14

    .line 1037
    .local v3, currentTime:J
    new-instance v5, Landroid/graphics/Rect;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v15

    invoke-direct {v5, v12, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1038
    .local v5, r1:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->getScaledChild(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object v6

    .line 1039
    .local v6, r2:Landroid/graphics/RectF;
    const/4 v10, 0x0

    .line 1040
    .local v10, x:F
    const/4 v11, 0x0

    .line 1041
    .local v11, y:F
    const/4 v9, 0x0

    .line 1042
    .local v9, width:F
    const/high16 v2, 0x4334

    .line 1043
    .local v2, alpha:F
    long-to-float v12, v3

    const/high16 v13, 0x4334

    const/4 v14, 0x0

    const/high16 v15, 0x4396

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/baidu/launcher/ui/homeview/Workspace;->easeOut(FFFF)F

    move-result v2

    .line 1044
    long-to-float v12, v3

    iget v13, v6, Landroid/graphics/RectF;->left:F

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v14

    int-to-float v14, v14

    const/high16 v15, 0x4396

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/baidu/launcher/ui/homeview/Workspace;->easeOut(FFFF)F

    move-result v10

    .line 1045
    long-to-float v12, v3

    iget v13, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v14

    int-to-float v14, v14

    const/high16 v15, 0x4396

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/baidu/launcher/ui/homeview/Workspace;->easeOut(FFFF)F

    move-result v11

    .line 1046
    long-to-float v12, v3

    iget v13, v6, Landroid/graphics/RectF;->right:F

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v14

    int-to-float v14, v14

    const/high16 v15, 0x4396

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/baidu/launcher/ui/homeview/Workspace;->easeOut(FFFF)F

    move-result v9

    .line 1048
    sub-float v12, v9, v10

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v13

    int-to-float v13, v13

    div-float v8, v12, v13

    .line 1049
    .local v8, scale:F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1050
    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1051
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v8}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1052
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mPaint:Landroid/graphics/Paint;

    float-to-int v13, v2

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1053
    new-instance v12, Landroid/graphics/RectF;

    iget v13, v5, Landroid/graphics/Rect;->left:I

    int-to-float v13, v13

    iget v14, v5, Landroid/graphics/Rect;->top:I

    int-to-float v14, v14

    iget v15, v5, Landroid/graphics/Rect;->right:I

    int-to-float v15, v15

    iget v0, v5, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    invoke-direct/range {v12 .. v16}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v13, 0x40a0

    const/high16 v14, 0x40a0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v14, v15}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1055
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mPaint:Landroid/graphics/Paint;

    const/16 v13, 0xff

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1056
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 1057
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1068
    .end local v2           #alpha:F
    .end local v3           #currentTime:J
    .end local v5           #r1:Landroid/graphics/Rect;
    .end local v6           #r2:Landroid/graphics/RectF;
    .end local v8           #scale:F
    .end local v9           #width:F
    .end local v10           #x:F
    .end local v11           #y:F
    :cond_0
    :goto_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1069
    const/4 v12, 0x1

    :goto_1
    return v12

    .line 1060
    :cond_1
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 1063
    :cond_2
    if-eqz p2, :cond_0

    .line 1064
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1065
    invoke-super/range {p0 .. p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v12

    goto :goto_1
.end method

.method public enableChildrenCache(I)V
    .locals 3
    .parameter "index"

    .prologue
    const/4 v2, 0x1

    .line 3225
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    if-nez p1, :cond_1

    .line 3231
    :cond_0
    :goto_0
    return-void

    .line 3226
    :cond_1
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/homeview/CellLayout;

    .line 3227
    .local v0, layout:Lcom/baidu/launcher/ui/homeview/CellLayout;
    invoke-virtual {v0, v2}, Lcom/baidu/launcher/ui/homeview/CellLayout;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 3228
    invoke-virtual {v0, v2}, Lcom/baidu/launcher/ui/homeview/CellLayout;->setChildrenDrawingCacheEnabled(Z)V

    .line 3230
    invoke-virtual {v0, v2}, Lcom/baidu/launcher/ui/homeview/CellLayout;->onScroll(Z)V

    goto :goto_0
.end method

.method enableChildrenCache(II)V
    .locals 7
    .parameter "fromScreen"
    .parameter "toScreen"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1429
    if-le p1, p2, :cond_0

    .line 1430
    move v3, p1

    .line 1431
    .local v3, temp:I
    move p1, p2

    .line 1432
    move p2, v3

    .line 1435
    .end local v3           #temp:I
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v0

    .line 1437
    .local v0, count:I
    invoke-static {p1, v5}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1438
    add-int/lit8 v6, v0, -0x1

    invoke-static {p2, v6}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 1440
    move v1, p1

    .local v1, i:I
    :goto_0
    if-gt v1, p2, :cond_1

    .line 1441
    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/ui/homeview/CellLayout;

    .line 1442
    .local v2, layout:Lcom/baidu/launcher/ui/homeview/CellLayout;
    invoke-virtual {v2, v4}, Lcom/baidu/launcher/ui/homeview/CellLayout;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 1443
    invoke-virtual {v2, v4}, Lcom/baidu/launcher/ui/homeview/CellLayout;->setChildrenDrawingCacheEnabled(Z)V

    .line 1446
    invoke-virtual {v2, v4}, Lcom/baidu/launcher/ui/homeview/CellLayout;->onScroll(Z)V

    .line 1440
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1448
    .end local v2           #layout:Lcom/baidu/launcher/ui/homeview/CellLayout;
    :cond_1
    iget-object v6, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mBulletinEmbedder:Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;

    if-nez p1, :cond_2

    :goto_1
    invoke-virtual {v6, v4}, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->enablePanelCache(Z)V

    .line 1449
    return-void

    :cond_2
    move v4, v5

    .line 1448
    goto :goto_1
.end method

.method public endScroll(I)V
    .locals 1
    .parameter "screen"

    .prologue
    .line 749
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTouchState:I

    .line 751
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/homeview/Workspace;->snapToScreen(I)V

    .line 752
    return-void
.end method

.method public estimateCellHeight(I)I
    .locals 3
    .parameter "vSpan"

    .prologue
    .line 3341
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/homeview/CellLayout;

    .line 3342
    .local v0, cell:Lcom/baidu/launcher/ui/homeview/CellLayout;
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getHeight()I

    move-result v1

    .line 3343
    .local v1, cellHeight:I
    if-eqz v0, :cond_0

    .line 3344
    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getCellHeight()I

    move-result v1

    .line 3346
    :cond_0
    mul-int v2, p1, v1

    return v2
.end method

.method public estimateCellWidth(I)I
    .locals 3
    .parameter "hSpan"

    .prologue
    .line 3329
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/homeview/CellLayout;

    .line 3330
    .local v0, cell:Lcom/baidu/launcher/ui/homeview/CellLayout;
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getWidth()I

    move-result v1

    .line 3331
    .local v1, cellWidth:I
    if-eqz v0, :cond_0

    .line 3332
    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getCellWidth()I

    move-result v1

    .line 3334
    :cond_0
    mul-int v2, p1, v1

    return v2
.end method

.method public estimateDropLocation(Lcom/baidu/launcher/ui/dragdrop/DragSource;IIIILcom/baidu/launcher/ui/dragdrop/DragView;Ljava/lang/Object;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 19
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"
    .parameter "recycle"

    .prologue
    .line 2281
    invoke-direct/range {p0 .. p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getCurrentDropLayout()Lcom/baidu/launcher/ui/homeview/CellLayout;

    move-result-object v14

    .line 2283
    .local v14, layout:Lcom/baidu/launcher/ui/homeview/CellLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragInfo:Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;

    move-object/from16 v16, v0

    .line 2284
    .local v16, cellInfo:Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;
    if-nez v16, :cond_0

    const/4 v11, 0x1

    .line 2285
    .local v11, spanX:I
    :goto_0
    if-nez v16, :cond_1

    const/4 v12, 0x1

    .line 2286
    .local v12, spanY:I
    :goto_1
    if-nez v16, :cond_2

    const/4 v13, 0x0

    .line 2288
    .local v13, ignoreView:Landroid/view/View;
    :goto_2
    if-eqz p8, :cond_3

    move-object/from16 v18, p8

    .line 2291
    .local v18, location:Landroid/graphics/Rect;
    :goto_3
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragPoint:[F

    .local v7, dragPos:[F
    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    .line 2292
    invoke-direct/range {v1 .. v7}, Lcom/baidu/launcher/ui/homeview/Workspace;->getDragViewVisualCenter(IIIILcom/baidu/launcher/ui/dragdrop/DragView;[F)[F

    .line 2293
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v7, v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->mapPointFromSelfToChild(Lcom/baidu/launcher/ui/homeview/CellLayout;[FLandroid/graphics/Matrix;)V

    .line 2294
    const/4 v1, 0x0

    aget v1, v7, v1

    float-to-int v9, v1

    const/4 v1, 0x1

    aget v1, v7, v1

    float-to-int v10, v1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTempCell:[I

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v15}, Lcom/baidu/launcher/ui/homeview/Workspace;->estimateDropCell(IIIILandroid/view/View;Lcom/baidu/launcher/ui/homeview/CellLayout;[I)[I

    move-result-object v17

    .line 2298
    .local v17, dropCell:[I
    if-nez v17, :cond_4

    .line 2299
    const/16 v18, 0x0

    .line 2310
    .end local v18           #location:Landroid/graphics/Rect;
    :goto_4
    return-object v18

    .line 2284
    .end local v7           #dragPos:[F
    .end local v11           #spanX:I
    .end local v12           #spanY:I
    .end local v13           #ignoreView:Landroid/view/View;
    .end local v17           #dropCell:[I
    :cond_0
    move-object/from16 v0, v16

    iget v11, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->spanX:I

    goto :goto_0

    .line 2285
    .restart local v11       #spanX:I
    :cond_1
    move-object/from16 v0, v16

    iget v12, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->spanY:I

    goto :goto_1

    .line 2286
    .restart local v12       #spanY:I
    :cond_2
    move-object/from16 v0, v16

    iget-object v13, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->cell:Landroid/view/View;

    goto :goto_2

    .line 2288
    .restart local v13       #ignoreView:Landroid/view/View;
    :cond_3
    new-instance v18, Landroid/graphics/Rect;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Rect;-><init>()V

    goto :goto_3

    .line 2302
    .restart local v7       #dragPos:[F
    .restart local v17       #dropCell:[I
    .restart local v18       #location:Landroid/graphics/Rect;
    :cond_4
    const/4 v1, 0x0

    aget v1, v17, v1

    const/4 v2, 0x1

    aget v2, v17, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTempEstimate:[I

    invoke-virtual {v14, v1, v2, v3}, Lcom/baidu/launcher/ui/homeview/CellLayout;->cellToPoint(II[I)V

    .line 2303
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTempEstimate:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    move-object/from16 v0, v18

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 2304
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTempEstimate:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    move-object/from16 v0, v18

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 2306
    const/4 v1, 0x0

    aget v1, v17, v1

    add-int/2addr v1, v11

    const/4 v2, 0x1

    aget v2, v17, v2

    add-int/2addr v2, v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTempEstimate:[I

    invoke-virtual {v14, v1, v2, v3}, Lcom/baidu/launcher/ui/homeview/CellLayout;->cellToPoint(II[I)V

    .line 2307
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTempEstimate:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    move-object/from16 v0, v18

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 2308
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTempEstimate:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    move-object/from16 v0, v18

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_4
.end method

.method public estimateItemPosition(Lcom/baidu/launcher/ui/homeview/CellLayout;IIII)Landroid/graphics/RectF;
    .locals 6
    .parameter "cl"
    .parameter "hCell"
    .parameter "vCell"
    .parameter "hSpan"
    .parameter "vSpan"

    .prologue
    .line 3731
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    .local v5, r:Landroid/graphics/RectF;
    move-object v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    .line 3732
    invoke-virtual/range {v0 .. v5}, Lcom/baidu/launcher/ui/homeview/CellLayout;->cellToRect(IIIILandroid/graphics/RectF;)V

    .line 3733
    return-object v5
.end method

.method public estimateItemPosition(Lcom/baidu/launcher/ui/homeview/CellLayout;Ljava/lang/Object;IIII)Landroid/graphics/RectF;
    .locals 7
    .parameter "cl"
    .parameter "widgetInfo"
    .parameter "hCell"
    .parameter "vCell"
    .parameter "hSpan"
    .parameter "vSpan"

    .prologue
    .line 3738
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    .local v5, r:Landroid/graphics/RectF;
    move-object v0, p1

    move v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    .line 3739
    invoke-virtual/range {v0 .. v5}, Lcom/baidu/launcher/ui/homeview/CellLayout;->cellToRect(IIIILandroid/graphics/RectF;)V

    .line 3740
    instance-of v0, p2, Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v0, :cond_0

    .line 3741
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mContext:Landroid/content/Context;

    check-cast p2, Landroid/appwidget/AppWidgetProviderInfo;

    .end local p2
    iget-object v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/appwidget/AppWidgetHostView;->getDefaultPaddingForWidget(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v6

    .line 3743
    .local v6, p:Landroid/graphics/Rect;
    iget v0, v5, Landroid/graphics/RectF;->top:F

    iget v1, v6, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, v5, Landroid/graphics/RectF;->top:F

    .line 3744
    iget v0, v5, Landroid/graphics/RectF;->left:F

    iget v1, v6, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, v5, Landroid/graphics/RectF;->left:F

    .line 3745
    iget v0, v5, Landroid/graphics/RectF;->right:F

    iget v1, v6, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, v5, Landroid/graphics/RectF;->right:F

    .line 3746
    iget v0, v5, Landroid/graphics/RectF;->bottom:F

    iget v1, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, v5, Landroid/graphics/RectF;->bottom:F

    .line 3749
    .end local v6           #p:Landroid/graphics/Rect;
    :cond_0
    return-object v5
.end method

.method public estimateItemSize(IILjava/lang/Object;)[I
    .locals 10
    .parameter "hSpan"
    .parameter "vSpan"
    .parameter "widgetInfo"

    .prologue
    const v2, 0x7fffffff

    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 3716
    const/4 v0, 0x2

    new-array v8, v0, [I

    .line 3717
    .local v8, size:[I
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 3718
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/homeview/CellLayout;

    .local v1, cl:Lcom/baidu/launcher/ui/homeview/CellLayout;
    move-object v0, p0

    move-object v2, p3

    move v4, v3

    move v5, p1

    move v6, p2

    .line 3719
    invoke-virtual/range {v0 .. v6}, Lcom/baidu/launcher/ui/homeview/Workspace;->estimateItemPosition(Lcom/baidu/launcher/ui/homeview/CellLayout;Ljava/lang/Object;IIII)Landroid/graphics/RectF;

    move-result-object v7

    .line 3720
    .local v7, r:Landroid/graphics/RectF;
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v0, v0

    aput v0, v8, v3

    .line 3721
    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v0

    float-to-int v0, v0

    aput v0, v8, v9

    .line 3726
    .end local v1           #cl:Lcom/baidu/launcher/ui/homeview/CellLayout;
    .end local v7           #r:Landroid/graphics/RectF;
    :goto_0
    return-object v8

    .line 3724
    :cond_0
    aput v2, v8, v3

    .line 3725
    aput v2, v8, v9

    goto :goto_0
.end method

.method public estimateItemSize(IIZ)[I
    .locals 9
    .parameter "hSpan"
    .parameter "vSpan"
    .parameter "springLoaded"

    .prologue
    const v3, 0x7fffffff

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 3699
    const/4 v0, 0x2

    new-array v7, v0, [I

    .line 3700
    .local v7, size:[I
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 3701
    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/homeview/CellLayout;

    .local v1, cl:Lcom/baidu/launcher/ui/homeview/CellLayout;
    move-object v0, p0

    move v3, v2

    move v4, p1

    move v5, p2

    .line 3702
    invoke-virtual/range {v0 .. v5}, Lcom/baidu/launcher/ui/homeview/Workspace;->estimateItemPosition(Lcom/baidu/launcher/ui/homeview/CellLayout;IIII)Landroid/graphics/RectF;

    move-result-object v6

    .line 3703
    .local v6, r:Landroid/graphics/RectF;
    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v0, v0

    aput v0, v7, v2

    .line 3704
    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v0

    float-to-int v0, v0

    aput v0, v7, v8

    .line 3709
    .end local v1           #cl:Lcom/baidu/launcher/ui/homeview/CellLayout;
    .end local v6           #r:Landroid/graphics/RectF;
    :goto_0
    return-object v7

    .line 3707
    :cond_0
    aput v3, v7, v2

    .line 3708
    aput v3, v7, v8

    goto :goto_0
.end method

.method public findAllVacantCells([ZZ)Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;
    .locals 5
    .parameter "occupied"
    .parameter "menuCheck"

    .prologue
    const/4 v2, 0x0

    .line 682
    iget-object v3, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_2

    iget v1, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I

    .line 683
    .local v1, index:I
    :goto_0
    if-eqz p2, :cond_0

    .line 684
    iget v3, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mNextScreen:I

    const/4 v4, -0x2

    if-eq v3, v4, :cond_3

    iget v1, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mNextScreen:I

    .line 686
    :cond_0
    :goto_1
    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/homeview/CellLayout;

    .line 687
    .local v0, group:Lcom/baidu/launcher/ui/homeview/CellLayout;
    if-eqz v0, :cond_1

    .line 688
    invoke-virtual {v0, p1, v2}, Lcom/baidu/launcher/ui/homeview/CellLayout;->findAllVacantCells([ZLandroid/view/View;)Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;

    move-result-object v2

    .line 690
    :cond_1
    return-object v2

    .line 682
    .end local v0           #group:Lcom/baidu/launcher/ui/homeview/CellLayout;
    .end local v1           #index:I
    :cond_2
    iget v1, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mNextScreen:I

    goto :goto_0

    .line 684
    .restart local v1       #index:I
    :cond_3
    iget v1, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I

    goto :goto_1
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .locals 4
    .parameter "focused"

    .prologue
    .line 1409
    iget v3, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v3}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1410
    .local v0, current:Landroid/view/View;
    move-object v2, p1

    .line 1412
    .local v2, v:Landroid/view/View;
    :goto_0
    if-ne v2, v0, :cond_1

    .line 1413
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    .line 1423
    :cond_0
    return-void

    .line 1416
    :cond_1
    if-eq v2, p0, :cond_0

    .line 1419
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 1420
    .local v1, parent:Landroid/view/ViewParent;
    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_0

    .line 1421
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .end local v2           #v:Landroid/view/View;
    check-cast v2, Landroid/view/View;

    .restart local v2       #v:Landroid/view/View;
    goto :goto_0
.end method

.method public getCellTopPadding()I
    .locals 1

    .prologue
    .line 1145
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mPaddingTop:I

    return v0
.end method

.method protected getChildOffset(I)I
    .locals 5
    .parameter "index"

    .prologue
    const/4 v2, 0x0

    .line 3594
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mChildOffsets:[I

    .line 3596
    .local v0, childOffsets:[I
    if-eqz v0, :cond_1

    aget v3, v0, p1

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 3597
    aget v2, v0, p1

    .line 3609
    :cond_0
    :goto_0
    return v2

    .line 3599
    :cond_1
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_0

    .line 3602
    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/homeview/Workspace;->getRelativeChildOffset(I)I

    move-result v2

    .line 3603
    .local v2, offset:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, p1, :cond_2

    .line 3604
    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/baidu/launcher/ui/homeview/Workspace;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v3

    iget v4, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mPageSpacing:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 3603
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3606
    :cond_2
    if-eqz v0, :cond_0

    .line 3607
    aput v2, v0, p1

    goto :goto_0
.end method

.method protected getChildWidth(I)I
    .locals 3
    .parameter "index"

    .prologue
    .line 3690
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 3691
    .local v0, measuredWidth:I
    iget v1, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mMinimumWidth:I

    .line 3692
    .local v1, minWidth:I
    if-le v1, v0, :cond_0

    .end local v1           #minWidth:I
    :goto_0
    return v1

    .restart local v1       #minWidth:I
    :cond_0
    move v1, v0

    goto :goto_0
.end method

.method public getCurrentScreen()I
    .locals 1

    .prologue
    .line 547
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I

    return v0
.end method

.method public getCurrentScreenCellHeightWithGap()I
    .locals 2

    .prologue
    .line 2999
    iget v1, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/homeview/CellLayout;

    .line 3000
    .local v0, child:Lcom/baidu/launcher/ui/homeview/CellLayout;
    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getCellHeightWithGap()I

    move-result v1

    return v1
.end method

.method public getDockbar()Lcom/baidu/launcher/ui/homeview/DockBar;
    .locals 1

    .prologue
    .line 4529
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDockbar:Landroid/view/View;

    check-cast v0, Lcom/baidu/launcher/ui/homeview/DockBar;

    return-object v0
.end method

.method public getDraggableObjectAtPoint(Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;)Ljava/lang/Object;
    .locals 0
    .parameter "pt"

    .prologue
    .line 3291
    return-object p0
.end method

.method public getFolderForTag(Ljava/lang/Object;)Lcom/baidu/launcher/ui/folder/Folder;
    .locals 10
    .parameter "tag"

    .prologue
    const/4 v9, 0x4

    .line 2446
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v7

    .line 2447
    .local v7, screenCount:I
    const/4 v6, 0x0

    .local v6, screen:I
    :goto_0
    if-ge v6, v7, :cond_3

    .line 2448
    invoke-virtual {p0, v6}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/ui/homeview/CellLayout;

    .line 2449
    .local v2, currentScreen:Lcom/baidu/launcher/ui/homeview/CellLayout;
    if-nez v2, :cond_1

    .line 2447
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2450
    :cond_1
    invoke-virtual {v2}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getChildCount()I

    move-result v1

    .line 2451
    .local v1, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v1, :cond_0

    .line 2452
    invoke-virtual {v2, v4}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2453
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;

    .line 2454
    .local v5, lp:Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;
    iget v8, v5, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellHSpan:I

    if-ne v8, v9, :cond_2

    iget v8, v5, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellVSpan:I

    if-ne v8, v9, :cond_2

    instance-of v8, v0, Lcom/baidu/launcher/ui/folder/Folder;

    if-eqz v8, :cond_2

    move-object v3, v0

    .line 2455
    check-cast v3, Lcom/baidu/launcher/ui/folder/Folder;

    .line 2456
    .local v3, f:Lcom/baidu/launcher/ui/folder/Folder;
    invoke-virtual {v3}, Lcom/baidu/launcher/ui/folder/Folder;->getInfo()Lcom/baidu/launcher/data/item/IFolderInfo;

    move-result-object v8

    if-ne v8, p1, :cond_2

    .line 2462
    .end local v0           #child:Landroid/view/View;
    .end local v1           #count:I
    .end local v2           #currentScreen:Lcom/baidu/launcher/ui/homeview/CellLayout;
    .end local v3           #f:Lcom/baidu/launcher/ui/folder/Folder;
    .end local v4           #i:I
    .end local v5           #lp:Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;
    :goto_2
    return-object v3

    .line 2451
    .restart local v0       #child:Landroid/view/View;
    .restart local v1       #count:I
    .restart local v2       #currentScreen:Lcom/baidu/launcher/ui/homeview/CellLayout;
    .restart local v4       #i:I
    .restart local v5       #lp:Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2462
    .end local v0           #child:Landroid/view/View;
    .end local v1           #count:I
    .end local v2           #currentScreen:Lcom/baidu/launcher/ui/homeview/CellLayout;
    .end local v4           #i:I
    .end local v5           #lp:Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;
    :cond_3
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public getIndicator()Lcom/baidu/launcher/ui/homeview/Indicator;
    .locals 1

    .prologue
    .line 2987
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mIndicator:Lcom/baidu/launcher/ui/homeview/Indicator;

    return-object v0
.end method

.method public getNextScreen()I
    .locals 2

    .prologue
    .line 551
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mNextScreen:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mNextScreen:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I

    goto :goto_0
.end method

.method getOpenFolders()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/ui/folder/Folder;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x4

    .line 513
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v7

    .line 514
    .local v7, screens:I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 516
    .local v3, folders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/folder/Folder;>;"
    const/4 v6, 0x0

    .local v6, screen:I
    :goto_0
    if-ge v6, v7, :cond_3

    .line 517
    invoke-virtual {p0, v6}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/ui/homeview/CellLayout;

    .line 518
    .local v2, currentScreen:Lcom/baidu/launcher/ui/homeview/CellLayout;
    if-nez v2, :cond_1

    .line 516
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 519
    :cond_1
    invoke-virtual {v2}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getChildCount()I

    move-result v1

    .line 520
    .local v1, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    if-ge v4, v1, :cond_0

    .line 521
    invoke-virtual {v2, v4}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 522
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;

    .line 523
    .local v5, lp:Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;
    iget v8, v5, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellHSpan:I

    if-ne v8, v9, :cond_2

    iget v8, v5, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellVSpan:I

    if-ne v8, v9, :cond_2

    instance-of v8, v0, Lcom/baidu/launcher/ui/folder/Folder;

    if-eqz v8, :cond_2

    .line 524
    check-cast v0, Lcom/baidu/launcher/ui/folder/Folder;

    .end local v0           #child:Landroid/view/View;
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 520
    .restart local v0       #child:Landroid/view/View;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 530
    .end local v0           #child:Landroid/view/View;
    .end local v1           #count:I
    .end local v2           #currentScreen:Lcom/baidu/launcher/ui/homeview/CellLayout;
    .end local v4           #i:I
    .end local v5           #lp:Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;
    :cond_3
    return-object v3
.end method

.method public getPositionAndScale(Ljava/lang/Object;Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;)V
    .locals 10
    .parameter "obj"
    .parameter "objPosAndScaleOut"

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 3297
    const/4 v3, 0x1

    const/high16 v4, 0x3f80

    move-object v0, p2

    move v2, v1

    move v6, v1

    move v7, v1

    move v8, v5

    move v9, v1

    invoke-virtual/range {v0 .. v9}, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;->set(FFZFZFFZF)V

    .line 3298
    return-void
.end method

.method protected getRelativeChildOffset(I)I
    .locals 5
    .parameter "index"

    .prologue
    .line 3626
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mChildRelativeOffsets:[I

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mChildRelativeOffsets:[I

    aget v2, v2, p1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 3627
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mChildRelativeOffsets:[I

    aget v0, v2, p1

    .line 3635
    :cond_0
    :goto_0
    return v0

    .line 3629
    :cond_1
    iget v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mPaddingLeft:I

    iget v3, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mPaddingRight:I

    add-int v1, v2, v3

    .line 3630
    .local v1, padding:I
    iget v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mPaddingLeft:I

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildWidth(I)I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int v0, v2, v3

    .line 3632
    .local v0, offset:I
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mChildRelativeOffsets:[I

    if-eqz v2, :cond_0

    .line 3633
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mChildRelativeOffsets:[I

    aput v0, v2, p1

    goto :goto_0
.end method

.method protected getScaledMeasuredWidth(Landroid/view/View;)I
    .locals 3
    .parameter "child"

    .prologue
    .line 3650
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 3651
    .local v1, measuredWidth:I
    iget v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mMinimumWidth:I

    .line 3652
    .local v2, minWidth:I
    if-le v2, v1, :cond_0

    move v0, v2

    .line 3653
    .local v0, maxWidth:I
    :goto_0
    return v0

    .end local v0           #maxWidth:I
    :cond_0
    move v0, v1

    .line 3652
    goto :goto_0
.end method

.method protected getScaledRelativeChildOffset(I)I
    .locals 5
    .parameter "index"

    .prologue
    .line 3640
    iget v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mPaddingLeft:I

    iget v3, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mPaddingRight:I

    add-int v1, v2, v3

    .line 3641
    .local v1, padding:I
    iget v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mPaddingLeft:I

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/baidu/launcher/ui/homeview/Workspace;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int v0, v2, v3

    .line 3643
    .local v0, offset:I
    return v0
.end method

.method public getScreenCount()I
    .locals 1

    .prologue
    .line 2974
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getScreenForView(Landroid/view/View;)I
    .locals 5
    .parameter "v"

    .prologue
    .line 2432
    const/4 v2, -0x1

    .line 2433
    .local v2, result:I
    if-eqz p1, :cond_1

    .line 2434
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 2435
    .local v3, vp:Landroid/view/ViewParent;
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v0

    .line 2436
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2437
    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 2442
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v3           #vp:Landroid/view/ViewParent;
    :goto_1
    return v1

    .line 2436
    .restart local v0       #count:I
    .restart local v1       #i:I
    .restart local v3       #vp:Landroid/view/ViewParent;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #count:I
    .end local v1           #i:I
    .end local v3           #vp:Landroid/view/ViewParent;
    :cond_1
    move v1, v2

    .line 2442
    goto :goto_1
.end method

.method public getViewForTag(Ljava/lang/Object;)Landroid/view/View;
    .locals 7
    .parameter "tag"

    .prologue
    .line 2466
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v5

    .line 2467
    .local v5, screenCount:I
    const/4 v4, 0x0

    .local v4, screen:I
    :goto_0
    if-ge v4, v5, :cond_3

    .line 2468
    invoke-virtual {p0, v4}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/ui/homeview/CellLayout;

    .line 2469
    .local v2, currentScreen:Lcom/baidu/launcher/ui/homeview/CellLayout;
    if-nez v2, :cond_1

    .line 2467
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2470
    :cond_1
    invoke-virtual {v2}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getChildCount()I

    move-result v1

    .line 2471
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v1, :cond_0

    .line 2472
    invoke-virtual {v2, v3}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2473
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, p1, :cond_2

    .line 2478
    .end local v0           #child:Landroid/view/View;
    .end local v1           #count:I
    .end local v2           #currentScreen:Lcom/baidu/launcher/ui/homeview/CellLayout;
    .end local v3           #i:I
    :goto_2
    return-object v0

    .line 2471
    .restart local v0       #child:Landroid/view/View;
    .restart local v1       #count:I
    .restart local v2       #currentScreen:Lcom/baidu/launcher/ui/homeview/CellLayout;
    .restart local v3       #i:I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2478
    .end local v0           #child:Landroid/view/View;
    .end local v1           #count:I
    .end local v2           #currentScreen:Lcom/baidu/launcher/ui/homeview/CellLayout;
    .end local v3           #i:I
    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method protected getVisiblePages([I)V
    .locals 10
    .parameter "range"

    .prologue
    const/4 v9, 0x1

    const/4 v6, -0x1

    const/4 v8, 0x0

    .line 3657
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v1

    .line 3658
    .local v1, pageCount:I
    if-lez v1, :cond_2

    .line 3659
    invoke-virtual {p0, v8}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/baidu/launcher/ui/homeview/Workspace;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v2

    .line 3660
    .local v2, pageWidth:I
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getMeasuredWidth()I

    move-result v4

    .line 3661
    .local v4, screenWidth:I
    invoke-virtual {p0, v8}, Lcom/baidu/launcher/ui/homeview/Workspace;->getScaledRelativeChildOffset(I)I

    move-result v6

    add-int v5, v6, v2

    .line 3662
    .local v5, x:I
    const/4 v0, 0x0

    .line 3663
    .local v0, leftScreen:I
    const/4 v3, 0x0

    .line 3664
    .local v3, rightScreen:I
    :goto_0
    iget v6, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollX:I

    if-gt v5, v6, :cond_0

    add-int/lit8 v6, v1, -0x1

    if-ge v0, v6, :cond_0

    .line 3665
    add-int/lit8 v0, v0, 0x1

    .line 3666
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/baidu/launcher/ui/homeview/Workspace;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v6

    iget v7, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mPageSpacing:I

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    goto :goto_0

    .line 3668
    :cond_0
    move v3, v0

    .line 3669
    :goto_1
    iget v6, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollX:I

    add-int/2addr v6, v4

    if-ge v5, v6, :cond_1

    add-int/lit8 v6, v1, -0x1

    if-ge v3, v6, :cond_1

    .line 3670
    add-int/lit8 v3, v3, 0x1

    .line 3671
    invoke-virtual {p0, v3}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/baidu/launcher/ui/homeview/Workspace;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v6

    iget v7, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mPageSpacing:I

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    goto :goto_1

    .line 3673
    :cond_1
    aput v0, p1, v8

    .line 3674
    aput v3, p1, v9

    .line 3679
    .end local v0           #leftScreen:I
    .end local v2           #pageWidth:I
    .end local v3           #rightScreen:I
    .end local v4           #screenWidth:I
    .end local v5           #x:I
    :goto_2
    return-void

    .line 3676
    :cond_2
    aput v6, p1, v8

    .line 3677
    aput v6, p1, v9

    goto :goto_2
.end method

.method public isBuleltinScree()Z
    .locals 1

    .prologue
    .line 538
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBulletinScrollingEixt()Z
    .locals 2

    .prologue
    .line 4545
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mNextScreen:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->isScrolling()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollX:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBulletinScrollingIn()Z
    .locals 2

    .prologue
    .line 4549
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mNextScreen:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I

    iget v1, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mNextScreen:I

    if-ne v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollX:I

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDefaultScreenShowing()Z
    .locals 2

    .prologue
    .line 534
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I

    sget v1, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->defaultScreen:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScreenEmpty(I)Z
    .locals 3
    .parameter "index"

    .prologue
    const/4 v1, 0x0

    .line 3368
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/homeview/CellLayout;

    .line 3369
    .local v0, screen:Lcom/baidu/launcher/ui/homeview/CellLayout;
    if-eqz v0, :cond_0

    .line 3370
    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getChildCount()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 3372
    :cond_0
    return v1
.end method

.method public isScrolling()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 694
    iget v1, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTouchState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSmall()Z
    .locals 1

    .prologue
    .line 3682
    const/4 v0, 0x0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 4463
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getParent()Landroid/view/ViewParent;

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

.method mapPointFromChildToSelf(Lcom/baidu/launcher/ui/homeview/CellLayout;[F)V
    .locals 4
    .parameter "v"
    .parameter "xy"

    .prologue
    .line 3798
    invoke-virtual {p1}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 3799
    const/4 v0, 0x0

    aget v1, p2, v0

    iget v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollX:I

    invoke-virtual {p1}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v1, v2

    aput v1, p2, v0

    .line 3800
    const/4 v0, 0x1

    aget v1, p2, v0

    iget v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollY:I

    invoke-virtual {p1}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v1, v2

    aput v1, p2, v0

    .line 3801
    return-void
.end method

.method mapPointFromSelfToChild(Lcom/baidu/launcher/ui/homeview/CellLayout;[F)V
    .locals 1
    .parameter "v"
    .parameter "xy"

    .prologue
    .line 3763
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/baidu/launcher/ui/homeview/Workspace;->mapPointFromSelfToChild(Lcom/baidu/launcher/ui/homeview/CellLayout;[FLandroid/graphics/Matrix;)V

    .line 3764
    return-void
.end method

.method mapPointFromSelfToChild(Lcom/baidu/launcher/ui/homeview/CellLayout;[FLandroid/graphics/Matrix;)V
    .locals 4
    .parameter "v"
    .parameter "xy"
    .parameter "cachedInverseMatrix"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3774
    if-nez p3, :cond_0

    .line 3775
    invoke-virtual {p1}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTempInverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 3776
    iget-object p3, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTempInverseMatrix:Landroid/graphics/Matrix;

    .line 3778
    :cond_0
    aget v0, p2, v2

    iget v1, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollX:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p1}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    aput v0, p2, v2

    .line 3779
    aget v0, p2, v3

    iget v1, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollY:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p1}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getTop()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    aput v0, p2, v3

    .line 3780
    invoke-virtual {p3, p2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 3781
    return-void
.end method

.method mapPointFromSelfToSibling(Lcom/baidu/launcher/ui/homeview/CellLayout;[F)V
    .locals 4
    .parameter "v"
    .parameter "xy"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3788
    aget v0, p2, v2

    invoke-virtual {p1}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    aput v0, p2, v2

    .line 3789
    aget v0, p2, v3

    invoke-virtual {p1}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getTop()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    aput v0, p2, v3

    .line 3790
    return-void
.end method

.method public moveToDefaultScreen(Z)V
    .locals 1
    .parameter "animate"

    .prologue
    .line 2929
    if-eqz p1, :cond_1

    .line 2930
    sget v0, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->defaultScreen:I

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/homeview/Workspace;->snapToScreen(I)V

    .line 2934
    :goto_0
    sget v0, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->defaultScreen:I

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2935
    sget v0, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->defaultScreen:I

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 2937
    :cond_0
    return-void

    .line 2932
    :cond_1
    sget v0, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->defaultScreen:I

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/homeview/Workspace;->setCurrentScreen(I)V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 1073
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 1074
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->computeScroll()V

    .line 1075
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragController:Lcom/baidu/launcher/ui/dragdrop/DragController;

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/dragdrop/DragController;->setWindowToken(Landroid/os/IBinder;)V

    .line 1076
    return-void
.end method

.method public onDestory()V
    .locals 7

    .prologue
    .line 4499
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v1

    .line 4500
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 4501
    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/baidu/launcher/ui/homeview/CellLayout;

    .line 4502
    .local v4, layout:Lcom/baidu/launcher/ui/homeview/CellLayout;
    if-nez v4, :cond_1

    .line 4500
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4503
    :cond_1
    invoke-virtual {v4}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getChildCount()I

    move-result v0

    .line 4504
    .local v0, childCount:I
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    if-ge v3, v0, :cond_0

    .line 4505
    invoke-virtual {v4, v3}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 4506
    .local v5, view:Landroid/view/View;
    instance-of v6, v5, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;

    if-eqz v6, :cond_2

    .line 4507
    check-cast v5, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;

    .end local v5           #view:Landroid/view/View;
    invoke-virtual {v5}, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;->onDestory()V

    .line 4504
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4511
    .end local v0           #childCount:I
    .end local v3           #j:I
    .end local v4           #layout:Lcom/baidu/launcher/ui/homeview/CellLayout;
    :cond_3
    sget v6, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->defaultScreen:I

    sput v6, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->currentScreen:I

    .line 4512
    return-void
.end method

.method public onDragEnter(Lcom/baidu/launcher/ui/dragdrop/DragSource;IIIILcom/baidu/launcher/ui/dragdrop/DragView;Ljava/lang/Object;)V
    .locals 4
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 1935
    invoke-direct {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->clearVacantCache()V

    .line 1936
    iget v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mNextScreen:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I

    :goto_0
    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/homeview/CellLayout;

    .line 1938
    .local v1, layout:Lcom/baidu/launcher/ui/homeview/CellLayout;
    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->setCurrentDropLayout(Lcom/baidu/launcher/ui/homeview/CellLayout;)V

    .line 1939
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    .line 1940
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    .line 1943
    .local v0, canvas:Landroid/graphics/Canvas;
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragController:Lcom/baidu/launcher/ui/dragdrop/DragController;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/dragdrop/DragController;->getOriginalView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {p0, v2, v0, v3}, Lcom/baidu/launcher/ui/homeview/Workspace;->createDragOutline(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    .line 1946
    .end local v0           #canvas:Landroid/graphics/Canvas;
    :cond_0
    return-void

    .line 1936
    .end local v1           #layout:Lcom/baidu/launcher/ui/homeview/CellLayout;
    :cond_1
    iget v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mNextScreen:I

    goto :goto_0
.end method

.method public onDragExit(Lcom/baidu/launcher/ui/dragdrop/DragSource;IIIILcom/baidu/launcher/ui/dragdrop/DragView;Ljava/lang/Object;)V
    .locals 1
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 2056
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->removeCreateFolderCallbacks()V

    .line 2057
    invoke-direct {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->clearVacantCache()V

    .line 2058
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/homeview/Workspace;->setCurrentDropLayout(Lcom/baidu/launcher/ui/homeview/CellLayout;)V

    .line 2059
    return-void
.end method

.method public onDragOver(Lcom/baidu/launcher/ui/dragdrop/DragSource;IIIILcom/baidu/launcher/ui/dragdrop/DragView;Ljava/lang/Object;)V
    .locals 36
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 1950
    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/baidu/launcher/ui/homeview/DockBar;

    if-eqz v2, :cond_3

    move-object/from16 v0, p7

    instance-of v2, v0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    if-eqz v2, :cond_3

    move-object/from16 v31, p7

    .line 1951
    check-cast v31, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    .line 1952
    .local v31, info:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    move-object/from16 v0, v31

    iget-object v2, v0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->title:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    .line 1953
    sget-object v2, Lcom/baidu/launcher/data/IconCache;->sReplaceMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v29

    .local v29, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/String;

    .line 1954
    .local v32, key:Ljava/lang/String;
    if-eqz v32, :cond_0

    move-object/from16 v0, v31

    iget-object v2, v0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1955
    sget-object v2, Lcom/baidu/launcher/data/IconCache;->sReplaceMap:Ljava/util/HashMap;

    move-object/from16 v0, v32

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    move-object/from16 v0, v31

    iput-object v2, v0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 1959
    .end local v29           #i$:Ljava/util/Iterator;
    .end local v32           #key:Ljava/lang/String;
    :cond_1
    move-object/from16 v0, v31

    iget-object v2, v0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->intent:Landroid/content/Intent;

    if-nez v2, :cond_3

    .line 2052
    .end local v31           #info:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    :cond_2
    :goto_0
    return-void

    .line 1964
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getCurrentScreenIndex()I

    move-result v30

    .line 1965
    .local v30, index:I
    const/4 v2, -0x1

    move/from16 v0, v30

    if-eq v0, v2, :cond_2

    .line 1967
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Lcom/baidu/launcher/ui/homeview/CellLayout;

    .line 1968
    .local v27, cellLayout:Lcom/baidu/launcher/ui/homeview/CellLayout;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragTargetLayout:Lcom/baidu/launcher/ui/homeview/CellLayout;

    move-object/from16 v0, v27

    if-eq v0, v2, :cond_4

    .line 1969
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->setCurrentDropLayout(Lcom/baidu/launcher/ui/homeview/CellLayout;)V

    .line 1971
    :cond_4
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragPoint:[F

    .local v8, dragPos:[F
    move-object/from16 v2, p0

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    .line 1972
    invoke-direct/range {v2 .. v8}, Lcom/baidu/launcher/ui/homeview/Workspace;->getDragViewVisualCenter(IIIILcom/baidu/launcher/ui/dragdrop/DragView;[F)[F

    .line 1973
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v8, v2}, Lcom/baidu/launcher/ui/homeview/Workspace;->mapPointFromSelfToChild(Lcom/baidu/launcher/ui/homeview/CellLayout;[FLandroid/graphics/Matrix;)V

    .line 1974
    const/4 v12, 0x1

    .line 1975
    .local v12, spanX:I
    const/4 v13, 0x1

    .line 1976
    .local v13, spanY:I
    move-object/from16 v0, p7

    instance-of v2, v0, Lcom/baidu/launcher/data/item/HomeItemInfo;

    if-eqz v2, :cond_8

    move-object/from16 v28, p7

    .line 1977
    check-cast v28, Lcom/baidu/launcher/data/item/HomeItemInfo;

    .line 1978
    .local v28, hif:Lcom/baidu/launcher/data/item/HomeItemInfo;
    move-object/from16 v0, v28

    iget v12, v0, Lcom/baidu/launcher/data/item/HomeItemInfo;->spanX:I

    .line 1979
    move-object/from16 v0, v28

    iget v13, v0, Lcom/baidu/launcher/data/item/HomeItemInfo;->spanY:I

    .line 1990
    .end local v28           #hif:Lcom/baidu/launcher/data/item/HomeItemInfo;
    :cond_5
    :goto_1
    const/4 v2, 0x0

    aget v2, v8, v2

    float-to-int v10, v2

    const/4 v2, 0x1

    aget v2, v8, v2

    float-to-int v11, v2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragTargetLayout:Lcom/baidu/launcher/ui/homeview/CellLayout;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTargetCell:[I

    move-object/from16 v9, p0

    invoke-direct/range {v9 .. v15}, Lcom/baidu/launcher/ui/homeview/Workspace;->findNearestArea(IIIILcom/baidu/launcher/ui/homeview/CellLayout;[I)[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTargetCell:[I

    .line 1994
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTargetCell:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTargetCell:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/baidu/launcher/ui/homeview/Workspace;->setCurrentDropOverCell(II)V

    .line 1996
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragTargetLayout:Lcom/baidu/launcher/ui/homeview/CellLayout;

    const/4 v3, 0x0

    aget v3, v8, v3

    const/4 v4, 0x1

    aget v4, v8, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTargetCell:[I

    invoke-virtual {v2, v3, v4, v5}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getDistanceFromCell(FF[I)F

    move-result v6

    .line 1999
    .local v6, targetCellDistance:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragTargetLayout:Lcom/baidu/launcher/ui/homeview/CellLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTargetCell:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTargetCell:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v7

    .line 2002
    .local v7, dragOverView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragTargetLayout:Lcom/baidu/launcher/ui/homeview/CellLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTargetCell:[I

    move-object/from16 v2, p0

    move-object/from16 v3, p7

    invoke-direct/range {v2 .. v7}, Lcom/baidu/launcher/ui/homeview/Workspace;->manageFolderFeedback(Ljava/lang/Object;Lcom/baidu/launcher/ui/homeview/CellLayout;[IFLandroid/view/View;)V

    .line 2011
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragInfo:Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;

    if-nez v2, :cond_a

    const/4 v14, 0x0

    .line 2012
    .local v14, child:Landroid/view/View;
    :goto_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragTargetLayout:Lcom/baidu/launcher/ui/homeview/CellLayout;

    const/4 v2, 0x0

    aget v2, v8, v2

    float-to-int v10, v2

    const/4 v2, 0x1

    aget v2, v8, v2

    float-to-int v11, v2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTargetCell:[I

    invoke-virtual/range {v9 .. v15}, Lcom/baidu/launcher/ui/homeview/CellLayout;->isNearestDropLocationOccupied(IIIILandroid/view/View;[I)Z

    move-result v34

    .line 2016
    .local v34, nearestDropOccupied:Z
    if-nez v34, :cond_b

    .line 2017
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragTargetLayout:Lcom/baidu/launcher/ui/homeview/CellLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    const/4 v2, 0x0

    aget v2, v8, v2

    float-to-int v0, v2

    move/from16 v18, v0

    const/4 v2, 0x1

    aget v2, v8, v2

    float-to-int v0, v2

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTargetCell:[I

    const/4 v3, 0x0

    aget v20, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTargetCell:[I

    const/4 v3, 0x1

    aget v21, v2, v3

    const/16 v24, 0x0

    invoke-virtual/range {p6 .. p6}, Lcom/baidu/launcher/ui/dragdrop/DragView;->getDragVisualizeOffset()Landroid/graphics/Point;

    move-result-object v25

    invoke-virtual/range {p6 .. p6}, Lcom/baidu/launcher/ui/dragdrop/DragView;->getDragRegion()Landroid/graphics/Rect;

    move-result-object v26

    move-object/from16 v16, v14

    move/from16 v22, v12

    move/from16 v23, v13

    invoke-virtual/range {v15 .. v26}, Lcom/baidu/launcher/ui/homeview/CellLayout;->visualizeDropLocation(Landroid/view/View;Landroid/graphics/Bitmap;IIIIIIZLandroid/graphics/Point;Landroid/graphics/Rect;)V

    .line 2034
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragMode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_7

    if-nez v34, :cond_2

    .line 2035
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragTargetLayout:Lcom/baidu/launcher/ui/homeview/CellLayout;

    if-eqz v2, :cond_2

    .line 2036
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragTargetLayout:Lcom/baidu/launcher/ui/homeview/CellLayout;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/homeview/CellLayout;->revertTempState()V

    goto/16 :goto_0

    .line 1980
    .end local v6           #targetCellDistance:F
    .end local v7           #dragOverView:Landroid/view/View;
    .end local v14           #child:Landroid/view/View;
    .end local v34           #nearestDropOccupied:Z
    :cond_8
    move-object/from16 v0, p7

    instance-of v2, v0, Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v2, :cond_9

    .line 1981
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v2, p7

    check-cast v2, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-static {v3, v2}, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->getSpanForWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)[I

    move-result-object v35

    .line 1982
    .local v35, spans:[I
    const/4 v2, 0x0

    aget v12, v35, v2

    .line 1983
    const/4 v2, 0x1

    aget v13, v35, v2

    .line 1984
    goto/16 :goto_1

    .end local v35           #spans:[I
    :cond_9
    move-object/from16 v0, p7

    instance-of v2, v0, Lcom/baidu/launcher/data/item/ListWidgetInfo;

    if-eqz v2, :cond_5

    move-object/from16 v33, p7

    .line 1985
    check-cast v33, Lcom/baidu/launcher/data/item/ListWidgetInfo;

    .line 1986
    .local v33, lwi:Lcom/baidu/launcher/data/item/ListWidgetInfo;
    move-object/from16 v0, v33

    iget v12, v0, Lcom/baidu/launcher/data/item/ListWidgetInfo;->spanX:I

    .line 1987
    move-object/from16 v0, v33

    iget v13, v0, Lcom/baidu/launcher/data/item/ListWidgetInfo;->spanY:I

    goto/16 :goto_1

    .line 2011
    .end local v33           #lwi:Lcom/baidu/launcher/data/item/ListWidgetInfo;
    .restart local v6       #targetCellDistance:F
    .restart local v7       #dragOverView:Landroid/view/View;
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragInfo:Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;

    iget-object v14, v2, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->cell:Landroid/view/View;

    goto/16 :goto_2

    .line 2021
    .restart local v14       #child:Landroid/view/View;
    .restart local v34       #nearestDropOccupied:Z
    :cond_b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragMode:I

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mReorderAlarm:Lcom/baidu/launcher/ui/animation/Alarm;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/animation/Alarm;->alarmPending()Z

    move-result v2

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mLastReorderX:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTargetCell:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    if-ne v2, v3, :cond_d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mLastReorderY:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTargetCell:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    if-eq v2, v3, :cond_6

    .line 2028
    :cond_d
    new-instance v15, Lcom/baidu/launcher/ui/homeview/Workspace$ReorderAlarmListener;

    move-object/from16 v16, p0

    move-object/from16 v17, v8

    move/from16 v18, v12

    move/from16 v19, v13

    move/from16 v20, v12

    move/from16 v21, v13

    move-object/from16 v22, p6

    move-object/from16 v23, v14

    invoke-direct/range {v15 .. v23}, Lcom/baidu/launcher/ui/homeview/Workspace$ReorderAlarmListener;-><init>(Lcom/baidu/launcher/ui/homeview/Workspace;[FIIIILcom/baidu/launcher/ui/dragdrop/DragView;Landroid/view/View;)V

    .line 2030
    .local v15, listener:Lcom/baidu/launcher/ui/homeview/Workspace$ReorderAlarmListener;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mReorderAlarm:Lcom/baidu/launcher/ui/animation/Alarm;

    invoke-virtual {v2, v15}, Lcom/baidu/launcher/ui/animation/Alarm;->setOnAlarmListener(Lcom/baidu/launcher/ui/animation/Alarm$OnAlarmListener;)V

    .line 2031
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mReorderAlarm:Lcom/baidu/launcher/ui/animation/Alarm;

    const-wide/16 v3, 0xfa

    invoke-virtual {v2, v3, v4}, Lcom/baidu/launcher/ui/animation/Alarm;->setAlarm(J)V

    goto/16 :goto_3
.end method

.method public onDrop(Lcom/baidu/launcher/ui/dragdrop/DragSource;IIIILcom/baidu/launcher/ui/dragdrop/DragView;Ljava/lang/Object;)V
    .locals 36
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 1822
    invoke-direct/range {p0 .. p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->clearVacantCache()V

    .line 1823
    invoke-direct/range {p0 .. p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getCurrentDropLayout()Lcom/baidu/launcher/ui/homeview/CellLayout;

    move-result-object v11

    .line 1824
    .local v11, cellLayout:Lcom/baidu/launcher/ui/homeview/CellLayout;
    if-nez v11, :cond_1

    .line 1923
    :cond_0
    :goto_0
    return-void

    .line 1826
    :cond_1
    new-instance v28, Lcom/baidu/launcher/ui/homeview/Workspace$DropAnimation;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11}, Lcom/baidu/launcher/ui/homeview/Workspace$DropAnimation;-><init>(Lcom/baidu/launcher/ui/homeview/Workspace;Lcom/baidu/launcher/ui/homeview/CellLayout;)V

    .line 1827
    .local v28, dropAnimation:Lcom/baidu/launcher/ui/homeview/Workspace$DropAnimation;
    move-object/from16 v0, v28

    invoke-virtual {v11, v0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1828
    new-instance v4, Lcom/baidu/launcher/ui/homeview/Workspace$2;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/baidu/launcher/ui/homeview/Workspace$2;-><init>(Lcom/baidu/launcher/ui/homeview/Workspace;)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lcom/baidu/launcher/ui/homeview/Workspace$DropAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1841
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragPoint:[F

    .local v10, dragPos:[F
    move-object/from16 v4, p0

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    .line 1842
    invoke-direct/range {v4 .. v10}, Lcom/baidu/launcher/ui/homeview/Workspace;->getDragViewVisualCenter(IIIILcom/baidu/launcher/ui/dragdrop/DragView;[F)[F

    .line 1843
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v10, v4}, Lcom/baidu/launcher/ui/homeview/Workspace;->mapPointFromSelfToChild(Lcom/baidu/launcher/ui/homeview/CellLayout;[FLandroid/graphics/Matrix;)V

    .line 1844
    const/4 v4, 0x0

    iput-boolean v4, v11, Lcom/baidu/launcher/ui/homeview/CellLayout;->isAddScreen:Z

    .line 1845
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    if-eq v0, v1, :cond_2

    .line 1846
    const/4 v4, 0x0

    aget v4, v10, v4

    float-to-int v5, v4

    const/4 v4, 0x1

    aget v4, v10, v4

    float-to-int v6, v4

    move-object/from16 v4, p0

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object v9, v11

    invoke-direct/range {v4 .. v9}, Lcom/baidu/launcher/ui/homeview/Workspace;->onDropExternal(IILcom/baidu/launcher/ui/dragdrop/DragView;Ljava/lang/Object;Lcom/baidu/launcher/ui/homeview/CellLayout;)V

    goto :goto_0

    .line 1849
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragInfo:Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;

    if-eqz v4, :cond_0

    .line 1850
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragInfo:Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;

    iget-object v0, v4, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->cell:Landroid/view/View;

    move-object/from16 v18, v0

    .line 1851
    .local v18, cell:Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getCurrentScreenIndex()I

    move-result v25

    .line 1852
    .local v25, index:I
    const/4 v4, -0x1

    move/from16 v0, v25

    if-eq v0, v4, :cond_0

    .line 1854
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragInfo:Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;

    iget v4, v4, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->screen:I

    move/from16 v0, v25

    if-eq v0, v4, :cond_3

    .line 1855
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragInfo:Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;

    iget v4, v4, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->screen:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Lcom/baidu/launcher/ui/homeview/CellLayout;

    .line 1856
    .local v33, originalCellLayout:Lcom/baidu/launcher/ui/homeview/CellLayout;
    move-object/from16 v0, v33

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/homeview/CellLayout;->removeView(Landroid/view/View;)V

    .line 1857
    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->addView(Landroid/view/View;)V

    .end local v33           #originalCellLayout:Lcom/baidu/launcher/ui/homeview/CellLayout;
    :cond_3
    move-object/from16 v31, p7

    .line 1863
    check-cast v31, Lcom/baidu/launcher/data/item/HomeItemInfo;

    .line 1864
    .local v31, item:Lcom/baidu/launcher/data/item/HomeItemInfo;
    if-eqz v31, :cond_0

    .line 1866
    move-object/from16 v0, v31

    iget v14, v0, Lcom/baidu/launcher/data/item/HomeItemInfo;->spanX:I

    .line 1867
    .local v14, minSpanX:I
    move-object/from16 v0, v31

    iget v15, v0, Lcom/baidu/launcher/data/item/HomeItemInfo;->spanY:I

    .line 1873
    .local v15, minSpanY:I
    const/4 v4, 0x2

    new-array v0, v4, [I

    move-object/from16 v20, v0

    .line 1874
    .local v20, resultSpan:[I
    const/4 v4, 0x0

    aget v4, v10, v4

    float-to-int v12, v4

    const/4 v4, 0x1

    aget v4, v10, v4

    float-to-int v13, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTargetCell:[I

    move-object/from16 v19, v0

    const/16 v21, 0x1

    move/from16 v16, v14

    move/from16 v17, v15

    invoke-virtual/range {v11 .. v21}, Lcom/baidu/launcher/ui/homeview/CellLayout;->createArea(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTargetCell:[I

    .line 1878
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTargetCell:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    if-ltz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTargetCell:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    if-ltz v4, :cond_5

    const/16 v29, 0x1

    .line 1880
    .local v29, foundCell:Z
    :goto_1
    if-eqz v29, :cond_0

    .line 1882
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v32

    check-cast v32, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;

    .line 1883
    .local v32, lp:Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTargetCell:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    move-object/from16 v0, v32

    iput v4, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->tmpCellX:I

    move-object/from16 v0, v32

    iput v4, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellX:I

    .line 1884
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTargetCell:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    move-object/from16 v0, v32

    iput v4, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->tmpCellY:I

    move-object/from16 v0, v32

    iput v4, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellY:I

    .line 1885
    move-object/from16 v0, v31

    iget v4, v0, Lcom/baidu/launcher/data/item/HomeItemInfo;->spanX:I

    move-object/from16 v0, v32

    iput v4, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellHSpan:I

    .line 1886
    move-object/from16 v0, v31

    iget v4, v0, Lcom/baidu/launcher/data/item/HomeItemInfo;->spanY:I

    move-object/from16 v0, v32

    iput v4, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellVSpan:I

    .line 1887
    const/4 v4, 0x1

    move-object/from16 v0, v32

    iput-boolean v4, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 1889
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v4}, Lcom/baidu/launcher/ui/logic/ViewManager;->getDragLayer()Lcom/baidu/launcher/ui/dragdrop/DragLayer;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTargetCell:[I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v4}, Lcom/baidu/launcher/ui/logic/ViewManager;->getStatusBarHeight()I

    move-result v9

    move-object v4, v11

    move-object/from16 v5, p6

    move-object/from16 v7, v18

    invoke-virtual/range {v4 .. v9}, Lcom/baidu/launcher/ui/homeview/CellLayout;->onDropChild(Lcom/baidu/launcher/ui/dragdrop/DragView;Lcom/baidu/launcher/ui/dragdrop/DragLayer;Landroid/view/View;[II)V

    .line 1891
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/baidu/launcher/data/item/HomeItemInfo;

    .line 1893
    .local v22, info:Lcom/baidu/launcher/data/item/HomeItemInfo;
    move-object/from16 v0, v18

    instance-of v4, v0, Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;

    if-eqz v4, :cond_4

    move-object/from16 v30, v18

    .line 1894
    check-cast v30, Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;

    .line 1895
    .local v30, hostView:Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;
    invoke-virtual/range {v30 .. v30}, Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v34

    .line 1896
    .local v34, pinfo:Landroid/appwidget/AppWidgetProviderInfo;
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v4

    if-eqz v4, :cond_4

    move-object/from16 v0, v34

    iget v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    if-eqz v4, :cond_4

    .line 1898
    new-instance v35, Lcom/baidu/launcher/ui/homeview/Workspace$3;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    move-object/from16 v3, v30

    invoke-direct {v0, v1, v2, v3, v11}, Lcom/baidu/launcher/ui/homeview/Workspace$3;-><init>(Lcom/baidu/launcher/ui/homeview/Workspace;Lcom/baidu/launcher/data/item/HomeItemInfo;Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;Lcom/baidu/launcher/ui/homeview/CellLayout;)V

    .line 1904
    .local v35, resizeRunnable:Ljava/lang/Runnable;
    new-instance v4, Lcom/baidu/launcher/ui/homeview/Workspace$4;

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v4, v0, v1}, Lcom/baidu/launcher/ui/homeview/Workspace$4;-><init>(Lcom/baidu/launcher/ui/homeview/Workspace;Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/baidu/launcher/ui/homeview/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 1916
    .end local v30           #hostView:Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;
    .end local v34           #pinfo:Landroid/appwidget/AppWidgetProviderInfo;
    .end local v35           #resizeRunnable:Ljava/lang/Runnable;
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/baidu/launcher/data/HomeDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/HomeDataManager;

    move-result-object v21

    const-wide/16 v23, -0x64

    move-object/from16 v0, v32

    iget v0, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellX:I

    move/from16 v26, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellY:I

    move/from16 v27, v0

    invoke-virtual/range {v21 .. v27}, Lcom/baidu/launcher/data/HomeDataManager;->moveItemInDatabase(Lcom/baidu/launcher/data/item/HomeItemInfo;JIII)V

    goto/16 :goto_0

    .line 1878
    .end local v22           #info:Lcom/baidu/launcher/data/item/HomeItemInfo;
    .end local v29           #foundCell:Z
    .end local v32           #lp:Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;
    :cond_5
    const/16 v29, 0x0

    goto/16 :goto_1
.end method

.method public onDropCompleted(Landroid/view/View;Z)V
    .locals 7
    .parameter "target"
    .parameter "success"

    .prologue
    const/4 v6, 0x0

    .line 2370
    invoke-direct {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->clearVacantCache()V

    .line 2372
    if-eqz p2, :cond_2

    .line 2373
    if-eq p1, p0, :cond_1

    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragInfo:Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;

    if-eqz v2, :cond_1

    .line 2374
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragInfo:Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;

    iget v2, v2, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->screen:I

    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/homeview/CellLayout;

    .line 2375
    .local v0, cellLayout:Lcom/baidu/launcher/ui/homeview/CellLayout;
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragInfo:Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;

    iget-object v2, v2, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0, v2}, Lcom/baidu/launcher/ui/homeview/CellLayout;->removeView(Landroid/view/View;)V

    .line 2377
    invoke-static {}, Lcom/baidu/launcher/utils/EventNumberUtil;->getInstance()Lcom/baidu/launcher/utils/EventNumberUtil;

    move-result-object v1

    .line 2378
    .local v1, enventNumberUtil:Lcom/baidu/launcher/utils/EventNumberUtil;
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragInfo:Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;

    iget-object v2, v2, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/data/item/BaseItemInfo;

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/utils/EventNumberUtil;->checkEventInfo(Lcom/baidu/launcher/data/item/BaseItemInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2379
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragInfo:Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;

    iget-object v2, v2, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/utils/EventNumberUtil;->unregisterView(Landroid/view/View;)Z

    .line 2382
    :cond_0
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragInfo:Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;

    iget-object v2, v2, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->cell:Landroid/view/View;

    instance-of v2, v2, Lcom/baidu/launcher/ui/dragdrop/DropTarget;

    if-eqz v2, :cond_1

    .line 2383
    iget-object v3, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragController:Lcom/baidu/launcher/ui/dragdrop/DragController;

    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragInfo:Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;

    iget-object v2, v2, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->cell:Landroid/view/View;

    check-cast v2, Lcom/baidu/launcher/ui/dragdrop/DropTarget;

    invoke-virtual {v3, v2}, Lcom/baidu/launcher/ui/dragdrop/DragController;->removeDropTarget(Lcom/baidu/launcher/ui/dragdrop/DropTarget;)V

    .line 2397
    .end local v0           #cellLayout:Lcom/baidu/launcher/ui/homeview/CellLayout;
    .end local v1           #enventNumberUtil:Lcom/baidu/launcher/utils/EventNumberUtil;
    :cond_1
    :goto_0
    iput-object v6, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    .line 2398
    iput-object v6, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragInfo:Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;

    .line 2399
    return-void

    .line 2388
    :cond_2
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragInfo:Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;

    if-eqz v2, :cond_1

    .line 2389
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragInfo:Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;

    iget v2, v2, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->screen:I

    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/homeview/CellLayout;

    .line 2390
    .restart local v0       #cellLayout:Lcom/baidu/launcher/ui/homeview/CellLayout;
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragInfo:Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;

    iget-object v2, v2, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->cell:Landroid/view/View;

    iget-object v3, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragController:Lcom/baidu/launcher/ui/dragdrop/DragController;

    invoke-virtual {v3}, Lcom/baidu/launcher/ui/dragdrop/DragController;->getDragView()Lcom/baidu/launcher/ui/dragdrop/DragView;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v4}, Lcom/baidu/launcher/ui/logic/ViewManager;->getDragLayer()Lcom/baidu/launcher/ui/dragdrop/DragLayer;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v5}, Lcom/baidu/launcher/ui/logic/ViewManager;->getStatusBarHeight()I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/baidu/launcher/ui/homeview/CellLayout;->onDropAborted(Landroid/view/View;Landroid/view/View;Lcom/baidu/launcher/ui/dragdrop/DragLayer;I)V

    .line 2392
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragInfo:Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;

    iget v2, v2, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->screen:I

    invoke-direct {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getCurrentScreenIndex()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 2393
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragInfo:Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;

    iget v2, v2, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->screen:I

    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/homeview/Workspace;->snapToScreen(I)V

    goto :goto_0
.end method

.method public onFlingToDelete(Lcom/baidu/launcher/ui/dragdrop/DragSource;Ljava/lang/Object;IILandroid/graphics/PointF;)V
    .locals 0
    .parameter "source"
    .parameter "dragInfo"
    .parameter "x"
    .parameter "y"
    .parameter "vec"

    .prologue
    .line 4131
    return-void
.end method

.method public onFlingToDeleteCompleted()V
    .locals 0

    .prologue
    .line 4126
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 19
    .parameter "ev"

    .prologue
    .line 1229
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->isVisible()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1230
    const/4 v2, 0x0

    .line 1393
    :goto_0
    return v2

    .line 1234
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->multiTouchController:Lcom/baidu/launcher/ui/homeview/MultiTouchController;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1235
    invoke-direct/range {p0 .. p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->cancelCurrentPageLongPress()V

    .line 1236
    const/4 v2, 0x0

    goto :goto_0

    .line 1239
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mShowingPreview:Z

    if-eqz v2, :cond_2

    .line 1240
    const/4 v2, 0x1

    goto :goto_0

    .line 1257
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    .line 1258
    .local v9, action:I
    const/4 v2, 0x2

    if-ne v9, v2, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTouchState:I

    if-eqz v2, :cond_3

    .line 1259
    const/4 v2, 0x1

    goto :goto_0

    .line 1262
    :cond_3
    invoke-direct/range {p0 .. p1}, Lcom/baidu/launcher/ui/homeview/Workspace;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 1264
    and-int/lit16 v2, v9, 0xff

    packed-switch v2, :pswitch_data_0

    .line 1393
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTouchState:I

    if-eqz v2, :cond_10

    const/4 v2, 0x1

    goto :goto_0

    .line 1278
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mBulletinEmbedder:Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->isSpaceScrolling()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1279
    const/4 v2, 0x0

    goto :goto_0

    .line 1280
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v13

    .line 1281
    .local v13, x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v16

    .line 1282
    .local v16, y:F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mLastMotionX:F

    sub-float v2, v13, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v14, v2

    .line 1283
    .local v14, xDiff:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mLastMotionY:F

    sub-float v2, v16, v2

    float-to-int v0, v2

    move/from16 v17, v0

    .line 1285
    .local v17, yDiff:I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTouchSlop:I

    .line 1286
    .local v12, touchSlop:I
    if-le v14, v12, :cond_7

    const/4 v15, 0x1

    .line 1287
    .local v15, xMoved:Z
    :goto_2
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v2, v12, :cond_8

    const/16 v18, 0x1

    .line 1288
    .local v18, yMoved:Z
    :goto_3
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    move-result v2

    mul-int/lit8 v3, v12, 0x2

    if-le v2, v3, :cond_9

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    if-le v2, v3, :cond_9

    const/4 v11, 0x1

    .line 1289
    .local v11, gesture:Z
    :goto_4
    if-nez v15, :cond_6

    if-eqz v18, :cond_b

    .line 1290
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mBulletinEmbedder:Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;

    move/from16 v0, v17

    invoke-virtual {v2, v14, v0}, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->shouldHandleTouchEvent(II)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1291
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTouchState:I

    .line 1292
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1286
    .end local v11           #gesture:Z
    .end local v15           #xMoved:Z
    .end local v18           #yMoved:Z
    :cond_7
    const/4 v15, 0x0

    goto :goto_2

    .line 1287
    .restart local v15       #xMoved:Z
    :cond_8
    const/16 v18, 0x0

    goto :goto_3

    .line 1288
    .restart local v18       #yMoved:Z
    :cond_9
    const/4 v11, 0x0

    goto :goto_4

    .line 1295
    .restart local v11       #gesture:Z
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mAllowLongPress:Z

    if-eqz v2, :cond_b

    .line 1296
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mAllowLongPress:Z

    .line 1302
    move-object/from16 v0, p0

    iget v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 1303
    .local v10, currentScreen:Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->cancelLongPress()V

    .line 1307
    .end local v10           #currentScreen:Landroid/view/View;
    :cond_b
    if-eqz v11, :cond_c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v13, v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->inCurrentScreenWidgetRange(FF)Z

    move-result v2

    if-nez v2, :cond_c

    .line 1309
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->doUpDownGesture(I)V

    .line 1310
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1311
    :cond_c
    if-eqz v15, :cond_4

    .line 1313
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTouchState:I

    .line 1314
    move-object/from16 v0, p0

    iget v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollX:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTouchX:F

    .line 1315
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    long-to-float v2, v2

    const v3, 0x4e6e6b28

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mSmoothingTime:F

    .line 1316
    move-object/from16 v0, p0

    iget v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/baidu/launcher/ui/homeview/Workspace;->enableChildrenCache(II)V

    .line 1317
    invoke-virtual/range {p0 .. p1}, Lcom/baidu/launcher/ui/homeview/Workspace;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1318
    move-object/from16 v0, p0

    iput v13, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mLastDownX:F

    move-object/from16 v0, p0

    iput v13, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mLastMotionX:F

    .line 1319
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1331
    .end local v11           #gesture:Z
    .end local v12           #touchSlop:I
    .end local v13           #x:F
    .end local v14           #xDiff:I
    .end local v15           #xMoved:Z
    .end local v16           #y:F
    .end local v17           #yDiff:I
    .end local v18           #yMoved:Z
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mBulletinEmbedder:Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->setSpaceScrolling(Z)V

    .line 1332
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragCheck:Lcom/baidu/launcher/ui/homeview/Workspace$DragCheck;

    if-nez v2, :cond_d

    .line 1333
    new-instance v2, Lcom/baidu/launcher/ui/homeview/Workspace$DragCheck;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/baidu/launcher/ui/homeview/Workspace$DragCheck;-><init>(Lcom/baidu/launcher/ui/homeview/Workspace;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragCheck:Lcom/baidu/launcher/ui/homeview/Workspace$DragCheck;

    .line 1336
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v13

    .line 1337
    .restart local v13       #x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v16

    .line 1339
    .restart local v16       #y:F
    move-object/from16 v0, p0

    iput v13, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mLastMotionX:F

    .line 1340
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/baidu/launcher/ui/homeview/Workspace;->mLastMotionY:F

    .line 1341
    move-object/from16 v0, p0

    iput v13, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mFirstDownX:F

    .line 1343
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mAllowLongPress:Z

    .line 1350
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v2, 0x0

    :goto_5
    move-object/from16 v0, p0

    iput v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTouchState:I

    goto/16 :goto_1

    :cond_e
    const/4 v2, 0x1

    goto :goto_5

    .line 1359
    .end local v13           #x:F
    .end local v16           #y:F
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragCheck:Lcom/baidu/launcher/ui/homeview/Workspace$DragCheck;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/baidu/launcher/ui/homeview/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1360
    move-object/from16 v0, p0

    iget v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTouchState:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_f

    .line 1361
    move-object/from16 v0, p0

    iget v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/baidu/launcher/ui/homeview/CellLayout;

    .line 1362
    .local v10, currentScreen:Lcom/baidu/launcher/ui/homeview/CellLayout;
    invoke-virtual {v10}, Lcom/baidu/launcher/ui/homeview/CellLayout;->lastDownOnOccupiedCell()Z

    move-result v2

    if-nez v2, :cond_f

    .line 1363
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTempCell:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/baidu/launcher/ui/homeview/Workspace;->getLocationOnScreen([I)V

    .line 1368
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const-string v4, "android.wallpaper.tap"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTempCell:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTempCell:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    .line 1376
    .end local v10           #currentScreen:Lcom/baidu/launcher/ui/homeview/CellLayout;
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->clearChildrenCache()V

    .line 1377
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTouchState:I

    .line 1378
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mBulletinEmbedder:Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->setSpaceScrolling(Z)V

    .line 1380
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mAllowLongPress:Z

    .line 1381
    invoke-direct/range {p0 .. p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->releaseVelocityTracker()V

    goto/16 :goto_1

    .line 1393
    :cond_10
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1264
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 1121
    const/4 v2, 0x0

    .line 1123
    .local v2, childLeft:I
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v4

    .line 1124
    .local v4, count:I
    const/4 v6, 0x1

    if-le v4, v6, :cond_0

    .line 1126
    iget v6, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mPageSpacing:I

    if-gez v6, :cond_0

    .line 1127
    sub-int v6, p4, p2

    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    invoke-direct {p0, v6}, Lcom/baidu/launcher/ui/homeview/Workspace;->setPageSpacing(I)V

    .line 1131
    :cond_0
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v4, :cond_2

    .line 1132
    invoke-virtual {p0, v5}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1133
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_1

    .line 1134
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v3

    .line 1135
    .local v3, childWidth:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 1136
    .local v1, childHeight:I
    iget v6, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mPaddingTop:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v2

    iget v8, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mPaddingTop:I

    add-int/2addr v8, v1

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v0, v2, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 1139
    iget v6, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mPageSpacing:I

    add-int/2addr v6, v3

    add-int/2addr v2, v6

    .line 1131
    .end local v1           #childHeight:I
    .end local v3           #childWidth:I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1142
    .end local v0           #child:Landroid/view/View;
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 14
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 1080
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 1082
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    .line 1083
    .local v10, width:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    .line 1084
    .local v11, widthMode:I
    const/high16 v12, 0x4000

    if-eq v11, v12, :cond_0

    .line 1085
    new-instance v12, Ljava/lang/IllegalStateException;

    const-string v13, "Workspace can only be used in EXACTLY mode."

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1088
    :cond_0
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 1089
    .local v4, height:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 1090
    .local v5, heightMode:I
    const/high16 v12, 0x4000

    if-eq v5, v12, :cond_1

    .line 1091
    new-instance v12, Ljava/lang/IllegalStateException;

    const-string v13, "Workspace can only be used in EXACTLY mode."

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1094
    :cond_1
    iget v12, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mPaddingTop:I

    iget v13, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mPaddingBottom:I

    add-int v9, v12, v13

    .line 1095
    .local v9, verticalPadding:I
    iget v12, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mPaddingLeft:I

    iget v13, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mPaddingRight:I

    add-int v6, v12, v13

    .line 1098
    .local v6, horizontalPadding:I
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v3

    .line 1099
    .local v3, count:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v3, :cond_2

    .line 1100
    invoke-virtual {p0, v7}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1101
    .local v0, child:Landroid/view/View;
    sub-int v12, v10, v6

    const/high16 v13, 0x4000

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1103
    .local v2, childWidthMeasureSpec:I
    sub-int v12, v4, v9

    const/high16 v13, 0x4000

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1105
    .local v1, childHeightMeasureSpec:I
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    .line 1099
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1107
    .end local v0           #child:Landroid/view/View;
    .end local v1           #childHeightMeasureSpec:I
    .end local v2           #childWidthMeasureSpec:I
    :cond_2
    invoke-direct {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->invalidateCachedOffsets()V

    .line 1108
    iget-boolean v12, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mFirstLayout:Z

    if-eqz v12, :cond_3

    .line 1109
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lcom/baidu/launcher/ui/homeview/Workspace;->setHorizontalScrollBarEnabled(Z)V

    .line 1110
    iget v12, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v12}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildOffset(I)I

    move-result v12

    iget v13, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v13}, Lcom/baidu/launcher/ui/homeview/Workspace;->getRelativeChildOffset(I)I

    move-result v13

    sub-int v8, v12, v13

    .line 1111
    .local v8, newX:I
    const/4 v12, 0x0

    invoke-virtual {p0, v8, v12}, Lcom/baidu/launcher/ui/homeview/Workspace;->scrollTo(II)V

    .line 1112
    const/4 v12, 0x1

    invoke-virtual {p0, v12}, Lcom/baidu/launcher/ui/homeview/Workspace;->setHorizontalScrollBarEnabled(Z)V

    .line 1113
    invoke-direct {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->updateWallpaperOffset()V

    .line 1114
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mFirstLayout:Z

    .line 1116
    .end local v8           #newX:I
    :cond_3
    iget-object v12, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mBulletinEmbedder:Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;

    invoke-virtual {v12, v10}, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->setScreenWidth(I)V

    .line 1117
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 5325
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 5326
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/homeview/CellLayout;

    .line 5327
    .local v1, layout:Lcom/baidu/launcher/ui/homeview/CellLayout;
    invoke-virtual {v1}, Lcom/baidu/launcher/ui/homeview/CellLayout;->onPause()V

    .line 5325
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5329
    .end local v1           #layout:Lcom/baidu/launcher/ui/homeview/CellLayout;
    :cond_0
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 4
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 1160
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 1161
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/logic/ViewManager;->getOpenFolder()Lcom/baidu/launcher/ui/folder/Folder;

    move-result-object v1

    .line 1162
    .local v1, openFolder:Lcom/baidu/launcher/ui/folder/Folder;
    if-eqz v1, :cond_0

    .line 1163
    invoke-virtual {v1, p1, p2}, Lcom/baidu/launcher/ui/folder/Folder;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v2

    .line 1174
    .end local v1           #openFolder:Lcom/baidu/launcher/ui/folder/Folder;
    :goto_0
    return v2

    .line 1166
    .restart local v1       #openFolder:Lcom/baidu/launcher/ui/folder/Folder;
    :cond_0
    iget v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mNextScreen:I

    const/4 v3, -0x2

    if-eq v2, v3, :cond_2

    .line 1167
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mNextScreen:I

    .line 1171
    .local v0, focusableScreen:I
    :goto_1
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    .line 1174
    .end local v0           #focusableScreen:I
    .end local v1           #openFolder:Lcom/baidu/launcher/ui/folder/Folder;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 1169
    .restart local v1       #openFolder:Lcom/baidu/launcher/ui/folder/Folder;
    :cond_2
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I

    .restart local v0       #focusableScreen:I
    goto :goto_1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 1795
    move-object v0, p1

    check-cast v0, Lcom/baidu/launcher/ui/homeview/Workspace$SavedState;

    .line 1796
    .local v0, savedState:Lcom/baidu/launcher/ui/homeview/Workspace$SavedState;
    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/Workspace$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1797
    iget-boolean v1, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mStateRestored:Z

    if-eqz v1, :cond_1

    .line 1799
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mStateRestored:Z

    .line 1804
    :cond_0
    :goto_0
    return-void

    .line 1800
    :cond_1
    iget v1, v0, Lcom/baidu/launcher/ui/homeview/Workspace$SavedState;->currentScreen:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1801
    iget v1, v0, Lcom/baidu/launcher/ui/homeview/Workspace$SavedState;->currentScreen:I

    iput v1, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I

    .line 1802
    iget v1, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I

    sput v1, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->currentScreen:I

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 1788
    new-instance v0, Lcom/baidu/launcher/ui/homeview/Workspace$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/baidu/launcher/ui/homeview/Workspace$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1789
    .local v0, state:Lcom/baidu/launcher/ui/homeview/Workspace$SavedState;
    iget v1, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I

    iput v1, v0, Lcom/baidu/launcher/ui/homeview/Workspace$SavedState;->currentScreen:I

    .line 1790
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "ev"

    .prologue
    .line 1475
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->isVisible()Z

    move-result v10

    if-nez v10, :cond_1

    .line 1477
    iget-object v10, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v10}, Landroid/widget/Scroller;->isFinished()Z

    move-result v10

    if-nez v10, :cond_0

    .line 1478
    iget-object v10, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v10}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1480
    :cond_0
    iget v10, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v10}, Lcom/baidu/launcher/ui/homeview/Workspace;->snapToScreen(I)V

    .line 1481
    const/4 v10, 0x0

    .line 1603
    :goto_0
    return v10

    .line 1485
    :cond_1
    iget-boolean v10, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mShowingPreview:Z

    if-eqz v10, :cond_2

    .line 1486
    iget-object v10, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->multiTouchController:Lcom/baidu/launcher/ui/homeview/MultiTouchController;

    invoke-virtual {v10, p1}, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1487
    const/4 v10, 0x1

    goto :goto_0

    .line 1490
    :cond_2
    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/homeview/Workspace;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 1492
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1494
    .local v0, action:I
    and-int/lit16 v10, v0, 0xff

    packed-switch v10, :pswitch_data_0

    .line 1603
    :cond_3
    :goto_1
    const/4 v10, 0x1

    goto :goto_0

    .line 1500
    :pswitch_0
    iget-object v10, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v10}, Landroid/widget/Scroller;->isFinished()Z

    move-result v10

    if-nez v10, :cond_4

    .line 1501
    iget-object v10, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v10}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1505
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    iput v10, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mLastDownX:F

    iput v10, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mLastMotionX:F

    .line 1506
    const/4 v10, 0x0

    iput v10, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCorrectionFactor:I

    .line 1509
    iget v10, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTouchState:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    .line 1510
    iget v10, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I

    add-int/lit8 v10, v10, -0x1

    iget v11, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {p0, v10, v11}, Lcom/baidu/launcher/ui/homeview/Workspace;->enableChildrenCache(II)V

    goto :goto_1

    .line 1517
    :pswitch_1
    const/4 v10, 0x0

    iput v10, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCorrectionFactor:I

    .line 1518
    iget-object v10, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragCheck:Lcom/baidu/launcher/ui/homeview/Workspace$DragCheck;

    invoke-virtual {p0, v10}, Lcom/baidu/launcher/ui/homeview/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1519
    iget v10, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTouchState:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    .line 1523
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    .line 1524
    .local v9, x:F
    iget v10, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mLastMotionX:F

    sub-float v2, v10, v9

    .line 1525
    .local v2, deltaX:F
    iget v10, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mFirstDownX:F

    sub-float v10, v9, v10

    iput v10, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mMoveDeltaX:F

    .line 1526
    const/4 v10, 0x0

    cmpg-float v10, v2, v10

    if-gez v10, :cond_6

    const/4 v10, 0x1

    :goto_2
    iput-boolean v10, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mMoveToRight:Z

    .line 1527
    float-to-int v10, v2

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    if-lez v10, :cond_5

    .line 1528
    iget v10, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTouchX:F

    add-float/2addr v10, v2

    iput v10, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTouchX:F

    .line 1529
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    long-to-float v10, v10

    const v11, 0x4e6e6b28

    div-float/2addr v10, v11

    iput v10, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mSmoothingTime:F

    .line 1530
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->postInvalidate()V

    .line 1531
    iput v9, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mLastMotionX:F

    .line 1533
    :cond_5
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {p0, v10, v11}, Lcom/baidu/launcher/ui/homeview/Workspace;->showAllAppItemAnim(ZZ)V

    goto :goto_1

    .line 1526
    :cond_6
    const/4 v10, 0x0

    goto :goto_2

    .line 1540
    .end local v2           #deltaX:F
    .end local v9           #x:F
    :pswitch_2
    iget-object v10, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragCheck:Lcom/baidu/launcher/ui/homeview/Workspace$DragCheck;

    invoke-virtual {p0, v10}, Lcom/baidu/launcher/ui/homeview/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1541
    iget v10, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTouchState:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_a

    .line 1542
    iget-object v6, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1543
    .local v6, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v10, 0x3e8

    iget v11, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mMaximumVelocity:I

    int-to-float v11, v11

    invoke-virtual {v6, v10, v11}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1544
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    invoke-virtual {v6, v10}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v10

    float-to-int v7, v10

    .line 1546
    .local v7, velocityX:I
    iget v10, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v10}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/baidu/launcher/ui/homeview/Workspace;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v4

    .line 1547
    .local v4, screenWidth:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    .line 1548
    .restart local v9       #x:F
    sget-boolean v10, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->loop:Z

    if-eqz v10, :cond_b

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_b

    const/4 v3, 0x1

    .line 1549
    .local v3, loop:Z
    :goto_3
    if-eqz v3, :cond_7

    iget v10, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollX:I

    if-ltz v10, :cond_8

    :cond_7
    iget v10, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mLastDownX:F

    sub-float v10, v9, v10

    const/4 v11, 0x0

    cmpg-float v10, v10, v11

    if-gez v10, :cond_c

    :cond_8
    mul-int/lit8 v10, v4, 0x2

    div-int/lit8 v2, v10, 0x3

    .line 1551
    .local v2, deltaX:I
    :goto_4
    iget v10, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollX:I

    if-eqz v3, :cond_9

    iget v11, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollX:I

    if-gez v11, :cond_9

    neg-int v2, v2

    .end local v2           #deltaX:I
    :cond_9
    add-int/2addr v10, v2

    div-int v8, v10, v4

    .line 1553
    .local v8, whichScreen:I
    iget v10, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollX:I

    int-to-float v10, v10

    int-to-float v11, v4

    div-float v5, v10, v11

    .line 1555
    .local v5, scrolledPos:F
    iget-object v10, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mBulletinEmbedder:Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;

    invoke-virtual {v10, v8, v7, v5, v3}, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->interceptNextScreenCompute(IIFZ)Z

    move-result v10

    if-nez v10, :cond_a

    .line 1556
    const/16 v10, 0x258

    if-le v7, v10, :cond_f

    iget v11, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I

    if-eqz v3, :cond_d

    const/4 v10, -0x1

    :goto_5
    if-le v11, v10, :cond_f

    .line 1559
    int-to-float v10, v8

    cmpg-float v10, v5, v10

    if-gez v10, :cond_e

    iget v10, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I

    add-int/lit8 v1, v10, -0x1

    .line 1561
    .local v1, bound:I
    :goto_6
    invoke-static {v8, v1}, Ljava/lang/Math;->min(II)I

    move-result v10

    const/4 v11, -0x1

    invoke-virtual {p0, v10, v7, v11}, Lcom/baidu/launcher/ui/homeview/Workspace;->snapToScreen(III)V

    .line 1574
    .end local v1           #bound:I
    .end local v3           #loop:Z
    .end local v4           #screenWidth:I
    .end local v5           #scrolledPos:F
    .end local v6           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v7           #velocityX:I
    .end local v8           #whichScreen:I
    .end local v9           #x:F
    :cond_a
    :goto_7
    const/4 v10, 0x0

    iput v10, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTouchState:I

    .line 1575
    iget-object v10, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mBulletinEmbedder:Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->setSpaceScrolling(Z)V

    .line 1577
    invoke-direct {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->releaseVelocityTracker()V

    goto/16 :goto_1

    .line 1548
    .restart local v4       #screenWidth:I
    .restart local v6       #velocityTracker:Landroid/view/VelocityTracker;
    .restart local v7       #velocityX:I
    .restart local v9       #x:F
    :cond_b
    const/4 v3, 0x0

    goto :goto_3

    .line 1549
    .restart local v3       #loop:Z
    :cond_c
    div-int/lit8 v2, v4, 0x3

    goto :goto_4

    .line 1556
    .restart local v5       #scrolledPos:F
    .restart local v8       #whichScreen:I
    :cond_d
    const/4 v10, 0x0

    goto :goto_5

    .line 1559
    :cond_e
    iget v1, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I

    goto :goto_6

    .line 1562
    :cond_f
    const/16 v10, -0x258

    if-ge v7, v10, :cond_12

    iget v11, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v12

    if-eqz v3, :cond_10

    const/4 v10, 0x0

    :goto_8
    sub-int v10, v12, v10

    if-ge v11, v10, :cond_12

    .line 1566
    int-to-float v10, v8

    cmpl-float v10, v5, v10

    if-lez v10, :cond_11

    iget v10, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I

    add-int/lit8 v1, v10, 0x1

    .line 1568
    .restart local v1       #bound:I
    :goto_9
    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v10

    const/4 v11, -0x1

    invoke-virtual {p0, v10, v7, v11}, Lcom/baidu/launcher/ui/homeview/Workspace;->snapToScreen(III)V

    goto :goto_7

    .line 1562
    .end local v1           #bound:I
    :cond_10
    const/4 v10, 0x1

    goto :goto_8

    .line 1566
    :cond_11
    iget v1, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I

    goto :goto_9

    .line 1570
    :cond_12
    const/4 v10, 0x0

    const/4 v11, -0x1

    invoke-virtual {p0, v8, v10, v11}, Lcom/baidu/launcher/ui/homeview/Workspace;->snapToScreen(III)V

    goto :goto_7

    .line 1583
    .end local v3           #loop:Z
    .end local v4           #screenWidth:I
    .end local v5           #scrolledPos:F
    .end local v6           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v7           #velocityX:I
    .end local v8           #whichScreen:I
    .end local v9           #x:F
    :pswitch_3
    iget-object v10, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragCheck:Lcom/baidu/launcher/ui/homeview/Workspace$DragCheck;

    invoke-virtual {p0, v10}, Lcom/baidu/launcher/ui/homeview/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1584
    iget v10, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTouchState:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_13

    .line 1585
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getWidth()I

    move-result v4

    .line 1586
    .restart local v4       #screenWidth:I
    iget v10, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollX:I

    div-int/lit8 v11, v4, 0x2

    add-int/2addr v10, v11

    div-int v8, v10, v4

    .line 1587
    .restart local v8       #whichScreen:I
    const/4 v10, 0x0

    const/4 v11, -0x1

    invoke-virtual {p0, v8, v10, v11}, Lcom/baidu/launcher/ui/homeview/Workspace;->snapToScreen(III)V

    .line 1589
    .end local v4           #screenWidth:I
    .end local v8           #whichScreen:I
    :cond_13
    const/4 v10, 0x0

    iput v10, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTouchState:I

    .line 1590
    iget-object v10, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mBulletinEmbedder:Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->setSpaceScrolling(Z)V

    .line 1592
    invoke-direct {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->releaseVelocityTracker()V

    goto/16 :goto_1

    .line 1494
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected onViewAdded(Landroid/view/View;)V
    .locals 3
    .parameter "child"

    .prologue
    .line 479
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 480
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    .line 481
    instance-of v1, p1, Lcom/baidu/launcher/ui/homeview/CellLayout;

    if-nez v1, :cond_0

    .line 482
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "A Workspace can only have CellLayout children."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object v0, p1

    .line 484
    check-cast v0, Lcom/baidu/launcher/ui/homeview/CellLayout;

    .line 485
    .local v0, cl:Lcom/baidu/launcher/ui/homeview/CellLayout;
    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->enableHardwareLayers()V

    .line 486
    invoke-direct {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->invalidateCachedOffsets()V

    .line 487
    const/4 v1, 0x0

    iput v1, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mMaxScrollX:I

    .line 489
    .end local v0           #cl:Lcom/baidu/launcher/ui/homeview/CellLayout;
    :cond_1
    return-void
.end method

.method public openPreview(ZIZ)V
    .locals 1
    .parameter "open"
    .parameter "index"
    .parameter "animation"

    .prologue
    .line 3166
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mBulletinEmbedder:Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->inBulletinScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3222
    :cond_0
    return-void
.end method

.method public removeCreateFolderCallbacks()V
    .locals 1

    .prologue
    .line 2074
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/homeview/Workspace;->removeCreateFolderCallbacks(I)V

    .line 2075
    return-void
.end method

.method public removeCreateFolderCallbacks(I)V
    .locals 1
    .parameter "screen"

    .prologue
    .line 2078
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/homeview/CellLayout;

    .line 2079
    .local v0, cellLayout:Lcom/baidu/launcher/ui/homeview/CellLayout;
    if-nez v0, :cond_0

    .line 2082
    :goto_0
    return-void

    .line 2081
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->removeCreateFolderCallbacks()V

    goto :goto_0
.end method

.method public removeDropTarget(Lcom/baidu/launcher/ui/dragdrop/DropTarget;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 3060
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragController:Lcom/baidu/launcher/ui/dragdrop/DragController;

    if-eqz v0, :cond_0

    .line 3061
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragController:Lcom/baidu/launcher/ui/dragdrop/DragController;

    invoke-virtual {v0, p1}, Lcom/baidu/launcher/ui/dragdrop/DragController;->removeDropTarget(Lcom/baidu/launcher/ui/dragdrop/DropTarget;)V

    .line 3062
    :cond_0
    return-void
.end method

.method public removeItems(Ljava/util/ArrayList;)V
    .locals 10
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
    .line 2497
    .local p1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListAppInfo;>;"
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v8

    .line 2499
    .local v8, count:I
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v5

    .line 2500
    .local v5, widgets:Landroid/appwidget/AppWidgetManager;
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/launcher/data/HomeDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/HomeDataManager;

    move-result-object v4

    .line 2501
    .local v4, homeDataManager:Lcom/baidu/launcher/data/HomeDataManager;
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 2502
    .local v3, packageNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 2503
    .local v6, appCount:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v6, :cond_1

    .line 2504
    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/data/item/ListAppInfo;

    iget-object v7, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->componentName:Landroid/content/ComponentName;

    .line 2505
    .local v7, component:Landroid/content/ComponentName;
    if-nez v7, :cond_0

    .line 2503
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 2507
    :cond_0
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2510
    .end local v7           #component:Landroid/content/ComponentName;
    :cond_1
    const/4 v9, 0x0

    :goto_2
    if-ge v9, v8, :cond_3

    .line 2511
    invoke-virtual {p0, v9}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/ui/homeview/CellLayout;

    .line 2512
    .local v2, layout:Lcom/baidu/launcher/ui/homeview/CellLayout;
    if-nez v2, :cond_2

    .line 2510
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 2515
    :cond_2
    new-instance v0, Lcom/baidu/launcher/ui/homeview/Workspace$5;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/baidu/launcher/ui/homeview/Workspace$5;-><init>(Lcom/baidu/launcher/ui/homeview/Workspace;Lcom/baidu/launcher/ui/homeview/CellLayout;Ljava/util/HashSet;Lcom/baidu/launcher/data/HomeDataManager;Landroid/appwidget/AppWidgetManager;)V

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/homeview/Workspace;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    .line 2609
    .end local v2           #layout:Lcom/baidu/launcher/ui/homeview/CellLayout;
    :cond_3
    return-void
.end method

.method public removeViewAt(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 499
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 500
    invoke-direct {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->invalidateCachedOffsets()V

    .line 501
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mMaxScrollX:I

    .line 502
    return-void
.end method

.method public removeViewFromEditView(I)V
    .locals 12
    .parameter "currentIndex"

    .prologue
    const/16 v11, 0x9

    const/4 v10, 0x1

    const/4 v9, -0x1

    .line 3415
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/homeview/CellLayout;

    .line 3416
    .local v0, child:Lcom/baidu/launcher/ui/homeview/CellLayout;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3417
    .local v3, foldersToDelete:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/HomeFolderInfo;>;"
    if-eqz v0, :cond_1

    .line 3418
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Lcom/baidu/launcher/ui/homeview/CellLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 3419
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getChildCount()I

    move-result v7

    if-ge v4, v7, :cond_1

    .line 3420
    invoke-virtual {v0, v4}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 3421
    .local v5, item:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    .line 3422
    .local v6, tag:Ljava/lang/Object;
    instance-of v7, v6, Lcom/baidu/launcher/data/item/HomeFolderInfo;

    if-eqz v7, :cond_0

    .line 3423
    check-cast v6, Lcom/baidu/launcher/data/item/HomeFolderInfo;

    .end local v6           #tag:Ljava/lang/Object;
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3419
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3427
    .end local v4           #i:I
    .end local v5           #item:Landroid/view/View;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/homeview/Workspace;->removeViewAt(I)V

    .line 3428
    move v4, p1

    .restart local v4       #i:I
    :goto_1
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v7

    if-ge v4, v7, :cond_2

    .line 3429
    invoke-virtual {p0, v4}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/homeview/CellLayout;

    .line 3430
    .local v1, cl:Lcom/baidu/launcher/ui/homeview/CellLayout;
    invoke-direct {p0, v1, v4}, Lcom/baidu/launcher/ui/homeview/Workspace;->updateItemsScreen(Lcom/baidu/launcher/ui/homeview/CellLayout;I)V

    .line 3428
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 3433
    .end local v1           #cl:Lcom/baidu/launcher/ui/homeview/CellLayout;
    :cond_2
    sget v7, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->defaultScreen:I

    if-ge p1, v7, :cond_6

    sget v7, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->defaultScreen:I

    add-int/lit8 v2, v7, -0x1

    .line 3435
    .local v2, defaultScreen:I
    :goto_2
    iget-object v7, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v7}, Lcom/baidu/launcher/ui/logic/ViewManager;->getThumbnailGroup()Lcom/baidu/launcher/ui/editview/ThumbnailGroup;

    move-result-object v7

    invoke-virtual {v7}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->getEditViewIndicator()Lcom/baidu/launcher/ui/editview/EditViewIndicator;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v7

    if-eq v7, v11, :cond_3

    .line 3437
    iget-object v7, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v7}, Lcom/baidu/launcher/ui/logic/ViewManager;->getThumbnailGroup()Lcom/baidu/launcher/ui/editview/ThumbnailGroup;

    move-result-object v7

    invoke-virtual {v7}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->getEditViewIndicator()Lcom/baidu/launcher/ui/editview/EditViewIndicator;

    move-result-object v7

    invoke-virtual {v7}, Lcom/baidu/launcher/ui/editview/EditViewIndicator;->delScreen()V

    .line 3439
    :cond_3
    iget-object v7, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mIndicator:Lcom/baidu/launcher/ui/homeview/Indicator;

    if-eqz v7, :cond_4

    .line 3440
    iget-object v7, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mIndicator:Lcom/baidu/launcher/ui/homeview/Indicator;

    invoke-virtual {v7}, Lcom/baidu/launcher/ui/homeview/Indicator;->delScreen()V

    .line 3442
    :cond_4
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v7

    iget-object v8, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mContext:Landroid/content/Context;

    invoke-static {v7, v2, v8}, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->updateScreenConfig(IILandroid/content/Context;)V

    .line 3451
    const/4 v7, 0x0

    iput v7, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mMaxScrollX:I

    .line 3452
    iget-object v7, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/baidu/launcher/data/HomeDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/HomeDataManager;

    move-result-object v7

    invoke-virtual {v7, p1, v3, v10}, Lcom/baidu/launcher/data/HomeDataManager;->deleteScreenContentsFromDatabase(ILjava/util/ArrayList;Z)V

    .line 3453
    iget-object v7, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v7}, Lcom/baidu/launcher/ui/logic/ViewManager;->getThumbnailGroup()Lcom/baidu/launcher/ui/editview/ThumbnailGroup;

    move-result-object v7

    invoke-virtual {v7, v9}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->updateThumbnail(I)V

    .line 3454
    sget v7, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->screenCount:I

    if-ne v7, v11, :cond_5

    .line 3455
    iget-object v7, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v7}, Lcom/baidu/launcher/ui/logic/ViewManager;->getThumbnailGroup()Lcom/baidu/launcher/ui/editview/ThumbnailGroup;

    move-result-object v7

    invoke-virtual {v7, v10}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->setHasAddPage(Z)V

    .line 3456
    iget-object v7, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v7}, Lcom/baidu/launcher/ui/logic/ViewManager;->getThumbnailGroup()Lcom/baidu/launcher/ui/editview/ThumbnailGroup;

    move-result-object v7

    invoke-virtual {v7, v9}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->updateThumbnail(I)V

    .line 3458
    :cond_5
    return-void

    .line 3433
    .end local v2           #defaultScreen:I
    :cond_6
    sget v2, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->defaultScreen:I

    goto :goto_2
.end method

.method public removeViewFromPreview(II)V
    .locals 10
    .parameter "currentIndex"
    .parameter "originIndex"

    .prologue
    const/4 v9, 0x0

    .line 3376
    iget-object v7, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mPreview:Lcom/baidu/launcher/ui/preview/Preview;

    invoke-virtual {v7}, Lcom/baidu/launcher/ui/preview/Preview;->onDropFromDeleteZone()V

    .line 3377
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/homeview/CellLayout;

    .line 3378
    .local v0, child:Lcom/baidu/launcher/ui/homeview/CellLayout;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3379
    .local v3, foldersToDelete:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/HomeFolderInfo;>;"
    if-eqz v0, :cond_1

    .line 3380
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Lcom/baidu/launcher/ui/homeview/CellLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 3381
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getChildCount()I

    move-result v7

    if-ge v4, v7, :cond_1

    .line 3382
    invoke-virtual {v0, v4}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 3383
    .local v5, item:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    .line 3384
    .local v6, tag:Ljava/lang/Object;
    instance-of v7, v6, Lcom/baidu/launcher/data/item/HomeFolderInfo;

    if-eqz v7, :cond_0

    .line 3385
    check-cast v6, Lcom/baidu/launcher/data/item/HomeFolderInfo;

    .end local v6           #tag:Ljava/lang/Object;
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3381
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3389
    .end local v4           #i:I
    .end local v5           #item:Landroid/view/View;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/homeview/Workspace;->removeViewAt(I)V

    .line 3390
    move v4, p1

    .restart local v4       #i:I
    :goto_1
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v7

    if-ge v4, v7, :cond_2

    .line 3391
    invoke-virtual {p0, v4}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/homeview/CellLayout;

    .line 3392
    .local v1, cl:Lcom/baidu/launcher/ui/homeview/CellLayout;
    invoke-direct {p0, v1, v4}, Lcom/baidu/launcher/ui/homeview/Workspace;->updateItemsScreen(Lcom/baidu/launcher/ui/homeview/CellLayout;I)V

    .line 3390
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 3395
    .end local v1           #cl:Lcom/baidu/launcher/ui/homeview/CellLayout;
    :cond_2
    sget v7, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->defaultScreen:I

    if-ge p1, v7, :cond_4

    sget v7, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->defaultScreen:I

    add-int/lit8 v2, v7, -0x1

    .line 3397
    .local v2, defaultScreen:I
    :goto_2
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v7

    iget-object v8, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mContext:Landroid/content/Context;

    invoke-static {v7, v2, v8}, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->updateScreenConfig(IILandroid/content/Context;)V

    .line 3398
    iget-object v7, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mIndicator:Lcom/baidu/launcher/ui/homeview/Indicator;

    if-eqz v7, :cond_3

    .line 3399
    iget-object v7, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mIndicator:Lcom/baidu/launcher/ui/homeview/Indicator;

    invoke-virtual {v7}, Lcom/baidu/launcher/ui/homeview/Indicator;->delScreen()V

    .line 3401
    :cond_3
    iget v7, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I

    if-ge p2, v7, :cond_5

    .line 3402
    iget v7, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I

    add-int/lit8 v7, v7, -0x1

    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I

    .line 3408
    :goto_3
    iget-object v7, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mPreview:Lcom/baidu/launcher/ui/preview/Preview;

    invoke-virtual {v7, p0}, Lcom/baidu/launcher/ui/preview/Preview;->preparePreviews(Lcom/baidu/launcher/ui/homeview/Workspace;)V

    .line 3410
    iput v9, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mMaxScrollX:I

    .line 3411
    iget-object v7, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/baidu/launcher/data/HomeDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/HomeDataManager;

    move-result-object v7

    invoke-virtual {v7, p1, v3}, Lcom/baidu/launcher/data/HomeDataManager;->deleteScreenContentsFromDatabase(ILjava/util/ArrayList;)V

    .line 3412
    return-void

    .line 3395
    .end local v2           #defaultScreen:I
    :cond_4
    sget v2, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->defaultScreen:I

    goto :goto_2

    .line 3403
    .restart local v2       #defaultScreen:I
    :cond_5
    iget v7, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I

    if-ne p2, v7, :cond_6

    .line 3404
    iput v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I

    goto :goto_3

    .line 3406
    :cond_6
    iget v7, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I

    goto :goto_3
.end method

.method public removeWorkspaceUpdateListener(Lcom/baidu/launcher/ui/logic/ViewManager;)V
    .locals 1
    .parameter "viewManager"

    .prologue
    .line 509
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->workspaceUpdateListener:Lcom/baidu/launcher/ui/homeview/Workspace$WorkspaceUpdateListener;

    .line 510
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 2
    .parameter "child"
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 1150
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/homeview/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 1151
    .local v0, screen:I
    iget v1, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1152
    :cond_0
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/homeview/Workspace;->snapToScreen(I)V

    .line 1153
    const/4 v1, 0x1

    .line 1155
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public resetAllChildState(I)V
    .locals 4
    .parameter "animationStyle"

    .prologue
    const/4 v3, 0x2

    .line 4383
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4384
    sget v1, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->scrollType:I

    .line 4385
    .local v1, scrollType:I
    if-ne v1, v3, :cond_0

    if-ne p1, v3, :cond_1

    :cond_0
    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    .line 4387
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 4388
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/high16 v3, 0x3f80

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 4387
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4392
    .end local v0           #i:I
    .end local v1           #scrollType:I
    :cond_2
    return-void
.end method

.method public resetScreens()V
    .locals 12

    .prologue
    const/high16 v11, 0x4000

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 3535
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v7

    if-ge v3, v7, :cond_0

    .line 3536
    invoke-virtual {p0, v3}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 3535
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3538
    :cond_0
    invoke-virtual {p0, v10}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/ui/BulletinLayout;

    .line 3539
    .local v0, bulletinChild:Lcom/baidu/bulletin/ui/BulletinLayout;
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->removeAllViewsInLayout()V

    .line 3540
    iget-object v7, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mIndicator:Lcom/baidu/launcher/ui/homeview/Indicator;

    if-eqz v7, :cond_1

    .line 3541
    iget-object v7, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mIndicator:Lcom/baidu/launcher/ui/homeview/Indicator;

    invoke-virtual {v7}, Lcom/baidu/launcher/ui/homeview/Indicator;->removeAllViewsInLayout()V

    .line 3543
    :cond_1
    iget-object v7, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 3544
    .local v4, inflater:Landroid/view/LayoutInflater;
    const/4 v3, 0x0

    :goto_1
    sget v7, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->screenCount:I

    if-ge v3, v7, :cond_5

    .line 3546
    if-nez v3, :cond_4

    .line 3547
    if-nez v0, :cond_2

    .line 3548
    const v7, 0x7f03003c

    invoke-virtual {v4, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .end local v0           #bulletinChild:Lcom/baidu/bulletin/ui/BulletinLayout;
    check-cast v0, Lcom/baidu/bulletin/ui/BulletinLayout;

    .line 3550
    .restart local v0       #bulletinChild:Lcom/baidu/bulletin/ui/BulletinLayout;
    :cond_2
    move-object v1, v0

    .line 3551
    .local v1, cell:Lcom/baidu/launcher/ui/homeview/CellLayout;
    iget-object v7, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    move-object v7, v1

    check-cast v7, Lcom/baidu/bulletin/ui/BulletinLayout;

    invoke-static {v7}, Lcom/baidu/launcher/app/Launcher;->setBulletinLayout(Lcom/baidu/bulletin/ui/BulletinLayout;)V

    .line 3560
    :goto_2
    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->addView(Landroid/view/View;)V

    .line 3561
    iget-object v7, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mIndicator:Lcom/baidu/launcher/ui/homeview/Indicator;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mIndicator:Lcom/baidu/launcher/ui/homeview/Indicator;

    invoke-virtual {v7}, Lcom/baidu/launcher/ui/homeview/Indicator;->getChildCount()I

    move-result v7

    sget v8, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->screenCount:I

    if-ge v7, v8, :cond_3

    .line 3562
    iget-object v7, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mIndicator:Lcom/baidu/launcher/ui/homeview/Indicator;

    invoke-virtual {v7}, Lcom/baidu/launcher/ui/homeview/Indicator;->addScreen()V

    .line 3544
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3556
    .end local v1           #cell:Lcom/baidu/launcher/ui/homeview/CellLayout;
    :cond_4
    const v7, 0x7f0300d3

    invoke-virtual {v4, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/homeview/CellLayout;

    .line 3557
    .restart local v1       #cell:Lcom/baidu/launcher/ui/homeview/CellLayout;
    iget-object v7, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v1, v7}, Lcom/baidu/launcher/ui/homeview/CellLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_2

    .line 3565
    .end local v1           #cell:Lcom/baidu/launcher/ui/homeview/CellLayout;
    :cond_5
    sget v5, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->defaultScreen:I

    .line 3567
    .local v5, screen:I
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getMeasuredWidth()I

    move-result v7

    invoke-static {v7, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 3568
    .local v6, widthSpec:I
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getMeasuredHeight()I

    move-result v7

    invoke-static {v7, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 3569
    .local v2, heightSpec:I
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->requestLayout()V

    .line 3570
    invoke-virtual {p0, v6, v2}, Lcom/baidu/launcher/ui/homeview/Workspace;->measure(II)V

    .line 3571
    invoke-virtual {p0, v5}, Lcom/baidu/launcher/ui/homeview/Workspace;->setCurrentScreen(I)V

    .line 3572
    sput v5, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->currentScreen:I

    .line 3573
    iget-object v7, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mBulletinEmbedder:Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;

    invoke-virtual {v7, v5}, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->setIndicatorScreen(I)V

    .line 3574
    iput v10, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mMaxScrollX:I

    .line 3575
    return-void
.end method

.method public scroll()Z
    .locals 1

    .prologue
    .line 2406
    const/4 v0, 0x1

    return v0
.end method

.method public scrollFinished()Z
    .locals 1

    .prologue
    .line 2402
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    return v0
.end method

.method public scrollLeft()V
    .locals 3

    .prologue
    const/16 v2, 0x226

    const/4 v1, 0x0

    .line 2410
    invoke-direct {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->clearVacantCache()V

    .line 2411
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2412
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I

    if-lez v0, :cond_0

    .line 2413
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/baidu/launcher/ui/homeview/Workspace;->snapToScreen(III)V

    .line 2418
    :cond_0
    :goto_0
    return-void

    .line 2415
    :cond_1
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mNextScreen:I

    if-lez v0, :cond_0

    .line 2416
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mNextScreen:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/baidu/launcher/ui/homeview/Workspace;->snapToScreen(III)V

    goto :goto_0
.end method

.method public scrollRight()V
    .locals 4

    .prologue
    const/16 v3, 0x226

    const/4 v2, 0x0

    .line 2421
    invoke-direct {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->clearVacantCache()V

    .line 2422
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2423
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 2424
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, v2, v3}, Lcom/baidu/launcher/ui/homeview/Workspace;->snapToScreen(III)V

    .line 2429
    :cond_0
    :goto_0
    return-void

    .line 2426
    :cond_1
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mNextScreen:I

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 2427
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mNextScreen:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, v2, v3}, Lcom/baidu/launcher/ui/homeview/Workspace;->snapToScreen(III)V

    goto :goto_0
.end method

.method public scrollTo(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 734
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 735
    int-to-float v0, p1

    iput v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTouchX:F

    .line 736
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    long-to-float v0, v0

    const v1, 0x4e6e6b28

    div-float/2addr v0, v1

    iput v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mSmoothingTime:F

    .line 737
    return-void
.end method

.method protected scrollToNewPageWithoutMovingPages(I)V
    .locals 7
    .parameter "newCurrentPage"

    .prologue
    .line 3614
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildOffset(I)I

    move-result v5

    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/homeview/Workspace;->getRelativeChildOffset(I)I

    move-result v6

    sub-int v2, v5, v6

    .line 3615
    .local v2, newX:I
    iget v5, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollX:I

    sub-int v0, v2, v5

    .line 3617
    .local v0, delta:I
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v4

    .line 3618
    .local v4, pageCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 3619
    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/ui/homeview/CellLayout;

    .line 3620
    .local v3, page:Lcom/baidu/launcher/ui/homeview/CellLayout;
    invoke-virtual {v3}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getX()F

    move-result v5

    int-to-float v6, v0

    add-float/2addr v5, v6

    invoke-virtual {v3, v5}, Lcom/baidu/launcher/ui/homeview/CellLayout;->setX(F)V

    .line 3618
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3622
    .end local v3           #page:Lcom/baidu/launcher/ui/homeview/CellLayout;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/homeview/Workspace;->setCurrentScreen(I)V

    .line 3623
    return-void
.end method

.method public scrollingTo(F)V
    .locals 2
    .parameter "x"

    .prologue
    .line 740
    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTouchState:I

    .line 742
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTouchX:F

    .line 743
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    long-to-float v0, v0

    const v1, 0x4e6e6b28

    div-float/2addr v0, v1

    iput v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mSmoothingTime:F

    .line 745
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->postInvalidate()V

    .line 746
    return-void
.end method

.method public selectObject(Ljava/lang/Object;Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;)V
    .locals 1
    .parameter "obj"
    .parameter "pt"

    .prologue
    .line 3302
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mShowingPreview:Z

    if-eqz v0, :cond_0

    .line 3303
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mAllowLongPress:Z

    .line 3307
    :goto_0
    return-void

    .line 3305
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mAllowLongPress:Z

    goto :goto_0
.end method

.method public setAllowLongPress(Z)V
    .locals 0
    .parameter "allowLongPress"

    .prologue
    .line 2493
    iput-boolean p1, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mAllowLongPress:Z

    .line 2494
    return-void
.end method

.method setCurrentDropLayout(Lcom/baidu/launcher/ui/homeview/CellLayout;)V
    .locals 4
    .parameter "layout"

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 3857
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragTargetLayout:Lcom/baidu/launcher/ui/homeview/CellLayout;

    if-eqz v0, :cond_0

    .line 3858
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragTargetLayout:Lcom/baidu/launcher/ui/homeview/CellLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/homeview/CellLayout;->setIsDragOverlapping(Z)V

    .line 3859
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragTargetLayout:Lcom/baidu/launcher/ui/homeview/CellLayout;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->revertTempState()V

    .line 3860
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragTargetLayout:Lcom/baidu/launcher/ui/homeview/CellLayout;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->onDragExit()V

    .line 3862
    :cond_0
    iput-object p1, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragTargetLayout:Lcom/baidu/launcher/ui/homeview/CellLayout;

    .line 3863
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragTargetLayout:Lcom/baidu/launcher/ui/homeview/CellLayout;

    if-eqz v0, :cond_1

    .line 3864
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragTargetLayout:Lcom/baidu/launcher/ui/homeview/CellLayout;

    invoke-virtual {v0, v3}, Lcom/baidu/launcher/ui/homeview/CellLayout;->setIsDragOverlapping(Z)V

    .line 3865
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragTargetLayout:Lcom/baidu/launcher/ui/homeview/CellLayout;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->resetOccupiedCells()V

    .line 3866
    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragTargetLayout:Lcom/baidu/launcher/ui/homeview/CellLayout;

    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragInfo:Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 3869
    :cond_1
    invoke-direct {p0, v3}, Lcom/baidu/launcher/ui/homeview/Workspace;->cleanupReorder(Z)V

    .line 3870
    invoke-direct {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->cleanupFolderCreation()V

    .line 3871
    invoke-virtual {p0, v2, v2}, Lcom/baidu/launcher/ui/homeview/Workspace;->setCurrentDropOverCell(II)V

    .line 3872
    return-void

    .line 3866
    :cond_2
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragInfo:Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->cell:Landroid/view/View;

    goto :goto_0
.end method

.method setCurrentDropOverCell(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 3875
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragOverX:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragOverY:I

    if-eq p2, v0, :cond_1

    .line 3876
    :cond_0
    iput p1, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragOverX:I

    .line 3877
    iput p2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragOverY:I

    .line 3878
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/homeview/Workspace;->setDragMode(I)V

    .line 3880
    :cond_1
    return-void
.end method

.method public setCurrentScreen(I)V
    .locals 2
    .parameter "currentScreen"

    .prologue
    const/4 v1, 0x0

    .line 560
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 562
    :cond_0
    invoke-direct {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->clearVacantCache()V

    .line 563
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I

    .line 564
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I

    if-nez v0, :cond_1

    .line 565
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/app/Launcher;->setStatusBarTransparent(Z)V

    .line 570
    :goto_0
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I

    invoke-direct {p0, v0}, Lcom/baidu/launcher/ui/homeview/Workspace;->resetChildState(I)V

    .line 571
    invoke-direct {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->updateCurrentPageScroll()V

    .line 572
    invoke-direct {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->updateWallpaperOffset()V

    .line 573
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mBulletinEmbedder:Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;

    invoke-virtual {v0, p1}, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->setIndicatorScreen(I)V

    .line 574
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mBulletinEmbedder:Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->showPanel()V

    .line 575
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mBulletinEmbedder:Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->initPanel()V

    .line 576
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->invalidate()V

    .line 577
    return-void

    .line 567
    :cond_1
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/app/Launcher;->setStatusBarTransparent(Z)V

    goto :goto_0
.end method

.method public setDockbar(Landroid/view/View;)V
    .locals 1
    .parameter "dockbar"

    .prologue
    .line 4524
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mBulletinEmbedder:Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;

    invoke-virtual {v0, p1}, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->setDockbar(Landroid/view/View;)V

    .line 4525
    iput-object p1, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDockbar:Landroid/view/View;

    .line 4526
    return-void
.end method

.method public setDragController(Lcom/baidu/launcher/ui/dragdrop/DragController;)V
    .locals 0
    .parameter "dragController"

    .prologue
    .line 2335
    return-void
.end method

.method setDragMode(I)V
    .locals 2
    .parameter "dragMode"

    .prologue
    const/4 v1, 0x1

    .line 3883
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragMode:I

    if-eq p1, v0, :cond_1

    .line 3884
    if-nez p1, :cond_2

    .line 3888
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/baidu/launcher/ui/homeview/Workspace;->cleanupReorder(Z)V

    .line 3889
    invoke-direct {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->cleanupFolderCreation()V

    .line 3895
    :cond_0
    :goto_0
    iput p1, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragMode:I

    .line 3897
    :cond_1
    return-void

    .line 3890
    :cond_2
    if-ne p1, v1, :cond_3

    .line 3891
    invoke-direct {p0, v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->cleanupReorder(Z)V

    goto :goto_0

    .line 3892
    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 3893
    invoke-direct {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->cleanupFolderCreation()V

    goto :goto_0
.end method

.method public setIndicator(Lcom/baidu/launcher/ui/homeview/Indicator;)V
    .locals 2
    .parameter "indicator"

    .prologue
    .line 2980
    iput-object p1, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mIndicator:Lcom/baidu/launcher/ui/homeview/Indicator;

    .line 2981
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mBulletinEmbedder:Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;

    iget v1, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->setIndicatorScreen(I)V

    .line 2982
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mIndicator:Lcom/baidu/launcher/ui/homeview/Indicator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/homeview/Indicator;->setSlip(Z)V

    .line 2984
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mIndicator:Lcom/baidu/launcher/ui/homeview/Indicator;

    new-instance v1, Lcom/baidu/launcher/ui/homeview/Workspace$IndicatorCallback;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/ui/homeview/Workspace$IndicatorCallback;-><init>(Lcom/baidu/launcher/ui/homeview/Workspace;)V

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/homeview/Indicator;->setCallback(Lcom/baidu/launcher/ui/homeview/Indicator$ICallback;)V

    .line 2985
    return-void
.end method

.method public setLauncher(Lcom/baidu/launcher/app/Launcher;)V
    .locals 0
    .parameter "launcher"

    .prologue
    .line 449
    iput-object p1, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    .line 450
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 721
    iput-object p1, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mClickListener:Landroid/view/View$OnClickListener;

    .line 722
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 3
    .parameter "l"

    .prologue
    .line 712
    iput-object p1, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 713
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v0

    .line 714
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 715
    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 714
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 717
    :cond_0
    return-void
.end method

.method public setPositionAndScale(Ljava/lang/Object;Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;)Z
    .locals 6
    .parameter "obj"
    .parameter "update"
    .parameter "touchPoint"

    .prologue
    .line 3312
    invoke-virtual {p2}, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;->getScale()F

    move-result v0

    .line 3313
    .local v0, newRelativeScale:F
    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    sget-wide v4, Lcom/baidu/launcher/ui/homeview/Workspace;->ZOOM_LOG_BASE_INV:D

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v1, v2

    .line 3315
    .local v1, targetZoom:I
    if-gez v1, :cond_0

    iget-boolean v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mShowingPreview:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mBulletinEmbedder:Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->inBulletinScreen()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3318
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    const v3, 0x7f08017d

    new-instance v4, Lcom/baidu/launcher/ui/logic/IBaseView$SwitchData;

    invoke-direct {v4}, Lcom/baidu/launcher/ui/logic/IBaseView$SwitchData;-><init>()V

    invoke-virtual {v2, v3, v4}, Lcom/baidu/launcher/ui/logic/ViewManager;->switchView(ILcom/baidu/launcher/ui/logic/IBaseView$SwitchData;)V

    .line 3319
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->multiTouchController:Lcom/baidu/launcher/ui/homeview/MultiTouchController;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->reset()V

    .line 3320
    const/4 v2, 0x1

    .line 3322
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setPreview(Lcom/baidu/launcher/ui/preview/Preview;)V
    .locals 0
    .parameter "preview"

    .prologue
    .line 3350
    iput-object p1, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mPreview:Lcom/baidu/launcher/ui/preview/Preview;

    .line 3351
    return-void
.end method

.method public setRandEffectStype()V
    .locals 4

    .prologue
    .line 840
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x4018

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollType:I

    .line 841
    const-string v0, "launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mScrollType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    return-void
.end method

.method public setTopPadding(I)V
    .locals 0
    .parameter "padding"

    .prologue
    .line 2990
    iput p1, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mPaddingTop:I

    .line 2996
    return-void
.end method

.method public setViewManager(Lcom/baidu/launcher/ui/logic/ViewManager;)V
    .locals 1
    .parameter "viewManager"

    .prologue
    .line 2328
    iput-object p1, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    .line 2329
    invoke-virtual {p1}, Lcom/baidu/launcher/ui/logic/ViewManager;->getDragController()Lcom/baidu/launcher/ui/dragdrop/DragController;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragController:Lcom/baidu/launcher/ui/dragdrop/DragController;

    .line 2330
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragController:Lcom/baidu/launcher/ui/dragdrop/DragController;

    invoke-virtual {v0, p0}, Lcom/baidu/launcher/ui/dragdrop/DragController;->addDropTarget(Lcom/baidu/launcher/ui/dragdrop/DropTarget;)V

    .line 2331
    return-void
.end method

.method public setWorkspaceUpdateListener(Lcom/baidu/launcher/ui/homeview/Workspace$WorkspaceUpdateListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 505
    iput-object p1, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->workspaceUpdateListener:Lcom/baidu/launcher/ui/homeview/Workspace$WorkspaceUpdateListener;

    .line 506
    return-void
.end method

.method public showAnimation(Landroid/graphics/RectF;I)V
    .locals 3
    .parameter "rect"
    .parameter "index"

    .prologue
    const/4 v2, 0x1

    .line 3104
    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v0

    if-lt p2, v0, :cond_1

    .line 3148
    :cond_0
    :goto_0
    return-void

    .line 3115
    :cond_1
    invoke-virtual {p0, p2}, Lcom/baidu/launcher/ui/homeview/Workspace;->setCurrentScreen(I)V

    .line 3140
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 3141
    iput-object p1, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mThumbnailRect:Landroid/graphics/RectF;

    .line 3142
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 3143
    invoke-virtual {p0, p2}, Lcom/baidu/launcher/ui/homeview/Workspace;->enableChildrenCache(I)V

    .line 3144
    iput-boolean v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mShowingPreview:Z

    .line 3145
    iput-boolean v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mPreviewClosing:Z

    .line 3146
    iput-boolean v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mIsAnimating:Z

    .line 3147
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mPreviewStartTime:J

    goto :goto_0
.end method

.method public showDockbar()V
    .locals 2

    .prologue
    .line 4539
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDockbar:Landroid/view/View;

    if-nez v0, :cond_0

    .line 4542
    :goto_0
    return-void

    .line 4540
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDockbar:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4541
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDockbar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    goto :goto_0
.end method

.method public showOnDropFailureAnimation(Ljava/lang/Object;[I)Z
    .locals 1
    .parameter "mDragInfo"
    .parameter "mOriginatorXY"

    .prologue
    .line 2970
    const/4 v0, 0x0

    return v0
.end method

.method public showUnlockAnim()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 5301
    invoke-direct {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getCurrentDropLayout()Lcom/baidu/launcher/ui/homeview/CellLayout;

    move-result-object v2

    .line 5302
    .local v2, mCellLayout:Lcom/baidu/launcher/ui/homeview/CellLayout;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v2}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 5303
    invoke-virtual {v2, v1}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5304
    .local v0, childView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 5305
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 5306
    .local v3, tag:Ljava/lang/Object;
    if-eqz v3, :cond_0

    instance-of v5, v3, Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;

    if-nez v5, :cond_0

    instance-of v5, v3, Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;

    if-nez v5, :cond_0

    .line 5308
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    const/high16 v5, -0x3d38

    invoke-direct {v4, v7, v7, v5, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 5309
    .local v4, unlockAnim:Landroid/view/animation/Animation;
    new-instance v5, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v5}, Landroid/view/animation/BounceInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 5310
    const-wide/16 v5, 0x3e8

    invoke-virtual {v4, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 5311
    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0xa

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 5312
    invoke-virtual {v0, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 5302
    .end local v3           #tag:Ljava/lang/Object;
    .end local v4           #unlockAnim:Landroid/view/animation/Animation;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5316
    .end local v0           #childView:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public showUnlockAnimation()V
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/high16 v2, 0x3f80

    const/high16 v6, 0x3f00

    const v1, 0x3e99999a

    .line 3151
    invoke-direct {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->clearChildAnimation()V

    .line 3152
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v3

    if-lt v0, v3, :cond_1

    .line 3163
    :cond_0
    :goto_0
    return-void

    .line 3155
    :cond_1
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->unlockAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_2

    .line 3156
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->unlockAnimation:Landroid/view/animation/Animation;

    .line 3158
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->unlockAnimation:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 3159
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->unlockAnimation:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3fc0

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 3161
    :cond_2
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 3162
    .local v9, child:Landroid/view/View;
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->unlockAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v9, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public snapToScreen(I)V
    .locals 2
    .parameter "whichScreen"

    .prologue
    .line 1621
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->snapToScreen(III)V

    .line 1622
    return-void
.end method

.method public snapToScreen(III)V
    .locals 23
    .parameter "whichScreen"
    .parameter "velocity"
    .parameter "duration"

    .prologue
    .line 1626
    const-string v3, "Launcher.Workspace"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "snapToScreen "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1627
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    .line 1628
    .local v22, v:Landroid/view/View;
    if-eqz v22, :cond_2

    move-object/from16 v0, v22

    instance-of v3, v0, Lcom/baidu/bulletin/ui/BulletinLayout;

    if-eqz v3, :cond_2

    move-object/from16 v9, v22

    .line 1629
    check-cast v9, Lcom/baidu/bulletin/ui/BulletinLayout;

    .line 1630
    .local v9, bulletin:Lcom/baidu/bulletin/ui/BulletinLayout;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I

    move/from16 v0, p1

    if-eq v3, v0, :cond_0

    .line 1631
    invoke-virtual {v9}, Lcom/baidu/bulletin/ui/BulletinLayout;->onHide()V

    .line 1633
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v3

    move/from16 v0, p1

    if-ne v0, v3, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I

    move/from16 v0, p1

    if-eq v3, v0, :cond_2

    .line 1634
    invoke-virtual {v9}, Lcom/baidu/bulletin/ui/BulletinLayout;->onEnter()V

    .line 1637
    .end local v9           #bulletin:Lcom/baidu/bulletin/ui/BulletinLayout;
    :cond_2
    invoke-direct/range {p0 .. p1}, Lcom/baidu/launcher/ui/homeview/Workspace;->callBaiduWidgetOnSnap(I)V

    .line 1638
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mBulletinEmbedder:Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v3, v0, v1, v2}, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->interceptSnapTo(III)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1639
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I

    move/from16 v0, p1

    if-eq v0, v3, :cond_3

    const/4 v3, 0x1

    :goto_0
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v3}, Lcom/baidu/launcher/ui/homeview/Workspace;->showAllAppItemAnim(ZZ)V

    .line 1739
    :goto_1
    return-void

    .line 1639
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 1642
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v10

    .line 1643
    .local v10, childCount:I
    sget-boolean v3, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->loop:Z

    if-eqz v3, :cond_a

    const/4 v3, 0x1

    if-le v10, v3, :cond_a

    const/16 v17, 0x1

    .line 1644
    .local v17, loopScroll:Z
    :goto_2
    if-eqz v17, :cond_b

    const/4 v3, -0x1

    move v5, v3

    :goto_3
    if-eqz v17, :cond_c

    const/4 v3, 0x0

    :goto_4
    sub-int v3, v10, v3

    move/from16 v0, p1

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1646
    const/16 v16, 0x0

    .line 1647
    .local v16, loop:Z
    if-gez p1, :cond_d

    .line 1648
    add-int/lit8 p1, v10, -0x1

    .line 1649
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getWidth()I

    move-result v3

    mul-int/2addr v3, v10

    move-object/from16 v0, p0

    iget v5, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollX:I

    add-int/2addr v3, v5

    move-object/from16 v0, p0

    iput v3, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollX:I

    .line 1650
    const/16 v16, 0x1

    .line 1656
    :cond_5
    :goto_5
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCorrectionFactor:I

    .line 1657
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->removeCreateFolderCallbacks()V

    .line 1659
    invoke-virtual/range {p0 .. p1}, Lcom/baidu/launcher/ui/homeview/Workspace;->removeCreateFolderCallbacks(I)V

    .line 1660
    invoke-direct/range {p0 .. p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->clearVacantCache()V

    .line 1661
    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v3, v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->enableChildrenCache(II)V

    .line 1663
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/baidu/launcher/ui/homeview/Workspace;->mNextScreen:I

    .line 1664
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mBulletinEmbedder:Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mNextScreen:I

    invoke-virtual {v3, v5}, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->setIndicatorScreen(I)V

    .line 1665
    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mNextScreen:I

    if-nez v3, :cond_e

    .line 1666
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/baidu/launcher/app/Launcher;->setStatusBarTransparent(Z)V

    .line 1667
    const/4 v3, 0x1

    sput-boolean v3, Lcom/baidu/bulletin/ui/logic/UIController;->isBulletin:Z

    .line 1668
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->getInstance(Landroid/content/Context;)Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;

    move-result-object v13

    .line 1670
    .local v13, floatWindowController:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;
    invoke-virtual {v13}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->dragToBulletin()V

    .line 1673
    invoke-static {}, Lcom/baidu/bulletin/utils/BulletinUBC;->statForFlipToBulletin()V

    .line 1681
    .end local v13           #floatWindowController:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;
    :cond_6
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getFocusedChild()Landroid/view/View;

    move-result-object v14

    .line 1682
    .local v14, focusedChild:Landroid/view/View;
    if-eqz v14, :cond_7

    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I

    move/from16 v0, p1

    if-eq v0, v3, :cond_7

    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v14, v3, :cond_7

    .line 1684
    invoke-virtual {v14}, Landroid/view/View;->clearFocus()V

    .line 1687
    :cond_7
    if-eqz v16, :cond_f

    const/16 v20, 0x1

    .line 1688
    .local v20, screenDelta:I
    :goto_7
    invoke-virtual/range {p0 .. p1}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildOffset(I)I

    move-result v3

    invoke-virtual/range {p0 .. p1}, Lcom/baidu/launcher/ui/homeview/Workspace;->getRelativeChildOffset(I)I

    move-result v5

    sub-int v18, v3, v5

    .line 1689
    .local v18, newX:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mOverScrollX:I

    if-ltz v3, :cond_8

    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mOverScrollX:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mMaxScrollX:I

    if-le v3, v5, :cond_10

    :cond_8
    if-nez v17, :cond_10

    const/16 v19, 0x1

    .line 1690
    .local v19, overScroll:Z
    :goto_8
    if-eqz v19, :cond_11

    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTouchX:F

    float-to-int v4, v3

    .line 1691
    .local v4, start:I
    :goto_9
    if-eqz v19, :cond_12

    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mTouchX:F

    float-to-int v3, v3

    :goto_a
    sub-int v6, v18, v3

    .line 1693
    .local v6, delta:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_9

    .line 1694
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1697
    :cond_9
    if-eqz v19, :cond_13

    .line 1698
    const/16 p3, 0xc8

    .line 1729
    :goto_b
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->awakenScrollBars(I)Z

    .line 1730
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollType:I

    move/from16 v21, v0

    .line 1731
    .local v21, scrollType:I
    const/4 v3, 0x1

    move/from16 v0, v21

    if-ne v0, v3, :cond_16

    .line 1732
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScroller:Landroid/widget/Scroller;

    const/4 v5, 0x0

    div-int/lit8 v7, v6, 0xa

    add-int/2addr v6, v7

    const/4 v7, 0x0

    move/from16 v8, p3

    invoke-virtual/range {v3 .. v8}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1736
    .end local v6           #delta:I
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->invalidate()V

    .line 1738
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I

    move/from16 v0, p1

    if-eq v0, v3, :cond_17

    const/4 v3, 0x1

    :goto_d
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v3}, Lcom/baidu/launcher/ui/homeview/Workspace;->showAllAppItemAnim(ZZ)V

    goto/16 :goto_1

    .line 1643
    .end local v4           #start:I
    .end local v14           #focusedChild:Landroid/view/View;
    .end local v16           #loop:Z
    .end local v17           #loopScroll:Z
    .end local v18           #newX:I
    .end local v19           #overScroll:Z
    .end local v20           #screenDelta:I
    .end local v21           #scrollType:I
    :cond_a
    const/16 v17, 0x0

    goto/16 :goto_2

    .line 1644
    .restart local v17       #loopScroll:Z
    :cond_b
    const/4 v3, 0x0

    move v5, v3

    goto/16 :goto_3

    :cond_c
    const/4 v3, 0x1

    goto/16 :goto_4

    .line 1651
    .restart local v16       #loop:Z
    :cond_d
    move/from16 v0, p1

    if-lt v0, v10, :cond_5

    .line 1652
    const/16 p1, 0x0

    .line 1653
    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollX:I

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getWidth()I

    move-result v5

    mul-int/2addr v5, v10

    sub-int/2addr v3, v5

    move-object/from16 v0, p0

    iput v3, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollX:I

    .line 1654
    const/16 v16, 0x1

    goto/16 :goto_5

    .line 1675
    :cond_e
    const/4 v3, 0x0

    sput-boolean v3, Lcom/baidu/bulletin/ui/logic/UIController;->isBulletin:Z

    .line 1676
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v3}, Lcom/baidu/launcher/ui/logic/ViewManager;->getCurrentView()Lcom/baidu/launcher/ui/logic/IBaseView;

    move-result-object v3

    instance-of v3, v3, Lcom/baidu/launcher/ui/homeview/HomeView;

    if-eqz v3, :cond_6

    .line 1677
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/baidu/launcher/app/Launcher;->setStatusBarTransparent(Z)V

    goto/16 :goto_6

    .line 1687
    .restart local v14       #focusedChild:Landroid/view/View;
    :cond_f
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I

    sub-int v5, p1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v20

    goto/16 :goto_7

    .line 1689
    .restart local v18       #newX:I
    .restart local v20       #screenDelta:I
    :cond_10
    const/16 v19, 0x0

    goto/16 :goto_8

    .line 1690
    .restart local v19       #overScroll:Z
    :cond_11
    move-object/from16 v0, p0

    iget v4, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollX:I

    goto/16 :goto_9

    .line 1691
    .restart local v4       #start:I
    :cond_12
    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollX:I

    goto/16 :goto_a

    .line 1700
    .restart local v6       #delta:I
    :cond_13
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 1701
    const/16 v3, 0x258

    move/from16 v0, p2

    if-le v0, v3, :cond_14

    .line 1702
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v15, v3, 0x2

    .line 1711
    .local v15, halfScreenSize:I
    const/high16 v3, 0x3f80

    const/high16 v5, 0x3f80

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v5, v7

    mul-int/lit8 v7, v15, 0x2

    int-to-float v7, v7

    div-float/2addr v5, v7

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v12

    .line 1712
    .local v12, distanceRatio:F
    int-to-float v3, v15

    int-to-float v5, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/baidu/launcher/ui/homeview/Workspace;->distanceInfluenceForSnapDuration(F)F

    move-result v7

    mul-float/2addr v5, v7

    add-float v11, v3, v5

    .line 1715
    .local v11, distance:F
    const/16 v3, 0x898

    move/from16 v0, p2

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 1723
    const v3, 0x44228000

    move/from16 v0, p2

    int-to-float v5, v0

    div-float v5, v11, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    add-int/lit8 p3, v3, 0x64

    .line 1724
    goto/16 :goto_b

    .line 1725
    .end local v11           #distance:F
    .end local v12           #distanceRatio:F
    .end local v15           #halfScreenSize:I
    :cond_14
    if-gez p3, :cond_15

    add-int/lit8 v3, v20, 0x1

    mul-int/lit8 v3, v3, 0x50

    add-int/lit8 p3, v3, 0x64

    :cond_15
    goto/16 :goto_b

    .line 1734
    .restart local v21       #scrollType:I
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mScroller:Landroid/widget/Scroller;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move/from16 v8, p3

    invoke-virtual/range {v3 .. v8}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto/16 :goto_c

    .line 1738
    .end local v6           #delta:I
    :cond_17
    const/4 v3, 0x0

    goto/16 :goto_d
.end method

.method public startDrag(Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;)V
    .locals 10
    .parameter "cellInfo"

    .prologue
    const/4 v6, 0x1

    .line 1755
    if-nez p1, :cond_1

    .line 1784
    :cond_0
    :goto_0
    return-void

    .line 1759
    :cond_1
    iget-object v1, p1, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 1763
    .local v1, child:Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1771
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8}, Landroid/graphics/Canvas;-><init>()V

    .line 1774
    .local v8, canvas:Landroid/graphics/Canvas;
    const/4 v0, 0x2

    invoke-direct {p0, v1, v8, v0}, Lcom/baidu/launcher/ui/homeview/Workspace;->createDragOutline(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    .line 1775
    iput-object p1, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragInfo:Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;

    .line 1776
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragInfo:Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;

    iget v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I

    iput v2, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->screen:I

    .line 1778
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/baidu/launcher/ui/homeview/CellLayout;

    .line 1780
    .local v9, current:Lcom/baidu/launcher/ui/homeview/CellLayout;
    invoke-virtual {v9, v1}, Lcom/baidu/launcher/ui/homeview/CellLayout;->onDragChild(Landroid/view/View;)V

    .line 1781
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragController:Lcom/baidu/launcher/ui/dragdrop/DragController;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/logic/ViewManager;->getStatusBarHeight()I

    move-result v5

    move-object v2, p0

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/baidu/launcher/ui/dragdrop/DragController;->startDrag(Landroid/view/View;Lcom/baidu/launcher/ui/dragdrop/DragSource;Ljava/lang/Object;IIZZ)V

    .line 1783
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->invalidate()V

    goto :goto_0
.end method

.method public stateRestored()V
    .locals 1

    .prologue
    .line 3073
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mStateRestored:Z

    .line 3074
    return-void
.end method

.method public supportsFlingToDelete()Z
    .locals 1

    .prologue
    .line 4120
    const/4 v0, 0x1

    return v0
.end method

.method public updateAppsAdd(Ljava/util/ArrayList;)V
    .locals 12
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
    .line 2698
    .local p1, changes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListAppInfo;>;"
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v2

    .line 2699
    .local v2, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v2, :cond_5

    .line 2700
    invoke-virtual {p0, v4}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/baidu/launcher/ui/homeview/CellLayout;

    .line 2701
    .local v8, layout:Lcom/baidu/launcher/ui/homeview/CellLayout;
    if-nez v8, :cond_1

    .line 2699
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2702
    :cond_1
    invoke-virtual {v8}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getChildCount()I

    move-result v1

    .line 2703
    .local v1, childCount:I
    const/4 v7, 0x0

    .local v7, j:I
    :goto_1
    if-ge v7, v1, :cond_0

    .line 2704
    invoke-virtual {v8, v7}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 2705
    .local v10, view:Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/baidu/launcher/data/item/HomeItemInfo;

    .line 2706
    .local v6, info:Lcom/baidu/launcher/data/item/HomeItemInfo;
    instance-of v11, v10, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;

    if-eqz v11, :cond_3

    .line 2707
    check-cast v10, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;

    .end local v10           #view:Landroid/view/View;
    invoke-direct {p0, v10}, Lcom/baidu/launcher/ui/homeview/Workspace;->updateBaiduWidget(Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;)V

    .line 2703
    .end local v6           #info:Lcom/baidu/launcher/data/item/HomeItemInfo;
    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 2708
    .restart local v6       #info:Lcom/baidu/launcher/data/item/HomeItemInfo;
    .restart local v10       #view:Landroid/view/View;
    :cond_3
    instance-of v11, v6, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    if-eqz v11, :cond_4

    .line 2709
    check-cast v6, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    .end local v6           #info:Lcom/baidu/launcher/data/item/HomeItemInfo;
    invoke-direct {p0, p1, v6}, Lcom/baidu/launcher/ui/homeview/Workspace;->checkForUpdatePresets(Ljava/util/ArrayList;Lcom/baidu/launcher/data/item/HomeShortcutInfo;)Z

    move-result v0

    .line 2710
    .local v0, changed:Z
    if-eqz v0, :cond_2

    .line 2711
    invoke-virtual {v10}, Landroid/view/View;->invalidate()V

    goto :goto_2

    .line 2713
    .end local v0           #changed:Z
    .restart local v6       #info:Lcom/baidu/launcher/data/item/HomeItemInfo;
    :cond_4
    instance-of v11, v6, Lcom/baidu/launcher/data/item/HomeFolderInfo;

    if-eqz v11, :cond_2

    move-object v3, v6

    .line 2714
    check-cast v3, Lcom/baidu/launcher/data/item/HomeFolderInfo;

    .line 2715
    .local v3, folder:Lcom/baidu/launcher/data/item/HomeFolderInfo;
    invoke-virtual {v3}, Lcom/baidu/launcher/data/item/HomeFolderInfo;->getAll()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    .line 2716
    .local v9, shortcut:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    invoke-direct {p0, p1, v9}, Lcom/baidu/launcher/ui/homeview/Workspace;->checkForUpdatePresets(Ljava/util/ArrayList;Lcom/baidu/launcher/data/item/HomeShortcutInfo;)Z

    goto :goto_3

    .line 2721
    .end local v1           #childCount:I
    .end local v3           #folder:Lcom/baidu/launcher/data/item/HomeFolderInfo;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #info:Lcom/baidu/launcher/data/item/HomeItemInfo;
    .end local v7           #j:I
    .end local v8           #layout:Lcom/baidu/launcher/ui/homeview/CellLayout;
    .end local v9           #shortcut:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    .end local v10           #view:Landroid/view/View;
    :cond_5
    return-void
.end method

.method public updateBaiduWidgets(Landroid/content/Intent;)V
    .locals 11
    .parameter "intent"

    .prologue
    .line 2742
    const-string v9, "ID"

    const/4 v10, -0x1

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 2743
    .local v4, id:I
    if-lez v4, :cond_3

    .line 2744
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v2

    .line 2745
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 2746
    invoke-virtual {p0, v3}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/baidu/launcher/ui/homeview/CellLayout;

    .line 2747
    .local v6, layout:Lcom/baidu/launcher/ui/homeview/CellLayout;
    if-nez v6, :cond_1

    .line 2745
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2748
    :cond_1
    invoke-virtual {v6}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getChildCount()I

    move-result v1

    .line 2749
    .local v1, childCount:I
    const/4 v5, 0x0

    .local v5, j:I
    :goto_1
    if-ge v5, v1, :cond_0

    .line 2750
    invoke-virtual {v6, v5}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 2751
    .local v8, view:Landroid/view/View;
    instance-of v9, v8, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;

    if-eqz v9, :cond_2

    move-object v0, v8

    .line 2752
    check-cast v0, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;

    .line 2753
    .local v0, bwhv:Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;
    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;

    .line 2754
    .local v7, tag:Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;
    iget v9, v7, Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;->baiduWidgetId:I

    if-ne v9, v4, :cond_2

    .line 2755
    check-cast v8, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;

    .end local v8           #view:Landroid/view/View;
    invoke-virtual {v8, p1}, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;->onUpdate(Landroid/content/Intent;)V

    .line 2749
    .end local v0           #bwhv:Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;
    .end local v7           #tag:Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2761
    .end local v1           #childCount:I
    .end local v2           #count:I
    .end local v3           #i:I
    .end local v5           #j:I
    .end local v6           #layout:Lcom/baidu/launcher/ui/homeview/CellLayout;
    :cond_3
    return-void
.end method

.method public updateCalendarIcon(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "icon"

    .prologue
    .line 5252
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 5253
    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/homeview/CellLayout;

    .line 5254
    .local v0, cell:Lcom/baidu/launcher/ui/homeview/CellLayout;
    if-nez v0, :cond_0

    .line 5252
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5255
    :cond_0
    new-instance v2, Lcom/baidu/launcher/ui/homeview/Workspace$8;

    invoke-direct {v2, p0, v0, p1}, Lcom/baidu/launcher/ui/homeview/Workspace$8;-><init>(Lcom/baidu/launcher/ui/homeview/Workspace;Lcom/baidu/launcher/ui/homeview/CellLayout;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/homeview/Workspace;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 5288
    .end local v0           #cell:Lcom/baidu/launcher/ui/homeview/CellLayout;
    :cond_1
    return-void
.end method

.method public updateFolders(Lcom/baidu/launcher/data/item/HomeFolderInfo;)V
    .locals 14
    .parameter "folder"

    .prologue
    .line 2906
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v1

    .line 2907
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 2908
    invoke-virtual {p0, v3}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/baidu/launcher/ui/homeview/CellLayout;

    .line 2909
    .local v8, layout:Lcom/baidu/launcher/ui/homeview/CellLayout;
    if-nez v8, :cond_1

    .line 2907
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2910
    :cond_1
    invoke-virtual {v8}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getChildCount()I

    move-result v0

    .line 2911
    .local v0, childCount:I
    const/4 v7, 0x0

    .local v7, j:I
    :goto_1
    if-ge v7, v0, :cond_0

    .line 2912
    invoke-virtual {v8, v7}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 2913
    .local v9, view:Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/launcher/data/item/HomeItemInfo;

    .line 2914
    .local v5, info:Lcom/baidu/launcher/data/item/HomeItemInfo;
    iget-wide v10, p1, Lcom/baidu/launcher/data/item/HomeFolderInfo;->id:J

    iget-wide v12, v5, Lcom/baidu/launcher/data/item/HomeItemInfo;->id:J

    cmp-long v10, v10, v12

    if-nez v10, :cond_4

    instance-of v10, v5, Lcom/baidu/launcher/data/item/HomeFolderInfo;

    if-eqz v10, :cond_4

    move-object v2, v5

    .line 2915
    check-cast v2, Lcom/baidu/launcher/data/item/HomeFolderInfo;

    .line 2916
    .local v2, folderInfo:Lcom/baidu/launcher/data/item/HomeFolderInfo;
    invoke-virtual {p1}, Lcom/baidu/launcher/data/item/HomeFolderInfo;->getAll()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    .line 2917
    .local v6, item:Lcom/baidu/launcher/data/item/BaseItemInfo;
    invoke-virtual {v2, v6}, Lcom/baidu/launcher/data/item/HomeFolderInfo;->add(Lcom/baidu/launcher/data/item/BaseItemInfo;)V

    goto :goto_2

    .line 2919
    .end local v6           #item:Lcom/baidu/launcher/data/item/BaseItemInfo;
    :cond_2
    check-cast v9, Lcom/baidu/launcher/ui/folder/FolderIcon;

    .end local v9           #view:Landroid/view/View;
    invoke-virtual {v9}, Lcom/baidu/launcher/ui/folder/FolderIcon;->updateFolderIcon()V

    .line 2924
    .end local v0           #childCount:I
    .end local v2           #folderInfo:Lcom/baidu/launcher/data/item/HomeFolderInfo;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #info:Lcom/baidu/launcher/data/item/HomeItemInfo;
    .end local v7           #j:I
    .end local v8           #layout:Lcom/baidu/launcher/ui/homeview/CellLayout;
    :cond_3
    return-void

    .line 2911
    .restart local v0       #childCount:I
    .restart local v5       #info:Lcom/baidu/launcher/data/item/HomeItemInfo;
    .restart local v7       #j:I
    .restart local v8       #layout:Lcom/baidu/launcher/ui/homeview/CellLayout;
    .restart local v9       #view:Landroid/view/View;
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1
.end method

.method updateItemLocationsInDatabase(Lcom/baidu/launcher/ui/homeview/CellLayout;)V
    .locals 13
    .parameter "cl"

    .prologue
    .line 3804
    invoke-virtual {p1}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getChildCount()I

    move-result v10

    .line 3806
    .local v10, count:I
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/homeview/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v4

    .line 3807
    .local v4, screen:I
    const/16 v9, -0x64

    .line 3808
    .local v9, container:I
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/launcher/data/HomeDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/HomeDataManager;

    move-result-object v0

    .line 3809
    .local v0, homeDataManager:Lcom/baidu/launcher/data/HomeDataManager;
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    if-ge v11, v10, :cond_1

    .line 3810
    invoke-virtual {p1, v11}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 3811
    .local v12, v:Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/data/item/HomeItemInfo;

    .line 3814
    .local v1, info:Lcom/baidu/launcher/data/item/HomeItemInfo;
    if-eqz v1, :cond_0

    iget-wide v2, v1, Lcom/baidu/launcher/data/item/HomeItemInfo;->id:J

    const-wide/16 v5, -0x1

    cmp-long v2, v2, v5

    if-eqz v2, :cond_0

    .line 3815
    int-to-long v2, v9

    iget v5, v1, Lcom/baidu/launcher/data/item/HomeItemInfo;->cellX:I

    iget v6, v1, Lcom/baidu/launcher/data/item/HomeItemInfo;->cellY:I

    iget v7, v1, Lcom/baidu/launcher/data/item/HomeItemInfo;->spanX:I

    iget v8, v1, Lcom/baidu/launcher/data/item/HomeItemInfo;->spanY:I

    invoke-virtual/range {v0 .. v8}, Lcom/baidu/launcher/data/HomeDataManager;->modifyItemInDatabase(Lcom/baidu/launcher/data/item/HomeItemInfo;JIIIII)V

    .line 3809
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 3819
    .end local v1           #info:Lcom/baidu/launcher/data/item/HomeItemInfo;
    .end local v12           #v:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public updateItemRemoved(Ljava/util/ArrayList;)V
    .locals 4
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
    .line 2828
    .local p1, changeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/HomeItemInfo;>;"
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v0

    .line 2829
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2830
    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/ui/homeview/CellLayout;

    .line 2831
    .local v2, layout:Lcom/baidu/launcher/ui/homeview/CellLayout;
    if-nez v2, :cond_0

    .line 2829
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2833
    :cond_0
    new-instance v3, Lcom/baidu/launcher/ui/homeview/Workspace$6;

    invoke-direct {v3, p0, v2, p1}, Lcom/baidu/launcher/ui/homeview/Workspace$6;-><init>(Lcom/baidu/launcher/ui/homeview/Workspace;Lcom/baidu/launcher/ui/homeview/CellLayout;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v3}, Lcom/baidu/launcher/ui/homeview/Workspace;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 2903
    .end local v2           #layout:Lcom/baidu/launcher/ui/homeview/CellLayout;
    :cond_1
    return-void
.end method

.method public updateShortcuts(Lcom/baidu/launcher/data/item/HomeShortcutInfo;)V
    .locals 11
    .parameter "shortcut"

    .prologue
    .line 2811
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v1

    .line 2812
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 2813
    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/baidu/launcher/ui/homeview/CellLayout;

    .line 2814
    .local v5, layout:Lcom/baidu/launcher/ui/homeview/CellLayout;
    if-nez v5, :cond_1

    .line 2812
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2815
    :cond_1
    invoke-virtual {v5}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getChildCount()I

    move-result v0

    .line 2816
    .local v0, childCount:I
    const/4 v4, 0x0

    .local v4, j:I
    :goto_1
    if-ge v4, v0, :cond_0

    .line 2817
    invoke-virtual {v5, v4}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2818
    .local v6, view:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/data/item/HomeItemInfo;

    .line 2819
    .local v3, info:Lcom/baidu/launcher/data/item/HomeItemInfo;
    if-eqz v3, :cond_3

    iget-wide v7, p1, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->id:J

    iget-wide v9, v3, Lcom/baidu/launcher/data/item/HomeItemInfo;->id:J

    cmp-long v7, v7, v9

    if-nez v7, :cond_3

    .line 2820
    invoke-virtual {v6}, Landroid/view/View;->invalidate()V

    .line 2825
    .end local v0           #childCount:I
    .end local v3           #info:Lcom/baidu/launcher/data/item/HomeItemInfo;
    .end local v4           #j:I
    .end local v5           #layout:Lcom/baidu/launcher/ui/homeview/CellLayout;
    .end local v6           #view:Landroid/view/View;
    :cond_2
    return-void

    .line 2816
    .restart local v0       #childCount:I
    .restart local v3       #info:Lcom/baidu/launcher/data/item/HomeItemInfo;
    .restart local v4       #j:I
    .restart local v5       #layout:Lcom/baidu/launcher/ui/homeview/CellLayout;
    .restart local v6       #view:Landroid/view/View;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public updateShortcuts(Ljava/lang/String;I)V
    .locals 15
    .parameter "packageName"
    .parameter "state"

    .prologue
    .line 2612
    const-string v11, "Launcher.Workspace"

    const-string v12, "update shortcuts"

    invoke-static {v11, v12}, Lcom/baidu/launcher/utils/LogEx;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2614
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v2

    .line 2615
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 2616
    invoke-virtual {p0, v3}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/baidu/launcher/ui/homeview/CellLayout;

    .line 2617
    .local v8, layout:Lcom/baidu/launcher/ui/homeview/CellLayout;
    invoke-virtual {v8}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getChildCount()I

    move-result v1

    .line 2619
    .local v1, childCount:I
    iget-object v11, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/baidu/launcher/data/IconCache;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/IconCache;

    move-result-object v4

    .line 2621
    .local v4, iconCache:Lcom/baidu/launcher/data/IconCache;
    const/4 v7, 0x0

    .local v7, j:I
    :goto_1
    if-ge v7, v1, :cond_1

    .line 2622
    invoke-virtual {v8, v7}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 2623
    .local v10, view:Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    .line 2625
    .local v9, tag:Ljava/lang/Object;
    instance-of v11, v9, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    if-eqz v11, :cond_0

    move-object v5, v9

    .line 2626
    check-cast v5, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    .line 2628
    .local v5, info:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    iget-object v6, v5, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->intent:Landroid/content/Intent;

    .line 2630
    .local v6, intent:Landroid/content/Intent;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    if-eqz v11, :cond_0

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_0

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 2634
    move/from16 v0, p2

    iput v0, v5, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->status:I

    .line 2636
    iget-object v11, v5, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v11}, Lcom/baidu/launcher/data/IconCache;->getIcon(Landroid/content/Intent;)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v5, v11}, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    .line 2637
    check-cast v10, Landroid/widget/TextView;

    .end local v10           #view:Landroid/view/View;
    const/4 v11, 0x0

    new-instance v12, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;

    iget-object v13, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v13}, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->getIcon(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v13

    sget v14, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->iconScale:F

    invoke-direct {v12, v13, v14}, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;F)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2641
    const/4 v11, 0x4

    move/from16 v0, p2

    if-ne v0, v11, :cond_0

    .line 2642
    const-wide/16 v11, 0x1

    iput-wide v11, v5, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->clickCount:J

    .line 2643
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/baidu/launcher/data/HomeDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/HomeDataManager;

    move-result-object v11

    invoke-virtual {v11, v5}, Lcom/baidu/launcher/data/HomeDataManager;->updateItemInDatabase(Lcom/baidu/launcher/data/item/HomeItemInfo;)V

    .line 2621
    .end local v5           #info:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    .end local v6           #intent:Landroid/content/Intent;
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 2615
    .end local v9           #tag:Ljava/lang/Object;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 2649
    .end local v1           #childCount:I
    .end local v4           #iconCache:Lcom/baidu/launcher/data/IconCache;
    .end local v7           #j:I
    .end local v8           #layout:Lcom/baidu/launcher/ui/homeview/CellLayout;
    :cond_2
    return-void
.end method

.method public updateShortcuts(Ljava/util/ArrayList;)V
    .locals 20
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
    .line 2654
    .local p1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListAppInfo;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v4

    .line 2655
    .local v4, count:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v4, :cond_6

    .line 2656
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/baidu/launcher/ui/homeview/CellLayout;

    .line 2657
    .local v11, layout:Lcom/baidu/launcher/ui/homeview/CellLayout;
    if-nez v11, :cond_1

    .line 2655
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2658
    :cond_1
    invoke-virtual {v11}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getChildCount()I

    move-result v3

    .line 2659
    .local v3, childCount:I
    const/4 v9, 0x0

    .local v9, j:I
    :goto_1
    if-ge v9, v3, :cond_0

    .line 2660
    invoke-virtual {v11, v9}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 2661
    .local v14, view:Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v13

    .line 2662
    .local v13, tag:Ljava/lang/Object;
    instance-of v15, v13, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    if-eqz v15, :cond_4

    move-object v7, v13

    .line 2663
    check-cast v7, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    .line 2669
    .local v7, info:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    iget-object v8, v7, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->intent:Landroid/content/Intent;

    .line 2670
    .local v8, intent:Landroid/content/Intent;
    if-nez v8, :cond_3

    const/4 v12, 0x0

    .line 2671
    .local v12, name:Landroid/content/ComponentName;
    :goto_2
    if-eqz v12, :cond_5

    iget v15, v7, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->itemType:I

    if-nez v15, :cond_5

    const-string v15, "android.intent.action.MAIN"

    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 2673
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2674
    .local v2, appCount:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/baidu/launcher/data/IconCache;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/IconCache;

    move-result-object v6

    .line 2675
    .local v6, iconCache:Lcom/baidu/launcher/data/IconCache;
    const/4 v10, 0x0

    .local v10, k:I
    :goto_3
    if-ge v10, v2, :cond_5

    .line 2676
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/data/item/ListAppInfo;

    .line 2677
    .local v1, app:Lcom/baidu/launcher/data/item/ListAppInfo;
    iget-object v15, v1, Lcom/baidu/launcher/data/item/ListAppInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v15, :cond_2

    iget-object v15, v1, Lcom/baidu/launcher/data/item/ListAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v15, v12}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 2678
    const-string v15, "Launcher.Workspace"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "updateShortcuts "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v7, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->intent:Landroid/content/Intent;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2679
    iget-wide v15, v1, Lcom/baidu/launcher/data/item/ListAppInfo;->clickCount:J

    iput-wide v15, v7, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->clickCount:J

    .line 2680
    iget v15, v1, Lcom/baidu/launcher/data/item/ListAppInfo;->status:I

    iput v15, v7, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->status:I

    .line 2681
    iget-object v15, v7, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v6, v15}, Lcom/baidu/launcher/data/IconCache;->getIcon(Landroid/content/Intent;)Landroid/graphics/Bitmap;

    move-result-object v15

    invoke-virtual {v7, v15}, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    move-object v15, v14

    .line 2682
    check-cast v15, Landroid/widget/TextView;

    const/16 v16, 0x0

    new-instance v17, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->getIcon(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v18

    sget v19, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->iconScale:F

    invoke-direct/range {v17 .. v19}, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;F)V

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v15 .. v19}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2685
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Lcom/baidu/launcher/data/HomeDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/HomeDataManager;

    move-result-object v15

    invoke-virtual {v15, v7}, Lcom/baidu/launcher/data/HomeDataManager;->updateItemInDatabase(Lcom/baidu/launcher/data/item/HomeItemInfo;)V

    .line 2675
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 2670
    .end local v1           #app:Lcom/baidu/launcher/data/item/ListAppInfo;
    .end local v2           #appCount:I
    .end local v6           #iconCache:Lcom/baidu/launcher/data/IconCache;
    .end local v10           #k:I
    .end local v12           #name:Landroid/content/ComponentName;
    :cond_3
    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    goto/16 :goto_2

    .line 2689
    .end local v7           #info:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    .end local v8           #intent:Landroid/content/Intent;
    :cond_4
    instance-of v15, v14, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;

    if-eqz v15, :cond_5

    .line 2690
    const-string v15, "Launcher.Workspace"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "updateShortcuts "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v14}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2691
    check-cast v14, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;

    .end local v14           #view:Landroid/view/View;
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/baidu/launcher/ui/homeview/Workspace;->updateBaiduWidget(Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;)V

    .line 2659
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 2695
    .end local v3           #childCount:I
    .end local v9           #j:I
    .end local v11           #layout:Lcom/baidu/launcher/ui/homeview/CellLayout;
    .end local v13           #tag:Ljava/lang/Object;
    :cond_6
    return-void
.end method

.method willCauseFolderAction(Ljava/lang/Object;Lcom/baidu/launcher/ui/homeview/CellLayout;[IFZ)Z
    .locals 10
    .parameter "info"
    .parameter "target"
    .parameter "targetCell"
    .parameter "distance"
    .parameter "considerTimeout"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 3917
    iget v8, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mMaxDistanceForFolderCreation:F

    cmpl-float v8, p4, v8

    if-lez v8, :cond_1

    .line 3941
    :cond_0
    :goto_0
    return v7

    .line 3919
    :cond_1
    aget v8, p3, v7

    aget v9, p3, v6

    invoke-virtual {p2, v8, v9}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    .line 3921
    .local v0, dropOverView:Landroid/view/View;
    if-eqz v0, :cond_2

    .line 3922
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;

    .line 3923
    .local v3, lp:Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;
    iget-boolean v8, v3, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->useTmpCoords:Z

    if-eqz v8, :cond_2

    iget v8, v3, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->tmpCellX:I

    iget v9, v3, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellX:I

    if-ne v8, v9, :cond_0

    iget v8, v3, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->tmpCellY:I

    iget v9, v3, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellY:I

    if-ne v8, v9, :cond_0

    .line 3928
    .end local v3           #lp:Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;
    :cond_2
    const/4 v2, 0x0

    .line 3929
    .local v2, hasntMoved:Z
    iget-object v8, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragInfo:Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;

    if-eqz v8, :cond_3

    .line 3930
    iget-object v8, p0, Lcom/baidu/launcher/ui/homeview/Workspace;->mDragInfo:Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;

    iget-object v8, v8, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-ne v0, v8, :cond_6

    move v2, v6

    .line 3933
    :cond_3
    :goto_1
    if-eqz v0, :cond_0

    if-nez v2, :cond_0

    if-nez p5, :cond_0

    .line 3936
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 3937
    .local v4, tag:Ljava/lang/Object;
    instance-of v8, v4, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    if-nez v8, :cond_4

    instance-of v8, v4, Lcom/baidu/launcher/data/item/HomeFolderInfo;

    if-eqz v8, :cond_7

    :cond_4
    move v1, v6

    .line 3938
    .local v1, folder:Z
    :goto_2
    instance-of v8, p1, Lcom/baidu/launcher/data/item/ListAppInfo;

    if-nez v8, :cond_5

    instance-of v8, p1, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    if-eqz v8, :cond_8

    :cond_5
    move v5, v6

    .line 3941
    .local v5, willBecomeShortcut:Z
    :goto_3
    if-eqz v1, :cond_9

    if-eqz v5, :cond_9

    :goto_4
    move v7, v6

    goto :goto_0

    .end local v1           #folder:Z
    .end local v4           #tag:Ljava/lang/Object;
    .end local v5           #willBecomeShortcut:Z
    :cond_6
    move v2, v7

    .line 3930
    goto :goto_1

    .restart local v4       #tag:Ljava/lang/Object;
    :cond_7
    move v1, v7

    .line 3937
    goto :goto_2

    .restart local v1       #folder:Z
    :cond_8
    move v5, v7

    .line 3938
    goto :goto_3

    .restart local v5       #willBecomeShortcut:Z
    :cond_9
    move v6, v7

    .line 3941
    goto :goto_4
.end method
