.class public Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;
.super Lcom/baidu/launcher/ui/common/DraggableViewPagger;
.source "AppsCustomizePagedView.java"

# interfaces
.implements Lcom/baidu/launcher/ui/dragdrop/DragSource;
.implements Lcom/baidu/launcher/ui/dragdrop/DropTarget;
.implements Lcom/baidu/launcher/ui/dragdrop/DragScroller;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$DisableHandler;,
        Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$CreateFolderOnDrop;,
        Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$FolderCreationAlarmListener;,
        Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$SqueezeRunnable;,
        Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$ZInterpolator;,
        Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$PagedViewContainer;
    }
.end annotation


# static fields
.field private static CAMERA_DISTANCE:F = 0.0f

.field public static final DISABLE_LOOP:I = 0x2

.field public static final DISABLE_SAVE:I = 0x0

.field public static final DISABLE_START_APP:I = 0x1

.field private static final DRAG_MODE_CREATE_FOLDER:I = 0x1

.field private static final DRAG_MODE_NONE:I = 0x0

.field private static final DRAG_MODE_REMOVE_APP_FROM_FOLDER:I = 0x2

.field public static final LEFT:I = 0x1

.field public static final NOMAL:I = 0x0

.field private static final PERFORM_OVERSCROLL_ROTATION:Z = false

.field public static final RIGHT:I = 0x2

.field private static TRANSITION_MAX_OVERSCROLL:F = 0.0f

.field private static TRANSITION_MAX_ROTATION:F = 0.0f

.field private static TRANSITION_PIVOT:F = 0.0f

.field private static TRANSITION_SCALE_FACTOR:F = 0.0f

.field public static final TYPE_APP:I = 0x0

.field public static final TYPE_SHORTCUT:I = 0x2

.field public static final TYPE_WIDGET:I = 0x1

.field public static mCanSaveData:Z

.field private static final mLock:Ljava/lang/Object;


# instance fields
.field protected InterLoop:Z

.field private animateViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field disableHandler:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$DisableHandler;

.field private disableItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/data/item/ListItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAlphaInterpolator:Landroid/view/animation/AccelerateInterpolator;

.field private mAnimator:Lcom/baidu/launcher/ui/animation/ValueAnimator;

.field private mApps:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/baidu/launcher/data/item/ListAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mBackupDisableMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/baidu/launcher/data/item/ListItemInfo;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mBackupHideMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/baidu/launcher/data/item/ListItemInfo;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mBackupPresetApp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/data/item/ListAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCanShowFolderAccept:Z

.field private mContainer:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$PagedViewContainer;

.field private mContentWidth:I

.field private mCreateFolderView:Landroid/view/View;

.field private mCurrentTab:I

.field private mDissolutionFolder:Z

.field private mDragMode:I

.field private mDragMoveIndex:I

.field private mDraggedView:Landroid/view/View;

.field private mFistdisplayForTopApp:Z

.field private final mFolderCreationAlarm:Lcom/baidu/launcher/ui/animation/Alarm;

.field private mFolderHighlightView:Landroid/view/View;

.field private mFolders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/data/item/ListFolderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mIndicator:Lcom/baidu/launcher/ui/applistview/AllAppsIndicatorNew;

.field private mIsInitPosDate:Z

.field private final mIsLandscape:Z

.field private mItems:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/baidu/launcher/data/item/ListItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLastOverChild:Landroid/view/View;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLeftScreenAlphaInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private mMaxAppCellCountX:I

.field private mMaxAppCellCountY:I

.field private mNumAppsPages:I

.field private mNumWidgetPages:I

.field private mPosIndex:[[I

.field private mReadyMoveIndex:I

.field private mSaveInstanceStateItemIndex:I

.field private mSnapDir:I

.field private mSqueezeRunnable:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$SqueezeRunnable;

.field private mStep:I

.field private mTempCurrentPage:I

.field private mTimerHandler:Landroid/os/Handler;

.field private mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

.field private mWidgetCountX:I

.field private mWidgetCountY:I

.field private mWidgetHeightGap:I

.field private mWidgetSpacingLayout:Lcom/baidu/launcher/ui/common/PagedViewCellLayout;

.field private mWidgetWidthGap:I

.field private mWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mZInterpolator:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$ZInterpolator;

.field private toast:Landroid/widget/Toast;

.field private whiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private xIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCanSaveData:Z

    .line 194
    const v0, 0x45cb2000

    sput v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->CAMERA_DISTANCE:F

    .line 195
    const v0, 0x3ef5c28f

    sput v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->TRANSITION_SCALE_FACTOR:F

    .line 196
    const v0, 0x3f266666

    sput v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->TRANSITION_PIVOT:F

    .line 197
    const/high16 v0, 0x41b0

    sput v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->TRANSITION_MAX_ROTATION:F

    .line 198
    const v0, 0x3ec28f5c

    sput v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->TRANSITION_MAX_OVERSCROLL:F

    .line 244
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v7, 0x3

    const/4 v2, 0x1

    const/4 v6, 0x2

    const/4 v5, -0x1

    const/4 v3, 0x0

    .line 271
    invoke-direct {p0, p1, p2}, Lcom/baidu/launcher/ui/common/DraggableViewPagger;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 167
    new-instance v1, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$DisableHandler;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$DisableHandler;-><init>(Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;)V

    iput-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->disableHandler:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$DisableHandler;

    .line 172
    iput v5, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mSaveInstanceStateItemIndex:I

    .line 180
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mHandler:Landroid/os/Handler;

    .line 193
    new-instance v1, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$ZInterpolator;

    const/high16 v4, 0x3f00

    invoke-direct {v1, p0, v4}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$ZInterpolator;-><init>(Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;F)V

    iput-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mZInterpolator:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$ZInterpolator;

    .line 200
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    const v4, 0x3f666666

    invoke-direct {v1, v4}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mAlphaInterpolator:Landroid/view/animation/AccelerateInterpolator;

    .line 202
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v4, 0x4080

    invoke-direct {v1, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mLeftScreenAlphaInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 212
    iput v3, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mSnapDir:I

    .line 214
    iput v3, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mTempCurrentPage:I

    .line 215
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->animateViews:Ljava/util/ArrayList;

    .line 216
    iput v5, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mDragMoveIndex:I

    .line 219
    sget v1, Lcom/baidu/launcher/utils/DefaultConfigurationHelper;->launcherLineNum:I

    if-le v1, v7, :cond_0

    sget v1, Lcom/baidu/launcher/utils/DefaultConfigurationHelper;->launcherLineNum:I

    mul-int/lit8 v1, v1, 0x4

    :goto_0
    iput v1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->xIndex:I

    .line 221
    iget v1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->xIndex:I

    filled-new-array {v1, v6}, [I

    move-result-object v1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    iput-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mPosIndex:[[I

    .line 223
    iput v3, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mStep:I

    .line 227
    iput v3, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mDragMode:I

    .line 228
    new-instance v1, Lcom/baidu/launcher/ui/animation/Alarm;

    invoke-direct {v1}, Lcom/baidu/launcher/ui/animation/Alarm;-><init>()V

    iput-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mFolderCreationAlarm:Lcom/baidu/launcher/ui/animation/Alarm;

    .line 233
    iput-boolean v3, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCanShowFolderAccept:Z

    .line 237
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mTimerHandler:Landroid/os/Handler;

    .line 239
    iput v5, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mReadyMoveIndex:I

    .line 241
    iput-boolean v3, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mIsInitPosDate:Z

    .line 243
    iput-boolean v3, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mDissolutionFolder:Z

    .line 245
    iput-boolean v2, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mFistdisplayForTopApp:Z

    .line 248
    sget-boolean v1, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->inter_loop:Z

    iput-boolean v1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->InterLoop:Z

    .line 272
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 273
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mApps:Ljava/util/Vector;

    .line 274
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mFolders:Ljava/util/ArrayList;

    .line 275
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mItems:Ljava/util/Vector;

    .line 276
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mWidgets:Ljava/util/ArrayList;

    .line 278
    sget-object v1, Lcom/baidu/home2/R$styleable;->AppsCustomizePagedView:[I

    invoke-virtual {p1, p2, v1, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 280
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mMaxAppCellCountX:I

    .line 282
    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mMaxAppCellCountY:I

    .line 284
    invoke-virtual {v0, v6, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mWidgetWidthGap:I

    .line 286
    invoke-virtual {v0, v7, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mWidgetHeightGap:I

    .line 288
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mWidgetCountX:I

    .line 290
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mWidgetCountY:I

    .line 292
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 293
    new-instance v1, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mWidgetSpacingLayout:Lcom/baidu/launcher/ui/common/PagedViewCellLayout;

    .line 295
    iput-boolean v3, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mFadeInAdjacentScreens:Z

    .line 296
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v6, :cond_1

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mIsLandscape:Z

    .line 297
    return-void

    .line 219
    .end local v0           #a:Landroid/content/res/TypedArray;
    :cond_0
    const/16 v1, 0x14

    goto/16 :goto_0

    .restart local v0       #a:Landroid/content/res/TypedArray;
    :cond_1
    move v1, v3

    .line 296
    goto :goto_1
.end method

.method static synthetic access$000(Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 140
    invoke-direct {p0, p1, p2}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->showPage(IZ)V

    return-void
.end method

.method static synthetic access$100(Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 140
    iget v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mReadyMoveIndex:I

    return v0
.end method

.method static synthetic access$1000(Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->setDragMode(I)V

    return-void
.end method

.method static synthetic access$102(Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 140
    iput p1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mReadyMoveIndex:I

    return p1
.end method

.method static synthetic access$1100(Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;)Lcom/baidu/launcher/ui/logic/ViewManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 140
    iget v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mDragMoveIndex:I

    return v0
.end method

.method static synthetic access$202(Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 140
    iput p1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mDragMoveIndex:I

    return p1
.end method

.method static synthetic access$300(Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 140
    invoke-direct {p0, p1, p2}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->calculateAnimateViews(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->postAnimation()V

    return-void
.end method

.method static synthetic access$500(Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->animateViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->resetAnimateViews()V

    return-void
.end method

.method static synthetic access$700(Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->reloadOtherPages(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->invalidatePageData(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCreateFolderView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$902(Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 140
    iput-object p1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCreateFolderView:Landroid/view/View;

    return-object p1
.end method

.method private calculateAnimateViews(II)V
    .locals 12
    .parameter "oldIndex"
    .parameter "newIndex"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 2814
    if-le p2, p1, :cond_1

    move v1, v9

    .line 2815
    .local v1, ascend:Z
    :goto_0
    if-eqz v1, :cond_2

    const/4 v8, -0x1

    :goto_1
    iput v8, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mStep:I

    .line 2816
    if-eqz v1, :cond_3

    add-int/lit8 v6, p1, 0x1

    .line 2817
    .local v6, start:I
    :goto_2
    if-eqz v1, :cond_4

    add-int/lit8 v3, p2, 0x1

    .line 2818
    .local v3, end:I
    :goto_3
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->appCountOnePage()I

    move-result v0

    .line 2819
    .local v0, appCountOnePage:I
    iget v8, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mStep:I

    add-int/2addr v8, v3

    if-le v8, v0, :cond_0

    .line 2820
    add-int/lit8 v3, v3, -0x1

    .line 2821
    :cond_0
    move v4, v6

    .local v4, i:I
    :goto_4
    if-ge v4, v3, :cond_6

    .line 2822
    invoke-direct {p0, v4}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getViewByIndex(I)Landroid/view/View;

    move-result-object v7

    .line 2823
    .local v7, v:Landroid/view/View;
    if-nez v7, :cond_5

    .line 2821
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .end local v0           #appCountOnePage:I
    .end local v1           #ascend:Z
    .end local v3           #end:I
    .end local v4           #i:I
    .end local v6           #start:I
    .end local v7           #v:Landroid/view/View;
    :cond_1
    move v1, v10

    .line 2814
    goto :goto_0

    .restart local v1       #ascend:Z
    :cond_2
    move v8, v9

    .line 2815
    goto :goto_1

    :cond_3
    move v6, p2

    .line 2816
    goto :goto_2

    .restart local v6       #start:I
    :cond_4
    move v3, p1

    .line 2817
    goto :goto_3

    .line 2825
    .restart local v0       #appCountOnePage:I
    .restart local v3       #end:I
    .restart local v4       #i:I
    .restart local v7       #v:Landroid/view/View;
    :cond_5
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;

    .line 2827
    .local v5, lp:Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;
    iget-object v8, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mPosIndex:[[I

    iget v11, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mStep:I

    add-int/2addr v11, v4

    aget-object v2, v8, v11

    .line 2828
    .local v2, desPos:[I
    aget v8, v2, v10

    iput v8, v5, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->destinationX:I

    .line 2829
    aget v8, v2, v9

    iput v8, v5, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->destinationY:I

    .line 2830
    iget v8, v5, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->x:I

    iput v8, v5, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->originalX:I

    .line 2831
    iget v8, v5, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->y:I

    iput v8, v5, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->originalY:I

    .line 2832
    iget v8, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mStep:I

    iput v8, v5, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->moveStep:I

    .line 2833
    iput-boolean v9, v5, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->animating:Z

    .line 2834
    iget-object v8, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->animateViews:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 2836
    .end local v2           #desPos:[I
    .end local v5           #lp:Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;
    .end local v7           #v:Landroid/view/View;
    :cond_6
    return-void
.end method

.method private cancelFolderHighlightDraw()V
    .locals 1

    .prologue
    .line 3303
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mFolderHighlightView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3304
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mFolderHighlightView:Landroid/view/View;

    check-cast v0, Lcom/baidu/launcher/ui/common/BubbleTextView;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/common/BubbleTextView;->cancelFolderHighlight()V

    .line 3306
    :cond_0
    return-void
.end method

.method private cancelMoveRunnal()V
    .locals 2

    .prologue
    .line 2758
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mTimerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mSqueezeRunnable:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$SqueezeRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2759
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mReadyMoveIndex:I

    .line 2760
    return-void
.end method

.method private changeToCreateFloderMode(I)V
    .locals 3
    .parameter "childIndex"

    .prologue
    .line 3284
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mFolderCreationAlarm:Lcom/baidu/launcher/ui/animation/Alarm;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/animation/Alarm;->alarmPending()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mDraggedView:Landroid/view/View;

    instance-of v0, v0, Lcom/baidu/launcher/ui/folder/FolderIcon;

    if-nez v0, :cond_0

    .line 3286
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mFolderCreationAlarm:Lcom/baidu/launcher/ui/animation/Alarm;

    new-instance v1, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$FolderCreationAlarmListener;

    invoke-direct {v1, p0, p1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$FolderCreationAlarmListener;-><init>(Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;I)V

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/animation/Alarm;->setOnAlarmListener(Lcom/baidu/launcher/ui/animation/Alarm$OnAlarmListener;)V

    .line 3289
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mFolderCreationAlarm:Lcom/baidu/launcher/ui/animation/Alarm;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/baidu/launcher/ui/animation/Alarm;->setAlarm(J)V

    .line 3294
    :cond_0
    return-void
.end method

.method private createFolderOnDropCell(Ljava/lang/Object;)Z
    .locals 2
    .parameter "dragInfo"

    .prologue
    .line 3345
    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCreateFolderView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 3346
    const/4 v0, 0x0

    .line 3355
    :cond_0
    :goto_0
    return v0

    .line 3348
    :cond_1
    const/4 v0, 0x1

    .line 3349
    .local v0, create:Z
    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCreateFolderView:Landroid/view/View;

    instance-of v1, v1, Lcom/baidu/launcher/ui/folder/FolderIcon;

    if-eqz v1, :cond_2

    .line 3350
    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCreateFolderView:Landroid/view/View;

    check-cast v1, Lcom/baidu/launcher/ui/folder/FolderIcon;

    invoke-virtual {v1, p1}, Lcom/baidu/launcher/ui/folder/FolderIcon;->acceptDrop(Ljava/lang/Object;)Z

    move-result v0

    .line 3352
    :cond_2
    if-eqz v0, :cond_0

    .line 3353
    new-instance v1, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$CreateFolderOnDrop;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$CreateFolderOnDrop;-><init>(Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;)V

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private dissolutionOfTheFolder(Lcom/baidu/launcher/data/item/ListFolderInfo;)V
    .locals 1
    .parameter "listFolderInfo"

    .prologue
    .line 3484
    if-nez p1, :cond_0

    .line 3506
    :goto_0
    return-void

    .line 3486
    :cond_0
    new-instance v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$9;

    invoke-direct {v0, p0, p1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$9;-><init>(Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;Lcom/baidu/launcher/data/item/ListFolderInfo;)V

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private getCurrentPageByUpdate()I
    .locals 4

    .prologue
    .line 2164
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mContainer:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$PagedViewContainer;

    invoke-interface {v0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$PagedViewContainer;->getPageType()I

    move-result v0

    if-nez v0, :cond_0

    .line 2165
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getCurrentPage()I

    move-result v0

    const/4 v1, 0x0

    iget v2, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mNumAppsPages:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2167
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mNumAppsPages:I

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getCurrentPage()I

    move-result v1

    iget v2, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mNumAppsPages:I

    iget v3, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mNumWidgetPages:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method private getViewByIndex(I)Landroid/view/View;
    .locals 5
    .parameter "index"

    .prologue
    .line 3136
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getCurrentPageAppCount()I

    move-result v3

    .line 3139
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 3140
    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getCurrentPageAppItemView(I)Landroid/view/View;

    move-result-object v0

    .line 3141
    .local v0, child:Landroid/view/View;
    if-nez v0, :cond_1

    .line 3139
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3143
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;

    .line 3144
    .local v2, lp:Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;
    iget v4, v2, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->itemIndex:I

    if-ne v4, p1, :cond_0

    .line 3147
    .end local v0           #child:Landroid/view/View;
    .end local v2           #lp:Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;
    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private initPosIndexData()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 2963
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getCurrentPageAppCount()I

    move-result v3

    .line 2966
    .local v3, size:I
    iget-boolean v4, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mIsInitPosDate:Z

    if-nez v4, :cond_2

    .line 2967
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 2968
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getCurrentPageAppItemView(I)Landroid/view/View;

    move-result-object v1

    .line 2969
    .local v1, item:Landroid/view/View;
    if-nez v1, :cond_0

    .line 2967
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2971
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;

    .line 2972
    .local v2, lp:Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;
    iget v4, v2, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->itemIndex:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 2973
    iput v0, v2, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->itemIndex:I

    .line 2975
    :cond_1
    iget-object v4, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mPosIndex:[[I

    iget v5, v2, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->itemIndex:I

    aget-object v4, v4, v5

    const/4 v5, 0x0

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v6

    aput v6, v4, v5

    .line 2976
    iget-object v4, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mPosIndex:[[I

    iget v5, v2, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->itemIndex:I

    aget-object v4, v4, v5

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v5

    aput v5, v4, v7

    goto :goto_1

    .line 2979
    .end local v0           #i:I
    .end local v1           #item:Landroid/view/View;
    .end local v2           #lp:Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;
    :cond_2
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->appCountOnePage()I

    move-result v4

    if-lt v3, v4, :cond_3

    .line 2980
    iput-boolean v7, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mIsInitPosDate:Z

    .line 2985
    :goto_2
    return-void

    .line 2982
    :cond_3
    iget-object v5, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mPosIndex:[[I

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getCurrentPage()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;

    invoke-virtual {v4, v3}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->computeChildCoordinate(I)[I

    move-result-object v4

    aput-object v4, v5, v3

    goto :goto_2
.end method

.method private initWhiteList()V
    .locals 2

    .prologue
    .line 3779
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->whiteList:Ljava/util/ArrayList;

    .line 3780
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->whiteList:Ljava/util/ArrayList;

    const-string v1, "com.android.settings"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3781
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->whiteList:Ljava/util/ArrayList;

    const-string v1, "com.baidu.android.ota"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3782
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->whiteList:Ljava/util/ArrayList;

    const-string v1, "com.android.contacts"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3783
    return-void
.end method

.method private postAnimation()V
    .locals 3

    .prologue
    .line 2839
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mAnimator:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 2840
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mAnimator:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->end()V

    .line 2842
    :cond_0
    new-instance v0, Lcom/baidu/launcher/ui/animation/ValueAnimator;

    invoke-direct {v0}, Lcom/baidu/launcher/ui/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mAnimator:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    .line 2843
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mAnimator:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->setFloatValues([F)V

    .line 2844
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mAnimator:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->setDuration(J)Lcom/baidu/launcher/ui/animation/ValueAnimator;

    .line 2845
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mAnimator:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    new-instance v1, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$5;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$5;-><init>(Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;)V

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->addUpdateListener(Lcom/baidu/launcher/ui/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2864
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mAnimator:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    new-instance v1, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$6;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$6;-><init>(Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;)V

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->addListener(Lcom/baidu/launcher/ui/animation/Animator$AnimatorListener;)V

    .line 2878
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mAnimator:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->start()V

    .line 2881
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->setCanSaveData(Z)V

    .line 2882
    return-void

    .line 2843
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private reloadOtherPages(I)V
    .locals 6
    .parameter "currPage"

    .prologue
    const/4 v5, 0x1

    .line 3449
    iget-object v3, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3451
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_3

    .line 3452
    if-eq v0, p1, :cond_0

    .line 3453
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/common/Page;

    .line 3454
    .local v1, layout:Lcom/baidu/launcher/ui/common/Page;
    invoke-interface {v1}, Lcom/baidu/launcher/ui/common/Page;->removeAllViewsOnPage()V

    .line 3455
    iget-object v3, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3457
    .end local v1           #layout:Lcom/baidu/launcher/ui/common/Page;
    :cond_0
    add-int/lit8 v3, v0, 0x1

    if-eq v3, p1, :cond_1

    add-int/lit8 v3, v0, -0x1

    if-ne v3, p1, :cond_2

    .line 3458
    :cond_1
    invoke-virtual {p0, v0, v5}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->syncAppsPageItems(IZ)V

    .line 3459
    iget-object v3, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3451
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3462
    :cond_3
    return-void
.end method

.method private replacePresetOne(Lcom/baidu/launcher/data/item/ListAppInfo;)Lcom/baidu/launcher/data/item/ListAppInfo;
    .locals 9
    .parameter "item"

    .prologue
    const/4 v8, 0x3

    .line 1746
    iget-object v6, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mItems:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/launcher/data/item/ListItemInfo;

    .line 1747
    .local v4, itemInfo:Lcom/baidu/launcher/data/item/ListItemInfo;
    iget v5, v4, Lcom/baidu/launcher/data/item/ListItemInfo;->itemType:I

    .line 1748
    .local v5, itemType:I
    const/16 v6, 0xa

    if-ne v5, v6, :cond_1

    .line 1749
    iget-boolean v6, v4, Lcom/baidu/launcher/data/item/ListItemInfo;->isPreset:Z

    if-eqz v6, :cond_0

    iget-object v6, v4, Lcom/baidu/launcher/data/item/ListItemInfo;->dependPackage:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 1751
    iget-object v6, v4, Lcom/baidu/launcher/data/item/ListItemInfo;->dependPackage:Ljava/lang/String;

    iget-object v7, p1, Lcom/baidu/launcher/data/item/ListAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1753
    iget v6, v4, Lcom/baidu/launcher/data/item/ListItemInfo;->index:I

    iput v6, p1, Lcom/baidu/launcher/data/item/ListAppInfo;->index:I

    .line 1754
    iget-object v6, v4, Lcom/baidu/launcher/data/item/ListItemInfo;->iconBitmap:Landroid/graphics/Bitmap;

    iput-object v6, p1, Lcom/baidu/launcher/data/item/ListAppInfo;->iconBitmap:Landroid/graphics/Bitmap;

    .line 1755
    iput v8, p1, Lcom/baidu/launcher/data/item/ListAppInfo;->status:I

    .line 1756
    iget-wide v6, v4, Lcom/baidu/launcher/data/item/ListItemInfo;->container:J

    iput-wide v6, p1, Lcom/baidu/launcher/data/item/ListAppInfo;->container:J

    .line 1757
    iget-wide v6, v4, Lcom/baidu/launcher/data/item/ListItemInfo;->businessTableID:J

    iput-wide v6, p1, Lcom/baidu/launcher/data/item/ListAppInfo;->businessTableID:J

    .line 1758
    check-cast v4, Lcom/baidu/launcher/data/item/ListAppInfo;

    .line 1780
    .end local v4           #itemInfo:Lcom/baidu/launcher/data/item/ListItemInfo;
    .end local v5           #itemType:I
    :goto_0
    return-object v4

    .line 1760
    .restart local v4       #itemInfo:Lcom/baidu/launcher/data/item/ListItemInfo;
    .restart local v5       #itemType:I
    :cond_1
    const/16 v6, 0xb

    if-ne v5, v6, :cond_0

    move-object v1, v4

    .line 1761
    check-cast v1, Lcom/baidu/launcher/data/item/ListFolderInfo;

    .line 1762
    .local v1, folder:Lcom/baidu/launcher/data/item/ListFolderInfo;
    invoke-virtual {v1}, Lcom/baidu/launcher/data/item/ListFolderInfo;->getAll()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/data/item/ListAppInfo;

    .line 1763
    .local v0, app:Lcom/baidu/launcher/data/item/ListAppInfo;
    iget-boolean v6, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->isPreset:Z

    if-eqz v6, :cond_2

    iget-object v6, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->dependPackage:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 1765
    iget-object v6, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->dependPackage:Ljava/lang/String;

    iget-object v7, p1, Lcom/baidu/launcher/data/item/ListAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1767
    iput v8, p1, Lcom/baidu/launcher/data/item/ListAppInfo;->status:I

    .line 1768
    iget v6, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->index:I

    iput v6, p1, Lcom/baidu/launcher/data/item/ListAppInfo;->index:I

    .line 1769
    iget-object v6, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->iconBitmap:Landroid/graphics/Bitmap;

    iput-object v6, p1, Lcom/baidu/launcher/data/item/ListAppInfo;->iconBitmap:Landroid/graphics/Bitmap;

    .line 1770
    iget-wide v6, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->container:J

    iput-wide v6, p1, Lcom/baidu/launcher/data/item/ListAppInfo;->container:J

    .line 1771
    iget-wide v6, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->businessTableID:J

    iput-wide v6, p1, Lcom/baidu/launcher/data/item/ListAppInfo;->businessTableID:J

    .line 1772
    invoke-virtual {v1, v0}, Lcom/baidu/launcher/data/item/ListFolderInfo;->remove(Lcom/baidu/launcher/data/item/BaseItemInfo;)V

    .line 1773
    invoke-virtual {v1, p1}, Lcom/baidu/launcher/data/item/ListFolderInfo;->add(Lcom/baidu/launcher/data/item/BaseItemInfo;)V

    move-object v4, v0

    .line 1774
    goto :goto_0

    .line 1780
    .end local v0           #app:Lcom/baidu/launcher/data/item/ListAppInfo;
    .end local v1           #folder:Lcom/baidu/launcher/data/item/ListFolderInfo;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #itemInfo:Lcom/baidu/launcher/data/item/ListItemInfo;
    .end local v5           #itemType:I
    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private resetAnimateViews()V
    .locals 23

    .prologue
    .line 2994
    const/16 v17, 0x0

    .line 2995
    .local v17, tmpIndex:I
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getCurrentPage()I

    move-result v6

    .line 2996
    .local v6, currentPage:I
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->appCountOnePage()I

    move-result v20

    mul-int v14, v6, v20

    .line 2997
    .local v14, offsetAppNum:I
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getAppCountOneLine()I

    move-result v4

    .line 2998
    .local v4, appCountOneLine:I
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getCurrentPageChildLayout()Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;

    move-result-object v5

    .line 2999
    .local v5, currPageView:Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;
    const/4 v15, 0x0

    .line 3000
    .local v15, tempChild:Landroid/view/View;
    const/16 v16, 0x0

    .line 3001
    .local v16, tempDragView:Landroid/view/View;
    const/4 v7, 0x0

    .line 3003
    .local v7, deleteOrAddItemCount:I
    const/4 v9, 0x0

    .line 3004
    .local v9, fistAnimItemInfo:Lcom/baidu/launcher/data/item/ListItemInfo;
    const/16 v18, 0x0

    .line 3005
    .local v18, tmpItemInfo:Lcom/baidu/launcher/data/item/ListItemInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getItems()Ljava/util/Vector;

    move-result-object v12

    .line 3006
    .local v12, itemlist:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/baidu/launcher/data/item/ListItemInfo;>;"
    const/4 v8, 0x0

    .line 3007
    .local v8, dragViewLp:Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mDragMode:I

    move/from16 v20, v0

    if-nez v20, :cond_1

    .line 3008
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mDraggedView:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .end local v8           #dragViewLp:Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;
    check-cast v8, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;

    .line 3010
    .restart local v8       #dragViewLp:Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;
    iget v0, v8, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->itemIndex:I

    move/from16 v20, v0

    add-int v20, v20, v14

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #fistAnimItemInfo:Lcom/baidu/launcher/data/item/ListItemInfo;
    check-cast v9, Lcom/baidu/launcher/data/item/ListItemInfo;

    .line 3012
    .restart local v9       #fistAnimItemInfo:Lcom/baidu/launcher/data/item/ListItemInfo;
    iget v0, v8, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->itemIndex:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 3013
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mDragMoveIndex:I

    move/from16 v20, v0

    move/from16 v0, v20

    iput v0, v8, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->itemIndex:I

    .line 3014
    iget v0, v8, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->itemIndex:I

    move/from16 v20, v0

    rem-int v20, v20, v4

    move/from16 v0, v20

    iput v0, v8, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->cellX:I

    .line 3015
    iget v0, v8, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->itemIndex:I

    move/from16 v20, v0

    div-int v20, v20, v4

    move/from16 v0, v20

    iput v0, v8, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->cellY:I

    .line 3033
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mStep:I

    move/from16 v20, v0

    if-lez v20, :cond_5

    .line 3034
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->animateViews:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    add-int/lit8 v10, v20, -0x1

    .local v10, i:I
    :goto_1
    if-ltz v10, :cond_8

    .line 3035
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->animateViews:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/view/View;

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;

    .line 3037
    .local v13, lp:Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;
    iget v0, v13, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->destinationX:I

    move/from16 v20, v0

    move/from16 v0, v20

    iput v0, v13, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->originalX:I

    move/from16 v0, v20

    iput v0, v13, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->x:I

    .line 3038
    iget v0, v13, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->destinationY:I

    move/from16 v20, v0

    move/from16 v0, v20

    iput v0, v13, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->originalY:I

    move/from16 v0, v20

    iput v0, v13, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->y:I

    .line 3039
    iget v0, v13, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->itemIndex:I

    move/from16 v17, v0

    .line 3040
    iget v0, v13, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->itemIndex:I

    move/from16 v20, v0

    iget v0, v13, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->moveStep:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move/from16 v0, v20

    iput v0, v13, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->itemIndex:I

    .line 3041
    if-nez v7, :cond_3

    .line 3042
    add-int v20, v17, v14

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v18

    .end local v18           #tmpItemInfo:Lcom/baidu/launcher/data/item/ListItemInfo;
    check-cast v18, Lcom/baidu/launcher/data/item/ListItemInfo;

    .line 3043
    .restart local v18       #tmpItemInfo:Lcom/baidu/launcher/data/item/ListItemInfo;
    iget v0, v13, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->itemIndex:I

    move/from16 v20, v0

    add-int v20, v20, v14

    move/from16 v0, v20

    move-object/from16 v1, v18

    iput v0, v1, Lcom/baidu/launcher/data/item/ListItemInfo;->index:I

    .line 3044
    iget v0, v13, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->itemIndex:I

    move/from16 v20, v0

    add-int v20, v20, v14

    move/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3049
    :goto_2
    move/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 3050
    invoke-virtual {v5, v15}, Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;->removeView(Landroid/view/View;)V

    .line 3051
    iget v0, v13, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->itemIndex:I

    move/from16 v20, v0

    invoke-virtual {v5}, Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;->getChildCount()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_4

    .line 3052
    invoke-virtual {v5}, Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;->getChildCount()I

    move-result v20

    move/from16 v0, v20

    iput v0, v13, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->itemIndex:I

    .line 3053
    invoke-virtual {v5, v15, v13}, Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3057
    :goto_3
    iget v0, v13, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->itemIndex:I

    move/from16 v20, v0

    rem-int v20, v20, v4

    move/from16 v0, v20

    iput v0, v13, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->cellX:I

    .line 3058
    iget v0, v13, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->itemIndex:I

    move/from16 v20, v0

    div-int v20, v20, v4

    move/from16 v0, v20

    iput v0, v13, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->cellY:I

    .line 3059
    const/16 v20, 0x0

    move/from16 v0, v20

    iput-boolean v0, v13, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->animating:Z

    .line 3034
    add-int/lit8 v10, v10, -0x1

    goto/16 :goto_1

    .line 3016
    .end local v10           #i:I
    .end local v13           #lp:Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mDragMode:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    .line 3017
    const/4 v7, -0x1

    goto/16 :goto_0

    .line 3018
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mDragMode:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 3019
    const/4 v7, 0x1

    .line 3020
    new-instance v8, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;

    .end local v8           #dragViewLp:Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;
    invoke-direct {v8}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;-><init>()V

    .line 3021
    .restart local v8       #dragViewLp:Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->animateViews:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/view/View;

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;

    .line 3023
    .restart local v13       #lp:Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;
    iget v0, v13, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->itemIndex:I

    move/from16 v20, v0

    move/from16 v0, v20

    iput v0, v8, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->itemIndex:I

    .line 3024
    iget v0, v13, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->cellX:I

    move/from16 v20, v0

    move/from16 v0, v20

    iput v0, v8, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->cellX:I

    .line 3025
    iget v0, v13, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->cellY:I

    move/from16 v20, v0

    move/from16 v0, v20

    iput v0, v8, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->cellY:I

    .line 3026
    iget v0, v13, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->x:I

    move/from16 v20, v0

    move/from16 v0, v20

    iput v0, v8, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->x:I

    .line 3027
    iget v0, v13, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->y:I

    move/from16 v20, v0

    move/from16 v0, v20

    iput v0, v8, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->y:I

    .line 3029
    const/16 v21, 0x0

    iget v0, v8, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->itemIndex:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/baidu/launcher/ui/logic/ViewManager;->getDragController()Lcom/baidu/launcher/ui/dragdrop/DragController;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/baidu/launcher/ui/dragdrop/DragController;->getDragInfo()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/baidu/launcher/data/item/ListItemInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v8, v3}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->addInScreen(Landroid/view/View;ILcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;Lcom/baidu/launcher/data/item/ListItemInfo;)V

    goto/16 :goto_0

    .line 3046
    .restart local v10       #i:I
    :cond_3
    iget v0, v13, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->itemIndex:I

    move/from16 v20, v0

    add-int v20, v20, v14

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v18

    .end local v18           #tmpItemInfo:Lcom/baidu/launcher/data/item/ListItemInfo;
    check-cast v18, Lcom/baidu/launcher/data/item/ListItemInfo;

    .line 3047
    .restart local v18       #tmpItemInfo:Lcom/baidu/launcher/data/item/ListItemInfo;
    iget v0, v13, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->itemIndex:I

    move/from16 v20, v0

    add-int v20, v20, v14

    move/from16 v0, v20

    move-object/from16 v1, v18

    iput v0, v1, Lcom/baidu/launcher/data/item/ListItemInfo;->index:I

    goto/16 :goto_2

    .line 3055
    :cond_4
    iget v0, v13, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->itemIndex:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v5, v15, v0, v13}, Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_3

    .line 3061
    .end local v10           #i:I
    .end local v13           #lp:Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mStep:I

    move/from16 v20, v0

    if-gez v20, :cond_8

    .line 3062
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->animateViews:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/view/View;

    .line 3063
    .local v19, view:Landroid/view/View;
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;

    .line 3065
    .restart local v13       #lp:Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;
    iget v0, v13, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->destinationX:I

    move/from16 v20, v0

    move/from16 v0, v20

    iput v0, v13, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->originalX:I

    move/from16 v0, v20

    iput v0, v13, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->x:I

    .line 3066
    iget v0, v13, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->destinationY:I

    move/from16 v20, v0

    move/from16 v0, v20

    iput v0, v13, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->originalY:I

    move/from16 v0, v20

    iput v0, v13, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->y:I

    .line 3067
    iget v0, v13, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->itemIndex:I

    move/from16 v17, v0

    .line 3068
    iget v0, v13, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->itemIndex:I

    move/from16 v20, v0

    iget v0, v13, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->moveStep:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move/from16 v0, v20

    iput v0, v13, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->itemIndex:I

    .line 3069
    if-nez v7, :cond_7

    .line 3070
    add-int v20, v17, v14

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v18

    .end local v18           #tmpItemInfo:Lcom/baidu/launcher/data/item/ListItemInfo;
    check-cast v18, Lcom/baidu/launcher/data/item/ListItemInfo;

    .line 3071
    .restart local v18       #tmpItemInfo:Lcom/baidu/launcher/data/item/ListItemInfo;
    iget v0, v13, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->itemIndex:I

    move/from16 v20, v0

    add-int v20, v20, v14

    move/from16 v0, v20

    move-object/from16 v1, v18

    iput v0, v1, Lcom/baidu/launcher/data/item/ListItemInfo;->index:I

    .line 3072
    iget v0, v13, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->itemIndex:I

    move/from16 v20, v0

    add-int v20, v20, v14

    move/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3077
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mDragMode:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_6

    .line 3078
    move/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 3079
    invoke-virtual {v5, v15}, Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;->removeView(Landroid/view/View;)V

    .line 3080
    iget v0, v13, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->itemIndex:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v5, v15, v0}, Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;->addView(Landroid/view/View;I)V

    .line 3082
    :cond_6
    iget v0, v13, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->itemIndex:I

    move/from16 v20, v0

    rem-int v20, v20, v4

    move/from16 v0, v20

    iput v0, v13, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->cellX:I

    .line 3083
    iget v0, v13, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->itemIndex:I

    move/from16 v20, v0

    div-int v20, v20, v4

    move/from16 v0, v20

    iput v0, v13, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->cellY:I

    .line 3084
    const/16 v20, 0x0

    move/from16 v0, v20

    iput-boolean v0, v13, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->animating:Z

    goto/16 :goto_4

    .line 3074
    :cond_7
    iget v0, v13, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->itemIndex:I

    move/from16 v20, v0

    add-int v20, v20, v14

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v18

    .end local v18           #tmpItemInfo:Lcom/baidu/launcher/data/item/ListItemInfo;
    check-cast v18, Lcom/baidu/launcher/data/item/ListItemInfo;

    .line 3075
    .restart local v18       #tmpItemInfo:Lcom/baidu/launcher/data/item/ListItemInfo;
    iget v0, v13, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->itemIndex:I

    move/from16 v20, v0

    add-int v20, v20, v14

    move/from16 v0, v20

    move-object/from16 v1, v18

    iput v0, v1, Lcom/baidu/launcher/data/item/ListItemInfo;->index:I

    goto :goto_5

    .line 3087
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v13           #lp:Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;
    .end local v19           #view:Landroid/view/View;
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mDragMode:I

    move/from16 v20, v0

    if-nez v20, :cond_a

    .line 3088
    add-int v20, v17, v14

    move/from16 v0, v20

    iput v0, v9, Lcom/baidu/launcher/data/item/ListItemInfo;->index:I

    .line 3089
    add-int v20, v17, v14

    move/from16 v0, v20

    invoke-virtual {v12, v0, v9}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3090
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;->removeView(Landroid/view/View;)V

    .line 3091
    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;->addView(Landroid/view/View;I)V

    .line 3092
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mPosIndex:[[I

    move-object/from16 v20, v0

    iget v0, v8, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->itemIndex:I

    move/from16 v21, v0

    aget-object v20, v20, v21

    const/16 v21, 0x0

    aget v20, v20, v21

    move/from16 v0, v20

    iput v0, v8, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->x:I

    .line 3093
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mPosIndex:[[I

    move-object/from16 v20, v0

    iget v0, v8, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->itemIndex:I

    move/from16 v21, v0

    aget-object v20, v20, v21

    const/16 v21, 0x1

    aget v20, v20, v21

    move/from16 v0, v20

    iput v0, v8, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->y:I

    .line 3096
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mDissolutionFolder:Z

    move/from16 v20, v0

    if-eqz v20, :cond_9

    .line 3097
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mDissolutionFolder:Z

    .line 3098
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mDraggedView:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/baidu/launcher/data/item/ListFolderInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->dissolutionOfTheFolder(Lcom/baidu/launcher/data/item/ListFolderInfo;)V

    .line 3129
    :cond_9
    :goto_6
    const/16 v20, 0x2

    sput v20, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->sortType:I

    .line 3131
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->setDragMode(I)V

    .line 3132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->animateViews:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->clear()V

    .line 3133
    return-void

    .line 3100
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mDragMode:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_c

    .line 3101
    iget v0, v8, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->itemIndex:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getViewByIndex(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mDraggedView:Landroid/view/View;

    .line 3102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mDraggedView:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x4

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 3103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/baidu/launcher/ui/logic/ViewManager;->getDragController()Lcom/baidu/launcher/ui/dragdrop/DragController;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mDraggedView:Landroid/view/View;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/baidu/launcher/ui/dragdrop/DragController;->setOriginalView(Landroid/view/View;)V

    .line 3104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/baidu/launcher/ui/logic/ViewManager;->getDragController()Lcom/baidu/launcher/ui/dragdrop/DragController;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/baidu/launcher/ui/dragdrop/DragController;->getDragInfo()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/baidu/launcher/data/item/ListItemInfo;

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/baidu/launcher/data/item/ListItemInfo;->isPreset:Z

    move/from16 v20, v0

    if-eqz v20, :cond_b

    .line 3105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/baidu/launcher/data/AppsDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/AppsDataManager;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/baidu/launcher/ui/logic/ViewManager;->getDragController()Lcom/baidu/launcher/ui/dragdrop/DragController;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/baidu/launcher/ui/dragdrop/DragController;->getDragInfo()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/baidu/launcher/data/item/ListItemInfo;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/data/AppsDataManager;->addItemInPresetList(Lcom/baidu/launcher/data/item/ListItemInfo;)V

    .line 3109
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->updatePageCounts()V

    .line 3110
    new-instance v20, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$7;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$7;-><init>(Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_6

    .line 3116
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mDragMode:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_9

    .line 3117
    invoke-direct/range {p0 .. p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->updatePageCounts()V

    .line 3118
    new-instance v20, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$8;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$8;-><init>(Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_6
.end method

.method private restoreAppOnDisableMode()V
    .locals 10

    .prologue
    const-wide/16 v8, -0x3e8

    .line 3599
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3600
    .local v1, hideItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListItemInfo;>;"
    sget v6, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->sortType:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_8

    .line 3601
    iget-object v6, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mApps:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v5

    .line 3602
    .local v5, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v5, :cond_2

    .line 3603
    iget-object v6, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mApps:Ljava/util/Vector;

    invoke-virtual {v6, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/data/item/ListAppInfo;

    .line 3604
    .local v3, listAppInfo:Lcom/baidu/launcher/data/item/ListAppInfo;
    iget-boolean v6, v3, Lcom/baidu/launcher/data/item/ListAppInfo;->isVisible:Z

    if-nez v6, :cond_0

    iget-wide v6, v3, Lcom/baidu/launcher/data/item/ListAppInfo;->container:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 3606
    iget-object v6, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mItems:Ljava/util/Vector;

    invoke-virtual {v6, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 3607
    iget-object v6, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mBackupHideMap:Ljava/util/HashMap;

    iget-boolean v7, v3, Lcom/baidu/launcher/data/item/ListAppInfo;->isVisible:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3609
    :cond_0
    iget-boolean v6, v3, Lcom/baidu/launcher/data/item/ListAppInfo;->isPreset:Z

    if-eqz v6, :cond_1

    iget-wide v6, v3, Lcom/baidu/launcher/data/item/ListAppInfo;->container:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    .line 3611
    iget-object v6, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mBackupPresetApp:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3602
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3615
    .end local v3           #listAppInfo:Lcom/baidu/launcher/data/item/ListAppInfo;
    :cond_2
    iget-object v6, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mFolders:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 3616
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v5, :cond_4

    .line 3617
    iget-object v6, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mFolders:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/launcher/data/item/ListFolderInfo;

    .line 3618
    .local v4, listFolderInfo:Lcom/baidu/launcher/data/item/ListFolderInfo;
    iget-boolean v6, v4, Lcom/baidu/launcher/data/item/ListFolderInfo;->isVisible:Z

    if-nez v6, :cond_3

    .line 3619
    iget-object v6, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mItems:Ljava/util/Vector;

    invoke-virtual {v6, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 3620
    iget-object v6, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mBackupHideMap:Ljava/util/HashMap;

    iget-boolean v7, v4, Lcom/baidu/launcher/data/item/ListFolderInfo;->isVisible:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3616
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3624
    .end local v4           #listFolderInfo:Lcom/baidu/launcher/data/item/ListFolderInfo;
    :cond_4
    sget v6, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->sortType:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_6

    .line 3625
    iget-object v6, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mItems:Ljava/util/Vector;

    iget-object v7, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-static {v7}, Lcom/baidu/launcher/data/AppsDataManager;->getComparator(Landroid/content/pm/PackageManager;)Ljava/util/Comparator;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3670
    :cond_5
    :goto_2
    iget-object v6, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mBackupPresetApp:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 3671
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v5, :cond_f

    .line 3672
    iget-object v6, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mItems:Ljava/util/Vector;

    iget-object v7, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mBackupPresetApp:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 3671
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 3627
    :cond_6
    sget v6, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->sortType:I

    if-nez v6, :cond_7

    .line 3628
    iget-object v6, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mItems:Ljava/util/Vector;

    sget-object v7, Lcom/baidu/launcher/data/AppsDataManager;->APP_NAME_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_2

    .line 3629
    :cond_7
    sget v6, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->sortType:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_5

    .line 3630
    iget-object v6, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mItems:Ljava/util/Vector;

    sget-object v7, Lcom/baidu/launcher/data/AppsDataManager;->APP_FREQUENCY_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_2

    .line 3634
    .end local v2           #i:I
    .end local v5           #size:I
    :cond_8
    iget-object v6, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mApps:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v5

    .line 3635
    .restart local v5       #size:I
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4
    if-ge v2, v5, :cond_b

    .line 3636
    iget-object v6, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mApps:Ljava/util/Vector;

    invoke-virtual {v6, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/data/item/ListAppInfo;

    .line 3637
    .restart local v3       #listAppInfo:Lcom/baidu/launcher/data/item/ListAppInfo;
    iget-boolean v6, v3, Lcom/baidu/launcher/data/item/ListAppInfo;->isVisible:Z

    if-nez v6, :cond_9

    iget-wide v6, v3, Lcom/baidu/launcher/data/item/ListAppInfo;->container:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_9

    .line 3639
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3640
    iget-object v6, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mBackupHideMap:Ljava/util/HashMap;

    iget-boolean v7, v3, Lcom/baidu/launcher/data/item/ListAppInfo;->isVisible:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3642
    :cond_9
    iget-boolean v6, v3, Lcom/baidu/launcher/data/item/ListAppInfo;->isPreset:Z

    if-eqz v6, :cond_a

    iget-wide v6, v3, Lcom/baidu/launcher/data/item/ListAppInfo;->container:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_a

    .line 3644
    iget-object v6, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mBackupPresetApp:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3635
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 3648
    .end local v3           #listAppInfo:Lcom/baidu/launcher/data/item/ListAppInfo;
    :cond_b
    iget-object v6, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mFolders:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 3649
    const/4 v2, 0x0

    :goto_5
    if-ge v2, v5, :cond_d

    .line 3650
    iget-object v6, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mFolders:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/launcher/data/item/ListFolderInfo;

    .line 3651
    .restart local v4       #listFolderInfo:Lcom/baidu/launcher/data/item/ListFolderInfo;
    iget-boolean v6, v4, Lcom/baidu/launcher/data/item/ListFolderInfo;->isVisible:Z

    if-nez v6, :cond_c

    .line 3652
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3653
    iget-object v6, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mBackupHideMap:Ljava/util/HashMap;

    iget-boolean v7, v4, Lcom/baidu/launcher/data/item/ListFolderInfo;->isVisible:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3649
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 3657
    .end local v4           #listFolderInfo:Lcom/baidu/launcher/data/item/ListFolderInfo;
    :cond_d
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 3659
    new-instance v6, Lcom/baidu/launcher/data/AppsDataManager$InfoComparator;

    invoke-direct {v6}, Lcom/baidu/launcher/data/AppsDataManager$InfoComparator;-><init>()V

    invoke-static {v1, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3660
    const/4 v2, 0x0

    :goto_6
    if-ge v2, v5, :cond_5

    .line 3661
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/data/item/ListItemInfo;

    .line 3662
    .local v0, hideItem:Lcom/baidu/launcher/data/item/ListItemInfo;
    iget v6, v0, Lcom/baidu/launcher/data/item/ListItemInfo;->index:I

    iget-object v7, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mItems:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-lt v6, v7, :cond_e

    .line 3663
    iget-object v6, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mItems:Ljava/util/Vector;

    invoke-virtual {v6, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 3660
    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 3665
    :cond_e
    iget-object v6, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mItems:Ljava/util/Vector;

    iget v7, v0, Lcom/baidu/launcher/data/item/ListItemInfo;->index:I

    invoke-virtual {v6, v7, v0}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    goto :goto_7

    .line 3674
    .end local v0           #hideItem:Lcom/baidu/launcher/data/item/ListItemInfo;
    :cond_f
    return-void
.end method

.method private restoreAppOnHideMode()V
    .locals 10

    .prologue
    const-wide/16 v8, -0x3e8

    .line 1902
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1903
    .local v1, hideItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListItemInfo;>;"
    sget v6, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->sortType:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_9

    .line 1904
    iget-object v6, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mApps:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v5

    .line 1905
    .local v5, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v5, :cond_2

    .line 1906
    iget-object v6, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mApps:Ljava/util/Vector;

    invoke-virtual {v6, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/data/item/ListAppInfo;

    .line 1907
    .local v3, listAppInfo:Lcom/baidu/launcher/data/item/ListAppInfo;
    iget-boolean v6, v3, Lcom/baidu/launcher/data/item/ListAppInfo;->isVisible:Z

    if-nez v6, :cond_0

    iget-wide v6, v3, Lcom/baidu/launcher/data/item/ListAppInfo;->container:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 1909
    iget-object v6, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mItems:Ljava/util/Vector;

    invoke-virtual {v6, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1910
    iget-object v6, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mBackupHideMap:Ljava/util/HashMap;

    iget-boolean v7, v3, Lcom/baidu/launcher/data/item/ListAppInfo;->isVisible:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1912
    :cond_0
    iget-boolean v6, v3, Lcom/baidu/launcher/data/item/ListAppInfo;->isPreset:Z

    if-eqz v6, :cond_1

    iget-wide v6, v3, Lcom/baidu/launcher/data/item/ListAppInfo;->container:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    .line 1914
    iget-object v6, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mBackupPresetApp:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1905
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1918
    .end local v3           #listAppInfo:Lcom/baidu/launcher/data/item/ListAppInfo;
    :cond_2
    iget-object v6, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mFolders:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1919
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v5, :cond_4

    .line 1920
    iget-object v6, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mFolders:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/launcher/data/item/ListFolderInfo;

    .line 1921
    .local v4, listFolderInfo:Lcom/baidu/launcher/data/item/ListFolderInfo;
    iget-boolean v6, v4, Lcom/baidu/launcher/data/item/ListFolderInfo;->isVisible:Z

    if-nez v6, :cond_3

    .line 1922
    iget-object v6, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mItems:Ljava/util/Vector;

    invoke-virtual {v6, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1923
    iget-object v6, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mBackupHideMap:Ljava/util/HashMap;

    iget-boolean v7, v4, Lcom/baidu/launcher/data/item/ListFolderInfo;->isVisible:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1919
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1927
    .end local v4           #listFolderInfo:Lcom/baidu/launcher/data/item/ListFolderInfo;
    :cond_4
    iget-object v7, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mItems:Ljava/util/Vector;

    monitor-enter v7

    .line 1928
    :try_start_0
    sget v6, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->sortType:I

    const/4 v8, 0x1

    if-ne v6, v8, :cond_7

    .line 1929
    iget-object v6, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mItems:Ljava/util/Vector;

    iget-object v8, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-static {v8}, Lcom/baidu/launcher/data/AppsDataManager;->getComparator(Landroid/content/pm/PackageManager;)Ljava/util/Comparator;

    move-result-object v8

    invoke-static {v6, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1937
    :cond_5
    :goto_2
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1975
    :cond_6
    iget-object v6, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mBackupPresetApp:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1976
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v5, :cond_10

    .line 1977
    iget-object v6, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mItems:Ljava/util/Vector;

    iget-object v7, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mBackupPresetApp:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 1976
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1931
    :cond_7
    :try_start_1
    sget v6, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->sortType:I

    if-nez v6, :cond_8

    .line 1932
    iget-object v6, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mItems:Ljava/util/Vector;

    sget-object v8, Lcom/baidu/launcher/data/AppsDataManager;->APP_NAME_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v6, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_2

    .line 1937
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 1933
    :cond_8
    :try_start_2
    sget v6, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->sortType:I

    const/4 v8, 0x3

    if-ne v6, v8, :cond_5

    .line 1934
    iget-object v6, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mItems:Ljava/util/Vector;

    sget-object v8, Lcom/baidu/launcher/data/AppsDataManager;->APP_FREQUENCY_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v6, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 1939
    .end local v2           #i:I
    .end local v5           #size:I
    :cond_9
    iget-object v6, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mApps:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v5

    .line 1940
    .restart local v5       #size:I
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4
    if-ge v2, v5, :cond_c

    .line 1941
    iget-object v6, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mApps:Ljava/util/Vector;

    invoke-virtual {v6, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/data/item/ListAppInfo;

    .line 1942
    .restart local v3       #listAppInfo:Lcom/baidu/launcher/data/item/ListAppInfo;
    iget-boolean v6, v3, Lcom/baidu/launcher/data/item/ListAppInfo;->isVisible:Z

    if-nez v6, :cond_a

    iget-wide v6, v3, Lcom/baidu/launcher/data/item/ListAppInfo;->container:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_a

    .line 1944
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1945
    iget-object v6, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mBackupHideMap:Ljava/util/HashMap;

    iget-boolean v7, v3, Lcom/baidu/launcher/data/item/ListAppInfo;->isVisible:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1947
    :cond_a
    iget-boolean v6, v3, Lcom/baidu/launcher/data/item/ListAppInfo;->isPreset:Z

    if-eqz v6, :cond_b

    iget-wide v6, v3, Lcom/baidu/launcher/data/item/ListAppInfo;->container:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_b

    .line 1949
    iget-object v6, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mBackupPresetApp:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1940
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1953
    .end local v3           #listAppInfo:Lcom/baidu/launcher/data/item/ListAppInfo;
    :cond_c
    iget-object v6, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mFolders:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1954
    const/4 v2, 0x0

    :goto_5
    if-ge v2, v5, :cond_e

    .line 1955
    iget-object v6, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mFolders:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/launcher/data/item/ListFolderInfo;

    .line 1956
    .restart local v4       #listFolderInfo:Lcom/baidu/launcher/data/item/ListFolderInfo;
    iget-boolean v6, v4, Lcom/baidu/launcher/data/item/ListFolderInfo;->isVisible:Z

    if-nez v6, :cond_d

    .line 1957
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1958
    iget-object v6, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mBackupHideMap:Ljava/util/HashMap;

    iget-boolean v7, v4, Lcom/baidu/launcher/data/item/ListFolderInfo;->isVisible:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1954
    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1962
    .end local v4           #listFolderInfo:Lcom/baidu/launcher/data/item/ListFolderInfo;
    :cond_e
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1964
    new-instance v6, Lcom/baidu/launcher/data/AppsDataManager$InfoComparator;

    invoke-direct {v6}, Lcom/baidu/launcher/data/AppsDataManager$InfoComparator;-><init>()V

    invoke-static {v1, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1965
    const/4 v2, 0x0

    :goto_6
    if-ge v2, v5, :cond_6

    .line 1966
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/data/item/ListItemInfo;

    .line 1967
    .local v0, hideItem:Lcom/baidu/launcher/data/item/ListItemInfo;
    iget v6, v0, Lcom/baidu/launcher/data/item/ListItemInfo;->index:I

    iget-object v7, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mItems:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-lt v6, v7, :cond_f

    .line 1968
    iget-object v6, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mItems:Ljava/util/Vector;

    invoke-virtual {v6, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1965
    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1970
    :cond_f
    iget-object v6, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mItems:Ljava/util/Vector;

    iget v7, v0, Lcom/baidu/launcher/data/item/ListItemInfo;->index:I

    invoke-virtual {v6, v7, v0}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    goto :goto_7

    .line 1979
    .end local v0           #hideItem:Lcom/baidu/launcher/data/item/ListItemInfo;
    :cond_10
    return-void
.end method

.method private screenScrolledWithICE(I)V
    .locals 19
    .parameter "screenCenter"

    .prologue
    .line 1519
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getlowEdgePage()I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v16

    if-eqz v16, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->gethighEdgePage()I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v16

    if-nez v16, :cond_1

    .line 1683
    :cond_0
    :goto_0
    return-void

    .line 1522
    :cond_1
    sget-boolean v16, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->app_list_loop:Z

    if-eqz v16, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->onlyOnePageInCurrentTab()Z

    move-result v16

    if-nez v16, :cond_3

    const/4 v7, 0x1

    .line 1534
    .local v7, loop:Z
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mScrollX:I

    move/from16 v16, v0

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getlowEdgePage()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLeft()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_4

    .line 1535
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->gethighEdgePage()I

    move-result v3

    .line 1539
    .local v3, count:I
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mScrollX:I

    move/from16 v16, v0

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->gethighEdgePage()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLeft()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getPageCountInTab()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_5

    .line 1541
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getlowEdgePage()I

    move-result v16

    add-int/lit8 v12, v16, 0x1

    .line 1545
    .local v12, start:I
    :goto_3
    move v5, v12

    .local v5, i:I
    :goto_4
    if-ge v5, v3, :cond_9

    .line 1546
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v15

    .line 1547
    .local v15, v:Landroid/view/View;
    if-eqz v15, :cond_2

    .line 1548
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v15, v5}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getScrollProgress(ILandroid/view/View;I)F

    move-result v11

    .line 1550
    .local v11, scrollProgress:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mZInterpolator:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$ZInterpolator;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v11, v0}, Ljava/lang/Math;->min(FF)F

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v17

    invoke-virtual/range {v16 .. v17}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$ZInterpolator;->getInterpolation(F)F

    move-result v6

    .line 1552
    .local v6, interpolatedProgress:F
    const/high16 v16, 0x3f80

    sub-float v16, v16, v6

    sget v17, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->TRANSITION_SCALE_FACTOR:F

    mul-float v17, v17, v6

    add-float v10, v16, v17

    .line 1557
    .local v10, scale:F
    const/16 v16, 0x0

    cmpg-float v16, v11, v16

    if-gez v16, :cond_7

    .line 1558
    const/16 v16, 0x0

    cmpg-float v16, v11, v16

    if-gez v16, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mAlphaInterpolator:Landroid/view/animation/AccelerateInterpolator;

    move-object/from16 v16, v0

    const/high16 v17, 0x3f80

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v18

    sub-float v17, v17, v18

    invoke-virtual/range {v16 .. v17}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v2

    .line 1568
    .local v2, alpha:F
    :goto_5
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v0, v11}, Ljava/lang/Math;->min(FF)F

    move-result v16

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v14, v16, v17

    .line 1571
    .local v14, translationX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mDensity:F

    move/from16 v16, v0

    sget v17, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->CAMERA_DISTANCE:F

    mul-float v16, v16, v17

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setCameraDistance(F)V

    .line 1572
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 1573
    .local v9, pageWidth:I
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 1604
    .local v8, pageHeight:I
    invoke-virtual {v15, v14}, Landroid/view/View;->setTranslationX(F)V

    .line 1605
    invoke-virtual {v15, v10}, Landroid/view/View;->setScaleX(F)V

    .line 1606
    invoke-virtual {v15, v10}, Landroid/view/View;->setScaleY(F)V

    .line 1607
    invoke-virtual {v15, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1611
    const v16, 0x3c23d70a

    cmpg-float v16, v2, v16

    if-gez v16, :cond_8

    .line 1612
    const/16 v16, 0x4

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    .line 1545
    .end local v2           #alpha:F
    .end local v6           #interpolatedProgress:F
    .end local v8           #pageHeight:I
    .end local v9           #pageWidth:I
    .end local v10           #scale:F
    .end local v11           #scrollProgress:F
    .end local v14           #translationX:F
    :cond_2
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_4

    .line 1522
    .end local v3           #count:I
    .end local v5           #i:I
    .end local v7           #loop:Z
    .end local v12           #start:I
    .end local v15           #v:Landroid/view/View;
    :cond_3
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 1537
    .restart local v7       #loop:Z
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->gethighEdgePage()I

    move-result v16

    add-int/lit8 v3, v16, 0x1

    .restart local v3       #count:I
    goto/16 :goto_2

    .line 1543
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getlowEdgePage()I

    move-result v12

    .restart local v12       #start:I
    goto/16 :goto_3

    .line 1558
    .restart local v5       #i:I
    .restart local v6       #interpolatedProgress:F
    .restart local v10       #scale:F
    .restart local v11       #scrollProgress:F
    .restart local v15       #v:Landroid/view/View;
    :cond_6
    const/high16 v2, 0x3f80

    goto :goto_5

    .line 1564
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mLeftScreenAlphaInterpolator:Landroid/view/animation/DecelerateInterpolator;

    move-object/from16 v16, v0

    const/high16 v17, 0x3f80

    sub-float v17, v17, v11

    invoke-virtual/range {v16 .. v17}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v2

    .restart local v2       #alpha:F
    goto :goto_5

    .line 1613
    .restart local v8       #pageHeight:I
    .restart local v9       #pageWidth:I
    .restart local v14       #translationX:F
    :cond_8
    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v16

    if-eqz v16, :cond_2

    .line 1614
    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    .line 1619
    .end local v2           #alpha:F
    .end local v6           #interpolatedProgress:F
    .end local v8           #pageHeight:I
    .end local v9           #pageWidth:I
    .end local v10           #scale:F
    .end local v11           #scrollProgress:F
    .end local v14           #translationX:F
    .end local v15           #v:Landroid/view/View;
    :cond_9
    if-eqz v7, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mScrollX:I

    move/from16 v16, v0

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getlowEdgePage()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLeft()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_a

    .line 1620
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->gethighEdgePage()I

    move-result v5

    .line 1621
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v15

    .line 1622
    .restart local v15       #v:Landroid/view/View;
    if-eqz v15, :cond_0

    .line 1623
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mDensity:F

    move/from16 v16, v0

    sget v17, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->CAMERA_DISTANCE:F

    mul-float v16, v16, v17

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setCameraDistance(F)V

    .line 1624
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 1625
    .restart local v9       #pageWidth:I
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 1633
    .restart local v8       #pageHeight:I
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getPageCountInTab()I

    move-result v16

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v16, v0

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    mul-int v16, v16, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mPageSpacing:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setTranslationX(F)V

    .line 1635
    const/high16 v16, 0x3f80

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setScaleX(F)V

    .line 1636
    const/high16 v16, 0x3f80

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setScaleY(F)V

    .line 1637
    const/high16 v16, 0x3f80

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setAlpha(F)V

    .line 1639
    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1641
    .end local v8           #pageHeight:I
    .end local v9           #pageWidth:I
    .end local v15           #v:Landroid/view/View;
    :cond_a
    if-eqz v7, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mScrollX:I

    move/from16 v16, v0

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->gethighEdgePage()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLeft()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_0

    .line 1642
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getlowEdgePage()I

    move-result v5

    .line 1643
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v15

    .line 1644
    .restart local v15       #v:Landroid/view/View;
    if-eqz v15, :cond_0

    .line 1645
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mPageSpacing:I

    move/from16 v17, v0

    add-int v13, v16, v17

    .line 1646
    .local v13, totalDistance:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mScrollX:I

    move/from16 v16, v0

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->gethighEdgePage()I

    move-result v17

    add-int/lit8 v17, v17, 0x1

    mul-int v17, v17, v13

    sub-int v4, v16, v17

    .line 1648
    .local v4, delta:I
    int-to-float v0, v4

    move/from16 v16, v0

    int-to-float v0, v13

    move/from16 v17, v0

    const/high16 v18, 0x3f80

    mul-float v17, v17, v18

    div-float v11, v16, v17

    .line 1650
    .restart local v11       #scrollProgress:F
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v0, v11}, Ljava/lang/Math;->min(FF)F

    move-result v16

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v14, v16, v17

    .line 1652
    .restart local v14       #translationX:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mZInterpolator:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$ZInterpolator;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v11, v0}, Ljava/lang/Math;->min(FF)F

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v17

    invoke-virtual/range {v16 .. v17}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$ZInterpolator;->getInterpolation(F)F

    move-result v6

    .line 1654
    .restart local v6       #interpolatedProgress:F
    const/high16 v16, 0x3f80

    sub-float v16, v16, v6

    sget v17, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->TRANSITION_SCALE_FACTOR:F

    mul-float v17, v17, v6

    add-float v10, v16, v17

    .line 1657
    .restart local v10       #scale:F
    const/16 v16, 0x0

    cmpg-float v16, v11, v16

    if-gez v16, :cond_c

    .line 1658
    const/16 v16, 0x0

    cmpg-float v16, v11, v16

    if-gez v16, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mAlphaInterpolator:Landroid/view/animation/AccelerateInterpolator;

    move-object/from16 v16, v0

    const/high16 v17, 0x3f80

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v18

    sub-float v17, v17, v18

    invoke-virtual/range {v16 .. v17}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v2

    .line 1665
    .restart local v2       #alpha:F
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mDensity:F

    move/from16 v16, v0

    sget v17, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->CAMERA_DISTANCE:F

    mul-float v16, v16, v17

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setCameraDistance(F)V

    .line 1666
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 1667
    .restart local v9       #pageWidth:I
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 1673
    .restart local v8       #pageHeight:I
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getPageCountInTab()I

    move-result v16

    mul-int v16, v16, v13

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    add-float v16, v16, v14

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setTranslationX(F)V

    .line 1675
    invoke-virtual {v15, v10}, Landroid/view/View;->setScaleX(F)V

    .line 1676
    invoke-virtual {v15, v10}, Landroid/view/View;->setScaleY(F)V

    .line 1677
    invoke-virtual {v15, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1679
    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1658
    .end local v2           #alpha:F
    .end local v8           #pageHeight:I
    .end local v9           #pageWidth:I
    :cond_b
    const/high16 v2, 0x3f80

    goto :goto_7

    .line 1662
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mLeftScreenAlphaInterpolator:Landroid/view/animation/DecelerateInterpolator;

    move-object/from16 v16, v0

    const/high16 v17, 0x3f80

    sub-float v17, v17, v11

    invoke-virtual/range {v16 .. v17}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v2

    .restart local v2       #alpha:F
    goto :goto_7
.end method

.method private setDragMode(I)V
    .locals 2
    .parameter "dragMode"

    .prologue
    .line 3270
    iget v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mDragMode:I

    if-eq p1, v0, :cond_1

    .line 3271
    if-nez p1, :cond_0

    iget v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mDragMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3273
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->hideFolderAccept()V

    .line 3275
    :cond_0
    iput p1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mDragMode:I

    .line 3277
    :cond_1
    return-void
.end method

.method private setVisibilityOnChildren(Landroid/view/ViewGroup;I)V
    .locals 3
    .parameter "layout"
    .parameter "visibility"

    .prologue
    .line 1164
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1165
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1166
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/view/View;->setVisibility(I)V

    .line 1165
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1168
    :cond_0
    return-void
.end method

.method private setupPage(Lcom/baidu/launcher/ui/common/PagedViewCellLayout;)V
    .locals 7
    .parameter "layout"

    .prologue
    const/high16 v6, -0x8000

    .line 1171
    iget v2, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCellCountX:I

    iget v3, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCellCountY:I

    invoke-virtual {p1, v2, v3}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->setCellCount(II)V

    .line 1172
    iget v2, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mPageLayoutWidthGap:I

    iget v3, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mPageLayoutHeightGap:I

    invoke-virtual {p1, v2, v3}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->setGap(II)V

    .line 1173
    iget v2, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mPageLayoutPaddingLeft:I

    iget v3, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mPageLayoutPaddingTop:I

    iget v4, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mPageLayoutPaddingRight:I

    iget v5, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mPageLayoutPaddingBottom:I

    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->setPadding(IIII)V

    .line 1184
    const/16 v2, 0x8

    invoke-direct {p0, p1, v2}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->setVisibilityOnChildren(Landroid/view/ViewGroup;I)V

    .line 1185
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getMeasuredWidth()I

    move-result v2

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1187
    .local v1, widthSpec:I
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getMeasuredHeight()I

    move-result v2

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1189
    .local v0, heightSpec:I
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getPageContentWidth()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->setMinimumWidth(I)V

    .line 1190
    invoke-virtual {p1, v1, v0}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->measure(II)V

    .line 1191
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->setVisibilityOnChildren(Landroid/view/ViewGroup;I)V

    .line 1192
    return-void
.end method

.method private setupPage(Lcom/baidu/launcher/ui/common/PagedViewGridLayout;)V
    .locals 7
    .parameter "layout"

    .prologue
    const/high16 v6, -0x8000

    .line 1333
    iget v2, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mPageLayoutPaddingLeft:I

    iget v3, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mPageLayoutPaddingTop:I

    iget v4, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mPageLayoutPaddingRight:I

    iget v5, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mPageLayoutPaddingBottom:I

    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/baidu/launcher/ui/common/PagedViewGridLayout;->setPadding(IIII)V

    .line 1339
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getMeasuredWidth()I

    move-result v2

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1341
    .local v1, widthSpec:I
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getMeasuredHeight()I

    move-result v2

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1343
    .local v0, heightSpec:I
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getPageContentWidth()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/baidu/launcher/ui/common/PagedViewGridLayout;->setMinimumWidth(I)V

    .line 1344
    invoke-virtual {p1, v1, v0}, Lcom/baidu/launcher/ui/common/PagedViewGridLayout;->measure(II)V

    .line 1345
    return-void
.end method

.method private showPage(IZ)V
    .locals 5
    .parameter "page"
    .parameter "animation"

    .prologue
    .line 2213
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->setCurrentPage(I)V

    .line 2214
    iget v1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->loadAssociatedPages(I)V

    .line 2215
    if-eqz p2, :cond_1

    .line 2216
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2217
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->isHardwareAccelerated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2218
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2220
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->setAlpha(F)V

    .line 2221
    const-string v1, "alpha"

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    aput v4, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2223
    .local v0, anim:Landroid/animation/ObjectAnimator;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2224
    new-instance v1, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$2;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$2;-><init>(Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2235
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 2242
    .end local v0           #anim:Landroid/animation/ObjectAnimator;
    :cond_1
    return-void
.end method

.method private testDataReady()Z
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mApps:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updatePageCounts()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 400
    iput v1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mNumWidgetPages:I

    .line 401
    iget v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCellCountX:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCellCountY:I

    if-eqz v0, :cond_1

    .line 402
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mItems:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCellCountX:I

    iget v2, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCellCountY:I

    mul-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mNumAppsPages:I

    .line 404
    iget v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mNumAppsPages:I

    if-nez v0, :cond_0

    .line 405
    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mNumAppsPages:I

    .line 411
    :cond_0
    :goto_0
    return-void

    .line 408
    :cond_1
    iput v1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mNumAppsPages:I

    goto :goto_0
.end method

.method private updateWidgets()V
    .locals 7

    .prologue
    .line 2066
    iget-object v4, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 2067
    iget-object v4, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/baidu/launcher/data/AppsDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/AppsDataManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/launcher/data/AppsDataManager;->getAllWidgets()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/data/item/ListWidgetInfo;

    .line 2069
    .local v3, info:Lcom/baidu/launcher/data/item/ListWidgetInfo;
    iget-object v4, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2071
    .end local v3           #info:Lcom/baidu/launcher/data/item/ListWidgetInfo;
    :cond_0
    iget-object v4, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 2074
    .local v0, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    new-instance v1, Ljava/util/ArrayList;

    const/4 v4, 0x2

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 2075
    .local v1, hideList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.baidu.searchbox"

    const-string v6, "com.baidu.searchbox.widget.SearchWidgetProvider"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2077
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.baidu.searchbox"

    const-string v6, "com.baidu.searchbox.widget.TransSearchWidgetProvider"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2079
    invoke-virtual {v0}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/appwidget/AppWidgetProviderInfo;

    .line 2081
    .local v3, info:Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v4, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2083
    iget-object v4, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2085
    .end local v3           #info:Landroid/appwidget/AppWidgetProviderInfo;
    :cond_2
    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/baidu/launcher/ui/dragdrop/DragSource;IIIILcom/baidu/launcher/ui/dragdrop/DragView;Ljava/lang/Object;)Z
    .locals 1
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 2795
    if-eq p1, p0, :cond_0

    instance-of v0, p1, Lcom/baidu/launcher/ui/folder/UserFolder;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addInScreen(Landroid/view/View;ILcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;Lcom/baidu/launcher/data/item/ListItemInfo;)V
    .locals 10
    .parameter "child"
    .parameter "index"
    .parameter "params"
    .parameter "info"

    .prologue
    .line 3372
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getCurrentPage()I

    move-result v6

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->appCountOnePage()I

    move-result v7

    mul-int v5, v6, v7

    .line 3374
    .local v5, offsetAppNum:I
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getCurrentPage()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;

    .line 3375
    .local v4, layout:Lcom/baidu/launcher/ui/common/PagedViewCellLayout;
    if-eqz p1, :cond_0

    instance-of v6, p1, Lcom/baidu/launcher/ui/common/BubbleTextView;

    if-nez v6, :cond_1

    .line 3376
    :cond_0
    iget-object v6, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getItemLyout()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v4, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/baidu/launcher/ui/common/BubbleTextView;

    .restart local p1
    :cond_1
    move-object v3, p1

    .line 3379
    check-cast v3, Lcom/baidu/launcher/ui/common/BubbleTextView;

    .line 3380
    .local v3, icon:Lcom/baidu/launcher/ui/common/BubbleTextView;
    instance-of v6, p4, Lcom/baidu/launcher/data/item/ListFolderInfo;

    if-eqz v6, :cond_6

    move-object v1, p4

    .line 3381
    check-cast v1, Lcom/baidu/launcher/data/item/ListFolderInfo;

    .line 3382
    .local v1, folderinfo:Lcom/baidu/launcher/data/item/ListFolderInfo;
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->shouldAppDrawBlur()Z

    move-result v6

    iput-boolean v6, v3, Lcom/baidu/launcher/ui/common/BubbleTextView;->shouldDrawBlur:Z

    .line 3383
    iget-object v6, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6}, Lcom/baidu/launcher/data/item/ListFolderInfo;->getDisplayTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/baidu/launcher/ui/common/BubbleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 3384
    sget v6, Lcom/baidu/launcher/utils/DefaultConfigurationHelper;->defaultLauncherApplicationBoxTextSize:I

    const/4 v7, 0x5

    if-le v6, v7, :cond_2

    .line 3385
    const/4 v6, 0x1

    sget v7, Lcom/baidu/launcher/utils/DefaultConfigurationHelper;->defaultLauncherApplicationBoxTextSize:I

    int-to-float v7, v7

    invoke-virtual {v3, v6, v7}, Lcom/baidu/launcher/ui/common/BubbleTextView;->setTextSize(IF)V

    .line 3388
    :cond_2
    invoke-virtual {v3, v1}, Lcom/baidu/launcher/ui/common/BubbleTextView;->setTag(Ljava/lang/Object;)V

    .line 3389
    invoke-virtual {v3, p0}, Lcom/baidu/launcher/ui/common/BubbleTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3390
    invoke-virtual {v3, p0}, Lcom/baidu/launcher/ui/common/BubbleTextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 3391
    invoke-virtual {v3, p0}, Lcom/baidu/launcher/ui/common/BubbleTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3409
    .end local v1           #folderinfo:Lcom/baidu/launcher/data/item/ListFolderInfo;
    :cond_3
    :goto_0
    add-int v6, v5, p2

    iput v6, p4, Lcom/baidu/launcher/data/item/ListItemInfo;->index:I

    .line 3410
    const/4 v6, -0x1

    invoke-virtual {v4, v3, v6, p2, p3}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;)Z

    .line 3411
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getCurrentPageChildLayout()Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;

    move-result-object v2

    .line 3413
    .local v2, group:Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;
    instance-of v6, p1, Lcom/baidu/launcher/ui/dragdrop/DropTarget;

    if-eqz v6, :cond_4

    .line 3414
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Lcom/baidu/launcher/ui/applistview/AppListView;

    invoke-virtual {v6}, Lcom/baidu/launcher/ui/applistview/AppListView;->getDragController()Lcom/baidu/launcher/ui/dragdrop/DragController;

    move-result-object v6

    check-cast p1, Lcom/baidu/launcher/ui/dragdrop/DropTarget;

    .end local p1
    invoke-virtual {v6, p1}, Lcom/baidu/launcher/ui/dragdrop/DragController;->addDropTarget(Lcom/baidu/launcher/ui/dragdrop/DropTarget;)V

    .line 3417
    :cond_4
    if-eqz v2, :cond_5

    .line 3418
    invoke-virtual {v2}, Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;->invalidate()V

    .line 3420
    :cond_5
    return-void

    .line 3392
    .end local v2           #group:Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;
    .restart local p1
    :cond_6
    instance-of v6, p4, Lcom/baidu/launcher/data/item/ListAppInfo;

    if-eqz v6, :cond_3

    move-object v0, p4

    .line 3393
    check-cast v0, Lcom/baidu/launcher/data/item/ListAppInfo;

    .line 3394
    .local v0, aplicationInfo:Lcom/baidu/launcher/data/item/ListAppInfo;
    const-wide/16 v6, -0x3e8

    iput-wide v6, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->container:J

    .line 3395
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->shouldAppDrawBlur()Z

    move-result v6

    iput-boolean v6, v3, Lcom/baidu/launcher/ui/common/BubbleTextView;->shouldDrawBlur:Z

    .line 3396
    const/4 v7, 0x0

    new-instance v8, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;

    move-object v6, p4

    check-cast v6, Lcom/baidu/launcher/data/item/ListAppInfo;

    iget-object v6, v6, Lcom/baidu/launcher/data/item/ListAppInfo;->iconBitmap:Landroid/graphics/Bitmap;

    sget v9, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->iconScale:F

    invoke-direct {v8, v6, v9}, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;F)V

    const/4 v6, 0x0

    const/4 v9, 0x0

    invoke-virtual {v3, v7, v8, v6, v9}, Lcom/baidu/launcher/ui/common/BubbleTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 3399
    iget-object v6, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v3, v6}, Lcom/baidu/launcher/ui/common/BubbleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 3400
    sget v6, Lcom/baidu/launcher/utils/DefaultConfigurationHelper;->defaultLauncherApplicationBoxTextSize:I

    const/4 v7, 0x5

    if-le v6, v7, :cond_7

    .line 3401
    const/4 v6, 0x1

    sget v7, Lcom/baidu/launcher/utils/DefaultConfigurationHelper;->defaultLauncherApplicationBoxTextSize:I

    int-to-float v7, v7

    invoke-virtual {v3, v6, v7}, Lcom/baidu/launcher/ui/common/BubbleTextView;->setTextSize(IF)V

    .line 3404
    :cond_7
    invoke-virtual {v3, v0}, Lcom/baidu/launcher/ui/common/BubbleTextView;->setTag(Ljava/lang/Object;)V

    .line 3405
    invoke-virtual {v3, p0}, Lcom/baidu/launcher/ui/common/BubbleTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3406
    invoke-virtual {v3, p0}, Lcom/baidu/launcher/ui/common/BubbleTextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 3407
    invoke-virtual {v3, p0}, Lcom/baidu/launcher/ui/common/BubbleTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method public addNewEventInfo(Ljava/lang/String;)V
    .locals 0
    .parameter "componentName"

    .prologue
    .line 2176
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 1716
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mIndicator:Lcom/baidu/launcher/ui/applistview/AllAppsIndicatorNew;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/applistview/AllAppsIndicatorNew;->addScreen()V

    .line 1717
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mIndicator:Lcom/baidu/launcher/ui/applistview/AllAppsIndicatorNew;

    iget v1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCurrentPage:I

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/applistview/AllAppsIndicatorNew;->setCurrentScreen(I)V

    .line 1719
    invoke-super {p0, p1}, Lcom/baidu/launcher/ui/common/DraggableViewPagger;->addView(Landroid/view/View;)V

    .line 1720
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "params"

    .prologue
    .line 1723
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mIndicator:Lcom/baidu/launcher/ui/applistview/AllAppsIndicatorNew;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/applistview/AllAppsIndicatorNew;->addScreen()V

    .line 1724
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mIndicator:Lcom/baidu/launcher/ui/applistview/AllAppsIndicatorNew;

    iget v1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCurrentPage:I

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/applistview/AllAppsIndicatorNew;->setCurrentScreen(I)V

    .line 1726
    invoke-super {p0, p1, p2}, Lcom/baidu/launcher/ui/common/DraggableViewPagger;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1727
    return-void
.end method

.method public appCountOnePage()I
    .locals 2

    .prologue
    .line 2480
    iget v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCellCountX:I

    iget v1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCellCountY:I

    mul-int/2addr v0, v1

    return v0
.end method

.method protected beginDragging(Landroid/view/View;)Z
    .locals 2
    .parameter "v"

    .prologue
    .line 1134
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mContainer:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$PagedViewContainer;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$PagedViewContainer;->onItemLongClick(Landroid/view/View;Ljava/lang/Object;)V

    .line 1135
    const/4 v0, 0x1

    return v0
.end method

.method changeCurrentPage(I)V
    .locals 0
    .parameter "page"

    .prologue
    .line 2306
    iput p1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCurrentPage:I

    .line 2307
    return-void
.end method

.method public checkCreateFolderAction(Ljava/lang/Object;)Z
    .locals 1
    .parameter "dragInfo"

    .prologue
    .line 3337
    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->createFolderOnDropCell(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public clearAllPages()V
    .locals 5

    .prologue
    .line 1150
    iget-object v3, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1151
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getChildCount()I

    move-result v0

    .line 1153
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1154
    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/ui/common/Page;

    .line 1155
    .local v2, layout:Lcom/baidu/launcher/ui/common/Page;
    invoke-interface {v2}, Lcom/baidu/launcher/ui/common/Page;->removeAllViewsOnPage()V

    .line 1156
    iget-object v3, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1153
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1158
    .end local v2           #layout:Lcom/baidu/launcher/ui/common/Page;
    :cond_0
    return-void
.end method

.method clearCurrentChanges(Z)V
    .locals 1
    .parameter "save"

    .prologue
    .line 2301
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mBackupDisableMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 2302
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mBackupHideMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 2303
    return-void
.end method

.method protected determineDraggingStart(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "ev"

    .prologue
    .line 1130
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 22
    .parameter "canvas"

    .prologue
    .line 868
    invoke-super/range {p0 .. p1}, Lcom/baidu/launcher/ui/common/DraggableViewPagger;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 871
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getChildCount()I

    move-result v10

    .line 872
    .local v10, pageCount:I
    if-lez v10, :cond_1

    .line 873
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 874
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCurrentPage:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getChildWidth(I)I

    move-result v16

    .line 875
    .local v16, width:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mScrollX:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v17, v17, v18

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->floor(D)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-float v12, v0

    .line 877
    .local v12, scrollPos:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mTempVisiblePagesRange:[I

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v12, v1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->findLeftAndRightScreen(F[I)I

    .line 878
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mTempVisiblePagesRange:[I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget v9, v17, v18

    .line 879
    .local v9, leftScreen:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mTempVisiblePagesRange:[I

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget v11, v17, v18

    .line 880
    .local v11, rightScreen:I
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getDrawingTime()J

    move-result-wide v6

    .line 882
    .local v6, drawingTime:J
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 883
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mScrollX:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mScrollY:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mScrollX:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mRight:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mLeft:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mScrollY:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mBottom:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mTop:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 885
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2, v6, v7}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 886
    if-eq v9, v11, :cond_0

    .line 887
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2, v6, v7}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 889
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 931
    .end local v6           #drawingTime:J
    .end local v9           #leftScreen:I
    .end local v11           #rightScreen:I
    .end local v12           #scrollPos:F
    .end local v16           #width:I
    :cond_1
    :goto_0
    return-void

    .line 891
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mTempVisiblePagesRange:[I

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getVisiblePages([I)V

    .line 892
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mTempVisiblePagesRange:[I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget v9, v17, v18

    .line 893
    .restart local v9       #leftScreen:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mTempVisiblePagesRange:[I

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget v11, v17, v18

    .line 894
    .restart local v11       #rightScreen:I
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getDrawingTime()J

    move-result-wide v6

    .line 895
    .restart local v6       #drawingTime:J
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v9, v0, :cond_1

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v11, v0, :cond_1

    .line 896
    const/4 v15, 0x0

    .line 897
    .local v15, v:Landroid/view/View;
    move v8, v9

    .local v8, i:I
    :goto_1
    if-gt v8, v11, :cond_4

    .line 898
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v15

    .line 899
    const/4 v14, 0x0

    .line 900
    .local v14, translationX:F
    instance-of v0, v15, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;

    move/from16 v17, v0

    if-eqz v17, :cond_3

    move-object/from16 v17, v15

    .line 901
    check-cast v17, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;

    move-object/from16 v0, v17

    iget v14, v0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->translationXForLowApi:F

    .line 903
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 904
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v14, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 905
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v15, v6, v7}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 906
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 897
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 908
    .end local v14           #translationX:F
    :cond_4
    sget-boolean v17, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->app_list_loop:Z

    if-eqz v17, :cond_1

    const/16 v17, 0x1

    move/from16 v0, v17

    if-le v10, v0, :cond_1

    .line 909
    if-nez v11, :cond_5

    if-nez v9, :cond_5

    .line 910
    add-int/lit8 v17, v10, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v5

    .line 911
    .local v5, child:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mPageSpacing:I

    move/from16 v18, v0

    add-int v17, v17, v18

    mul-int v13, v17, v10

    .line 913
    .local v13, totalDistance:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 914
    neg-int v0, v13

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 915
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5, v6, v7}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 916
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 917
    .end local v5           #child:Landroid/view/View;
    .end local v13           #totalDistance:I
    :cond_5
    add-int/lit8 v17, v10, -0x1

    move/from16 v0, v17

    if-ne v11, v0, :cond_1

    add-int/lit8 v17, v10, -0x1

    move/from16 v0, v17

    if-ne v9, v0, :cond_1

    .line 919
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v5

    .line 920
    .restart local v5       #child:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mPageSpacing:I

    move/from16 v18, v0

    add-int v17, v17, v18

    mul-int v13, v17, v10

    .line 922
    .restart local v13       #totalDistance:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 923
    int-to-float v0, v13

    move/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 924
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5, v6, v7}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 925
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0
.end method

.method doClick(Landroid/view/View;)Z
    .locals 12
    .parameter "v"

    .prologue
    const v10, 0x7f0c005d

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 960
    instance-of v7, p1, Lcom/baidu/launcher/ui/folder/FolderIcon;

    if-eqz v7, :cond_1

    move v8, v9

    .line 1089
    :cond_0
    :goto_0
    return v8

    .line 974
    :cond_1
    instance-of v7, p1, Lcom/baidu/launcher/ui/common/BubbleTextView;

    if-eqz v7, :cond_a

    .line 975
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/data/item/ListItemInfo;

    .line 976
    .local v2, itemInfo:Lcom/baidu/launcher/data/item/ListItemInfo;
    sget v7, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->AppListMode:I

    if-ne v7, v8, :cond_5

    .line 977
    iget-object v7, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mBackupHideMap:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 978
    iget-object v7, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mBackupHideMap:Ljava/util/HashMap;

    iget-boolean v10, v2, Lcom/baidu/launcher/data/item/ListItemInfo;->isVisible:Z

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v7, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 980
    :cond_2
    iget-boolean v7, v2, Lcom/baidu/launcher/data/item/ListItemInfo;->isVisible:Z

    if-nez v7, :cond_4

    move v7, v8

    :goto_1
    iput-boolean v7, v2, Lcom/baidu/launcher/data/item/ListItemInfo;->isVisible:Z

    move-object v6, p1

    .line 981
    check-cast v6, Lcom/baidu/launcher/ui/common/BubbleTextView;

    .line 982
    .local v6, view:Lcom/baidu/launcher/ui/common/BubbleTextView;
    iget-boolean v7, v2, Lcom/baidu/launcher/data/item/ListItemInfo;->isVisible:Z

    if-nez v7, :cond_3

    move v9, v8

    :cond_3
    invoke-virtual {v6, v9}, Lcom/baidu/launcher/ui/common/BubbleTextView;->setHide(Z)V

    .line 1038
    invoke-virtual {p0, v8}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->updateHideStatus(Z)V

    goto :goto_0

    .end local v6           #view:Lcom/baidu/launcher/ui/common/BubbleTextView;
    :cond_4
    move v7, v9

    .line 980
    goto :goto_1

    .line 1040
    :cond_5
    sget v7, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->AppListMode:I

    const/4 v10, 0x5

    if-ne v7, v10, :cond_c

    move-object v6, p1

    .line 1041
    check-cast v6, Lcom/baidu/launcher/ui/common/BubbleTextView;

    .line 1042
    .restart local v6       #view:Lcom/baidu/launcher/ui/common/BubbleTextView;
    iget-object v10, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->whiteList:Ljava/util/ArrayList;

    move-object v7, v2

    check-cast v7, Lcom/baidu/launcher/data/item/ListAppInfo;

    iget-object v7, v7, Lcom/baidu/launcher/data/item/ListAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1043
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c0300

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-static {v7, v10, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1046
    :cond_6
    iget-object v7, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mBackupDisableMap:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 1047
    iget-object v7, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mBackupDisableMap:Ljava/util/HashMap;

    iget-boolean v10, v2, Lcom/baidu/launcher/data/item/ListItemInfo;->isDisable:Z

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v7, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1049
    :cond_7
    iget-boolean v7, v2, Lcom/baidu/launcher/data/item/ListItemInfo;->isDisable:Z

    if-nez v7, :cond_8

    move v9, v8

    :cond_8
    iput-boolean v9, v2, Lcom/baidu/launcher/data/item/ListItemInfo;->isDisable:Z

    .line 1050
    iget-boolean v7, v2, Lcom/baidu/launcher/data/item/ListItemInfo;->isDisable:Z

    if-nez v7, :cond_9

    .line 1051
    const/4 v7, 0x4

    iput v7, v2, Lcom/baidu/launcher/data/item/ListItemInfo;->status:I

    .line 1054
    :cond_9
    iget-boolean v7, v2, Lcom/baidu/launcher/data/item/ListItemInfo;->isDisable:Z

    invoke-virtual {v6, v7}, Lcom/baidu/launcher/ui/common/BubbleTextView;->setDisable(Z)V

    .line 1056
    invoke-virtual {p0, v8}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->updateDisableStatus(Z)V

    goto/16 :goto_0

    .line 1059
    .end local v2           #itemInfo:Lcom/baidu/launcher/data/item/ListItemInfo;
    .end local v6           #view:Lcom/baidu/launcher/ui/common/BubbleTextView;
    :cond_a
    instance-of v7, p1, Lcom/baidu/launcher/ui/editview/PagedViewWidget;

    if-eqz v7, :cond_c

    .line 1060
    const v7, 0x7f08011c

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1061
    .local v0, animView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1063
    iget-object v7, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->toast:Landroid/widget/Toast;

    if-nez v7, :cond_b

    .line 1064
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v10, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    iput-object v7, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->toast:Landroid/widget/Toast;

    .line 1072
    :goto_2
    iget-object v7, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->toast:Landroid/widget/Toast;

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 1075
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x7f0b003d

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v3, v7

    .line 1077
    .local v3, offsetY:F
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1078
    .local v1, bounce:Landroid/animation/AnimatorSet;
    const-string v7, "translationY"

    new-array v10, v8, [F

    aput v3, v10, v9

    invoke-static {v0, v7, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 1080
    .local v5, tyuAnim:Landroid/animation/ValueAnimator;
    const-wide/16 v10, 0x7d

    invoke-virtual {v5, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1081
    const-string v7, "translationY"

    new-array v10, v8, [F

    const/4 v11, 0x0

    aput v11, v10, v9

    invoke-static {v0, v7, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 1083
    .local v4, tydAnim:Landroid/animation/ValueAnimator;
    const-wide/16 v9, 0x64

    invoke-virtual {v4, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1084
    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1085
    new-instance v7, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1086
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 1067
    .end local v1           #bounce:Landroid/animation/AnimatorSet;
    .end local v3           #offsetY:F
    .end local v4           #tydAnim:Landroid/animation/ValueAnimator;
    .end local v5           #tyuAnim:Landroid/animation/ValueAnimator;
    :cond_b
    iget-object v7, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->toast:Landroid/widget/Toast;

    invoke-virtual {v7, v10}, Landroid/widget/Toast;->setText(I)V

    goto :goto_2

    .end local v0           #animView:Landroid/view/View;
    :cond_c
    move v8, v9

    .line 1089
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
    .line 2803
    const/4 v0, 0x0

    return-object v0
.end method

.method protected findAssociatePages(I[I)V
    .locals 7
    .parameter "page"
    .parameter "mAssociatePage"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x2

    .line 770
    const/4 v1, 0x0

    .line 771
    .local v1, lowEdge:I
    iget v2, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mNumAppsPages:I

    add-int/lit8 v0, v2, -0x1

    .line 772
    .local v0, highEdge:I
    iget v2, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCurrentTab:I

    if-nez v2, :cond_1

    .line 773
    const/4 v1, 0x0

    .line 774
    iget v2, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mNumAppsPages:I

    add-int/lit8 v0, v2, -0x1

    .line 783
    :cond_0
    :goto_0
    if-ne p1, v1, :cond_4

    .line 784
    aput v0, p2, v6

    .line 785
    aput p1, p2, v5

    .line 786
    if-eq p1, v0, :cond_3

    .line 787
    add-int/lit8 v2, p1, 0x1

    aput v2, p2, v4

    .line 800
    :goto_1
    return-void

    .line 775
    :cond_1
    iget v2, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCurrentTab:I

    if-ne v2, v5, :cond_2

    .line 776
    iget v1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mNumAppsPages:I

    .line 777
    iget v2, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mNumAppsPages:I

    iget v3, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mNumWidgetPages:I

    add-int/2addr v2, v3

    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    .line 778
    :cond_2
    iget v2, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCurrentTab:I

    if-ne v2, v4, :cond_0

    .line 779
    iget v2, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mNumAppsPages:I

    iget v3, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mNumWidgetPages:I

    add-int v1, v2, v3

    .line 780
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getChildCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    .line 789
    :cond_3
    aput p1, p2, v4

    goto :goto_1

    .line 791
    :cond_4
    if-ne p1, v0, :cond_5

    .line 792
    add-int/lit8 v2, p1, -0x1

    aput v2, p2, v6

    .line 793
    aput p1, p2, v5

    .line 794
    aput v1, p2, v4

    goto :goto_1

    .line 796
    :cond_5
    add-int/lit8 v2, p1, -0x1

    aput v2, p2, v6

    .line 797
    aput p1, p2, v5

    .line 798
    add-int/lit8 v2, p1, 0x1

    aput v2, p2, v4

    goto :goto_1
.end method

.method protected findLeftAndRightScreen(F[I)I
    .locals 7
    .parameter "scrollPos"
    .parameter "screens"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 803
    const/4 v0, 0x0

    .line 804
    .local v0, leftEdge:I
    const/4 v2, 0x0

    .line 805
    .local v2, rightEdge:I
    const/4 v1, 0x0

    .line 806
    .local v1, result:I
    iget-boolean v3, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->InterLoop:Z

    if-eqz v3, :cond_0

    .line 807
    const/4 v0, 0x0

    .line 808
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getChildCount()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .line 825
    :goto_0
    int-to-float v3, v0

    cmpg-float v3, p1, v3

    if-gez v3, :cond_1

    .line 826
    aput v2, p2, v5

    .line 827
    aput v0, p2, v6

    .line 828
    const/4 v1, 0x1

    .line 838
    :goto_1
    return v1

    .line 810
    :cond_0
    iget v3, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCurrentTab:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 812
    :pswitch_0
    const/4 v0, 0x0

    .line 813
    iget v3, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mNumAppsPages:I

    add-int/lit8 v2, v3, -0x1

    .line 814
    goto :goto_0

    .line 816
    :pswitch_1
    iget v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mNumAppsPages:I

    .line 817
    iget v3, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mNumAppsPages:I

    iget v4, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mNumWidgetPages:I

    add-int/2addr v3, v4

    add-int/lit8 v2, v3, -0x1

    .line 818
    goto :goto_0

    .line 820
    :pswitch_2
    iget v3, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mNumAppsPages:I

    iget v4, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mNumWidgetPages:I

    add-int v0, v3, v4

    .line 821
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getChildCount()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    goto :goto_0

    .line 829
    :cond_1
    int-to-float v3, v2

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_2

    .line 830
    aput v2, p2, v5

    .line 831
    aput v0, p2, v6

    .line 832
    const/4 v1, 0x2

    goto :goto_1

    .line 834
    :cond_2
    float-to-int v3, p1

    aput v3, p2, v5

    .line 835
    aget v3, p2, v5

    add-int/lit8 v3, v3, 0x1

    aput v3, p2, v6

    .line 836
    const/4 v1, 0x0

    goto :goto_1

    .line 810
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getAppCountOneLine()I
    .locals 1

    .prologue
    .line 2484
    iget v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCellCountX:I

    return v0
.end method

.method public getApps()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/baidu/launcher/data/item/ListAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1734
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mApps:Ljava/util/Vector;

    return-object v0
.end method

.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 347
    iget v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCurrentPage:I

    return v0
.end method

.method public getCurrentPageAppCount()I
    .locals 2

    .prologue
    .line 2904
    iget v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCurrentPage:I

    iget v1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mNumAppsPages:I

    if-ge v0, v1, :cond_0

    .line 2905
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;

    check-cast v0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->getPageChildCount()I

    move-result v0

    .line 2908
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentPageAppItemView(I)Landroid/view/View;
    .locals 2
    .parameter "index"

    .prologue
    .line 2894
    iget v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCurrentPage:I

    iget v1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mNumAppsPages:I

    if-ge v0, v1, :cond_0

    .line 2895
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;

    check-cast v0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;

    invoke-virtual {v0, p1}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 2898
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentPageChildLayout()Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;
    .locals 2

    .prologue
    .line 2913
    iget v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCurrentPage:I

    iget v1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mNumAppsPages:I

    if-ge v0, v1, :cond_0

    .line 2914
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;

    check-cast v0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->getChildrenLayout()Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;

    move-result-object v0

    .line 2917
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDisableHandler()Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$DisableHandler;
    .locals 1

    .prologue
    .line 3677
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->disableHandler:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$DisableHandler;

    return-object v0
.end method

.method public getDisableItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/data/item/ListItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3776
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->disableItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDragView()Landroid/view/View;
    .locals 1

    .prologue
    .line 2476
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mDraggedView:Landroid/view/View;

    return-object v0
.end method

.method public getFolders()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/data/item/ListFolderInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1738
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mFolders:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getItemLyout()I
    .locals 1

    .prologue
    .line 1422
    const v0, 0x7f030004

    return v0
.end method

.method public getItems()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/baidu/launcher/data/item/ListItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1742
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mItems:Ljava/util/Vector;

    return-object v0
.end method

.method public getPageAt(I)Landroid/view/View;
    .locals 1
    .parameter "index"

    .prologue
    .line 1460
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getChildCount()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getPageContentWidth()I
    .locals 1

    .prologue
    .line 1695
    iget v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mContentWidth:I

    return v0
.end method

.method protected getPageCountInTab()I
    .locals 2

    .prologue
    .line 711
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getChildCount()I

    move-result v0

    .line 712
    .local v0, result:I
    iget-boolean v1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->InterLoop:Z

    if-eqz v1, :cond_0

    .line 713
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getChildCount()I

    move-result v0

    .line 728
    :goto_0
    return v0

    .line 715
    :cond_0
    iget v1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCurrentTab:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 717
    :pswitch_0
    iget v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mNumAppsPages:I

    .line 718
    goto :goto_0

    .line 720
    :pswitch_1
    iget v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mNumWidgetPages:I

    .line 721
    goto :goto_0

    .line 715
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method getPageForComponent(I)I
    .locals 3
    .parameter "index"

    .prologue
    const/4 v1, 0x0

    .line 368
    if-gez p1, :cond_1

    .line 375
    :cond_0
    :goto_0
    return v1

    .line 371
    :cond_1
    iget-object v2, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mItems:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 372
    iget v1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCellCountX:I

    iget v2, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCellCountY:I

    mul-int v0, v1, v2

    .line 373
    .local v0, numItemsPerPage:I
    div-int v1, p1, v0

    goto :goto_0
.end method

.method public getScrollingIndicator()Lcom/baidu/launcher/ui/applistview/AllAppsIndicatorNew;
    .locals 2

    .prologue
    .line 2155
    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mIndicator:Lcom/baidu/launcher/ui/applistview/AllAppsIndicatorNew;

    if-nez v1, :cond_0

    .line 2156
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2157
    .local v0, parent:Landroid/view/ViewGroup;
    const v1, 0x7f080014

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/applistview/AllAppsIndicatorNew;

    check-cast v1, Lcom/baidu/launcher/ui/applistview/AllAppsIndicatorNew;

    iput-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mIndicator:Lcom/baidu/launcher/ui/applistview/AllAppsIndicatorNew;

    .line 2160
    .end local v0           #parent:Landroid/view/ViewGroup;
    :cond_0
    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mIndicator:Lcom/baidu/launcher/ui/applistview/AllAppsIndicatorNew;

    return-object v1
.end method

.method public getSnapDir()I
    .locals 1

    .prologue
    .line 2468
    iget v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mSnapDir:I

    return v0
.end method

.method protected gethighEdgePage()I
    .locals 3

    .prologue
    .line 671
    const/4 v0, 0x0

    .line 672
    .local v0, result:I
    iget-boolean v1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->InterLoop:Z

    if-eqz v1, :cond_0

    .line 673
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 687
    :goto_0
    return v0

    .line 675
    :cond_0
    iget v1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCurrentTab:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 677
    :pswitch_0
    iget v1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mNumAppsPages:I

    add-int/lit8 v0, v1, -0x1

    .line 678
    goto :goto_0

    .line 680
    :pswitch_1
    iget v1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mNumAppsPages:I

    iget v2, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mNumWidgetPages:I

    add-int/2addr v1, v2

    add-int/lit8 v0, v1, -0x1

    .line 681
    goto :goto_0

    .line 683
    :pswitch_2
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    goto :goto_0

    .line 675
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected getlowEdgePage()I
    .locals 3

    .prologue
    .line 691
    const/4 v0, 0x0

    .line 692
    .local v0, result:I
    iget-boolean v1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->InterLoop:Z

    if-eqz v1, :cond_0

    .line 693
    const/4 v0, 0x0

    .line 707
    :goto_0
    return v0

    .line 695
    :cond_0
    iget v1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCurrentTab:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 697
    :pswitch_0
    const/4 v0, 0x0

    .line 698
    goto :goto_0

    .line 700
    :pswitch_1
    iget v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mNumAppsPages:I

    .line 701
    goto :goto_0

    .line 703
    :pswitch_2
    iget v1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mNumAppsPages:I

    iget v2, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mNumWidgetPages:I

    add-int v0, v1, v2

    goto :goto_0

    .line 695
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method hideFolderAccept()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3310
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mLastOverChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3311
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mLastOverChild:Landroid/view/View;

    check-cast v0, Lcom/baidu/launcher/ui/common/BubbleTextView;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/common/BubbleTextView;->cancelFolderHighlight()V

    .line 3313
    :cond_0
    iput-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCreateFolderView:Landroid/view/View;

    .line 3314
    iput-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mLastOverChild:Landroid/view/View;

    .line 3317
    return-void
.end method

.method public hideScrollingIndicator(Z)V
    .locals 2
    .parameter "immediately"

    .prologue
    .line 2144
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getPageCountInTab()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2152
    :cond_0
    :goto_0
    return-void

    .line 2146
    :cond_1
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getScrollingIndicator()Lcom/baidu/launcher/ui/applistview/AllAppsIndicatorNew;

    .line 2147
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mIndicator:Lcom/baidu/launcher/ui/applistview/AllAppsIndicatorNew;

    if-eqz v0, :cond_0

    .line 2149
    iget v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mScrollX:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->updateScrollingIndicatorPosition(F)V

    goto :goto_0
.end method

.method public indexToPage(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 1465
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getChildCount()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method protected init()V
    .locals 4

    .prologue
    .line 301
    invoke-super {p0}, Lcom/baidu/launcher/ui/common/DraggableViewPagger;->init()V

    .line 302
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCenterPagesVertically:Z

    .line 304
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 305
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 306
    .local v1, r:Landroid/content/res/Resources;
    const v2, 0x7f0d0008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x42c8

    div-float/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->setDragSlopeThreshold(F)V

    .line 309
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mBackupHideMap:Ljava/util/HashMap;

    .line 310
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mBackupPresetApp:Ljava/util/ArrayList;

    .line 311
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mBackupDisableMap:Ljava/util/HashMap;

    .line 312
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->disableItems:Ljava/util/ArrayList;

    .line 313
    invoke-direct {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->initWhiteList()V

    .line 314
    return-void
.end method

.method public initDragData(Landroid/view/View;)V
    .locals 10
    .parameter "dragView"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 2922
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getCurrentPageAppCount()I

    move-result v5

    .line 2925
    .local v5, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v5, :cond_4

    .line 2926
    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getCurrentPageAppItemView(I)Landroid/view/View;

    move-result-object v2

    .line 2927
    .local v2, item:Landroid/view/View;
    if-nez v2, :cond_1

    .line 2925
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2929
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;

    .line 2930
    .local v4, lp:Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;
    iget-boolean v6, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mIsInitPosDate:Z

    if-nez v6, :cond_3

    .line 2931
    iget v6, v4, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->itemIndex:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    .line 2932
    iput v1, v4, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->itemIndex:I

    .line 2934
    :cond_2
    iget-object v6, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mPosIndex:[[I

    iget v7, v4, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->itemIndex:I

    aget-object v6, v6, v7

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v7

    aput v7, v6, v9

    .line 2935
    iget-object v6, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mPosIndex:[[I

    iget v7, v4, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->itemIndex:I

    aget-object v6, v6, v7

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v7

    aput v7, v6, v8

    .line 2938
    :cond_3
    if-ne p1, v2, :cond_0

    .line 2939
    iget v6, v4, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->itemIndex:I

    iput v6, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mDragMoveIndex:I

    goto :goto_1

    .line 2942
    .end local v2           #item:Landroid/view/View;
    .end local v4           #lp:Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;
    :cond_4
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getCurrentPage()I

    move-result v6

    if-lez v6, :cond_5

    iget-boolean v6, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mIsInitPosDate:Z

    if-nez v6, :cond_5

    .line 2943
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getCurrentPage()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p0, v6}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;

    check-cast v6, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;

    invoke-virtual {v6}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->getChildrenLayout()Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;

    move-result-object v3

    .line 2946
    .local v3, layout:Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;->getChildCount()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 2947
    invoke-virtual {v3}, Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;->getChildCount()I

    move-result v0

    .line 2948
    .local v0, countOnePage:I
    move v1, v5

    :goto_2
    if-ge v1, v0, :cond_5

    .line 2949
    invoke-virtual {v3, v1}, Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2950
    .restart local v2       #item:Landroid/view/View;
    iget-object v6, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mPosIndex:[[I

    aget-object v6, v6, v1

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v7

    aput v7, v6, v9

    .line 2951
    iget-object v6, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mPosIndex:[[I

    aget-object v6, v6, v1

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v7

    aput v7, v6, v8

    .line 2948
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2956
    .end local v0           #countOnePage:I
    .end local v2           #item:Landroid/view/View;
    .end local v3           #layout:Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;
    :cond_5
    iget v6, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCurrentPage:I

    iput v6, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mTempCurrentPage:I

    .line 2957
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->appCountOnePage()I

    move-result v6

    if-lt v5, v6, :cond_6

    .line 2958
    iput-boolean v8, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mIsInitPosDate:Z

    .line 2960
    :cond_6
    return-void
.end method

.method public insertItem(Lcom/baidu/launcher/data/item/ListItemInfo;)V
    .locals 3
    .parameter "itemInfo"

    .prologue
    .line 2017
    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mItems:Ljava/util/Vector;

    monitor-enter v1

    .line 2018
    :try_start_0
    iget v0, p1, Lcom/baidu/launcher/data/item/ListItemInfo;->index:I

    if-ltz v0, :cond_0

    .line 2019
    iget v0, p1, Lcom/baidu/launcher/data/item/ListItemInfo;->index:I

    iget-object v2, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mItems:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 2020
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mItems:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2025
    :cond_0
    :goto_0
    monitor-exit v1

    .line 2026
    return-void

    .line 2022
    :cond_1
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mItems:Ljava/util/Vector;

    iget v2, p1, Lcom/baidu/launcher/data/item/ListItemInfo;->index:I

    invoke-virtual {v0, v2, p1}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 2025
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isAnimationRunning()Z
    .locals 2

    .prologue
    .line 2885
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mAnimator:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mAnimator:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mAnimator:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mReadyMoveIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 2888
    :cond_1
    const/4 v0, 0x1

    .line 2890
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 3424
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadAssociatedPages(IZ)V
    .locals 12
    .parameter "page"
    .parameter "immediateAndOnly"

    .prologue
    .line 732
    const/4 v9, 0x3

    new-array v8, v9, [I

    fill-array-data v8, :array_0

    .line 733
    .local v8, mAssociatePage:[I
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getChildCount()I

    move-result v2

    .line 734
    .local v2, count:I
    if-ge p1, v2, :cond_0

    .line 735
    iget-boolean v9, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->InterLoop:Z

    if-eqz v9, :cond_1

    .line 736
    invoke-super {p0, p1, p2}, Lcom/baidu/launcher/ui/common/DraggableViewPagger;->loadAssociatedPages(IZ)V

    .line 767
    :cond_0
    return-void

    .line 738
    :cond_1
    invoke-virtual {p0, p1, v8}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->findAssociatePages(I[I)V

    .line 739
    move-object v0, v8

    .local v0, arr$:[I
    array-length v7, v0

    .local v7, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v7, :cond_2

    aget v5, v0, v4

    .line 740
    .local v5, j:I
    if-eqz p2, :cond_4

    .line 741
    iget-object v9, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    const/4 v10, 0x1

    aget v10, v8, v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 742
    const/4 v9, 0x1

    aget v9, v8, v9

    const/4 v10, 0x1

    invoke-virtual {p0, v9, v10}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->syncPageItems(IZ)V

    .line 743
    iget-object v9, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    const/4 v10, 0x1

    aget v10, v8, v10

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 754
    .end local v5           #j:I
    :cond_2
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v2, :cond_0

    .line 755
    const/4 v9, 0x0

    aget v9, v8, v9

    if-eq v3, v9, :cond_3

    const/4 v9, 0x1

    aget v9, v8, v9

    if-eq v3, v9, :cond_3

    const/4 v9, 0x2

    aget v9, v8, v9

    if-ne v3, v9, :cond_6

    .line 754
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 747
    .end local v3           #i:I
    .restart local v5       #j:I
    :cond_4
    iget-object v9, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v5, v9, :cond_5

    iget-object v9, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 749
    const/4 v9, 0x0

    invoke-virtual {p0, v5, v9}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->syncPageItems(IZ)V

    .line 750
    iget-object v9, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v9, v5, v10}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 739
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 758
    .end local v5           #j:I
    .restart local v3       #i:I
    :cond_6
    invoke-virtual {p0, v3}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/baidu/launcher/ui/common/Page;

    .line 759
    .local v6, layout:Lcom/baidu/launcher/ui/common/Page;
    invoke-interface {v6}, Lcom/baidu/launcher/ui/common/Page;->getPageChildCount()I

    move-result v1

    .line 760
    .local v1, childCount:I
    if-lez v1, :cond_7

    .line 761
    invoke-interface {v6}, Lcom/baidu/launcher/ui/common/Page;->removeAllViewsOnPage()V

    .line 763
    :cond_7
    iget-object v9, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v9, v3, v10}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 732
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public moveAnimationForFolder(I)V
    .locals 1
    .parameter "startIndex"

    .prologue
    .line 2779
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getCurrentPageAppCount()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->calculateAnimateViews(II)V

    .line 2780
    invoke-direct {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->postAnimation()V

    .line 2781
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 952
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->doClick(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 957
    :goto_0
    return-void

    .line 956
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mContainer:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$PagedViewContainer;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$PagedViewContainer;->onItemClick(Landroid/view/View;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected onDataReady(II)V
    .locals 10
    .parameter "width"
    .parameter "height"

    .prologue
    .line 416
    const v1, 0x7fffffff

    .line 417
    .local v1, maxCellCountX:I
    const v2, 0x7fffffff

    .line 418
    .local v2, maxCellCountY:I
    iget v5, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mMaxAppCellCountX:I

    const/4 v6, -0x1

    if-le v5, v6, :cond_0

    .line 419
    iget v5, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mMaxAppCellCountX:I

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 421
    :cond_0
    iget v5, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mMaxAppCellCountY:I

    const/4 v6, -0x1

    if-le v5, v6, :cond_1

    .line 422
    iget v5, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mMaxAppCellCountY:I

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 428
    :cond_1
    iget-object v5, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mWidgetSpacingLayout:Lcom/baidu/launcher/ui/common/PagedViewCellLayout;

    iget v6, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mPageLayoutWidthGap:I

    iget v7, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mPageLayoutHeightGap:I

    invoke-virtual {v5, v6, v7}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->setGap(II)V

    .line 429
    iget-object v5, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mWidgetSpacingLayout:Lcom/baidu/launcher/ui/common/PagedViewCellLayout;

    iget v6, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mPageLayoutPaddingLeft:I

    iget v7, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mPageLayoutPaddingTop:I

    iget v8, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mPageLayoutPaddingRight:I

    iget v9, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mPageLayoutPaddingBottom:I

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->setPadding(IIII)V

    .line 432
    iget-object v5, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mWidgetSpacingLayout:Lcom/baidu/launcher/ui/common/PagedViewCellLayout;

    invoke-virtual {v5, p1, p2, v1, v2}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->calculateCellCount(IIII)V

    .line 434
    iget-object v5, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mWidgetSpacingLayout:Lcom/baidu/launcher/ui/common/PagedViewCellLayout;

    invoke-virtual {v5}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->getCellCountX()I

    move-result v5

    iput v5, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCellCountX:I

    .line 435
    iget-boolean v5, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mIsLandscape:Z

    if-nez v5, :cond_4

    sget v5, Lcom/baidu/launcher/utils/DefaultConfigurationHelper;->launcherLineNum:I

    const/4 v6, 0x3

    if-le v5, v6, :cond_4

    .line 436
    sget v5, Lcom/baidu/launcher/utils/DefaultConfigurationHelper;->launcherLineNum:I

    iput v5, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCellCountY:I

    .line 443
    :goto_0
    iget-boolean v5, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mIsLandscape:Z

    if-nez v5, :cond_2

    iget v5, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCellCountY:I

    const/4 v6, 0x3

    if-ge v5, v6, :cond_2

    .line 444
    const/4 v5, 0x3

    iput v5, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCellCountY:I

    .line 446
    :cond_2
    iget-boolean v5, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mIsLandscape:Z

    if-eqz v5, :cond_3

    iget v5, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCellCountY:I

    const/4 v6, 0x2

    if-ge v5, v6, :cond_3

    .line 447
    const/4 v5, 0x2

    iput v5, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCellCountY:I

    .line 449
    :cond_3
    invoke-direct {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->updatePageCounts()V

    .line 452
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getMeasuredWidth()I

    move-result v5

    const/high16 v6, -0x8000

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 454
    .local v4, widthSpec:I
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getMeasuredHeight()I

    move-result v5

    const/high16 v6, -0x8000

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 456
    .local v0, heightSpec:I
    iget-object v5, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mWidgetSpacingLayout:Lcom/baidu/launcher/ui/common/PagedViewCellLayout;

    invoke-virtual {v5, v4, v0}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->measure(II)V

    .line 457
    iget-object v5, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mWidgetSpacingLayout:Lcom/baidu/launcher/ui/common/PagedViewCellLayout;

    invoke-virtual {v5}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->getContentWidth()I

    move-result v5

    iput v5, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mContentWidth:I

    .line 460
    iget v5, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mSaveInstanceStateItemIndex:I

    invoke-virtual {p0, v5}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getPageForComponent(I)I

    move-result v3

    .line 461
    .local v3, page:I
    const/4 v5, 0x0

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->invalidatePageData(IZ)V

    .line 462
    return-void

    .line 437
    .end local v0           #heightSpec:I
    .end local v3           #page:I
    .end local v4           #widthSpec:I
    :cond_4
    iget-boolean v5, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mIsLandscape:Z

    if-eqz v5, :cond_5

    sget v5, Lcom/baidu/launcher/utils/DefaultConfigurationHelper;->launcherLineNumInLand:I

    const/4 v6, 0x1

    if-le v5, v6, :cond_5

    .line 439
    sget v5, Lcom/baidu/launcher/utils/DefaultConfigurationHelper;->launcherLineNumInLand:I

    iput v5, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCellCountY:I

    goto :goto_0

    .line 441
    :cond_5
    iget-object v5, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mWidgetSpacingLayout:Lcom/baidu/launcher/ui/common/PagedViewCellLayout;

    invoke-virtual {v5}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->getCellCountY()I

    move-result v5

    iput v5, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCellCountY:I

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 1140
    invoke-super {p0}, Lcom/baidu/launcher/ui/common/DraggableViewPagger;->onDetachedFromWindow()V

    .line 1141
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
    .line 2591
    instance-of v0, p1, Lcom/baidu/launcher/ui/folder/UserFolder;

    if-eqz v0, :cond_1

    .line 2592
    instance-of v0, p7, Lcom/baidu/launcher/data/item/ListAppInfo;

    if-eqz v0, :cond_1

    check-cast p7, Lcom/baidu/launcher/data/item/ListAppInfo;

    .end local p7
    iget-wide v0, p7, Lcom/baidu/launcher/data/item/ListAppInfo;->container:J

    const-wide/16 v2, -0x3e8

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 2594
    const/4 v0, 0x2

    iput v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mDragMode:I

    .line 2595
    iput-object p6, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mDraggedView:Landroid/view/View;

    .line 2596
    iget v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCurrentPage:I

    iput v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mTempCurrentPage:I

    .line 2597
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getCurrentPageChildLayout()Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mDragMoveIndex:I

    .line 2598
    iget v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mDragMoveIndex:I

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->appCountOnePage()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 2599
    iget v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mDragMoveIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mDragMoveIndex:I

    .line 2601
    :cond_0
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mIsInitPosDate:Z

    if-nez v0, :cond_1

    .line 2602
    invoke-direct {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->initPosIndexData()V

    .line 2606
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCanShowFolderAccept:Z

    .line 2607
    return-void
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
    .line 2786
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mLastOverChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2787
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mLastOverChild:Landroid/view/View;

    check-cast v0, Lcom/baidu/launcher/ui/common/BubbleTextView;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/common/BubbleTextView;->cancelFolderHighlight()V

    .line 2789
    :cond_0
    invoke-direct {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->cancelMoveRunnal()V

    .line 2790
    return-void
.end method

.method public onDragOver(Lcom/baidu/launcher/ui/dragdrop/DragSource;IIIILcom/baidu/launcher/ui/dragdrop/DragView;Ljava/lang/Object;)V
    .locals 28
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 2612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mDraggedView:Landroid/view/View;

    move-object/from16 v24, v0

    if-nez v24, :cond_1

    .line 2755
    .end local p7
    :cond_0
    :goto_0
    return-void

    .line 2614
    .restart local p7
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mAnimator:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    move-object/from16 v24, v0

    if-eqz v24, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mAnimator:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->isRunning()Z

    move-result v24

    if-nez v24, :cond_0

    .line 2616
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getSnapDir()I

    move-result v24

    if-nez v24, :cond_0

    .line 2618
    sub-int v24, p2, p4

    invoke-virtual/range {p6 .. p6}, Lcom/baidu/launcher/ui/dragdrop/DragView;->getWidth()I

    move-result v25

    div-int/lit8 v25, v25, 0x4

    add-int v13, v24, v25

    .line 2619
    .local v13, dragViewCenterX:I
    sub-int v24, p3, p5

    invoke-virtual/range {p6 .. p6}, Lcom/baidu/launcher/ui/dragdrop/DragView;->getHeight()I

    move-result v25

    div-int/lit8 v25, v25, 0x4

    add-int v14, v24, v25

    .line 2621
    .local v14, dragViewCenterY:I
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->appCountOnePage()I

    move-result v6

    .line 2622
    .local v6, appCountOnePage:I
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getCurrentPage()I

    move-result v24

    mul-int v19, v24, v6

    .line 2623
    .local v19, offsetAppNum:I
    new-instance v21, Landroid/graphics/Rect;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Rect;-><init>()V

    .line 2624
    .local v21, rect1:Landroid/graphics/Rect;
    new-instance v22, Landroid/graphics/Rect;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Rect;-><init>()V

    .line 2626
    .local v22, rect2:Landroid/graphics/Rect;
    const/16 v17, 0x0

    .line 2627
    .local v17, itemView:Landroid/view/View;
    const/16 v18, 0x0

    .line 2629
    .local v18, lp:Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getCurrentPage()I

    move-result v24

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;

    invoke-virtual/range {v24 .. v24}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->getGap()[I

    move-result-object v9

    .line 2633
    .local v9, cellGap:[I
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getCurrentPageAppCount()I

    move-result v23

    .line 2635
    .local v23, size:I
    const/4 v7, 0x1

    .line 2636
    .local v7, canCreateFolder:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mTempCurrentPage:I

    move/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getCurrentPage()I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_4

    .line 2637
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mDragMode:I

    move/from16 v24, v0

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_3

    .line 2638
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mTempCurrentPage:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->switchAppBetweenPage(I)V

    .line 2640
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getCurrentPage()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mTempCurrentPage:I

    .line 2641
    const/4 v7, 0x0

    .line 2643
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mDragMode:I

    move/from16 v24, v0

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_5

    .line 2644
    const/4 v7, 0x0

    .line 2647
    :cond_5
    const/4 v7, 0x0

    .line 2649
    const/16 v16, 0x0

    .local v16, i:I
    :goto_1
    move/from16 v0, v16

    move/from16 v1, v23

    if-ge v0, v1, :cond_d

    .line 2650
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getViewByIndex(I)Landroid/view/View;

    move-result-object v17

    .line 2651
    if-nez v17, :cond_7

    .line 2649
    :cond_6
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 2653
    :cond_7
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLeft()I

    move-result v24

    const/16 v25, 0x0

    aget v25, v9, v25

    div-int/lit8 v25, v25, 0x2

    sub-int v10, v24, v25

    .line 2654
    .local v10, cellLeft:I
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v24

    const/16 v25, 0x1

    aget v25, v9, v25

    div-int/lit8 v25, v25, 0x2

    sub-int v12, v24, v25

    .line 2655
    .local v12, cellTop:I
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getRight()I

    move-result v24

    const/16 v25, 0x0

    aget v25, v9, v25

    div-int/lit8 v25, v25, 0x2

    add-int v11, v24, v25

    .line 2656
    .local v11, cellRight:I
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getBottom()I

    move-result v24

    const/16 v25, 0x1

    aget v25, v9, v25

    div-int/lit8 v25, v25, 0x2

    add-int v8, v24, v25

    .line 2658
    .local v8, cellBottom:I
    move-object/from16 v0, v21

    invoke-virtual {v0, v10, v12, v11, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 2659
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getWidth()I

    move-result v24

    div-int/lit8 v24, v24, 0x4

    add-int v24, v24, v10

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getHeight()I

    move-result v25

    div-int/lit8 v25, v25, 0x4

    add-int v25, v25, v12

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getWidth()I

    move-result v26

    div-int/lit8 v26, v26, 0x4

    sub-int v26, v11, v26

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getHeight()I

    move-result v27

    div-int/lit8 v27, v27, 0x4

    sub-int v27, v8, v27

    move-object/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2663
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    .end local v18           #lp:Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;
    check-cast v18, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;

    .line 2664
    .restart local v18       #lp:Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;
    move-object/from16 v0, v18

    iget v0, v0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->itemIndex:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mDragMoveIndex:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_6

    .line 2665
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mAnimator:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    move-object/from16 v24, v0

    if-eqz v24, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mAnimator:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->isStarted()Z

    move-result v24

    if-nez v24, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mAnimator:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->isRunning()Z

    move-result v24

    if-nez v24, :cond_0

    .line 2669
    :cond_8
    move-object/from16 v0, v22

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Rect;->contains(II)Z

    move-result v24

    if-eqz v24, :cond_9

    if-eqz v7, :cond_9

    move-object/from16 v0, p7

    instance-of v0, v0, Lcom/baidu/launcher/data/item/ListAppInfo;

    move/from16 v24, v0

    if-eqz v24, :cond_9

    .line 2671
    invoke-direct/range {p0 .. p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->cancelMoveRunnal()V

    .line 2672
    move-object/from16 v0, v18

    iget v0, v0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->itemIndex:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->changeToCreateFloderMode(I)V

    goto/16 :goto_0

    .line 2674
    :cond_9
    move-object/from16 v0, v21

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Rect;->contains(II)Z

    move-result v24

    if-eqz v24, :cond_6

    .line 2675
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->hideFolderAccept()V

    .line 2676
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mReadyMoveIndex:I

    move/from16 v24, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->itemIndex:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_0

    .line 2677
    move-object/from16 v0, p7

    instance-of v0, v0, Lcom/baidu/launcher/data/item/ListAppInfo;

    move/from16 v24, v0

    if-eqz v24, :cond_a

    move-object/from16 v24, p7

    check-cast v24, Lcom/baidu/launcher/data/item/ListAppInfo;

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->container:J

    move-wide/from16 v24, v0

    const-wide/16 v26, -0x3e8

    cmp-long v24, v24, v26

    if-eqz v24, :cond_a

    move-object/from16 v24, p7

    .line 2679
    check-cast v24, Lcom/baidu/launcher/data/item/ListAppInfo;

    const-wide/16 v25, -0x3e8

    move-wide/from16 v0, v25

    move-object/from16 v2, v24

    iput-wide v0, v2, Lcom/baidu/launcher/data/item/ListAppInfo;->container:J

    .line 2680
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getCurrentPageChildLayout()Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;

    move-result-object v20

    .line 2681
    .local v20, parentView:Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;
    invoke-virtual/range {v20 .. v20}, Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;->getChildCount()I

    move-result v24

    add-int/lit8 v24, v24, -0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mDragMoveIndex:I

    .line 2682
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mDragMoveIndex:I

    move/from16 v24, v0

    add-int/lit8 v25, v6, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_b

    .line 2683
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mDragMoveIndex:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mDragMoveIndex:I

    :goto_2
    move-object/from16 v24, p7

    .line 2687
    check-cast v24, Lcom/baidu/launcher/data/item/ListItemInfo;

    move-object/from16 v0, v18

    iget v0, v0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->itemIndex:I

    move/from16 v25, v0

    add-int v25, v25, v19

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lcom/baidu/launcher/data/item/ListItemInfo;->index:I

    .line 2689
    check-cast p7, Lcom/baidu/launcher/data/item/ListItemInfo;

    .end local p7
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->insertItem(Lcom/baidu/launcher/data/item/ListItemInfo;)V

    .line 2691
    .end local v20           #parentView:Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;
    :cond_a
    if-eqz v7, :cond_c

    .line 2692
    invoke-direct/range {p0 .. p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->cancelMoveRunnal()V

    .line 2693
    new-instance v24, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$SqueezeRunnable;

    move-object/from16 v0, v18

    iget v0, v0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->itemIndex:I

    move/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$SqueezeRunnable;-><init>(Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;I)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mSqueezeRunnable:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$SqueezeRunnable;

    .line 2694
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mTimerHandler:Landroid/os/Handler;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mSqueezeRunnable:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$SqueezeRunnable;

    move-object/from16 v25, v0

    const-wide/16 v26, 0xfa

    invoke-virtual/range {v24 .. v27}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 2685
    .restart local v20       #parentView:Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;
    .restart local p7
    :cond_b
    add-int/lit8 v24, v6, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;->removeViewAt(I)V

    goto :goto_2

    .line 2696
    .end local v20           #parentView:Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;
    .end local p7
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mDragMoveIndex:I

    move/from16 v24, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->itemIndex:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->calculateAnimateViews(II)V

    .line 2697
    move-object/from16 v0, v18

    iget v0, v0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->itemIndex:I

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mDragMoveIndex:I

    .line 2698
    invoke-direct/range {p0 .. p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->postAnimation()V

    goto/16 :goto_0

    .line 2705
    .end local v8           #cellBottom:I
    .end local v10           #cellLeft:I
    .end local v11           #cellRight:I
    .end local v12           #cellTop:I
    .restart local p7
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->hideFolderAccept()V

    .line 2706
    invoke-direct/range {p0 .. p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->cancelMoveRunnal()V

    .line 2710
    if-eqz v17, :cond_0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->itemIndex:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mDragMoveIndex:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->appCountOnePage()I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_0

    sub-int v24, p3, p5

    move-object/from16 v0, v18

    iget v0, v0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->y:I

    move/from16 v25, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getHeight()I

    move-result v26

    add-int v25, v25, v26

    move/from16 v0, v24

    move/from16 v1, v25

    if-gt v0, v1, :cond_e

    sub-int v24, p2, p4

    move-object/from16 v0, v18

    iget v0, v0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->x:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_0

    sub-int v24, p3, p5

    move-object/from16 v0, v18

    iget v0, v0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->y:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_0

    .line 2714
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mDragMode:I

    move/from16 v24, v0

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_f

    .line 2715
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mDragMoveIndex:I

    move/from16 v24, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->itemIndex:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->calculateAnimateViews(II)V

    .line 2716
    move-object/from16 v0, v18

    iget v0, v0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->itemIndex:I

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mDragMoveIndex:I

    .line 2717
    invoke-direct/range {p0 .. p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->postAnimation()V

    goto/16 :goto_0

    .line 2719
    :cond_f
    move-object/from16 v0, p7

    instance-of v0, v0, Lcom/baidu/launcher/data/item/ListAppInfo;

    move/from16 v24, v0

    if-eqz v24, :cond_0

    move-object/from16 v24, p7

    check-cast v24, Lcom/baidu/launcher/data/item/ListAppInfo;

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->container:J

    move-wide/from16 v24, v0

    const-wide/16 v26, -0x3e8

    cmp-long v24, v24, v26

    if-eqz v24, :cond_0

    move-object/from16 v24, p7

    .line 2721
    check-cast v24, Lcom/baidu/launcher/data/item/ListAppInfo;

    const-wide/16 v25, -0x3e8

    move-wide/from16 v0, v25

    move-object/from16 v2, v24

    iput-wide v0, v2, Lcom/baidu/launcher/data/item/ListAppInfo;->container:J

    .line 2722
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getCurrentPageChildLayout()Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;

    move-result-object v20

    .line 2723
    .restart local v20       #parentView:Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;
    invoke-virtual/range {v20 .. v20}, Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;->getChildCount()I

    move-result v24

    add-int/lit8 v24, v24, -0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mDragMoveIndex:I

    .line 2724
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mDragMoveIndex:I

    move/from16 v24, v0

    add-int/lit8 v25, v6, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_10

    .line 2725
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mDragMoveIndex:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mDragMoveIndex:I

    :goto_3
    move-object/from16 v24, p7

    .line 2729
    check-cast v24, Lcom/baidu/launcher/data/item/ListItemInfo;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mDragMoveIndex:I

    move/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getCurrentPage()I

    move-result v26

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->appCountOnePage()I

    move-result v27

    mul-int v26, v26, v27

    add-int v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lcom/baidu/launcher/data/item/ListItemInfo;->index:I

    .line 2731
    check-cast p7, Lcom/baidu/launcher/data/item/ListItemInfo;

    .end local p7
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->insertItem(Lcom/baidu/launcher/data/item/ListItemInfo;)V

    .line 2732
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getAppCountOneLine()I

    move-result v5

    .line 2733
    .local v5, appCountOneLine:I
    const/4 v15, 0x0

    .line 2734
    .local v15, dragViewLp:Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;
    new-instance v15, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;

    .end local v15           #dragViewLp:Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;
    invoke-direct {v15}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;-><init>()V

    .line 2735
    .restart local v15       #dragViewLp:Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mDragMoveIndex:I

    move/from16 v24, v0

    move/from16 v0, v24

    iput v0, v15, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->itemIndex:I

    .line 2736
    iget v0, v15, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->itemIndex:I

    move/from16 v24, v0

    rem-int v24, v24, v5

    move/from16 v0, v24

    iput v0, v15, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->cellX:I

    .line 2737
    iget v0, v15, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->itemIndex:I

    move/from16 v24, v0

    div-int v24, v24, v5

    move/from16 v0, v24

    iput v0, v15, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->cellY:I

    .line 2738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mPosIndex:[[I

    move-object/from16 v24, v0

    iget v0, v15, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->itemIndex:I

    move/from16 v25, v0

    aget-object v24, v24, v25

    const/16 v25, 0x0

    aget v24, v24, v25

    move/from16 v0, v24

    iput v0, v15, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->x:I

    .line 2739
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mPosIndex:[[I

    move-object/from16 v24, v0

    iget v0, v15, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->itemIndex:I

    move/from16 v25, v0

    aget-object v24, v24, v25

    const/16 v25, 0x1

    aget v24, v24, v25

    move/from16 v0, v24

    iput v0, v15, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->y:I

    .line 2741
    const/16 v25, 0x0

    iget v0, v15, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->itemIndex:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/baidu/launcher/ui/logic/ViewManager;->getDragController()Lcom/baidu/launcher/ui/dragdrop/DragController;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/baidu/launcher/ui/dragdrop/DragController;->getDragInfo()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/baidu/launcher/data/item/ListItemInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v26

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v15, v3}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->addInScreen(Landroid/view/View;ILcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;Lcom/baidu/launcher/data/item/ListItemInfo;)V

    .line 2744
    iget v0, v15, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->itemIndex:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getViewByIndex(I)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mDraggedView:Landroid/view/View;

    .line 2745
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mDraggedView:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x4

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setVisibility(I)V

    .line 2746
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mDragMode:I

    .line 2749
    const/16 v24, 0x2

    sput v24, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->sortType:I

    .line 2751
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->setCanSaveData(Z)V

    goto/16 :goto_0

    .line 2727
    .end local v5           #appCountOneLine:I
    .end local v15           #dragViewLp:Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;
    .restart local p7
    :cond_10
    add-int/lit8 v24, v6, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;->removeViewAt(I)V

    goto/16 :goto_3
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
    .line 2554
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mAnimator:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 2555
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mAnimator:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->end()V

    .line 2558
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mDraggedView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2559
    const/4 v0, 0x2

    new-array v9, v0, [I

    .line 2560
    .local v9, loc:[I
    const/4 v0, 0x2

    new-array v3, v0, [I

    .line 2561
    .local v3, toPoints:[I
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/logic/ViewManager;->getStatusBarHeight()I

    move-result v0

    neg-int v8, v0

    .line 2562
    .local v8, delta:I
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mDraggedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v11, v0

    check-cast v11, Landroid/view/View;

    .line 2563
    .local v11, parentView:Landroid/view/View;
    if-nez v11, :cond_2

    .line 2586
    .end local v3           #toPoints:[I
    .end local v8           #delta:I
    .end local v9           #loc:[I
    .end local v11           #parentView:Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 2566
    .restart local v3       #toPoints:[I
    .restart local v8       #delta:I
    .restart local v9       #loc:[I
    .restart local v11       #parentView:Landroid/view/View;
    :cond_2
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getSnapDir()I

    move-result v0

    if-eqz v0, :cond_3

    .line 2567
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mDraggedView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2570
    :cond_3
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mDraggedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .line 2571
    .local v10, lp:Landroid/view/ViewGroup$LayoutParams;
    instance-of v0, v10, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;

    if-eqz v0, :cond_1

    .line 2572
    invoke-virtual {v11, v9}, Landroid/view/View;->getLocationInWindow([I)V

    .line 2573
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mPosIndex:[[I

    move-object v0, v10

    check-cast v0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;

    iget v0, v0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->itemIndex:I

    aget-object v0, v2, v0

    const/4 v2, 0x0

    aget v0, v0, v2

    const/4 v2, 0x0

    aget v2, v9, v2

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x4

    aput v0, v3, v1

    .line 2575
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mPosIndex:[[I

    check-cast v10, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;

    .end local v10           #lp:Landroid/view/ViewGroup$LayoutParams;
    iget v2, v10, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->itemIndex:I

    aget-object v1, v1, v2

    const/4 v2, 0x1

    aget v1, v1, v2

    const/4 v2, 0x1

    aget v2, v9, v2

    add-int/2addr v1, v2

    add-int/2addr v1, v8

    aput v1, v3, v0

    .line 2581
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/logic/ViewManager;->getDragLayer()Lcom/baidu/launcher/ui/dragdrop/DragLayer;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mDraggedView:Landroid/view/View;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f80

    move-object/from16 v1, p6

    invoke-virtual/range {v0 .. v8}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->animateViewIntoPosition(Landroid/view/View;Landroid/view/View;[ILcom/baidu/launcher/ui/dragdrop/DragSource;Ljava/lang/Object;Ljava/lang/Runnable;FI)V

    goto :goto_0
.end method

.method public onDropCompleted(Landroid/view/View;Z)V
    .locals 3
    .parameter "target"
    .parameter "success"

    .prologue
    const/4 v2, 0x0

    .line 3153
    if-eqz p2, :cond_0

    instance-of v1, p1, Lcom/baidu/launcher/ui/editview/ScreenSnapshot;

    if-eqz v1, :cond_0

    .line 3154
    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/logic/ViewManager;->getDragController()Lcom/baidu/launcher/ui/dragdrop/DragController;

    move-result-object v0

    .line 3155
    .local v0, dragController:Lcom/baidu/launcher/ui/dragdrop/DragController;
    invoke-virtual {v0}, Lcom/baidu/launcher/ui/dragdrop/DragController;->getOriginalView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3157
    invoke-virtual {v0}, Lcom/baidu/launcher/ui/dragdrop/DragController;->getOriginalView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->showDraggedView(Landroid/view/View;Z)V

    .line 3159
    .end local v0           #dragController:Lcom/baidu/launcher/ui/dragdrop/DragController;
    :cond_0
    iput-boolean v2, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCanShowFolderAccept:Z

    .line 3160
    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mContainer:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$PagedViewContainer;

    invoke-interface {v1, p1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$PagedViewContainer;->onDropCompleted(Landroid/view/View;)V

    .line 3161
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
    .line 2811
    return-void
.end method

.method public onFlingToDeleteCompleted()V
    .locals 0

    .prologue
    .line 3254
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 6
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 936
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/data/item/ListItemInfo;

    .line 937
    .local v1, itemInfo:Lcom/baidu/launcher/data/item/ListItemInfo;
    sget v3, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->AppListMode:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    sget v3, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->AppListMode:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    .line 947
    :cond_0
    :goto_0
    return v2

    .line 940
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/baidu/launcher/data/item/ListItemInfo;

    if-eqz v3, :cond_2

    .line 941
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/data/item/ListItemInfo;

    .line 942
    .local v0, info:Lcom/baidu/launcher/data/item/ListItemInfo;
    iget v3, v0, Lcom/baidu/launcher/data/item/ListItemInfo;->itemType:I

    const/16 v4, 0x14

    if-ne v3, v4, :cond_2

    .line 943
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0301

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 947
    .end local v0           #info:Lcom/baidu/launcher/data/item/ListItemInfo;
    :cond_2
    invoke-super {p0, p1}, Lcom/baidu/launcher/ui/common/DraggableViewPagger;->onLongClick(Landroid/view/View;)Z

    move-result v2

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 466
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 467
    .local v1, width:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 468
    .local v0, height:I
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->isDataReady()Z

    move-result v2

    if-nez v2, :cond_0

    .line 469
    invoke-direct {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->testDataReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 470
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->setDataIsReady()V

    .line 471
    invoke-virtual {p0, v1, v0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->setMeasuredDimension(II)V

    .line 472
    invoke-virtual {p0, v1, v0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->onDataReady(II)V

    .line 476
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/baidu/launcher/ui/common/DraggableViewPagger;->onMeasure(II)V

    .line 477
    return-void
.end method

.method public onPageBeginMoving()V
    .locals 0

    .prologue
    .line 1699
    invoke-super {p0}, Lcom/baidu/launcher/ui/common/DraggableViewPagger;->onPageBeginMoving()V

    .line 1700
    return-void
.end method

.method public onPageEndMoving()V
    .locals 1

    .prologue
    .line 1704
    invoke-super {p0}, Lcom/baidu/launcher/ui/common/DraggableViewPagger;->onPageEndMoving()V

    .line 1708
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mSaveInstanceStateItemIndex:I

    .line 1710
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mSnapDir:I

    .line 1712
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 19
    .parameter "ev"

    .prologue
    .line 481
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getPageCount()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-gt v0, v1, :cond_0

    const/16 v16, 0x1

    .line 667
    :goto_0
    return v16

    .line 482
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->handleTouchEvent(Landroid/view/MotionEvent;)V

    .line 484
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getChildCount()I

    move-result v16

    if-gtz v16, :cond_1

    .line 485
    invoke-super/range {p0 .. p1}, Lcom/baidu/launcher/ui/common/DraggableViewPagger;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v16

    goto :goto_0

    .line 487
    :cond_1
    invoke-virtual/range {p0 .. p1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 489
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 491
    .local v2, action:I
    and-int/lit16 v0, v2, 0xff

    move/from16 v16, v0

    packed-switch v16, :pswitch_data_0

    .line 667
    :cond_2
    :goto_1
    :pswitch_0
    const/16 v16, 0x1

    goto :goto_0

    .line 497
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/Scroller;->isFinished()Z

    move-result v16

    if-nez v16, :cond_3

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/Scroller;->abortAnimation()V

    .line 500
    :cond_3
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCorrectionFactor:I

    .line 502
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mLastMotionX:F

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mDownMotionX:F

    .line 503
    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mActivePointerId:I

    .line 504
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mTouchState:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    .line 505
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->pageBeginMoving()V

    goto :goto_1

    .line 511
    :pswitch_2
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCorrectionFactor:I

    .line 512
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mTouchState:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_5

    .line 514
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mActivePointerId:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v10

    .line 515
    .local v10, pointerIndex:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v15

    .line 516
    .local v15, x:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mLastMotionX:F

    move/from16 v16, v0

    sub-float v4, v16, v15

    .line 522
    .local v4, deltaX:F
    float-to-int v0, v4

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v16

    if-lez v16, :cond_4

    .line 523
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mTouchX:F

    move/from16 v16, v0

    add-float v16, v16, v4

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mTouchX:F

    .line 524
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-float v0, v0

    move/from16 v16, v0

    const v17, 0x4e6e6b28

    div-float v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mSmoothingTime:F

    .line 525
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->postInvalidate()V

    .line 526
    move-object/from16 v0, p0

    iput v15, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mLastMotionX:F

    goto/16 :goto_1

    .line 528
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->awakenScrollBars()Z

    goto/16 :goto_1

    .line 531
    .end local v4           #deltaX:F
    .end local v10           #pointerIndex:I
    .end local v15           #x:F
    :cond_5
    invoke-virtual/range {p0 .. p1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 536
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mTouchState:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_13

    .line 537
    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mActivePointerId:I

    .line 538
    .local v3, activePointerId:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v10

    .line 539
    .restart local v10       #pointerIndex:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v15

    .line 540
    .restart local v15       #x:F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 542
    .local v13, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v16, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mMaximumVelocity:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 543
    invoke-virtual {v13, v3}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v16

    move/from16 v0, v16

    float-to-int v14, v0

    .line 545
    .local v14, velocityX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mDownMotionX:F

    move/from16 v16, v0

    sub-float v16, v15, v16

    move/from16 v0, v16

    float-to-int v4, v0

    .line 546
    .local v4, deltaX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCurrentPage:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v9

    .line 547
    .local v9, pageWidth:I
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    int-to-float v0, v9

    move/from16 v17, v0

    const v18, 0x3ecccccd

    mul-float v17, v17, v18

    cmpl-float v16, v16, v17

    if-lez v16, :cond_9

    const/4 v7, 0x1

    .line 550
    .local v7, isSignificantMove:Z
    :goto_2
    sget v12, Lcom/baidu/launcher/utils/DefaultConfigurationHelper;->defaultLauncherSnapVelocity:I

    .line 552
    .local v12, snapVelocity:I
    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v16

    move/from16 v0, v16

    if-le v0, v12, :cond_a

    const/4 v6, 0x1

    .line 560
    .local v6, isFling:Z
    :goto_3
    const/4 v11, 0x0

    .line 561
    .local v11, returnToOriginalPage:Z
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    int-to-float v0, v9

    move/from16 v17, v0

    const v18, 0x3ea8f5c3

    mul-float v17, v17, v18

    cmpl-float v16, v16, v17

    if-lez v16, :cond_6

    int-to-float v0, v14

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->signum(F)F

    move-result v16

    int-to-float v0, v4

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->signum(F)F

    move-result v17

    cmpl-float v16, v16, v17

    if-eqz v16, :cond_6

    if-eqz v6, :cond_6

    .line 565
    const/4 v11, 0x1

    .line 575
    :cond_6
    if-eqz v7, :cond_7

    if-lez v4, :cond_7

    if-eqz v6, :cond_8

    :cond_7
    if-eqz v6, :cond_d

    if-lez v14, :cond_d

    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCurrentPage:I

    move/from16 v16, v0

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_d

    .line 584
    if-eqz v11, :cond_b

    .line 585
    move-object/from16 v0, p0

    iget v5, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCurrentPage:I

    .line 596
    .local v5, finalPage:I
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v14}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->snapToPageWithVelocity(II)V

    .line 648
    .end local v3           #activePointerId:I
    .end local v4           #deltaX:I
    .end local v5           #finalPage:I
    .end local v6           #isFling:Z
    .end local v7           #isSignificantMove:Z
    .end local v9           #pageWidth:I
    .end local v10           #pointerIndex:I
    .end local v11           #returnToOriginalPage:Z
    .end local v12           #snapVelocity:I
    .end local v13           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v14           #velocityX:I
    .end local v15           #x:F
    :goto_5
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mTouchState:I

    .line 649
    const/16 v16, -0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mActivePointerId:I

    .line 650
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->releaseVelocityTracker()V

    goto/16 :goto_1

    .line 547
    .restart local v3       #activePointerId:I
    .restart local v4       #deltaX:I
    .restart local v9       #pageWidth:I
    .restart local v10       #pointerIndex:I
    .restart local v13       #velocityTracker:Landroid/view/VelocityTracker;
    .restart local v14       #velocityX:I
    .restart local v15       #x:F
    :cond_9
    const/4 v7, 0x0

    goto :goto_2

    .line 552
    .restart local v7       #isSignificantMove:Z
    .restart local v12       #snapVelocity:I
    :cond_a
    const/4 v6, 0x0

    goto :goto_3

    .line 587
    .restart local v6       #isFling:Z
    .restart local v11       #returnToOriginalPage:Z
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCurrentPage:I

    move/from16 v16, v0

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getlowEdgePage()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_c

    .line 588
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->gethighEdgePage()I

    move-result v5

    .line 589
    .restart local v5       #finalPage:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCurrentPage:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getWidth()I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getPageCountInTab()I

    move-result v17

    mul-int v16, v16, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mScrollX:I

    move/from16 v17, v0

    add-int v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mScrollX:I

    goto :goto_4

    .line 592
    .end local v5           #finalPage:I
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getlowEdgePage()I

    move-result v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCurrentPage:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(II)I

    move-result v5

    .restart local v5       #finalPage:I
    goto :goto_4

    .line 597
    .end local v5           #finalPage:I
    :cond_d
    if-eqz v7, :cond_e

    if-gez v4, :cond_e

    if-eqz v6, :cond_f

    :cond_e
    if-eqz v6, :cond_12

    if-gez v14, :cond_12

    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCurrentPage:I

    move/from16 v16, v0

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getChildCount()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_12

    .line 606
    if-eqz v11, :cond_10

    .line 607
    move-object/from16 v0, p0

    iget v5, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCurrentPage:I

    .line 619
    .restart local v5       #finalPage:I
    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v14}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->snapToPageWithVelocity(II)V

    goto/16 :goto_5

    .line 609
    .end local v5           #finalPage:I
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCurrentPage:I

    move/from16 v16, v0

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->gethighEdgePage()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_11

    .line 610
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getlowEdgePage()I

    move-result v5

    .line 611
    .restart local v5       #finalPage:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mScrollX:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCurrentPage:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getWidth()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getPageCountInTab()I

    move-result v18

    mul-int v17, v17, v18

    sub-int v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mScrollX:I

    goto :goto_6

    .line 615
    .end local v5           #finalPage:I
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->gethighEdgePage()I

    move-result v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCurrentPage:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(II)I

    move-result v5

    .restart local v5       #finalPage:I
    goto :goto_6

    .line 621
    .end local v5           #finalPage:I
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->snapToDestination()V

    goto/16 :goto_5

    .line 623
    .end local v3           #activePointerId:I
    .end local v4           #deltaX:I
    .end local v6           #isFling:Z
    .end local v7           #isSignificantMove:Z
    .end local v9           #pageWidth:I
    .end local v10           #pointerIndex:I
    .end local v11           #returnToOriginalPage:Z
    .end local v12           #snapVelocity:I
    .end local v13           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v14           #velocityX:I
    .end local v15           #x:F
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mTouchState:I

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_15

    .line 628
    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCurrentPage:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 629
    .local v8, nextPage:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCurrentPage:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v8, v0, :cond_14

    .line 630
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->snapToPage(I)V

    goto/16 :goto_5

    .line 632
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->snapToDestination()V

    goto/16 :goto_5

    .line 634
    .end local v8           #nextPage:I
    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mTouchState:I

    move/from16 v16, v0

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_17

    .line 639
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getChildCount()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCurrentPage:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 640
    .restart local v8       #nextPage:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCurrentPage:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v8, v0, :cond_16

    .line 641
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->snapToPage(I)V

    goto/16 :goto_5

    .line 643
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->snapToDestination()V

    goto/16 :goto_5

    .line 646
    .end local v8           #nextPage:I
    :cond_17
    invoke-virtual/range {p0 .. p1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->onUnhandledTap(Landroid/view/MotionEvent;)V

    goto/16 :goto_5

    .line 654
    :pswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mTouchState:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_18

    .line 655
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->snapToDestination()V

    .line 657
    :cond_18
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mTouchState:I

    .line 658
    const/16 v16, -0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mActivePointerId:I

    .line 659
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->releaseVelocityTracker()V

    goto/16 :goto_1

    .line 663
    :pswitch_5
    invoke-virtual/range {p0 .. p1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 491
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method protected onUnhandledTap(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "ev"

    .prologue
    .line 319
    return-void
.end method

.method protected onlyOnePageInCurrentTab()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 842
    const/4 v0, 0x0

    .line 843
    .local v0, result:Z
    iget-boolean v1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->InterLoop:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getChildCount()I

    move-result v1

    if-gt v1, v2, :cond_0

    .line 844
    const/4 v0, 0x1

    .line 863
    :goto_0
    return v0

    .line 846
    :cond_0
    iget v1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCurrentTab:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 855
    :pswitch_0
    iget v1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mNumAppsPages:I

    if-gt v1, v2, :cond_2

    .line 856
    const/4 v0, 0x1

    goto :goto_0

    .line 848
    :pswitch_1
    iget v1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mNumWidgetPages:I

    if-gt v1, v2, :cond_1

    .line 849
    const/4 v0, 0x1

    goto :goto_0

    .line 851
    :cond_1
    const/4 v0, 0x0

    .line 853
    goto :goto_0

    .line 858
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 846
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected overScroll(F)V
    .locals 0
    .parameter "amount"

    .prologue
    .line 1686
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->acceleratedOverScroll(F)V

    .line 1687
    return-void
.end method

.method public pageBeginMoving()V
    .locals 1

    .prologue
    .line 1471
    invoke-super {p0}, Lcom/baidu/launcher/ui/common/DraggableViewPagger;->pageBeginMoving()V

    .line 1472
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->showScrollingIndicator(Z)V

    .line 1473
    return-void
.end method

.method public pageEndMoving()V
    .locals 1

    .prologue
    .line 1478
    invoke-super {p0}, Lcom/baidu/launcher/ui/common/DraggableViewPagger;->pageEndMoving()V

    .line 1479
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->hideScrollingIndicator(Z)V

    .line 1480
    return-void
.end method

.method public releaseWidgetCache()V
    .locals 2

    .prologue
    .line 1144
    iget v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCurrentPage:I

    iget v1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mNumAppsPages:I

    if-ge v0, v1, :cond_0

    .line 1145
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mWidgetSpacingLayout:Lcom/baidu/launcher/ui/common/PagedViewCellLayout;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->removeAllViews()V

    .line 1147
    :cond_0
    return-void
.end method

.method public removeApp(Lcom/baidu/launcher/data/item/ListAppInfo;)V
    .locals 1
    .parameter "itemInfo"

    .prologue
    .line 1788
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mApps:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 1789
    return-void
.end method

.method public removeCreateFolderCallbacks()V
    .locals 1

    .prologue
    .line 3297
    invoke-direct {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->cancelFolderHighlightDraw()V

    .line 3298
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mFolderHighlightView:Landroid/view/View;

    .line 3300
    return-void
.end method

.method public removeItem(Lcom/baidu/launcher/data/item/ListItemInfo;)V
    .locals 2
    .parameter "itemInfo"

    .prologue
    .line 2033
    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mItems:Ljava/util/Vector;

    monitor-enter v1

    .line 2034
    :try_start_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mItems:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 2035
    monitor-exit v1

    .line 2036
    return-void

    .line 2035
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeOrAddAppForItemlist()V
    .locals 9

    .prologue
    const-wide/16 v7, -0x3e8

    .line 1982
    iget-object v4, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mItems:Ljava/util/Vector;

    monitor-enter v4

    .line 1983
    :try_start_0
    iget-object v3, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mItems:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v2

    .line 1984
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 1985
    iget-object v3, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mItems:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/data/item/ListItemInfo;

    iget-wide v5, v3, Lcom/baidu/launcher/data/item/ListItemInfo;->container:J

    cmp-long v3, v5, v7

    if-eqz v3, :cond_0

    .line 1986
    iget-object v3, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mItems:Ljava/util/Vector;

    iget-object v5, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mItems:Ljava/util/Vector;

    invoke-virtual {v5, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 1987
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1989
    :cond_0
    iget-object v3, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mItems:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/data/item/ListItemInfo;

    iput v0, v3, Lcom/baidu/launcher/data/item/ListItemInfo;->index:I

    .line 1990
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1994
    :cond_1
    iget-object v3, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mApps:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v2

    .line 1996
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_3

    .line 1997
    iget-object v3, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mApps:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/data/item/ListItemInfo;

    .line 1998
    .local v1, item:Lcom/baidu/launcher/data/item/ListItemInfo;
    iget-wide v5, v1, Lcom/baidu/launcher/data/item/ListItemInfo;->container:J

    cmp-long v3, v5, v7

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mItems:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-boolean v3, v1, Lcom/baidu/launcher/data/item/ListItemInfo;->isVisible:Z

    if-eqz v3, :cond_2

    .line 2000
    iget-object v3, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mItems:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    iput v3, v1, Lcom/baidu/launcher/data/item/ListItemInfo;->index:I

    .line 2001
    iget-object v3, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mItems:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1996
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2004
    .end local v1           #item:Lcom/baidu/launcher/data/item/ListItemInfo;
    :cond_3
    monitor-exit v4

    .line 2005
    return-void

    .line 2004
    .end local v0           #i:I
    .end local v2           #size:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public resetItemIndex()V
    .locals 4

    .prologue
    .line 2008
    iget-object v3, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mItems:Ljava/util/Vector;

    monitor-enter v3

    .line 2009
    :try_start_0
    iget-object v2, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mItems:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v1

    .line 2010
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 2011
    iget-object v2, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mItems:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/data/item/ListItemInfo;

    iput v0, v2, Lcom/baidu/launcher/data/item/ListItemInfo;->index:I

    .line 2010
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2013
    :cond_0
    monitor-exit v3

    .line 2014
    return-void

    .line 2013
    .end local v0           #i:I
    .end local v1           #size:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public saveAppDisableState(Z)V
    .locals 13
    .parameter "save"

    .prologue
    .line 2360
    const/4 v5, 0x0

    .line 2361
    .local v5, isUpdateDB:Z
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 2362
    .local v7, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    if-eqz p1, :cond_9

    .line 2363
    iget-object v10, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mBackupDisableMap:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/data/item/ListItemInfo;

    .line 2364
    .local v2, info:Lcom/baidu/launcher/data/item/ListItemInfo;
    iget-boolean v11, v2, Lcom/baidu/launcher/data/item/ListItemInfo;->isDisable:Z

    iget-object v10, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mBackupDisableMap:Ljava/util/HashMap;

    invoke-virtual {v10, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eq v11, v10, :cond_4

    iget-boolean v10, v2, Lcom/baidu/launcher/data/item/ListItemInfo;->isDisable:Z

    const/4 v11, 0x1

    if-ne v10, v11, :cond_4

    .line 2365
    const/4 v10, 0x5

    iput v10, v2, Lcom/baidu/launcher/data/item/ListItemInfo;->status:I

    .line 2366
    const/16 v10, 0x14

    iput v10, v2, Lcom/baidu/launcher/data/item/ListItemInfo;->itemType:I

    move-object v6, v2

    .line 2367
    check-cast v6, Lcom/baidu/launcher/data/item/ListAppInfo;

    .line 2368
    .local v6, listAppInfo:Lcom/baidu/launcher/data/item/ListAppInfo;
    iget-object v10, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v10}, Lcom/baidu/launcher/ui/logic/ViewManager;->getWorkspace()Lcom/baidu/launcher/ui/homeview/Workspace;

    move-result-object v10

    iget-object v11, v6, Lcom/baidu/launcher/data/item/ListAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    iget v12, v2, Lcom/baidu/launcher/data/item/ListItemInfo;->status:I

    invoke-virtual {v10, v11, v12}, Lcom/baidu/launcher/ui/homeview/Workspace;->updateShortcuts(Ljava/lang/String;I)V

    .line 2369
    iget-object v10, v6, Lcom/baidu/launcher/data/item/ListAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    iget-boolean v10, v6, Lcom/baidu/launcher/data/item/ListAppInfo;->isDisable:Z

    if-nez v10, :cond_2

    const/4 v10, 0x1

    :goto_1
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v7, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2370
    iget-object v10, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mApps:Ljava/util/Vector;

    invoke-virtual {v10}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/data/item/ListAppInfo;

    .local v3, info1:Lcom/baidu/launcher/data/item/ListItemInfo;
    move-object v10, v3

    .line 2371
    check-cast v10, Lcom/baidu/launcher/data/item/ListAppInfo;

    iget-object v10, v10, Lcom/baidu/launcher/data/item/ListAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    move-object v10, v3

    check-cast v10, Lcom/baidu/launcher/data/item/ListAppInfo;

    iget-object v10, v10, Lcom/baidu/launcher/data/item/ListAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v6, Lcom/baidu/launcher/data/item/ListAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 2372
    const/4 v10, 0x1

    iput-boolean v10, v3, Lcom/baidu/launcher/data/item/ListItemInfo;->isDisable:Z

    .line 2373
    const/4 v10, 0x5

    iput v10, v3, Lcom/baidu/launcher/data/item/ListItemInfo;->status:I

    .line 2375
    iget-object v10, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/baidu/launcher/data/DisableDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/DisableDataManager;

    move-result-object v10

    invoke-virtual {v10, v3}, Lcom/baidu/launcher/data/DisableDataManager;->addItemToDatabase(Lcom/baidu/launcher/data/item/ListItemInfo;)V

    goto :goto_2

    .line 2369
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #info1:Lcom/baidu/launcher/data/item/ListItemInfo;
    :cond_2
    const/4 v10, 0x0

    goto :goto_1

    .line 2378
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_3
    new-instance v8, Landroid/os/Message;

    invoke-direct {v8}, Landroid/os/Message;-><init>()V

    .line 2379
    .local v8, msg:Landroid/os/Message;
    iput-object v6, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2380
    const/4 v10, 0x0

    iput v10, v8, Landroid/os/Message;->what:I

    .line 2381
    iget-object v10, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->disableHandler:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$DisableHandler;

    invoke-virtual {v10, v8}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$DisableHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 2383
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v6           #listAppInfo:Lcom/baidu/launcher/data/item/ListAppInfo;
    .end local v8           #msg:Landroid/os/Message;
    :cond_4
    iget-boolean v10, v2, Lcom/baidu/launcher/data/item/ListItemInfo;->isDisable:Z

    if-nez v10, :cond_0

    .line 2384
    const/4 v10, 0x4

    iput v10, v2, Lcom/baidu/launcher/data/item/ListItemInfo;->status:I

    move-object v6, v2

    .line 2385
    check-cast v6, Lcom/baidu/launcher/data/item/ListAppInfo;

    .line 2386
    .restart local v6       #listAppInfo:Lcom/baidu/launcher/data/item/ListAppInfo;
    iget-object v10, v6, Lcom/baidu/launcher/data/item/ListAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    iget-boolean v10, v6, Lcom/baidu/launcher/data/item/ListAppInfo;->isDisable:Z

    if-nez v10, :cond_6

    const/4 v10, 0x1

    :goto_3
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v7, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2388
    iget-object v10, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/baidu/launcher/data/DisableDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/DisableDataManager;

    move-result-object v10

    invoke-virtual {v10, v2}, Lcom/baidu/launcher/data/DisableDataManager;->deleteAndUpdateDisableFromDB(Lcom/baidu/launcher/data/item/ListItemInfo;)V

    .line 2389
    new-instance v8, Landroid/os/Message;

    invoke-direct {v8}, Landroid/os/Message;-><init>()V

    .line 2390
    .restart local v8       #msg:Landroid/os/Message;
    iput-object v6, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2391
    const/4 v10, 0x0

    iput v10, v8, Landroid/os/Message;->what:I

    .line 2392
    iget-object v10, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->disableHandler:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$DisableHandler;

    invoke-virtual {v10, v8}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$DisableHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2394
    iget-object v10, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mApps:Ljava/util/Vector;

    invoke-virtual {v10}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_5
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/data/item/ListAppInfo;

    .restart local v3       #info1:Lcom/baidu/launcher/data/item/ListItemInfo;
    move-object v10, v3

    .line 2395
    check-cast v10, Lcom/baidu/launcher/data/item/ListAppInfo;

    iget-object v10, v10, Lcom/baidu/launcher/data/item/ListAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    move-object v10, v3

    check-cast v10, Lcom/baidu/launcher/data/item/ListAppInfo;

    iget-object v10, v10, Lcom/baidu/launcher/data/item/ListAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v6, Lcom/baidu/launcher/data/item/ListAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 2396
    const/4 v10, 0x0

    iput-boolean v10, v3, Lcom/baidu/launcher/data/item/ListItemInfo;->isDisable:Z

    .line 2397
    const/4 v10, 0x4

    iput v10, v3, Lcom/baidu/launcher/data/item/ListItemInfo;->status:I

    .line 2398
    const/16 v10, 0xa

    iput v10, v3, Lcom/baidu/launcher/data/item/ListItemInfo;->itemType:I

    .line 2400
    iget-object v10, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/baidu/launcher/data/DisableDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/DisableDataManager;

    move-result-object v10

    invoke-virtual {v10, v2}, Lcom/baidu/launcher/data/DisableDataManager;->deleteAndUpdateDisableFromDB(Lcom/baidu/launcher/data/item/ListItemInfo;)V

    .line 2401
    new-instance v9, Landroid/os/Message;

    invoke-direct {v9}, Landroid/os/Message;-><init>()V

    .line 2402
    .local v9, msg1:Landroid/os/Message;
    iput-object v3, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2403
    const/4 v10, 0x0

    iput v10, v9, Landroid/os/Message;->what:I

    .line 2404
    iget-object v10, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->disableHandler:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$DisableHandler;

    invoke-virtual {v10, v9}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$DisableHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_4

    .line 2386
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #info1:Lcom/baidu/launcher/data/item/ListItemInfo;
    .end local v8           #msg:Landroid/os/Message;
    .end local v9           #msg1:Landroid/os/Message;
    :cond_6
    const/4 v10, 0x0

    goto :goto_3

    .line 2410
    .end local v2           #info:Lcom/baidu/launcher/data/item/ListItemInfo;
    .end local v6           #listAppInfo:Lcom/baidu/launcher/data/item/ListAppInfo;
    :cond_7
    new-instance v4, Landroid/content/Intent;

    const-string v10, "com.baidu.appdisable.action.PACKAGES_DISABLE"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2411
    .local v4, intent:Landroid/content/Intent;
    const-string v10, "PACKAGES_DISABLE_MAP"

    invoke-virtual {v4, v10, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2412
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2413
    iget-object v10, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$4;

    invoke-direct {v11, p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$4;-><init>(Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2431
    .end local v4           #intent:Landroid/content/Intent;
    :cond_8
    return-void

    .line 2421
    :cond_9
    iget-object v10, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mBackupDisableMap:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/data/item/ListItemInfo;

    .line 2422
    .restart local v2       #info:Lcom/baidu/launcher/data/item/ListItemInfo;
    iget-object v10, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mBackupDisableMap:Ljava/util/HashMap;

    invoke-virtual {v10, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    iput-boolean v10, v2, Lcom/baidu/launcher/data/item/ListItemInfo;->isDisable:Z

    .line 2423
    iget-boolean v10, v2, Lcom/baidu/launcher/data/item/ListItemInfo;->isDisable:Z

    if-eqz v10, :cond_a

    .line 2424
    const/4 v10, 0x5

    iput v10, v2, Lcom/baidu/launcher/data/item/ListItemInfo;->status:I

    goto :goto_5

    .line 2426
    :cond_a
    const/4 v10, 0x4

    iput v10, v2, Lcom/baidu/launcher/data/item/ListItemInfo;->status:I

    goto :goto_5
.end method

.method public saveAppVisibleState(Z)V
    .locals 8
    .parameter "save"

    .prologue
    .line 2310
    const/4 v3, 0x0

    .line 2311
    .local v3, isUpdateDB:Z
    if-eqz p1, :cond_1

    .line 2312
    iget-object v5, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mBackupHideMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/data/item/ListItemInfo;

    .line 2313
    .local v2, info:Lcom/baidu/launcher/data/item/ListItemInfo;
    iget-boolean v6, v2, Lcom/baidu/launcher/data/item/ListItemInfo;->isVisible:Z

    iget-object v5, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mBackupHideMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eq v6, v5, :cond_0

    .line 2314
    iget-object v5, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/baidu/launcher/data/AppsDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/AppsDataManager;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/baidu/launcher/data/AppsDataManager;->updateItemInDatabase(Lcom/baidu/launcher/data/item/ListItemInfo;)V

    .line 2316
    const/4 v3, 0x1

    .line 2317
    iget-boolean v5, v2, Lcom/baidu/launcher/data/item/ListItemInfo;->isDisable:Z

    if-eqz v5, :cond_0

    .line 2318
    iget-object v5, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/baidu/launcher/data/DisableDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/DisableDataManager;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/baidu/launcher/data/DisableDataManager;->updateItemVisableInDB(Lcom/baidu/launcher/data/item/ListItemInfo;)V

    goto :goto_0

    .line 2323
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #info:Lcom/baidu/launcher/data/item/ListItemInfo;
    :cond_1
    iget-object v5, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mBackupHideMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/data/item/ListItemInfo;

    .line 2324
    .restart local v2       #info:Lcom/baidu/launcher/data/item/ListItemInfo;
    iget-object v5, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mBackupHideMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, v2, Lcom/baidu/launcher/data/item/ListItemInfo;->isVisible:Z

    goto :goto_1

    .line 2329
    .end local v2           #info:Lcom/baidu/launcher/data/item/ListItemInfo;
    :cond_2
    iget-object v6, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mItems:Ljava/util/Vector;

    monitor-enter v6

    .line 2330
    :try_start_0
    iget-object v5, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mItems:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v4

    .line 2331
    .local v4, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    if-ge v0, v4, :cond_5

    .line 2332
    iget-object v5, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mItems:Ljava/util/Vector;

    invoke-virtual {v5, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/data/item/ListItemInfo;

    .line 2333
    .restart local v2       #info:Lcom/baidu/launcher/data/item/ListItemInfo;
    iget-boolean v5, v2, Lcom/baidu/launcher/data/item/ListItemInfo;->isVisible:Z

    if-nez v5, :cond_3

    .line 2334
    iget-object v5, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mItems:Ljava/util/Vector;

    invoke-virtual {v5, v0}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 2335
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 2337
    :cond_3
    instance-of v5, v2, Lcom/baidu/launcher/data/item/ListFolderInfo;

    if-eqz v5, :cond_4

    .line 2338
    check-cast v2, Lcom/baidu/launcher/data/item/ListFolderInfo;

    .end local v2           #info:Lcom/baidu/launcher/data/item/ListItemInfo;
    invoke-virtual {v2}, Lcom/baidu/launcher/data/item/ListFolderInfo;->AdjustContetsForDisplay()V

    .line 2340
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2344
    :cond_5
    iget-object v5, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mBackupPresetApp:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/data/item/ListAppInfo;

    .line 2345
    .restart local v2       #info:Lcom/baidu/launcher/data/item/ListItemInfo;
    iget v5, v2, Lcom/baidu/launcher/data/item/ListItemInfo;->index:I

    if-le v5, v4, :cond_6

    .line 2346
    iget-object v5, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mItems:Ljava/util/Vector;

    invoke-virtual {v5, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 2351
    .end local v0           #i:I
    .end local v2           #info:Lcom/baidu/launcher/data/item/ListItemInfo;
    .end local v4           #size:I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 2348
    .restart local v0       #i:I
    .restart local v2       #info:Lcom/baidu/launcher/data/item/ListItemInfo;
    .restart local v4       #size:I
    :cond_6
    :try_start_1
    iget-object v5, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mItems:Ljava/util/Vector;

    iget v7, v2, Lcom/baidu/launcher/data/item/ListItemInfo;->index:I

    invoke-virtual {v5, v7, v2}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    goto :goto_3

    .line 2351
    .end local v2           #info:Lcom/baidu/launcher/data/item/ListItemInfo;
    :cond_7
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2352
    iget-object v5, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mBackupPresetApp:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 2353
    if-eqz v3, :cond_8

    .line 2354
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->updateAllItemToDB()V

    .line 2358
    :goto_4
    return-void

    .line 2356
    :cond_8
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->resetItemIndex()V

    goto :goto_4
.end method

.method public screenScrolled(I)V
    .locals 8
    .parameter "screenCenter"

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x0

    .line 1486
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1487
    iget v5, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mScrollX:I

    int-to-float v5, v5

    invoke-virtual {p0, v5}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->updateScrollingIndicatorPosition(F)V

    .line 1488
    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->screenScrolledWithICE(I)V

    .line 1514
    :cond_0
    :goto_0
    return-void

    .line 1490
    :cond_1
    iget v5, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mOverScrollX:I

    if-ltz v5, :cond_2

    iget v5, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mOverScrollX:I

    iget v6, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mMaxScrollX:I

    if-le v5, v6, :cond_5

    :cond_2
    sget-boolean v5, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->app_list_loop:Z

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getChildCount()I

    move-result v5

    const/4 v6, 0x1

    if-gt v5, v6, :cond_5

    .line 1492
    :cond_3
    iget v5, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mOverScrollX:I

    if-gez v5, :cond_4

    .line 1493
    .local v0, index:I
    :goto_1
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;

    .line 1494
    .local v2, pcl:Lcom/baidu/launcher/ui/common/PagedViewCellLayout;
    if-eqz v2, :cond_0

    .line 1496
    invoke-virtual {p0, p1, v2, v0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getScrollProgress(ILandroid/view/View;I)F

    move-result v4

    .line 1498
    .local v4, scrollProgress:F
    neg-float v5, v4

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    sget v6, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->TRANSITION_MAX_OVERSCROLL:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    int-to-float v5, v5

    iput v5, v2, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->translationXForLowApi:F

    .line 1500
    iget v5, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mScrollX:I

    int-to-float v5, v5

    iget v6, v2, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->translationXForLowApi:F

    sub-float/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->updateScrollingIndicatorPosition(F)V

    goto :goto_0

    .line 1492
    .end local v0           #index:I
    .end local v2           #pcl:Lcom/baidu/launcher/ui/common/PagedViewCellLayout;
    .end local v4           #scrollProgress:F
    :cond_4
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getChildCount()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    goto :goto_1

    .line 1503
    :cond_5
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;

    .line 1504
    .local v1, left:Lcom/baidu/launcher/ui/common/PagedViewCellLayout;
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v5}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;

    .line 1505
    .local v3, right:Lcom/baidu/launcher/ui/common/PagedViewCellLayout;
    if-eqz v1, :cond_6

    .line 1506
    iput v7, v1, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->translationXForLowApi:F

    .line 1508
    :cond_6
    if-eqz v3, :cond_7

    .line 1509
    iput v7, v3, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->translationXForLowApi:F

    .line 1511
    :cond_7
    iget v5, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mScrollX:I

    int-to-float v5, v5

    invoke-virtual {p0, v5}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->updateScrollingIndicatorPosition(F)V

    goto :goto_0
.end method

.method public scroll()Z
    .locals 1

    .prologue
    .line 2442
    const/4 v0, 0x1

    return v0
.end method

.method public scrollLeft()V
    .locals 1

    .prologue
    .line 2447
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2448
    iget v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCurrentPage:I

    if-lez v0, :cond_0

    .line 2449
    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mSnapDir:I

    .line 2451
    :cond_0
    invoke-super {p0}, Lcom/baidu/launcher/ui/common/DraggableViewPagger;->scrollLeft()V

    .line 2454
    :cond_1
    return-void
.end method

.method public scrollRight()V
    .locals 2

    .prologue
    .line 2458
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2459
    iget v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 2460
    const/4 v0, 0x2

    iput v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mSnapDir:I

    .line 2462
    :cond_0
    invoke-super {p0}, Lcom/baidu/launcher/ui/common/DraggableViewPagger;->scrollRight()V

    .line 2465
    :cond_1
    return-void
.end method

.method public setApps(Ljava/util/Vector;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/baidu/launcher/data/item/ListAppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1730
    .local p1, list:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/baidu/launcher/data/item/ListAppInfo;>;"
    iput-object p1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mApps:Ljava/util/Vector;

    .line 1731
    return-void
.end method

.method public setCanSaveData(Z)V
    .locals 0
    .parameter "cansave"

    .prologue
    .line 3472
    sput-boolean p1, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCanSaveData:Z

    .line 3473
    return-void
.end method

.method public setCurrentPage(I)V
    .locals 7
    .parameter "currentPage"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 330
    iget v1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCurrentPage:I

    .line 331
    .local v1, oldPage:I
    invoke-super {p0, p1}, Lcom/baidu/launcher/ui/common/DraggableViewPagger;->setCurrentPage(I)V

    .line 332
    iget v3, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCurrentPage:I

    if-ne v1, v3, :cond_1

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 334
    :cond_1
    iget-object v3, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mIndicator:Lcom/baidu/launcher/ui/applistview/AllAppsIndicatorNew;

    iget v4, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCurrentPage:I

    invoke-virtual {v3, v4}, Lcom/baidu/launcher/ui/applistview/AllAppsIndicatorNew;->setCurrentScreen(I)V

    .line 335
    iget v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mNumAppsPages:I

    .line 336
    .local v0, appEdge:I
    iget v3, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mNumAppsPages:I

    iget v4, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mNumWidgetPages:I

    add-int v2, v3, v4

    .line 337
    .local v2, widgetEdge:I
    if-ge v1, v0, :cond_2

    iget v3, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCurrentPage:I

    if-lt v3, v0, :cond_2

    .line 338
    iget-object v3, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mContainer:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$PagedViewContainer;

    invoke-interface {v3, v6}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$PagedViewContainer;->onPageTypeChanged(I)Z

    .line 339
    iput v6, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCurrentTab:I

    goto :goto_0

    .line 340
    :cond_2
    if-lt v1, v0, :cond_0

    iget v3, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCurrentPage:I

    if-ge v3, v0, :cond_0

    .line 341
    iget-object v3, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mContainer:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$PagedViewContainer;

    invoke-interface {v3, v5}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$PagedViewContainer;->onPageTypeChanged(I)Z

    .line 342
    iput v5, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCurrentTab:I

    goto :goto_0
.end method

.method public setDissolutionFolder()V
    .locals 1

    .prologue
    .line 3480
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mDissolutionFolder:Z

    .line 3481
    return-void
.end method

.method public setDragView(Landroid/view/View;)V
    .locals 0
    .parameter "draggedView"

    .prologue
    .line 2472
    iput-object p1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mDraggedView:Landroid/view/View;

    .line 2473
    return-void
.end method

.method public setIndicator(Lcom/baidu/launcher/ui/applistview/AllAppsIndicatorNew;)V
    .locals 0
    .parameter "indicator"

    .prologue
    .line 3562
    iput-object p1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mIndicator:Lcom/baidu/launcher/ui/applistview/AllAppsIndicatorNew;

    .line 3590
    return-void
.end method

.method public setInterLoop(Z)V
    .locals 0
    .parameter "isLoop"

    .prologue
    .line 3557
    iput-boolean p1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->InterLoop:Z

    .line 3558
    return-void
.end method

.method public setItemsList(Z)V
    .locals 11
    .parameter "isHideMode"

    .prologue
    const/4 v10, 0x1

    .line 1831
    sget-object v5, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1835
    if-eqz p1, :cond_0

    .line 1836
    :try_start_0
    invoke-direct {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->restoreAppOnHideMode()V

    .line 1893
    :goto_0
    monitor-exit v5

    .line 1894
    :goto_1
    return-void

    .line 1838
    :cond_0
    iget-object v4, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mItems:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    const/4 v6, 0x5

    if-le v4, v6, :cond_1

    .line 1839
    monitor-exit v5

    goto :goto_1

    .line 1893
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1840
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mItems:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->clear()V

    .line 1841
    iget-object v4, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mApps:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v3

    .line 1842
    .local v3, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    if-ge v0, v3, :cond_3

    .line 1843
    iget-object v4, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mApps:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/data/item/ListAppInfo;

    .line 1844
    .local v1, listAppInfo:Lcom/baidu/launcher/data/item/ListAppInfo;
    iget-wide v6, v1, Lcom/baidu/launcher/data/item/ListAppInfo;->container:J

    const-wide/16 v8, -0x3e8

    cmp-long v4, v6, v8

    if-nez v4, :cond_2

    iget-boolean v4, v1, Lcom/baidu/launcher/data/item/ListAppInfo;->isVisible:Z

    if-eqz v4, :cond_2

    .line 1846
    iget-object v4, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mItems:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1842
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1850
    .end local v1           #listAppInfo:Lcom/baidu/launcher/data/item/ListAppInfo;
    :cond_3
    iget-object v4, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mFolders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1851
    const/4 v0, 0x0

    :goto_3
    iget-object v4, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mFolders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_5

    .line 1852
    iget-object v4, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mFolders:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/data/item/ListFolderInfo;

    .line 1853
    .local v2, listFolderInfo:Lcom/baidu/launcher/data/item/ListFolderInfo;
    iget-boolean v4, v2, Lcom/baidu/launcher/data/item/ListFolderInfo;->isVisible:Z

    if-eqz v4, :cond_4

    .line 1854
    iget-object v4, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mItems:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1851
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1857
    .end local v2           #listFolderInfo:Lcom/baidu/launcher/data/item/ListFolderInfo;
    :cond_5
    sget v4, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->sortType:I

    if-ne v4, v10, :cond_6

    .line 1858
    iget-object v6, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mItems:Ljava/util/Vector;

    monitor-enter v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1860
    :try_start_2
    iget-object v4, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mItems:Ljava/util/Vector;

    iget-object v7, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-static {v7}, Lcom/baidu/launcher/data/AppsDataManager;->getComparator(Landroid/content/pm/PackageManager;)Ljava/util/Comparator;

    move-result-object v7

    invoke-static {v4, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1867
    :goto_4
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1868
    const/4 v4, 0x1

    :try_start_4
    invoke-virtual {p0, v4}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->setCanSaveData(Z)V

    .line 1869
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->updateItemToDB()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 1867
    :catchall_1
    move-exception v4

    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v4

    .line 1870
    :cond_6
    sget v4, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->sortType:I

    if-nez v4, :cond_7

    .line 1871
    iget-object v6, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mItems:Ljava/util/Vector;

    monitor-enter v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1872
    :try_start_7
    iget-object v4, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mItems:Ljava/util/Vector;

    sget-object v7, Lcom/baidu/launcher/data/AppsDataManager;->APP_NAME_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v4, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1874
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1875
    const/4 v4, 0x1

    :try_start_8
    invoke-virtual {p0, v4}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->setCanSaveData(Z)V

    .line 1876
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->updateItemToDB()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 1874
    :catchall_2
    move-exception v4

    :try_start_9
    monitor-exit v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v4

    .line 1878
    :cond_7
    sget-boolean v4, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->firstLunch:Z

    if-eqz v4, :cond_8

    iget-boolean v4, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mFistdisplayForTopApp:Z

    if-eqz v4, :cond_8

    .line 1880
    iget-object v6, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mItems:Ljava/util/Vector;

    monitor-enter v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1881
    :try_start_b
    iget-object v4, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mItems:Ljava/util/Vector;

    sget-object v7, Lcom/baidu/launcher/data/AppsDataManager;->APP_DEFAULT_CONFIGURATION_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v4, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1884
    monitor-exit v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 1885
    const/4 v4, 0x0

    :try_start_c
    iput-boolean v4, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mFistdisplayForTopApp:Z

    .line 1886
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->setCanSaveData(Z)V

    .line 1887
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->updateItemToDB()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_0

    .line 1884
    :catchall_3
    move-exception v4

    :try_start_d
    monitor-exit v6
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :try_start_e
    throw v4

    .line 1889
    :cond_8
    iget-object v4, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mItems:Ljava/util/Vector;

    new-instance v6, Lcom/baidu/launcher/data/AppsDataManager$InfoComparator;

    invoke-direct {v6}, Lcom/baidu/launcher/data/AppsDataManager$InfoComparator;-><init>()V

    invoke-static {v4, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_0

    .line 1864
    :catch_0
    move-exception v4

    goto :goto_4
.end method

.method public setLoopScrool(Z)V
    .locals 0
    .parameter "isLoop"

    .prologue
    .line 3553
    iput-boolean p1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mIsLoopScroll:Z

    .line 3554
    return-void
.end method

.method public setViewManager(Lcom/baidu/launcher/ui/logic/ViewManager;)V
    .locals 0
    .parameter "viewManager"

    .prologue
    .line 322
    iput-object p1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    .line 323
    return-void
.end method

.method public setup(Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$PagedViewContainer;)V
    .locals 0
    .parameter "container"

    .prologue
    .line 326
    iput-object p1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mContainer:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$PagedViewContainer;

    .line 327
    return-void
.end method

.method shouldAppDrawBlur()Z
    .locals 1

    .prologue
    .line 1418
    const/4 v0, 0x1

    return v0
.end method

.method public showDraggedView(Landroid/view/View;Z)V
    .locals 11
    .parameter "view"
    .parameter "animation"

    .prologue
    const/high16 v6, 0x3f00

    const v1, 0x3e99999a

    const/4 v5, 0x1

    const/high16 v2, 0x3f80

    .line 3430
    if-eqz p1, :cond_0

    .line 3431
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3432
    if-eqz p2, :cond_1

    .line 3433
    new-instance v10, Landroid/view/animation/AnimationSet;

    invoke-direct {v10, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 3434
    .local v10, animSet:Landroid/view/animation/AnimationSet;
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    invoke-direct {v9, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 3435
    .local v9, animAlpha:Landroid/view/animation/AlphaAnimation;
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 3438
    .local v0, animScale:Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 3439
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 3440
    const-wide/16 v1, 0x1f4

    invoke-virtual {v10, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 3441
    invoke-virtual {p1, v10}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3446
    .end local v0           #animScale:Landroid/view/animation/ScaleAnimation;
    .end local v9           #animAlpha:Landroid/view/animation/AlphaAnimation;
    .end local v10           #animSet:Landroid/view/animation/AnimationSet;
    :cond_0
    :goto_0
    return-void

    .line 3443
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    goto :goto_0
.end method

.method showFolderAccept(I)V
    .locals 3
    .parameter "childIndex"

    .prologue
    .line 3320
    iget-boolean v1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCanShowFolderAccept:Z

    if-nez v1, :cond_0

    .line 3334
    :goto_0
    return-void

    .line 3322
    :cond_0
    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getViewByIndex(I)Landroid/view/View;

    move-result-object v0

    .line 3323
    .local v0, view:Landroid/view/View;
    instance-of v1, v0, Lcom/baidu/launcher/ui/common/BubbleTextView;

    if-eqz v1, :cond_2

    .line 3324
    iput-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mFolderHighlightView:Landroid/view/View;

    .line 3325
    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mLastOverChild:Landroid/view/View;

    iget-object v2, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mFolderHighlightView:Landroid/view/View;

    if-eq v1, v2, :cond_2

    .line 3326
    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mLastOverChild:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 3327
    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mLastOverChild:Landroid/view/View;

    check-cast v1, Lcom/baidu/launcher/ui/common/BubbleTextView;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/common/BubbleTextView;->cancelFolderHighlight()V

    .line 3329
    :cond_1
    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mFolderHighlightView:Landroid/view/View;

    check-cast v1, Lcom/baidu/launcher/ui/common/BubbleTextView;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/common/BubbleTextView;->drawFolderHighlight()V

    .line 3330
    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mFolderHighlightView:Landroid/view/View;

    iput-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mLastOverChild:Landroid/view/View;

    .line 3333
    :cond_2
    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mFolderHighlightView:Landroid/view/View;

    iput-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCreateFolderView:Landroid/view/View;

    goto :goto_0
.end method

.method public showOnDropFailureAnimation(Lcom/baidu/launcher/ui/dragdrop/DragView;Ljava/lang/Object;)V
    .locals 12
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    const/4 v1, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 3211
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mAnimator:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 3212
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mAnimator:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->end()V

    .line 3215
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mDraggedView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 3216
    new-array v9, v1, [I

    .line 3217
    .local v9, loc:[I
    new-array v3, v1, [I

    .line 3218
    .local v3, toPoints:[I
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/logic/ViewManager;->getStatusBarHeight()I

    move-result v0

    neg-int v8, v0

    .line 3219
    .local v8, delta:I
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mDraggedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v11, v0

    check-cast v11, Landroid/view/View;

    .line 3220
    .local v11, parentView:Landroid/view/View;
    if-nez v11, :cond_2

    .line 3242
    .end local v3           #toPoints:[I
    .end local v8           #delta:I
    .end local v9           #loc:[I
    .end local v11           #parentView:Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 3223
    .restart local v3       #toPoints:[I
    .restart local v8       #delta:I
    .restart local v9       #loc:[I
    .restart local v11       #parentView:Landroid/view/View;
    :cond_2
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getSnapDir()I

    move-result v0

    if-eqz v0, :cond_3

    .line 3224
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mDraggedView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 3227
    :cond_3
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mDraggedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .line 3228
    .local v10, lp:Landroid/view/ViewGroup$LayoutParams;
    instance-of v0, v10, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;

    if-eqz v0, :cond_1

    .line 3229
    invoke-virtual {v11, v9}, Landroid/view/View;->getLocationInWindow([I)V

    .line 3230
    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mPosIndex:[[I

    move-object v0, v10

    check-cast v0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;

    iget v0, v0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->itemIndex:I

    aget-object v0, v1, v0

    aget v0, v0, v2

    aget v1, v9, v2

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x4

    aput v0, v3, v2

    .line 3232
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mPosIndex:[[I

    check-cast v10, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;

    .end local v10           #lp:Landroid/view/ViewGroup$LayoutParams;
    iget v1, v10, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->itemIndex:I

    aget-object v0, v0, v1

    aget v0, v0, v5

    aget v1, v9, v5

    add-int/2addr v0, v1

    add-int/2addr v0, v8

    aput v0, v3, v5

    .line 3238
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/logic/ViewManager;->getDragLayer()Lcom/baidu/launcher/ui/dragdrop/DragLayer;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mDraggedView:Landroid/view/View;

    const/high16 v7, 0x3f80

    move-object v1, p1

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v8}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->animateViewIntoPosition(Landroid/view/View;Landroid/view/View;[ILcom/baidu/launcher/ui/dragdrop/DragSource;Ljava/lang/Object;Ljava/lang/Runnable;FI)V

    goto :goto_0
.end method

.method public showOnDropFailureAnimation(Ljava/lang/Object;[I)Z
    .locals 8
    .parameter "mDragInfo"
    .parameter "mOriginatorXY"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 3166
    instance-of v3, p1, Lcom/baidu/launcher/data/item/ListAppInfo;

    if-eqz v3, :cond_1

    .line 3167
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 3168
    .local v2, view:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 3169
    invoke-virtual {v2, p2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 3170
    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 3171
    check-cast v1, Landroid/widget/TextView;

    .line 3172
    .local v1, tv:Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aget-object v0, v3, v6

    .line 3175
    .local v0, d:Landroid/graphics/drawable/Drawable;
    aget v3, p2, v6

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    aput v3, p2, v6

    .line 3176
    aget v4, p2, v6

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/ui/applistview/AppListView;

    invoke-virtual {v3}, Lcom/baidu/launcher/ui/applistview/AppListView;->getDragController()Lcom/baidu/launcher/ui/dragdrop/DragController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/launcher/ui/dragdrop/DragController;->getDragView()Lcom/baidu/launcher/ui/dragdrop/DragView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/launcher/ui/dragdrop/DragView;->getHeight()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sub-int/2addr v3, v5

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v4, v3

    aput v3, p2, v6

    .line 3180
    aget v4, p2, v7

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/ui/applistview/AppListView;

    invoke-virtual {v3}, Lcom/baidu/launcher/ui/applistview/AppListView;->getDragController()Lcom/baidu/launcher/ui/dragdrop/DragController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/launcher/ui/dragdrop/DragController;->getDragView()Lcom/baidu/launcher/ui/dragdrop/DragView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/launcher/ui/dragdrop/DragView;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v3, v5

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v4, v3

    aput v3, p2, v7

    .line 3206
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    .end local v1           #tv:Landroid/widget/TextView;
    .end local v2           #view:Landroid/view/View;
    :cond_0
    :goto_0
    aget v3, p2, v6

    iget-object v4, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v4}, Lcom/baidu/launcher/ui/logic/ViewManager;->getStatusBarHeight()I

    move-result v4

    sub-int/2addr v3, v4

    aput v3, p2, v6

    .line 3207
    return v6

    .line 3185
    :cond_1
    instance-of v3, p1, Landroid/view/View;

    if-eqz v3, :cond_0

    move-object v2, p1

    .line 3186
    check-cast v2, Landroid/view/View;

    .line 3187
    .restart local v2       #view:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 3188
    invoke-virtual {v2, p2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 3189
    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 3190
    check-cast v1, Landroid/widget/TextView;

    .line 3191
    .restart local v1       #tv:Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aget-object v0, v3, v6

    .line 3194
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    aget v3, p2, v6

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    aput v3, p2, v6

    .line 3195
    aget v4, p2, v6

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/ui/applistview/AppListView;

    invoke-virtual {v3}, Lcom/baidu/launcher/ui/applistview/AppListView;->getDragController()Lcom/baidu/launcher/ui/dragdrop/DragController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/launcher/ui/dragdrop/DragController;->getDragView()Lcom/baidu/launcher/ui/dragdrop/DragView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/launcher/ui/dragdrop/DragView;->getHeight()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sub-int/2addr v3, v5

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v4, v3

    aput v3, p2, v6

    .line 3199
    aget v4, p2, v7

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/ui/applistview/AppListView;

    invoke-virtual {v3}, Lcom/baidu/launcher/ui/applistview/AppListView;->getDragController()Lcom/baidu/launcher/ui/dragdrop/DragController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/launcher/ui/dragdrop/DragController;->getDragView()Lcom/baidu/launcher/ui/dragdrop/DragView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/launcher/ui/dragdrop/DragView;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v3, v5

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v4, v3

    aput v3, p2, v7

    goto :goto_0
.end method

.method public showPages(IZ)V
    .locals 2
    .parameter "type"
    .parameter "animation"

    .prologue
    .line 2191
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    iget v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mNumAppsPages:I

    .line 2192
    .local v0, page:I
    :goto_0
    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2193
    const/4 v1, -0x1

    iput v1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mNextPage:I

    .line 2194
    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2195
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->pageEndMoving()V

    .line 2199
    :cond_0
    new-instance v1, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$1;

    invoke-direct {v1, p0, v0, p2}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$1;-><init>(Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;IZ)V

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->post(Ljava/lang/Runnable;)Z

    .line 2206
    return-void

    .line 2191
    .end local v0           #page:I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showScrollingIndicator(Z)V
    .locals 2
    .parameter "immediately"

    .prologue
    .line 2132
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getPageCountInTab()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2141
    :cond_0
    :goto_0
    return-void

    .line 2135
    :cond_1
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getScrollingIndicator()Lcom/baidu/launcher/ui/applistview/AllAppsIndicatorNew;

    .line 2136
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mIndicator:Lcom/baidu/launcher/ui/applistview/AllAppsIndicatorNew;

    if-eqz v0, :cond_0

    .line 2138
    iget v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mScrollX:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->updateScrollingIndicatorPosition(F)V

    goto :goto_0
.end method

.method protected snapToPage(III)V
    .locals 6
    .parameter "whichPage"
    .parameter "delta"
    .parameter "duration"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 351
    iget v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mNumAppsPages:I

    .line 352
    .local v0, appEdge:I
    iget v2, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mNumAppsPages:I

    iget v3, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mNumWidgetPages:I

    add-int v1, v2, v3

    .line 353
    .local v1, widgetEdge:I
    if-lt p1, v0, :cond_1

    iget v2, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCurrentPage:I

    if-ge v2, v0, :cond_1

    .line 354
    iget-object v2, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mContainer:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$PagedViewContainer;

    invoke-interface {v2, v5}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$PagedViewContainer;->onPageTypeChanged(I)Z

    .line 355
    iput v5, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCurrentTab:I

    .line 360
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/baidu/launcher/ui/common/DraggableViewPagger;->snapToPage(III)V

    .line 361
    return-void

    .line 356
    :cond_1
    if-ge p1, v0, :cond_0

    iget v2, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCurrentPage:I

    if-lt v2, v0, :cond_0

    .line 357
    iget-object v2, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mContainer:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$PagedViewContainer;

    invoke-interface {v2, v4}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$PagedViewContainer;->onPageTypeChanged(I)Z

    .line 358
    iput v4, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCurrentTab:I

    goto :goto_0
.end method

.method protected snapToPageWithVelocity(II)V
    .locals 1
    .parameter "whichPage"
    .parameter "velocity"

    .prologue
    .line 3549
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mIndicator:Lcom/baidu/launcher/ui/applistview/AllAppsIndicatorNew;

    invoke-virtual {v0, p1}, Lcom/baidu/launcher/ui/applistview/AllAppsIndicatorNew;->setCurrentScreen(I)V

    .line 3550
    invoke-super {p0, p1, p2}, Lcom/baidu/launcher/ui/common/DraggableViewPagger;->snapToPageWithVelocity(II)V

    .line 3551
    return-void
.end method

.method public supportsFlingToDelete()Z
    .locals 1

    .prologue
    .line 3247
    const/4 v0, 0x0

    return v0
.end method

.method public switchAppBetweenPage(I)V
    .locals 14
    .parameter "prePageIndex"

    .prologue
    const/4 v13, 0x0

    .line 2488
    iget v10, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCurrentPage:I

    if-eq p1, v10, :cond_2

    .line 2489
    iget v10, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCellCountX:I

    iget v11, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCellCountY:I

    mul-int v0, v10, v11

    .line 2494
    .local v0, appCountOnPage:I
    iget v10, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCurrentPage:I

    invoke-virtual {p0, v10}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;

    invoke-virtual {v10}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->getChildrenLayout()Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;

    move-result-object v2

    .line 2496
    .local v2, currLayout:Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;
    iget v10, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCurrentPage:I

    mul-int v4, v10, v0

    .line 2497
    .local v4, firstItemOnpage:I
    const/4 v5, -0x1

    .line 2498
    .local v5, lastitemIndex:I
    iget v10, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCurrentPage:I

    sub-int v6, p1, v10

    .line 2499
    .local v6, pageOfsetCount:I
    iget-object v10, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mDraggedView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;

    .line 2501
    .local v8, preLp:Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;
    iget v10, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCurrentPage:I

    if-le p1, v10, :cond_3

    .line 2502
    iget v10, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mDragMoveIndex:I

    iget v11, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCurrentPage:I

    add-int/2addr v11, v6

    mul-int/2addr v11, v0

    add-int v5, v10, v11

    .line 2504
    add-int/lit8 v10, v0, -0x1

    invoke-virtual {v2, v10}, Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2505
    .local v1, currItemView:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;

    .line 2507
    .local v3, currLp:Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;
    invoke-virtual {v2, v1}, Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;->removeView(Landroid/view/View;)V

    .line 2508
    iget v10, v8, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->itemIndex:I

    iget v11, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCellCountX:I

    rem-int/2addr v10, v11

    iput v10, v8, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->cellX:I

    .line 2509
    iget v10, v8, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->itemIndex:I

    iget v11, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCellCountX:I

    div-int/2addr v10, v11

    iput v10, v8, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->cellY:I

    .line 2510
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;

    invoke-virtual {v10}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->getChildrenLayout()Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;

    move-result-object v7

    .line 2512
    .local v7, preLayout:Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;->getChildCount()I

    move-result v10

    iget v11, v8, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->itemIndex:I

    if-le v10, v11, :cond_0

    .line 2514
    iget-object v10, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mDraggedView:Landroid/view/View;

    invoke-virtual {v7, v10}, Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;->removeView(Landroid/view/View;)V

    .line 2515
    iget v10, v8, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->itemIndex:I

    invoke-virtual {v7, v1, v10, v8}, Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2517
    :cond_0
    iget-object v10, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mDraggedView:Landroid/view/View;

    iget v11, v3, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->itemIndex:I

    invoke-virtual {v2, v10, v11, v3}, Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2518
    add-int/lit8 v10, v0, -0x1

    iput v10, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mDragMoveIndex:I

    .line 2519
    iget-object v10, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mItems:Ljava/util/Vector;

    invoke-virtual {v10, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/baidu/launcher/data/item/ListItemInfo;

    .line 2520
    .local v9, tmpItemInfo:Lcom/baidu/launcher/data/item/ListItemInfo;
    iget-object v10, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mItems:Ljava/util/Vector;

    iget-object v11, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mItems:Ljava/util/Vector;

    add-int v12, v4, v0

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v11, v12}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v5, v11}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2522
    iget-object v10, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mItems:Ljava/util/Vector;

    add-int v11, v4, v0

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v10, v11, v9}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2546
    .end local v1           #currItemView:Landroid/view/View;
    .end local v3           #currLp:Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;
    .end local v7           #preLayout:Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;
    .end local v9           #tmpItemInfo:Lcom/baidu/launcher/data/item/ListItemInfo;
    :cond_1
    :goto_0
    iput v13, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mSnapDir:I

    .line 2547
    const/4 v10, 0x2

    sput v10, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->sortType:I

    .line 2549
    .end local v0           #appCountOnPage:I
    .end local v2           #currLayout:Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;
    .end local v4           #firstItemOnpage:I
    .end local v5           #lastitemIndex:I
    .end local v6           #pageOfsetCount:I
    .end local v8           #preLp:Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;
    :cond_2
    return-void

    .line 2523
    .restart local v0       #appCountOnPage:I
    .restart local v2       #currLayout:Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;
    .restart local v4       #firstItemOnpage:I
    .restart local v5       #lastitemIndex:I
    .restart local v6       #pageOfsetCount:I
    .restart local v8       #preLp:Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;
    :cond_3
    iget v10, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCurrentPage:I

    if-ge p1, v10, :cond_1

    .line 2524
    iget v10, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mDragMoveIndex:I

    iget v11, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCurrentPage:I

    add-int/2addr v11, v6

    mul-int/2addr v11, v0

    add-int v5, v10, v11

    .line 2526
    invoke-virtual {v2, v13}, Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2527
    .restart local v1       #currItemView:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;

    .line 2529
    .restart local v3       #currLp:Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;
    invoke-virtual {v2, v1}, Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;->removeView(Landroid/view/View;)V

    .line 2530
    iget v10, v8, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->itemIndex:I

    iget v11, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCellCountX:I

    rem-int/2addr v10, v11

    iput v10, v8, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->cellX:I

    .line 2531
    iget v10, v8, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->itemIndex:I

    iget v11, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCellCountX:I

    div-int/2addr v10, v11

    iput v10, v8, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->cellY:I

    .line 2532
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;

    invoke-virtual {v10}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->getChildrenLayout()Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;

    move-result-object v7

    .line 2534
    .restart local v7       #preLayout:Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;->getChildCount()I

    move-result v10

    iget v11, v8, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->itemIndex:I

    if-le v10, v11, :cond_4

    .line 2536
    iget-object v10, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mDraggedView:Landroid/view/View;

    invoke-virtual {v7, v10}, Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;->removeView(Landroid/view/View;)V

    .line 2537
    iget v10, v8, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->itemIndex:I

    invoke-virtual {v7, v1, v10, v8}, Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2539
    :cond_4
    iget-object v10, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mDraggedView:Landroid/view/View;

    iget v11, v3, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->itemIndex:I

    invoke-virtual {v2, v10, v11, v3}, Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2540
    iput v13, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mDragMoveIndex:I

    .line 2541
    iget-object v10, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mItems:Ljava/util/Vector;

    invoke-virtual {v10, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/baidu/launcher/data/item/ListItemInfo;

    .line 2542
    .restart local v9       #tmpItemInfo:Lcom/baidu/launcher/data/item/ListItemInfo;
    iget-object v10, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mItems:Ljava/util/Vector;

    iget-object v11, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mItems:Ljava/util/Vector;

    invoke-virtual {v11, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v5, v11}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2543
    iget-object v10, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mItems:Ljava/util/Vector;

    invoke-virtual {v10, v4, v9}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public syncAppsPageItems(IZ)V
    .locals 34
    .parameter "page"
    .parameter "immediate"

    .prologue
    .line 1196
    move-object/from16 v0, p0

    iget v4, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCellCountX:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCellCountY:I

    mul-int v28, v4, v7

    .line 1197
    .local v28, numCells:I
    mul-int v31, p1, v28

    .line 1198
    .local v31, startIndex:I
    add-int v4, v31, v28

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mItems:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 1200
    .local v16, endIndex:I
    invoke-virtual/range {p0 .. p1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;

    .line 1201
    .local v25, layout:Lcom/baidu/launcher/ui/common/PagedViewCellLayout;
    invoke-virtual/range {v25 .. v25}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->removeAllViewsOnPage()V

    .line 1202
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 1204
    .local v24, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v27

    .line 1205
    .local v27, mPm:Landroid/content/pm/PackageManager;
    const/16 v10, 0xff

    .line 1206
    .local v10, alpha:I
    move/from16 v18, v31

    .local v18, i:I
    :goto_0
    move/from16 v0, v18

    move/from16 v1, v16

    if-ge v0, v1, :cond_8

    .line 1207
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mItems:Ljava/util/Vector;

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/baidu/launcher/data/item/ListItemInfo;

    .line 1208
    .local v23, info:Lcom/baidu/launcher/data/item/ListItemInfo;
    move-object/from16 v0, v23

    instance-of v4, v0, Lcom/baidu/launcher/data/item/ListAppInfo;

    if-eqz v4, :cond_6

    move-object/from16 v4, v23

    .line 1209
    check-cast v4, Lcom/baidu/launcher/data/item/ListAppInfo;

    iget-object v4, v4, Lcom/baidu/launcher/data/item/ListAppInfo;->iconBitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_0

    .line 1213
    :try_start_0
    move-object/from16 v0, v23

    check-cast v0, Lcom/baidu/launcher/data/item/ListAppInfo;

    move-object v4, v0

    iget-object v4, v4, Lcom/baidu/launcher/data/item/ListAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0x2240

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v29

    .line 1218
    .local v29, packageInfo:Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v29

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .local v13, d:Landroid/graphics/drawable/Drawable;
    move-object v11, v13

    .line 1219
    check-cast v11, Landroid/graphics/drawable/BitmapDrawable;

    .line 1220
    .local v11, bd:Landroid/graphics/drawable/BitmapDrawable;
    new-instance v26, Landroid/graphics/Matrix;

    invoke-direct/range {v26 .. v26}, Landroid/graphics/Matrix;-><init>()V

    .line 1221
    .local v26, mMatrix:Landroid/graphics/Matrix;
    invoke-static {}, Lcom/baidu/launcher/utils/Utilities;->getAppIconSize()I

    move-result v4

    int-to-float v0, v4

    move/from16 v22, v0

    .line 1222
    .local v22, iconSize:F
    invoke-virtual {v11}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v4, v22, v4

    invoke-virtual {v11}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v7

    int-to-float v7, v7

    div-float v7, v22, v7

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v7}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 1224
    const/16 v21, 0x0

    .line 1225
    .local v21, iconMap:Landroid/graphics/Bitmap;
    move-object/from16 v0, v29

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v7, "com.android.calendar"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1226
    invoke-static {}, Lcom/baidu/launcher/utils/Utilities;->getCurrentDay()I

    move-result v14

    .line 1227
    .local v14, day:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ic_launcher_calendar_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "drawable"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v4, v7, v8, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    .line 1229
    .local v30, res:I
    if-lez v30, :cond_4

    .line 1230
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mContext:Landroid/content/Context;

    move-object/from16 v0, v29

    iget-object v8, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v4, v7, v8}, Lcom/baidu/launcher/utils/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v21

    .end local v14           #day:I
    .end local v30           #res:I
    :goto_1
    move-object/from16 v4, v23

    .line 1238
    check-cast v4, Lcom/baidu/launcher/data/item/ListAppInfo;

    move-object/from16 v0, v21

    iput-object v0, v4, Lcom/baidu/launcher/data/item/ListAppInfo;->iconBitmap:Landroid/graphics/Bitmap;

    .line 1244
    .end local v11           #bd:Landroid/graphics/drawable/BitmapDrawable;
    .end local v13           #d:Landroid/graphics/drawable/Drawable;
    .end local v21           #iconMap:Landroid/graphics/Bitmap;
    .end local v22           #iconSize:F
    .end local v26           #mMatrix:Landroid/graphics/Matrix;
    .end local v29           #packageInfo:Landroid/content/pm/PackageInfo;
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getItemLyout()I

    move-result v7

    const/4 v8, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v4, v7, v0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v19

    check-cast v19, Lcom/baidu/launcher/ui/common/BubbleTextView;

    .line 1246
    .local v19, icon:Lcom/baidu/launcher/ui/common/BubbleTextView;
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->shouldAppDrawBlur()Z

    move-result v4

    move-object/from16 v0, v19

    iput-boolean v4, v0, Lcom/baidu/launcher/ui/common/BubbleTextView;->shouldDrawBlur:Z

    .line 1247
    sget-boolean v4, Lcom/baidu/launcher/utils/Utilities;->useShadow:Z

    if-eqz v4, :cond_1

    sget-boolean v4, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->show_icon_floor:Z

    if-eqz v4, :cond_1

    .line 1248
    const v4, 0x7f020314

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/baidu/launcher/ui/common/BubbleTextView;->setBackgroundResource(I)V

    .line 1250
    :cond_1
    new-instance v20, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;

    move-object/from16 v4, v23

    check-cast v4, Lcom/baidu/launcher/data/item/ListAppInfo;

    iget-object v4, v4, Lcom/baidu/launcher/data/item/ListAppInfo;->iconBitmap:Landroid/graphics/Bitmap;

    sget v7, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->iconScale:F

    move-object/from16 v0, v20

    invoke-direct {v0, v4, v7}, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;F)V

    .line 1253
    .local v20, iconBitemap:Lcom/baidu/launcher/ui/common/FastBitmapDrawable;
    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v4, v1, v7, v8}, Lcom/baidu/launcher/ui/common/BubbleTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v4, v23

    .line 1256
    check-cast v4, Lcom/baidu/launcher/data/item/ListAppInfo;

    iget-object v4, v4, Lcom/baidu/launcher/data/item/ListAppInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/baidu/launcher/ui/common/BubbleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1261
    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/common/BubbleTextView;->setTag(Ljava/lang/Object;)V

    .line 1262
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/common/BubbleTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1263
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/common/BubbleTextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1264
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/common/BubbleTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    move-object/from16 v4, v23

    .line 1265
    check-cast v4, Lcom/baidu/launcher/data/item/ListAppInfo;

    iget-boolean v4, v4, Lcom/baidu/launcher/data/item/ListAppInfo;->isVisible:Z

    if-nez v4, :cond_2

    .line 1269
    const/16 v10, 0x4c

    .line 1270
    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;->setDrawbleAlpha(I)V

    .line 1271
    invoke-virtual/range {v19 .. v19}, Lcom/baidu/launcher/ui/common/BubbleTextView;->getDecorateAction()Lcom/baidu/launcher/ui/common/DecorateAction;

    move-result-object v4

    invoke-interface {v4, v10}, Lcom/baidu/launcher/ui/common/DecorateAction;->setAlpha(I)V

    .line 1272
    const/16 v4, 0xff

    const/16 v7, 0xff

    const/16 v8, 0xff

    invoke-static {v10, v4, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/baidu/launcher/ui/common/BubbleTextView;->setTextColor(I)V

    .line 1273
    const/4 v4, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/baidu/launcher/ui/common/BubbleTextView;->setHide(Z)V

    .line 1276
    :cond_2
    invoke-static {}, Lcom/baidu/launcher/utils/EventNumberUtil;->getInstance()Lcom/baidu/launcher/utils/EventNumberUtil;

    move-result-object v17

    .line 1278
    .local v17, enventNumberUtil:Lcom/baidu/launcher/utils/EventNumberUtil;
    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/utils/EventNumberUtil;->checkEventInfo(Lcom/baidu/launcher/data/item/BaseItemInfo;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1279
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/utils/EventNumberUtil;->registerView(Landroid/view/View;)Z

    .line 1311
    .end local v17           #enventNumberUtil:Lcom/baidu/launcher/utils/EventNumberUtil;
    .end local v20           #iconBitemap:Lcom/baidu/launcher/ui/common/FastBitmapDrawable;
    :cond_3
    :goto_2
    sub-int v9, v18, v31

    .line 1312
    .local v9, index:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCellCountX:I

    rem-int v5, v9, v4

    .line 1313
    .local v5, x:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCellCountX:I

    div-int v6, v9, v4

    .line 1314
    .local v6, y:I
    const/16 v33, -0x1

    new-instance v4, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-direct/range {v4 .. v9}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;-><init>(IIIII)V

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    move/from16 v2, v33

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;)Z

    .line 1317
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1206
    .end local v5           #x:I
    .end local v6           #y:I
    .end local v9           #index:I
    .end local v19           #icon:Lcom/baidu/launcher/ui/common/BubbleTextView;
    :goto_3
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_0

    .line 1215
    :catch_0
    move-exception v15

    .line 1216
    .local v15, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_3

    .line 1233
    .end local v15           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v11       #bd:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v13       #d:Landroid/graphics/drawable/Drawable;
    .restart local v14       #day:I
    .restart local v21       #iconMap:Landroid/graphics/Bitmap;
    .restart local v22       #iconSize:F
    .restart local v26       #mMatrix:Landroid/graphics/Matrix;
    .restart local v29       #packageInfo:Landroid/content/pm/PackageInfo;
    .restart local v30       #res:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mContext:Landroid/content/Context;

    move-object/from16 v0, v29

    iget-object v7, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v13, v4, v7}, Lcom/baidu/launcher/utils/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v21

    goto/16 :goto_1

    .line 1236
    .end local v14           #day:I
    .end local v30           #res:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mContext:Landroid/content/Context;

    move-object/from16 v0, v29

    iget-object v7, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v13, v4, v7}, Lcom/baidu/launcher/utils/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v21

    goto/16 :goto_1

    .line 1282
    .end local v11           #bd:Landroid/graphics/drawable/BitmapDrawable;
    .end local v13           #d:Landroid/graphics/drawable/Drawable;
    .end local v21           #iconMap:Landroid/graphics/Bitmap;
    .end local v22           #iconSize:F
    .end local v26           #mMatrix:Landroid/graphics/Matrix;
    .end local v29           #packageInfo:Landroid/content/pm/PackageInfo;
    :cond_6
    const v7, 0x7f030009

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mContext:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getCurrentPageChildLayout()Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;

    move-result-object v33

    move-object/from16 v4, v23

    check-cast v4, Lcom/baidu/launcher/data/item/ListFolderInfo;

    move-object/from16 v0, v33

    invoke-static {v7, v8, v0, v4}, Lcom/baidu/launcher/ui/folder/FolderIcon;->fromXml(ILandroid/content/Context;Landroid/view/ViewGroup;Lcom/baidu/launcher/data/item/IFolderInfo;)Lcom/baidu/launcher/ui/folder/FolderIcon;

    move-result-object v19

    .line 1285
    .restart local v19       #icon:Lcom/baidu/launcher/ui/common/BubbleTextView;
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->shouldAppDrawBlur()Z

    move-result v4

    move-object/from16 v0, v19

    iput-boolean v4, v0, Lcom/baidu/launcher/ui/common/BubbleTextView;->shouldDrawBlur:Z

    move-object/from16 v4, v23

    .line 1286
    check-cast v4, Lcom/baidu/launcher/data/item/ListFolderInfo;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v7}, Lcom/baidu/launcher/data/item/ListFolderInfo;->getDisplayTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/baidu/launcher/ui/common/BubbleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1287
    sget v4, Lcom/baidu/launcher/utils/DefaultConfigurationHelper;->defaultLauncherApplicationBoxTextSize:I

    const/4 v7, 0x5

    if-le v4, v7, :cond_7

    .line 1288
    const/4 v4, 0x1

    sget v7, Lcom/baidu/launcher/utils/DefaultConfigurationHelper;->defaultLauncherApplicationBoxTextSize:I

    int-to-float v7, v7

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v7}, Lcom/baidu/launcher/ui/common/BubbleTextView;->setTextSize(IF)V

    .line 1291
    :cond_7
    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/common/BubbleTextView;->setTag(Ljava/lang/Object;)V

    .line 1292
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/common/BubbleTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1293
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/common/BubbleTextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1294
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/common/BubbleTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    move-object/from16 v4, v23

    .line 1296
    check-cast v4, Lcom/baidu/launcher/data/item/ListFolderInfo;

    iget-boolean v4, v4, Lcom/baidu/launcher/data/item/ListFolderInfo;->isVisible:Z

    if-nez v4, :cond_3

    .line 1300
    const/16 v10, 0x4c

    .line 1301
    invoke-virtual/range {v19 .. v19}, Lcom/baidu/launcher/ui/common/BubbleTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v7, 0x1

    aget-object v20, v4, v7

    check-cast v20, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;

    .line 1303
    .restart local v20       #iconBitemap:Lcom/baidu/launcher/ui/common/FastBitmapDrawable;
    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;->setDrawbleAlpha(I)V

    .line 1304
    invoke-virtual/range {v19 .. v19}, Lcom/baidu/launcher/ui/common/BubbleTextView;->getDecorateAction()Lcom/baidu/launcher/ui/common/DecorateAction;

    move-result-object v4

    invoke-interface {v4, v10}, Lcom/baidu/launcher/ui/common/DecorateAction;->setAlpha(I)V

    .line 1305
    const/16 v4, 0xff

    const/16 v7, 0xff

    const/16 v8, 0xff

    invoke-static {v10, v4, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/baidu/launcher/ui/common/BubbleTextView;->setTextColor(I)V

    .line 1306
    const/4 v4, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/baidu/launcher/ui/common/BubbleTextView;->setHide(Z)V

    goto/16 :goto_2

    .line 1320
    .end local v19           #icon:Lcom/baidu/launcher/ui/common/BubbleTextView;
    .end local v20           #iconBitemap:Lcom/baidu/launcher/ui/common/FastBitmapDrawable;
    .end local v23           #info:Lcom/baidu/launcher/data/item/ListItemInfo;
    :cond_8
    invoke-static {}, Lcom/baidu/launcher/utils/Utilities;->getCpuName()Ljava/lang/String;

    move-result-object v12

    .line 1321
    .local v12, cpuName:Ljava/lang/String;
    sget-object v4, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    .line 1322
    .local v32, sysVersion:I
    if-eqz v12, :cond_a

    const-string v4, "MT"

    invoke-virtual {v12, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/16 v4, 0xf

    move/from16 v0, v32

    if-eq v0, v4, :cond_9

    const/16 v4, 0xe

    move/from16 v0, v32

    if-ne v0, v4, :cond_a

    .line 1327
    :cond_9
    :goto_4
    return-void

    .line 1326
    :cond_a
    invoke-virtual/range {v25 .. v25}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->createHardwareLayers()V

    goto :goto_4
.end method

.method public syncPageItems(IZ)V
    .locals 2
    .parameter "page"
    .parameter "immediate"

    .prologue
    .line 1448
    iget v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mNumAppsPages:I

    if-ge p1, v0, :cond_1

    .line 1449
    invoke-virtual {p0, p1, p2}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->syncAppsPageItems(IZ)V

    .line 1453
    :cond_0
    :goto_0
    return-void

    .line 1450
    :cond_1
    iget v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mNumAppsPages:I

    iget v1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mNumWidgetPages:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_0

    .line 1451
    iget v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mNumAppsPages:I

    sub-int v0, p1, v0

    invoke-virtual {p0, v0, p2}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->syncWidgetPageItems(IZ)V

    goto :goto_0
.end method

.method public syncPages()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 1427
    invoke-static {}, Lcom/baidu/launcher/utils/EventNumberUtil;->getInstance()Lcom/baidu/launcher/utils/EventNumberUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/launcher/utils/EventNumberUtil;->unregisterAppViews()V

    .line 1428
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->removeAllViews()V

    .line 1429
    iget-object v4, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mIndicator:Lcom/baidu/launcher/ui/applistview/AllAppsIndicatorNew;

    invoke-virtual {v4}, Lcom/baidu/launcher/ui/applistview/AllAppsIndicatorNew;->removeAllViewsInLayout()V

    .line 1431
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1432
    .local v0, context:Landroid/content/Context;
    const/4 v2, 0x0

    .local v2, j:I
    :goto_0
    iget v4, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mNumWidgetPages:I

    if-ge v2, v4, :cond_0

    .line 1433
    new-instance v3, Lcom/baidu/launcher/ui/common/PagedViewGridLayout;

    iget v4, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mWidgetCountX:I

    iget v5, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mWidgetCountY:I

    invoke-direct {v3, v0, v4, v5}, Lcom/baidu/launcher/ui/common/PagedViewGridLayout;-><init>(Landroid/content/Context;II)V

    .line 1435
    .local v3, layout:Lcom/baidu/launcher/ui/common/PagedViewGridLayout;
    invoke-direct {p0, v3}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->setupPage(Lcom/baidu/launcher/ui/common/PagedViewGridLayout;)V

    .line 1436
    new-instance v4, Lcom/baidu/launcher/ui/common/PagedViewGridLayout$LayoutParams;

    invoke-direct {v4, v6, v6}, Lcom/baidu/launcher/ui/common/PagedViewGridLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3, v4}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1432
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1439
    .end local v3           #layout:Lcom/baidu/launcher/ui/common/PagedViewGridLayout;
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget v4, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mNumAppsPages:I

    if-ge v1, v4, :cond_1

    .line 1440
    new-instance v3, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;

    invoke-direct {v3, v0}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;-><init>(Landroid/content/Context;)V

    .line 1441
    .local v3, layout:Lcom/baidu/launcher/ui/common/PagedViewCellLayout;
    invoke-direct {p0, v3}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->setupPage(Lcom/baidu/launcher/ui/common/PagedViewCellLayout;)V

    .line 1442
    invoke-virtual {p0, v3}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->addView(Landroid/view/View;)V

    .line 1439
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1444
    .end local v3           #layout:Lcom/baidu/launcher/ui/common/PagedViewCellLayout;
    :cond_1
    return-void
.end method

.method public syncWidgetPageItems(IZ)V
    .locals 25
    .parameter "page"
    .parameter "immediate"

    .prologue
    .line 1348
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mWidgetCountX:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mWidgetCountY:I

    move/from16 v23, v0

    mul-int v16, v22, v23

    .line 1351
    .local v16, numItemsPerPage:I
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1352
    .local v10, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mWidgetSpacingLayout:Lcom/baidu/launcher/ui/common/PagedViewCellLayout;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->getContentWidth()I

    move-result v7

    .line 1353
    .local v7, contentWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mPageLayoutPaddingLeft:I

    move/from16 v22, v0

    sub-int v22, v7, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mPageLayoutPaddingRight:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mWidgetCountX:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mWidgetWidthGap:I

    move/from16 v24, v0

    mul-int v23, v23, v24

    sub-int v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mWidgetCountX:I

    move/from16 v23, v0

    div-int v5, v22, v23

    .line 1355
    .local v5, cellWidth:I
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getMeasuredHeight()I

    move-result v6

    .line 1356
    .local v6, contentHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mPageLayoutPaddingTop:I

    move/from16 v22, v0

    sub-int v22, v6, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mPageLayoutPaddingBottom:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mWidgetCountY:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mWidgetHeightGap:I

    move/from16 v24, v0

    mul-int v23, v23, v24

    sub-int v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mWidgetCountY:I

    move/from16 v23, v0

    div-int v3, v22, v23

    .line 1359
    .local v3, cellHeight:I
    mul-int v17, p1, v16

    .line 1360
    .local v17, offset:I
    move/from16 v9, v17

    .local v9, i:I
    :goto_0
    add-int v22, v17, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mWidgets:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(II)I

    move-result v22

    move/from16 v0, v22

    if-ge v9, v0, :cond_0

    .line 1362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mWidgets:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1361
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1367
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mNumAppsPages:I

    move/from16 v22, v0

    add-int v22, v22, p1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/baidu/launcher/ui/common/PagedViewGridLayout;

    .line 1369
    .local v13, layout:Lcom/baidu/launcher/ui/common/PagedViewGridLayout;
    invoke-virtual {v13}, Lcom/baidu/launcher/ui/common/PagedViewGridLayout;->getCellCountX()I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Lcom/baidu/launcher/ui/common/PagedViewGridLayout;->setColumnCount(I)V

    .line 1370
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v4, v0, [I

    .line 1371
    .local v4, cellSpans:[I
    const/4 v9, 0x0

    :goto_1
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v9, v0, :cond_5

    .line 1372
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    .line 1373
    .local v18, rawInfo:Ljava/lang/Object;
    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/baidu/launcher/data/item/ListWidgetInfo;

    move/from16 v22, v0

    if-eqz v22, :cond_4

    move-object/from16 v15, v18

    .line 1374
    check-cast v15, Lcom/baidu/launcher/data/item/ListWidgetInfo;

    .line 1375
    .local v15, lwi:Lcom/baidu/launcher/data/item/ListWidgetInfo;
    const/16 v22, 0x0

    iget v0, v15, Lcom/baidu/launcher/data/item/ListWidgetInfo;->spanX:I

    move/from16 v23, v0

    aput v23, v4, v22

    .line 1376
    const/16 v22, 0x1

    iget v0, v15, Lcom/baidu/launcher/data/item/ListWidgetInfo;->spanY:I

    move/from16 v23, v0

    aput v23, v4, v22

    .line 1382
    .end local v15           #lwi:Lcom/baidu/launcher/data/item/ListWidgetInfo;
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mLayoutInflater:Landroid/view/LayoutInflater;

    move-object/from16 v22, v0

    const v23, 0x7f030052

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v13, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/baidu/launcher/ui/editview/PagedViewWidget;

    .line 1384
    .local v20, widget:Lcom/baidu/launcher/ui/editview/PagedViewWidget;
    const/16 v22, -0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2, v4}, Lcom/baidu/launcher/ui/editview/PagedViewWidget;->applyFromBaiduWidgetInfo(Ljava/lang/Object;I[I)V

    .line 1385
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/editview/PagedViewWidget;->setTag(Ljava/lang/Object;)V

    .line 1386
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/editview/PagedViewWidget;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1387
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/editview/PagedViewWidget;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1388
    invoke-virtual/range {v20 .. v20}, Lcom/baidu/launcher/ui/editview/PagedViewWidget;->loadPreview()V

    .line 1393
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mWidgetCountX:I

    move/from16 v22, v0

    rem-int v11, v9, v22

    .line 1394
    .local v11, ix:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mWidgetCountX:I

    move/from16 v22, v0

    div-int v12, v9, v22

    .line 1395
    .local v12, iy:I
    new-instance v14, Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;

    sget-object v22, Lcom/baidu/launcher/ui/common/GridLayout;->LEFT:Lcom/baidu/launcher/ui/common/GridLayout$Alignment;

    move-object/from16 v0, v22

    invoke-static {v12, v0}, Lcom/baidu/launcher/ui/common/GridLayout;->spec(ILcom/baidu/launcher/ui/common/GridLayout$Alignment;)Lcom/baidu/launcher/ui/common/GridLayout$Spec;

    move-result-object v22

    sget-object v23, Lcom/baidu/launcher/ui/common/GridLayout;->TOP:Lcom/baidu/launcher/ui/common/GridLayout$Alignment;

    move-object/from16 v0, v23

    invoke-static {v11, v0}, Lcom/baidu/launcher/ui/common/GridLayout;->spec(ILcom/baidu/launcher/ui/common/GridLayout$Alignment;)Lcom/baidu/launcher/ui/common/GridLayout$Spec;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v14, v0, v1}, Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;-><init>(Lcom/baidu/launcher/ui/common/GridLayout$Spec;Lcom/baidu/launcher/ui/common/GridLayout$Spec;)V

    .line 1398
    .local v14, lp:Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;
    iput v5, v14, Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;->width:I

    .line 1399
    iput v3, v14, Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;->height:I

    .line 1400
    const/16 v22, 0x33

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;->setGravity(I)V

    .line 1401
    if-lez v11, :cond_2

    .line 1402
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mWidgetWidthGap:I

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v14, Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;->leftMargin:I

    .line 1403
    :cond_2
    if-lez v12, :cond_3

    .line 1404
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mWidgetHeightGap:I

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v14, Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;->topMargin:I

    .line 1405
    :cond_3
    move-object/from16 v0, v20

    invoke-virtual {v13, v0, v14}, Lcom/baidu/launcher/ui/common/PagedViewGridLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1371
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 1377
    .end local v11           #ix:I
    .end local v12           #iy:I
    .end local v14           #lp:Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;
    .end local v20           #widget:Lcom/baidu/launcher/ui/editview/PagedViewWidget;
    :cond_4
    move-object/from16 v0, v18

    instance-of v0, v0, Landroid/appwidget/AppWidgetProviderInfo;

    move/from16 v22, v0

    if-eqz v22, :cond_1

    move-object/from16 v21, v18

    .line 1378
    check-cast v21, Landroid/appwidget/AppWidgetProviderInfo;

    .line 1379
    .local v21, widgetProvider:Landroid/appwidget/AppWidgetProviderInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->getSpanForWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)[I

    move-result-object v4

    goto/16 :goto_2

    .line 1408
    .end local v18           #rawInfo:Ljava/lang/Object;
    .end local v21           #widgetProvider:Landroid/appwidget/AppWidgetProviderInfo;
    :cond_5
    invoke-static {}, Lcom/baidu/launcher/utils/Utilities;->getCpuName()Ljava/lang/String;

    move-result-object v8

    .line 1409
    .local v8, cpuName:Ljava/lang/String;
    sget-object v22, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 1410
    .local v19, sysVersion:I
    if-eqz v8, :cond_7

    const-string v22, "MT"

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_7

    const/16 v22, 0xe

    move/from16 v0, v19

    move/from16 v1, v22

    if-eq v0, v1, :cond_6

    const/16 v22, 0xf

    move/from16 v0, v19

    move/from16 v1, v22

    if-ne v0, v1, :cond_7

    .line 1415
    :cond_6
    :goto_3
    return-void

    .line 1414
    :cond_7
    invoke-virtual {v13}, Lcom/baidu/launcher/ui/common/PagedViewGridLayout;->createHardwareLayer()V

    goto :goto_3
.end method

.method public updateAllItemToDB()V
    .locals 2

    .prologue
    .line 3476
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/launcher/data/AppsDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/AppsDataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mItems:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/data/AppsDataManager;->batchUpdateItemInDatabase(Ljava/util/Vector;)V

    .line 3477
    return-void
.end method

.method public updateAppAdded(Ljava/util/ArrayList;)V
    .locals 9
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
    .line 1792
    .local p1, changes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListAppInfo;>;"
    iget-object v4, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mItems:Ljava/util/Vector;

    monitor-enter v4

    .line 1793
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/data/item/ListAppInfo;

    .line 1794
    .local v0, app:Lcom/baidu/launcher/data/item/ListAppInfo;
    invoke-direct {p0, v0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->replacePresetOne(Lcom/baidu/launcher/data/item/ListAppInfo;)Lcom/baidu/launcher/data/item/ListAppInfo;

    move-result-object v2

    .line 1795
    .local v2, replace:Lcom/baidu/launcher/data/item/ListAppInfo;
    if-eqz v2, :cond_0

    .line 1796
    iget-object v3, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/baidu/launcher/data/AppsDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/AppsDataManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/baidu/launcher/data/AppsDataManager;->deleteItemInDataBase(Lcom/baidu/launcher/data/item/ListItemInfo;)V

    .line 1798
    iget-object v3, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mApps:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 1799
    iget-object v3, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mItems:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 1801
    :cond_0
    iget-object v3, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mApps:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1802
    iget-wide v5, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->container:J

    const-wide/16 v7, -0x3e8

    cmp-long v3, v5, v7

    if-nez v3, :cond_2

    .line 1803
    iget v3, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->index:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_1

    .line 1804
    iget-object v3, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mItems:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    iput v3, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->index:I

    .line 1806
    :cond_1
    iget-object v3, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mItems:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1808
    :cond_2
    iget-object v3, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/baidu/launcher/data/AppsDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/AppsDataManager;

    move-result-object v3

    iget-wide v5, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->container:J

    iget v7, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->index:I

    invoke-virtual {v3, v0, v5, v6, v7}, Lcom/baidu/launcher/data/AppsDataManager;->addOrMoveItemInDatabase(Lcom/baidu/launcher/data/item/ListItemInfo;JI)V

    goto :goto_0

    .line 1811
    .end local v0           #app:Lcom/baidu/launcher/data/item/ListAppInfo;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #replace:Lcom/baidu/launcher/data/item/ListAppInfo;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_3
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1812
    return-void
.end method

.method public declared-synchronized updateAppRemoved(Ljava/util/ArrayList;)V
    .locals 6
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
    .line 1816
    .local p1, changes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListAppInfo;>;"
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mApps:Ljava/util/Vector;

    invoke-virtual {v4, p1}, Ljava/util/Vector;->removeAll(Ljava/util/Collection;)Z

    .line 1817
    iget-object v5, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mItems:Ljava/util/Vector;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1818
    :try_start_1
    iget-object v4, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mItems:Ljava/util/Vector;

    invoke-virtual {v4, p1}, Ljava/util/Vector;->removeAll(Ljava/util/Collection;)Z

    .line 1819
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1820
    :try_start_2
    iget-object v4, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mFolders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/data/item/ListFolderInfo;

    .line 1821
    .local v1, folder:Lcom/baidu/launcher/data/item/ListFolderInfo;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/data/item/ListAppInfo;

    .line 1822
    .local v0, app:Lcom/baidu/launcher/data/item/ListAppInfo;
    invoke-virtual {v1, v0}, Lcom/baidu/launcher/data/item/ListFolderInfo;->remove(Lcom/baidu/launcher/data/item/BaseItemInfo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1816
    .end local v0           #app:Lcom/baidu/launcher/data/item/ListAppInfo;
    .end local v1           #folder:Lcom/baidu/launcher/data/item/ListFolderInfo;
    .end local v3           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 1819
    :catchall_1
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1825
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public updateAppStatus(Ljava/util/ArrayList;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/data/item/ListItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3532
    .local p1, changes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListItemInfo;>;"
    iget v7, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCurrentPage:I

    invoke-virtual {p0, v7}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getAssociatedLowerPageBound(I)I

    move-result v4

    .line 3533
    .local v4, lowerPageBound:I
    iget v7, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCurrentPage:I

    invoke-virtual {p0, v7}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getAssociatedUpperPageBound(I)I

    move-result v6

    .line 3534
    .local v6, upperPageBound:I
    move v1, v4

    .local v1, i:I
    :goto_0
    if-gt v1, v6, :cond_0

    .line 3535
    iget v7, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mNumAppsPages:I

    if-lt v1, v7, :cond_1

    .line 3545
    :cond_0
    return-void

    .line 3537
    :cond_1
    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;

    .line 3538
    .local v5, page:Lcom/baidu/launcher/ui/common/PagedViewCellLayout;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/data/item/ListItemInfo;

    .line 3539
    .local v3, info:Lcom/baidu/launcher/data/item/ListItemInfo;
    invoke-virtual {v5, v3}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 3540
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_2

    .line 3541
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_1

    .line 3534
    .end local v0           #child:Landroid/view/View;
    .end local v3           #info:Lcom/baidu/launcher/data/item/ListItemInfo;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public updateApps(ZZ)V
    .locals 2
    .parameter "loadData"
    .parameter "isHideMode"

    .prologue
    const/4 v1, 0x0

    .line 2039
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mBackupHideMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 2040
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mBackupDisableMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 2041
    invoke-virtual {p0, p2}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->setItemsList(Z)V

    .line 2048
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->isDataReady()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2049
    invoke-direct {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->updatePageCounts()V

    .line 2050
    invoke-direct {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->testDataReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2051
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->requestLayout()V

    .line 2061
    :cond_0
    :goto_0
    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->updateHideStatus(Z)V

    .line 2062
    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->updateDisableStatus(Z)V

    .line 2063
    return-void

    .line 2053
    :cond_1
    invoke-direct {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->updatePageCounts()V

    .line 2054
    if-eqz p1, :cond_2

    .line 2055
    invoke-direct {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getCurrentPageByUpdate()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->invalidatePageData(I)V

    goto :goto_0

    .line 2057
    :cond_2
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->syncPages()V

    .line 2058
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->clearAllPages()V

    goto :goto_0
.end method

.method public updateBackupHideMap(Lcom/baidu/launcher/data/item/ListItemInfo;)V
    .locals 2
    .parameter "itemInfo"

    .prologue
    .line 2434
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mBackupHideMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2435
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mBackupHideMap:Ljava/util/HashMap;

    iget-boolean v1, p1, Lcom/baidu/launcher/data/item/ListItemInfo;->isVisible:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2437
    :cond_0
    return-void
.end method

.method updateCalendarIcon(Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "icon"

    .prologue
    .line 2245
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getPageCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 2246
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    .line 2247
    .local v2, page:Landroid/view/View;
    instance-of v3, v2, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;

    if-eqz v3, :cond_0

    .line 2248
    check-cast v2, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;

    .end local v2           #page:Landroid/view/View;
    invoke-virtual {v2}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->getChildrenLayout()Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;

    move-result-object v1

    .line 2250
    .local v1, layout:Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;
    new-instance v3, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$3;

    invoke-direct {v3, p0, v1, p1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$3;-><init>(Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v3}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->post(Ljava/lang/Runnable;)Z

    .line 2245
    .end local v1           #layout:Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2292
    :cond_1
    return-void
.end method

.method public updateDisableStatus(Z)V
    .locals 5
    .parameter "enable"

    .prologue
    .line 1108
    sget v3, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->AppListMode:I

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    .line 1122
    :goto_0
    return-void

    .line 1110
    :cond_0
    const/4 v0, 0x0

    .line 1111
    .local v0, count:I
    iget-object v3, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mApps:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/data/item/ListAppInfo;

    .line 1112
    .local v2, info:Lcom/baidu/launcher/data/item/ListItemInfo;
    iget-boolean v3, v2, Lcom/baidu/launcher/data/item/ListItemInfo;->isDisable:Z

    if-eqz v3, :cond_1

    .line 1113
    instance-of v3, v2, Lcom/baidu/launcher/data/item/ListFolderInfo;

    if-eqz v3, :cond_2

    .line 1114
    check-cast v2, Lcom/baidu/launcher/data/item/ListFolderInfo;

    .end local v2           #info:Lcom/baidu/launcher/data/item/ListItemInfo;
    invoke-virtual {v2}, Lcom/baidu/launcher/data/item/ListFolderInfo;->getSize()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_1

    .line 1116
    .restart local v2       #info:Lcom/baidu/launcher/data/item/ListItemInfo;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1121
    .end local v2           #info:Lcom/baidu/launcher/data/item/ListItemInfo;
    :cond_3
    iget-object v3, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mContainer:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$PagedViewContainer;

    invoke-interface {v3, p1, v0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$PagedViewContainer;->updateDisableAppsButtons(ZI)V

    goto :goto_0
.end method

.method public updateHideStatus(Z)V
    .locals 5
    .parameter "enable"

    .prologue
    .line 1093
    sget v3, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->AppListMode:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 1106
    :goto_0
    return-void

    .line 1095
    :cond_0
    const/4 v0, 0x0

    .line 1096
    .local v0, count:I
    iget-object v3, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mApps:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/data/item/ListAppInfo;

    .line 1097
    .local v2, info:Lcom/baidu/launcher/data/item/ListItemInfo;
    iget-boolean v3, v2, Lcom/baidu/launcher/data/item/ListItemInfo;->isVisible:Z

    if-nez v3, :cond_1

    .line 1098
    instance-of v3, v2, Lcom/baidu/launcher/data/item/ListFolderInfo;

    if-eqz v3, :cond_2

    .line 1099
    check-cast v2, Lcom/baidu/launcher/data/item/ListFolderInfo;

    .end local v2           #info:Lcom/baidu/launcher/data/item/ListItemInfo;
    invoke-virtual {v2}, Lcom/baidu/launcher/data/item/ListFolderInfo;->getSize()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_1

    .line 1101
    .restart local v2       #info:Lcom/baidu/launcher/data/item/ListItemInfo;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1105
    .end local v2           #info:Lcom/baidu/launcher/data/item/ListItemInfo;
    :cond_3
    iget-object v3, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mContainer:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$PagedViewContainer;

    invoke-interface {v3, p1, v0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$PagedViewContainer;->updateHideAppsButtons(ZI)V

    goto :goto_0
.end method

.method public updateItemToDB()V
    .locals 1

    .prologue
    .line 3465
    sget-boolean v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCanSaveData:Z

    if-eqz v0, :cond_0

    .line 3466
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->updateAllItemToDB()V

    .line 3467
    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCanSaveData:Z

    .line 3469
    :cond_0
    return-void
.end method

.method public updatePresetAdded(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/data/item/ListItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3509
    .local p1, changes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListItemInfo;>;"
    iget-object v2, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mItems:Ljava/util/Vector;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1}, Ljava/util/Vector;->addAll(ILjava/util/Collection;)Z

    .line 3510
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/data/item/ListItemInfo;

    .line 3511
    .local v1, item:Lcom/baidu/launcher/data/item/ListItemInfo;
    instance-of v2, v1, Lcom/baidu/launcher/data/item/ListAppInfo;

    if-eqz v2, :cond_1

    .line 3512
    iget-object v2, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mApps:Ljava/util/Vector;

    check-cast v1, Lcom/baidu/launcher/data/item/ListAppInfo;

    .end local v1           #item:Lcom/baidu/launcher/data/item/ListItemInfo;
    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3513
    .restart local v1       #item:Lcom/baidu/launcher/data/item/ListItemInfo;
    :cond_1
    instance-of v2, v1, Lcom/baidu/launcher/data/item/ListFolderInfo;

    if-eqz v2, :cond_0

    .line 3514
    iget-object v2, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mFolders:Ljava/util/ArrayList;

    check-cast v1, Lcom/baidu/launcher/data/item/ListFolderInfo;

    .end local v1           #item:Lcom/baidu/launcher/data/item/ListItemInfo;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3517
    :cond_2
    return-void
.end method

.method public updatePresetRemoved(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/data/item/ListItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3520
    .local p1, changes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListItemInfo;>;"
    iget-object v4, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mItems:Ljava/util/Vector;

    monitor-enter v4

    .line 3521
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3522
    .local v2, itemsToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListItemInfo;>;"
    iget-object v3, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mItems:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/data/item/ListItemInfo;

    .line 3523
    .local v1, item:Lcom/baidu/launcher/data/item/ListItemInfo;
    iget-boolean v3, v1, Lcom/baidu/launcher/data/item/ListItemInfo;->isPreset:Z

    if-eqz v3, :cond_0

    .line 3524
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3528
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #item:Lcom/baidu/launcher/data/item/ListItemInfo;
    .end local v2           #itemsToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListItemInfo;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 3527
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v2       #itemsToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListItemInfo;>;"
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mItems:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->removeAll(Ljava/util/Collection;)Z

    .line 3528
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3529
    return-void
.end method

.method updateScrollingIndicatorPosition(F)V
    .locals 6
    .parameter "pos"

    .prologue
    .line 2096
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getScrollingIndicator()Lcom/baidu/launcher/ui/applistview/AllAppsIndicatorNew;

    .line 2097
    iget-object v3, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mIndicator:Lcom/baidu/launcher/ui/applistview/AllAppsIndicatorNew;

    if-nez v3, :cond_0

    .line 2124
    :goto_0
    return-void

    .line 2099
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getChildCount()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .line 2100
    .local v0, lastIndex:I
    const/4 v1, 0x0

    .line 2101
    .local v1, pageNum:I
    const/4 v2, 0x0

    .line 2102
    .local v2, transitionX:F
    iget-boolean v3, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->InterLoop:Z

    if-eqz v3, :cond_1

    .line 2103
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getChildCount()I

    move-result v1

    .line 2104
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getMeasuredWidth()I

    move-result v3

    mul-int/2addr v3, v0

    int-to-float v3, v3

    div-float v2, p1, v3

    goto :goto_0

    .line 2106
    :cond_1
    iget v3, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCurrentTab:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 2108
    :pswitch_0
    iget v1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mNumAppsPages:I

    .line 2109
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getMeasuredWidth()I

    move-result v3

    add-int/lit8 v4, v1, -0x1

    mul-int/2addr v3, v4

    int-to-float v3, v3

    div-float v2, p1, v3

    .line 2110
    goto :goto_0

    .line 2112
    :pswitch_1
    iget v1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mNumWidgetPages:I

    .line 2113
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getMeasuredWidth()I

    move-result v3

    iget v4, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mNumAppsPages:I

    mul-int/2addr v3, v4

    int-to-float v3, v3

    sub-float v3, p1, v3

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getMeasuredWidth()I

    move-result v4

    add-int/lit8 v5, v1, -0x1

    mul-int/2addr v4, v5

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 2115
    goto :goto_0

    .line 2106
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
