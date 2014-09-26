.class public abstract Lcom/baidu/launcher/ui/common/BaiduViewPagger;
.super Landroid/view/ViewGroup;
.source "BaiduViewPagger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/ui/common/BaiduViewPagger$1;,
        Lcom/baidu/launcher/ui/common/BaiduViewPagger$SavedState;,
        Lcom/baidu/launcher/ui/common/BaiduViewPagger$ScrollInterpolator;,
        Lcom/baidu/launcher/ui/common/BaiduViewPagger$PageSwitchListener;
    }
.end annotation


# static fields
.field protected static final ALPHA_QUANTIZE_LEVEL:F = 1.0E-4f

.field protected static final CHOICE_MODE_MULTIPLE:I = 0x2

.field protected static final CHOICE_MODE_NONE:I = 0x0

.field protected static final CHOICE_MODE_SINGLE:I = 0x1

.field private static final DEBUG:Z = false

.field protected static final INVALID_PAGE:I = -0x1

.field protected static final INVALID_POINTER:I = -0x1

.field private static final MINIMUM_SNAP_VELOCITY:I = 0x898

.field private static final MIN_FLING_VELOCITY:I = 0xfa

.field protected static final NANOTIME_DIV:F = 1.0E9f

.field private static final OVERSCROLL_ACCELERATE_FACTOR:F = 2.0f

.field private static final OVERSCROLL_DAMP_FACTOR:F = 0.14f

.field private static final PAGE_SNAP_ANIMATION_DURATION:I = 0x226

.field protected static final RETURN_TO_ORIGINAL_PAGE_THRESHOLD:F = 0.33f

.field protected static final SIGNIFICANT_MOVE_THRESHOLD:F = 0.4f

#the value of this static final field might be set in the static constructor
.field private static final SMOOTHING_CONSTANT:F = 0.0f

.field private static final SMOOTHING_SPEED:F = 0.75f

.field private static final TAG:Ljava/lang/String; = "BaiduViewPagger"

.field protected static final TOUCH_STATE_NEXT_PAGE:I = 0x3

.field protected static final TOUCH_STATE_PREV_PAGE:I = 0x2

.field protected static final TOUCH_STATE_REST:I = 0x0

.field protected static final TOUCH_STATE_SCROLLING:I = 0x1


# instance fields
.field protected mActivePointerId:I

.field protected mAllowLongPress:Z

.field protected mAllowOverScroll:Z

.field protected mCellCountX:I

.field protected mCellCountY:I

.field protected mCenterPagesVertically:Z

.field private mChildOffsets:[I

.field private mChildOffsetsWithLayoutScale:[I

.field private mChildRelativeOffsets:[I

.field protected mChoiceMode:I

.field protected mContentIsRefreshable:Z

.field protected mCorrectionFactor:I

.field protected mCurrentPage:I

.field private mDeferLoadAssociatedPagesUntilScrollCompletes:Z

.field protected mDeferScrollUpdate:Z

.field protected mDensity:F

.field protected mDirtyPageContent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected mDownMotionX:F

.field protected mFadeInAdjacentScreens:Z

.field protected mFirstLayout:Z

.field protected mForceScreenScrolled:Z

.field protected mIsDataReady:Z

.field protected mIsLoopScroll:Z

.field protected mIsPageMoving:Z

.field protected mLastMotionX:F

.field protected mLastMotionY:F

.field private mLastScreenCenter:I

.field protected mLayoutScale:F

.field protected mLongClickListener:Landroid/view/View$OnLongClickListener;

.field protected mMaxScrollX:I

.field protected mMaximumVelocity:I

.field private mMinimumWidth:I

.field protected mNextPage:I

.field protected mOverScrollX:I

.field protected mPageLayoutHeightGap:I

.field protected mPageLayoutPaddingBottom:I

.field protected mPageLayoutPaddingLeft:I

.field protected mPageLayoutPaddingRight:I

.field protected mPageLayoutPaddingTop:I

.field protected mPageLayoutWidthGap:I

.field protected mPageSpacing:I

.field private mPageSwitchListener:Lcom/baidu/launcher/ui/common/BaiduViewPagger$PageSwitchListener;

.field private mPagingTouchSlop:I

.field protected mScroller:Landroid/widget/Scroller;

.field protected mSmoothingTime:F

.field protected mSnapVelocity:I

.field protected mTempVisiblePagesRange:[I

.field protected mTouchSlop:I

.field protected mTouchState:I

.field protected mTouchX:F

.field protected mUsePagingTouchSlop:Z

.field protected mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 61
    const-wide v0, 0x3f90624dd2f1a9fcL

    const-wide/high16 v2, 0x3fe8

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->SMOOTHING_CONSTANT:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 190
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 191
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 194
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 195
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v5, 0x2

    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 198
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    const/16 v1, 0x1f4

    iput v1, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mSnapVelocity:I

    .line 80
    iput-boolean v3, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mFirstLayout:Z

    .line 83
    iput v4, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mNextPage:I

    .line 93
    iput v4, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mLastScreenCenter:I

    .line 104
    iput v2, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mTouchState:I

    .line 105
    iput-boolean v2, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mForceScreenScrolled:Z

    .line 109
    iput-boolean v3, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mAllowLongPress:Z

    .line 122
    iput v2, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mCellCountX:I

    .line 123
    iput v2, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mCellCountY:I

    .line 125
    iput-boolean v3, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mAllowOverScroll:Z

    .line 127
    new-array v1, v5, [I

    iput-object v1, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mTempVisiblePagesRange:[I

    .line 138
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mLayoutScale:F

    .line 142
    iput v4, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mActivePointerId:I

    .line 158
    iput-boolean v3, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mContentIsRefreshable:Z

    .line 161
    iput-boolean v3, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mFadeInAdjacentScreens:Z

    .line 166
    iput-boolean v3, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mUsePagingTouchSlop:Z

    .line 171
    iput-boolean v2, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mDeferScrollUpdate:Z

    .line 173
    iput-boolean v2, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mIsPageMoving:Z

    .line 176
    iput-boolean v2, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mIsDataReady:Z

    .line 183
    iput-boolean v2, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mIsLoopScroll:Z

    .line 199
    iput v2, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mChoiceMode:I

    .line 201
    sget-object v1, Lcom/baidu/home2/R$styleable;->PagedView:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 203
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->setPageSpacing(I)V

    .line 204
    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mPageLayoutPaddingTop:I

    .line 206
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mPageLayoutPaddingBottom:I

    .line 208
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mPageLayoutPaddingLeft:I

    .line 210
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mPageLayoutPaddingRight:I

    .line 212
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mPageLayoutWidthGap:I

    .line 214
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mPageLayoutHeightGap:I

    .line 216
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 218
    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->setHapticFeedbackEnabled(Z)V

    .line 219
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->init()V

    .line 220
    return-void
.end method

.method private checkForOverScroll()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 372
    const/4 v0, 0x0

    .line 373
    .local v0, overScroll:I
    iget v1, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mScrollX:I

    iput v1, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mOverScrollX:I

    .line 374
    iget v1, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mMaxScrollX:I

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getChildCount()I

    move-result v1

    if-lt v1, v2, :cond_0

    .line 375
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iput v1, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mMaxScrollX:I

    .line 377
    :cond_0
    iget-boolean v1, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mIsLoopScroll:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getChildCount()I

    move-result v1

    if-gt v1, v2, :cond_2

    .line 378
    :cond_1
    iget v1, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mScrollX:I

    if-gez v1, :cond_3

    .line 379
    iget v1, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mTouchX:F

    float-to-int v0, v1

    .line 380
    const/4 v1, 0x0

    iput v1, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mScrollX:I

    .line 386
    :cond_2
    :goto_0
    int-to-float v1, v0

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->acceleratedOverScroll(F)V

    .line 387
    return-void

    .line 381
    :cond_3
    iget v1, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mScrollX:I

    iget v2, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mMaxScrollX:I

    if-le v1, v2, :cond_2

    .line 382
    iget v1, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mTouchX:F

    float-to-int v1, v1

    iget v2, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mMaxScrollX:I

    sub-int v0, v1, v2

    .line 383
    iget v1, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mMaxScrollX:I

    iput v1, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mScrollX:I

    goto :goto_0
.end method

.method private overScrollInfluenceCurve(F)F
    .locals 2
    .parameter "f"

    .prologue
    const/high16 v1, 0x3f80

    .line 1089
    sub-float/2addr p1, v1

    .line 1090
    mul-float v0, p1, p1

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method protected acceleratedOverScroll(F)V
    .locals 6
    .parameter "amount"

    .prologue
    const/4 v5, 0x0

    .line 1094
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getMeasuredWidth()I

    move-result v2

    .line 1098
    .local v2, screenSize:I
    const/high16 v3, 0x4000

    int-to-float v4, v2

    div-float v4, p1, v4

    mul-float v0, v3, v4

    .line 1100
    .local v0, f:F
    cmpl-float v3, v0, v5

    if-nez v3, :cond_0

    .line 1117
    :goto_0
    return-void

    .line 1104
    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f80

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    .line 1105
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v0, v3

    .line 1108
    :cond_1
    int-to-float v3, v2

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1109
    .local v1, overScrollAmount:I
    cmpg-float v3, p1, v5

    if-gez v3, :cond_2

    .line 1110
    iput v1, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mOverScrollX:I

    .line 1111
    const/4 v3, 0x0

    iput v3, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mScrollX:I

    .line 1116
    :goto_1
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->invalidate()V

    goto :goto_0

    .line 1113
    :cond_2
    iget v3, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mMaxScrollX:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mOverScrollX:I

    .line 1114
    iget v3, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mMaxScrollX:I

    iput v3, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mScrollX:I

    goto :goto_1
.end method

.method protected acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "ev"

    .prologue
    .line 1347
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 1348
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1350
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1351
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 2
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
    .line 826
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    iget v0, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mCurrentPage:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getPageCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 827
    iget v0, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    .line 829
    :cond_0
    const/16 v0, 0x11

    if-ne p2, v0, :cond_2

    .line 830
    iget v0, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mCurrentPage:I

    if-lez v0, :cond_1

    .line 831
    iget v0, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    .line 838
    :cond_1
    :goto_0
    return-void

    .line 833
    :cond_2
    const/16 v0, 0x42

    if-ne p2, v0, :cond_1

    .line 834
    iget v0, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 835
    iget v0, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    goto :goto_0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 654
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 658
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mForceScreenScrolled:Z

    .line 659
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->invalidate()V

    .line 660
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->invalidateCachedOffsets()V

    .line 661
    return-void
.end method

.method public allowLongPress()Z
    .locals 1

    .prologue
    .line 1600
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mAllowLongPress:Z

    return v0
.end method

.method protected animateClickFeedback(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0
    .parameter "v"
    .parameter "r"

    .prologue
    .line 1015
    return-void
.end method

.method protected cancelCurrentPageLongPress()V
    .locals 2

    .prologue
    .line 1060
    iget-boolean v1, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mAllowLongPress:Z

    if-eqz v1, :cond_0

    .line 1061
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mAllowLongPress:Z

    .line 1065
    iget v1, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 1066
    .local v0, currentPage:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1067
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 1070
    .end local v0           #currentPage:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public computeScroll()V
    .locals 0

    .prologue
    .line 451
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->computeScrollHelper()Z

    .line 452
    return-void
.end method

.method protected computeScrollHelper()Z
    .locals 10

    .prologue
    const/4 v9, -0x1

    const v8, 0x4e6e6b28

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 392
    iget-object v6, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 394
    iget-object v5, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    iput v5, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mScrollX:I

    int-to-float v5, v5

    iput v5, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mTouchX:F

    .line 395
    invoke-direct {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->checkForOverScroll()V

    .line 396
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    long-to-float v5, v5

    div-float/2addr v5, v8

    iput v5, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mSmoothingTime:F

    .line 397
    iget-object v5, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrY()I

    move-result v5

    iput v5, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mScrollY:I

    .line 398
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->postInvalidate()V

    .line 446
    :cond_0
    :goto_0
    return v4

    .line 400
    :cond_1
    iget v6, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mNextPage:I

    if-eq v6, v9, :cond_3

    .line 401
    iget v6, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mNextPage:I

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getPageCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mCurrentPage:I

    .line 402
    iput v9, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mNextPage:I

    .line 403
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->notifyPageSwitchListener()V

    .line 406
    iget-boolean v6, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mDeferLoadAssociatedPagesUntilScrollCompletes:Z

    if-eqz v6, :cond_2

    .line 407
    iget v6, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mCurrentPage:I

    invoke-virtual {p0, v6}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->loadAssociatedPages(I)V

    .line 408
    iput-boolean v5, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mDeferLoadAssociatedPagesUntilScrollCompletes:Z

    .line 414
    :cond_2
    iget v5, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mTouchState:I

    if-nez v5, :cond_0

    .line 415
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->pageEndMoving()V

    goto :goto_0

    .line 427
    :cond_3
    iget v6, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mTouchState:I

    if-ne v6, v4, :cond_5

    .line 428
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    long-to-float v6, v6

    div-float v3, v6, v8

    .line 429
    .local v3, now:F
    iget v6, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mSmoothingTime:F

    sub-float v6, v3, v6

    sget v7, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->SMOOTHING_CONSTANT:F

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    double-to-float v2, v6

    .line 430
    .local v2, e:F
    iget v6, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mTouchX:F

    iget v7, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mScrollX:I

    int-to-float v7, v7

    sub-float v1, v6, v7

    .line 431
    .local v1, dx:F
    mul-float v6, v2, v1

    float-to-int v0, v6

    .line 432
    .local v0, delta:I
    iget v6, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mCorrectionFactor:I

    if-ge v6, v4, :cond_4

    .line 433
    iget v4, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mCorrectionFactor:I

    rsub-int/lit8 v4, v4, 0x2

    div-int/2addr v0, v4

    .line 434
    iget v4, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mCorrectionFactor:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mCorrectionFactor:I

    .line 436
    :cond_4
    iget v4, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mScrollX:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mScrollX:I

    .line 437
    iput v3, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mSmoothingTime:F

    .line 438
    invoke-direct {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->checkForOverScroll()V

    .line 442
    float-to-int v4, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-lez v4, :cond_5

    .line 443
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->postInvalidate()V

    .end local v0           #delta:I
    .end local v1           #dx:F
    .end local v2           #e:F
    .end local v3           #now:F
    :cond_5
    move v4, v5

    .line 446
    goto :goto_0
.end method

.method protected dampedOverScroll(F)V
    .locals 6
    .parameter "amount"

    .prologue
    const/4 v5, 0x0

    .line 1120
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getMeasuredWidth()I

    move-result v2

    .line 1122
    .local v2, screenSize:I
    int-to-float v3, v2

    div-float v0, p1, v3

    .line 1124
    .local v0, f:F
    cmpl-float v3, v0, v5

    if-nez v3, :cond_0

    .line 1142
    :goto_0
    return-void

    .line 1126
    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float v3, v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-direct {p0, v4}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->overScrollInfluenceCurve(F)F

    move-result v4

    mul-float v0, v3, v4

    .line 1129
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f80

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    .line 1130
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v0, v3

    .line 1133
    :cond_1
    const v3, 0x3e0f5c29

    mul-float/2addr v3, v0

    int-to-float v4, v2

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1134
    .local v1, overScrollAmount:I
    cmpg-float v3, p1, v5

    if-gez v3, :cond_2

    .line 1135
    iput v1, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mOverScrollX:I

    .line 1136
    const/4 v3, 0x0

    iput v3, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mScrollX:I

    .line 1141
    :goto_1
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->invalidate()V

    goto :goto_0

    .line 1138
    :cond_2
    iget v3, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mMaxScrollX:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mOverScrollX:I

    .line 1139
    iget v3, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mMaxScrollX:I

    iput v3, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mScrollX:I

    goto :goto_1
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "ev"

    .prologue
    .line 1018
    const v0, 0x3ecccccd

    invoke-virtual {p0, p1, v0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->determineScrollingStart(Landroid/view/MotionEvent;F)V

    .line 1019
    return-void
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;F)V
    .locals 11
    .parameter "ev"
    .parameter "touchSlopScale"

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 1030
    iget v10, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mActivePointerId:I

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 1031
    .local v0, pointerIndex:I
    const/4 v10, -0x1

    if-ne v0, v10, :cond_1

    .line 1057
    :cond_0
    :goto_0
    return-void

    .line 1034
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 1035
    .local v2, x:F
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .line 1036
    .local v6, y:F
    iget v10, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mLastMotionX:F

    sub-float v10, v2, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-int v3, v10

    .line 1037
    .local v3, xDiff:I
    iget v10, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mLastMotionY:F

    sub-float v10, v6, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-int v7, v10

    .line 1039
    .local v7, yDiff:I
    iget v10, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mTouchSlop:I

    int-to-float v10, v10

    mul-float/2addr v10, p2

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1040
    .local v1, touchSlop:I
    iget v10, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mPagingTouchSlop:I

    if-le v3, v10, :cond_5

    move v5, v9

    .line 1041
    .local v5, xPaged:Z
    :goto_1
    if-le v3, v1, :cond_6

    move v4, v9

    .line 1042
    .local v4, xMoved:Z
    :goto_2
    if-le v7, v1, :cond_2

    move v8, v9

    .line 1044
    .local v8, yMoved:Z
    :cond_2
    if-nez v4, :cond_3

    if-nez v5, :cond_3

    if-eqz v8, :cond_0

    .line 1045
    :cond_3
    iget-boolean v10, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mUsePagingTouchSlop:Z

    if-eqz v10, :cond_7

    if-eqz v5, :cond_4

    .line 1047
    :goto_3
    iput v9, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mTouchState:I

    .line 1048
    iput v2, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mLastMotionX:F

    .line 1049
    iget v9, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mScrollX:I

    int-to-float v9, v9

    iput v9, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mTouchX:F

    .line 1050
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    long-to-float v9, v9

    const v10, 0x4e6e6b28

    div-float/2addr v9, v10

    iput v9, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mSmoothingTime:F

    .line 1051
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->pageBeginMoving()V

    .line 1055
    :cond_4
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->cancelCurrentPageLongPress()V

    goto :goto_0

    .end local v4           #xMoved:Z
    .end local v5           #xPaged:Z
    .end local v8           #yMoved:Z
    :cond_5
    move v5, v8

    .line 1040
    goto :goto_1

    .restart local v5       #xPaged:Z
    :cond_6
    move v4, v8

    .line 1041
    goto :goto_2

    .line 1045
    .restart local v4       #xMoved:Z
    .restart local v8       #yMoved:Z
    :cond_7
    if-eqz v4, :cond_4

    goto :goto_3
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 768
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .line 772
    .local v0, halfScreenSize:I
    iget v2, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mOverScrollX:I

    add-int v1, v2, v0

    .line 773
    .local v1, screenCenter:I
    iget v2, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mScrollX:I

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mScrollX:I

    iget v3, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mMaxScrollX:I

    if-le v2, v3, :cond_1

    .line 774
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mForceScreenScrolled:Z

    .line 776
    :cond_1
    iget v2, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mLastScreenCenter:I

    if-ne v1, v2, :cond_2

    iget-boolean v2, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mForceScreenScrolled:Z

    if-eqz v2, :cond_3

    .line 777
    :cond_2
    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->screenScrolled(I)V

    .line 778
    iput v1, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mLastScreenCenter:I

    .line 779
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mForceScreenScrolled:Z

    .line 781
    :cond_3
    return-void
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 3
    .parameter "focused"
    .parameter "direction"

    .prologue
    const/4 v0, 0x1

    .line 810
    const/16 v1, 0x11

    if-ne p2, v1, :cond_0

    .line 811
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getCurrentPage()I

    move-result v1

    if-lez v1, :cond_1

    .line 812
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getCurrentPage()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->snapToPage(I)V

    .line 821
    :goto_0
    return v0

    .line 815
    :cond_0
    const/16 v1, 0x42

    if-ne p2, v1, :cond_1

    .line 816
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 817
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getCurrentPage()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->snapToPage(I)V

    goto :goto_0

    .line 821
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method distanceInfluenceForSnapDuration(F)F
    .locals 4
    .parameter "f"

    .prologue
    .line 1454
    const/high16 v0, 0x3f00

    sub-float/2addr p1, v0

    .line 1455
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 1456
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .locals 4
    .parameter "focused"

    .prologue
    .line 848
    iget v3, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mCurrentPage:I

    invoke-virtual {p0, v3}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 849
    .local v0, current:Landroid/view/View;
    move-object v2, p1

    .line 851
    .local v2, v:Landroid/view/View;
    :goto_0
    if-ne v2, v0, :cond_1

    .line 852
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    .line 862
    :cond_0
    return-void

    .line 855
    :cond_1
    if-eq v2, p0, :cond_0

    .line 858
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 859
    .local v1, parent:Landroid/view/ViewParent;
    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_0

    .line 860
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .end local v2           #v:Landroid/view/View;
    check-cast v2, Landroid/view/View;

    .restart local v2       #v:Landroid/view/View;
    goto :goto_0
.end method

.method protected getAssociatedLowerPageBound(I)I
    .locals 2
    .parameter "page"

    .prologue
    .line 1699
    const/4 v0, 0x0

    add-int/lit8 v1, p1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected getAssociatedUpperPageBound(I)I
    .locals 3
    .parameter "page"

    .prologue
    .line 1703
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getChildCount()I

    move-result v0

    .line 1704
    .local v0, count:I
    add-int/lit8 v1, p1, 0x1

    add-int/lit8 v2, v0, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1
.end method

.method protected getCheckedGrandchildren()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/Checkable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1728
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1729
    .local v0, checked:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/Checkable;>;"
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getChildCount()I

    move-result v1

    .line 1730
    .local v1, childCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 1731
    invoke-virtual {p0, v3}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getPageAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/baidu/launcher/ui/common/Page;

    .line 1732
    .local v5, layout:Lcom/baidu/launcher/ui/common/Page;
    invoke-interface {v5}, Lcom/baidu/launcher/ui/common/Page;->getPageChildCount()I

    move-result v2

    .line 1733
    .local v2, grandChildCount:I
    const/4 v4, 0x0

    .local v4, j:I
    :goto_1
    if-ge v4, v2, :cond_1

    .line 1734
    invoke-interface {v5, v4}, Lcom/baidu/launcher/ui/common/Page;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v6

    .line 1735
    .local v6, v:Landroid/view/View;
    instance-of v7, v6, Landroid/widget/Checkable;

    if-eqz v7, :cond_0

    move-object v7, v6

    check-cast v7, Landroid/widget/Checkable;

    invoke-interface {v7}, Landroid/widget/Checkable;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1736
    check-cast v6, Landroid/widget/Checkable;

    .end local v6           #v:Landroid/view/View;
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1733
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1730
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1740
    .end local v2           #grandChildCount:I
    .end local v4           #j:I
    .end local v5           #layout:Lcom/baidu/launcher/ui/common/Page;
    :cond_2
    return-object v0
.end method

.method protected getChildIndexForRelativeOffset(I)I
    .locals 5
    .parameter "relativeOffset"

    .prologue
    .line 1391
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getChildCount()I

    move-result v0

    .line 1394
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1395
    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getRelativeChildOffset(I)I

    move-result v2

    .line 1396
    .local v2, left:I
    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v4

    add-int v3, v2, v4

    .line 1397
    .local v3, right:I
    if-gt v2, p1, :cond_0

    if-gt p1, v3, :cond_0

    .line 1401
    .end local v1           #i:I
    .end local v2           #left:I
    .end local v3           #right:I
    :goto_1
    return v1

    .line 1394
    .restart local v1       #i:I
    .restart local v2       #left:I
    .restart local v3       #right:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1401
    .end local v2           #left:I
    .end local v3           #right:I
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method protected getChildOffset(I)I
    .locals 5
    .parameter "index"

    .prologue
    const/4 v2, 0x0

    .line 683
    iget v3, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mLayoutScale:F

    const/high16 v4, 0x3f80

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_1

    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mChildOffsets:[I

    .line 686
    .local v0, childOffsets:[I
    :goto_0
    if-eqz v0, :cond_2

    aget v3, v0, p1

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 687
    aget v2, v0, p1

    .line 699
    :cond_0
    :goto_1
    return v2

    .line 683
    .end local v0           #childOffsets:[I
    :cond_1
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mChildOffsetsWithLayoutScale:[I

    goto :goto_0

    .line 689
    .restart local v0       #childOffsets:[I
    :cond_2
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_0

    .line 692
    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getRelativeChildOffset(I)I

    move-result v2

    .line 693
    .local v2, offset:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, p1, :cond_3

    .line 694
    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v3

    iget v4, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mPageSpacing:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 693
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 696
    :cond_3
    if-eqz v0, :cond_0

    .line 697
    aput v2, v0, p1

    goto :goto_1
.end method

.method protected getChildWidth(I)I
    .locals 3
    .parameter "index"

    .prologue
    .line 1408
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 1409
    .local v0, measuredWidth:I
    iget v1, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mMinimumWidth:I

    .line 1410
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

.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 264
    iget v0, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mCurrentPage:I

    return v0
.end method

.method protected getCurrentPageDescription()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1855
    iget v1, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mNextPage:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v0, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mNextPage:I

    .line 1856
    .local v0, page:I
    :goto_0
    iget-object v1, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0061

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    add-int/lit8 v4, v0, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getChildCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1855
    .end local v0           #page:I
    :cond_0
    iget v0, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mCurrentPage:I

    goto :goto_0
.end method

.method public getPageAt(I)Landroid/view/View;
    .locals 1
    .parameter "index"

    .prologue
    .line 272
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getPageCount()I
    .locals 1

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getPageForView(Landroid/view/View;)I
    .locals 5
    .parameter "v"

    .prologue
    .line 1583
    const/4 v2, -0x1

    .line 1584
    .local v2, result:I
    if-eqz p1, :cond_1

    .line 1585
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 1586
    .local v3, vp:Landroid/view/ViewParent;
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getChildCount()I

    move-result v0

    .line 1587
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1588
    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 1593
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v3           #vp:Landroid/view/ViewParent;
    :goto_1
    return v1

    .line 1587
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

    .line 1593
    goto :goto_1
.end method

.method getPageNearestToCenterOfScreen()I
    .locals 12

    .prologue
    .line 1414
    const v7, 0x7fffffff

    .line 1415
    .local v7, minDistanceFromScreenCenter:I
    const/4 v8, -0x1

    .line 1416
    .local v8, minDistanceFromScreenCenterIndex:I
    iget v10, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mScrollX:I

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getMeasuredWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    add-int v9, v10, v11

    .line 1417
    .local v9, screenCenter:I
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getChildCount()I

    move-result v1

    .line 1418
    .local v1, childCount:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v1, :cond_1

    .line 1419
    invoke-virtual {p0, v5}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getPageAt(I)Landroid/view/View;

    move-result-object v6

    .line 1420
    .local v6, layout:Landroid/view/View;
    invoke-virtual {p0, v6}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v2

    .line 1421
    .local v2, childWidth:I
    div-int/lit8 v4, v2, 0x2

    .line 1422
    .local v4, halfChildWidth:I
    invoke-virtual {p0, v5}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getChildOffset(I)I

    move-result v10

    add-int v0, v10, v4

    .line 1423
    .local v0, childCenter:I
    sub-int v10, v0, v9

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1424
    .local v3, distanceFromScreenCenter:I
    if-ge v3, v7, :cond_0

    .line 1425
    move v7, v3

    .line 1426
    move v8, v5

    .line 1418
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1429
    .end local v0           #childCenter:I
    .end local v2           #childWidth:I
    .end local v3           #distanceFromScreenCenter:I
    .end local v4           #halfChildWidth:I
    .end local v6           #layout:Landroid/view/View;
    :cond_1
    return v8
.end method

.method protected getRelativeChildOffset(I)I
    .locals 5
    .parameter "index"

    .prologue
    .line 704
    iget-object v2, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mChildRelativeOffsets:[I

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mChildRelativeOffsets:[I

    aget v2, v2, p1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 705
    iget-object v2, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mChildRelativeOffsets:[I

    aget v0, v2, p1

    .line 713
    :cond_0
    :goto_0
    return v0

    .line 707
    :cond_1
    iget v2, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mPaddingLeft:I

    iget v3, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mPaddingRight:I

    add-int v1, v2, v3

    .line 708
    .local v1, padding:I
    iget v2, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mPaddingLeft:I

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getChildWidth(I)I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int v0, v2, v3

    .line 710
    .local v0, offset:I
    iget-object v2, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mChildRelativeOffsets:[I

    if-eqz v2, :cond_0

    .line 711
    iget-object v2, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mChildRelativeOffsets:[I

    aput v0, v2, p1

    goto :goto_0
.end method

.method protected getScaledMeasuredWidth(Landroid/view/View;)I
    .locals 5
    .parameter "child"

    .prologue
    .line 728
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 729
    .local v1, measuredWidth:I
    iget v2, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mMinimumWidth:I

    .line 730
    .local v2, minWidth:I
    if-le v2, v1, :cond_0

    move v0, v2

    .line 731
    .local v0, maxWidth:I
    :goto_0
    int-to-float v3, v0

    iget v4, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mLayoutScale:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f00

    add-float/2addr v3, v4

    float-to-int v3, v3

    return v3

    .end local v0           #maxWidth:I
    :cond_0
    move v0, v1

    .line 730
    goto :goto_0
.end method

.method protected getScaledRelativeChildOffset(I)I
    .locals 5
    .parameter "index"

    .prologue
    .line 718
    iget v2, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mPaddingLeft:I

    iget v3, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mPaddingRight:I

    add-int v1, v2, v3

    .line 719
    .local v1, padding:I
    iget v2, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mPaddingLeft:I

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int v0, v2, v3

    .line 721
    .local v0, offset:I
    return v0
.end method

.method protected getScrollProgress(ILandroid/view/View;I)F
    .locals 7
    .parameter "screenCenter"
    .parameter "v"
    .parameter "page"

    .prologue
    const/high16 v6, 0x3f80

    .line 1073
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getMeasuredWidth()I

    move-result v4

    div-int/lit8 v1, v4, 0x2

    .line 1075
    .local v1, halfScreenSize:I
    invoke-virtual {p0, p2}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v4

    iget v5, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mPageSpacing:I

    add-int v3, v4, v5

    .line 1076
    .local v3, totalDistance:I
    invoke-virtual {p0, p3}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getChildOffset(I)I

    move-result v4

    invoke-virtual {p0, p3}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getRelativeChildOffset(I)I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v4, v1

    sub-int v0, p1, v4

    .line 1079
    .local v0, delta:I
    int-to-float v4, v0

    int-to-float v5, v3

    mul-float/2addr v5, v6

    div-float v2, v4, v5

    .line 1080
    .local v2, scrollProgress:F
    invoke-static {v2, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 1081
    const/high16 v4, -0x4080

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1082
    return v2
.end method

.method protected getSingleCheckedGrandchild()Landroid/widget/Checkable;
    .locals 8

    .prologue
    .line 1748
    iget v6, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mChoiceMode:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    .line 1749
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getChildCount()I

    move-result v0

    .line 1750
    .local v0, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 1751
    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/baidu/launcher/ui/common/Page;

    .line 1752
    .local v4, layout:Lcom/baidu/launcher/ui/common/Page;
    invoke-interface {v4}, Lcom/baidu/launcher/ui/common/Page;->getPageChildCount()I

    move-result v1

    .line 1753
    .local v1, grandChildCount:I
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    if-ge v3, v1, :cond_1

    .line 1754
    invoke-interface {v4, v3}, Lcom/baidu/launcher/ui/common/Page;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v5

    .line 1755
    .local v5, v:Landroid/view/View;
    instance-of v6, v5, Landroid/widget/Checkable;

    if-eqz v6, :cond_0

    move-object v6, v5

    check-cast v6, Landroid/widget/Checkable;

    invoke-interface {v6}, Landroid/widget/Checkable;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1756
    check-cast v5, Landroid/widget/Checkable;

    .line 1761
    .end local v0           #childCount:I
    .end local v1           #grandChildCount:I
    .end local v2           #i:I
    .end local v3           #j:I
    .end local v4           #layout:Lcom/baidu/launcher/ui/common/Page;
    .end local v5           #v:Landroid/view/View;
    :goto_2
    return-object v5

    .line 1753
    .restart local v0       #childCount:I
    .restart local v1       #grandChildCount:I
    .restart local v2       #i:I
    .restart local v3       #j:I
    .restart local v4       #layout:Lcom/baidu/launcher/ui/common/Page;
    .restart local v5       #v:Landroid/view/View;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1750
    .end local v5           #v:Landroid/view/View;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1761
    .end local v0           #childCount:I
    .end local v1           #grandChildCount:I
    .end local v2           #i:I
    .end local v3           #j:I
    .end local v4           #layout:Lcom/baidu/launcher/ui/common/Page;
    :cond_2
    const/4 v5, 0x0

    goto :goto_2
.end method

.method protected getVisiblePages([I)V
    .locals 11
    .parameter "range"

    .prologue
    const/4 v6, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 735
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getChildCount()I

    move-result v1

    .line 736
    .local v1, pageCount:I
    if-lez v1, :cond_3

    .line 737
    invoke-virtual {p0, v9}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getPageAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v2

    .line 738
    .local v2, pageWidth:I
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getMeasuredWidth()I

    move-result v4

    .line 739
    .local v4, screenWidth:I
    invoke-virtual {p0, v9}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getScaledRelativeChildOffset(I)I

    move-result v6

    add-int v5, v6, v2

    .line 740
    .local v5, x:I
    const/4 v0, 0x0

    .line 741
    .local v0, leftScreen:I
    const/4 v3, 0x0

    .line 742
    .local v3, rightScreen:I
    :goto_0
    iget v6, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mScrollX:I

    if-gt v5, v6, :cond_0

    add-int/lit8 v6, v1, -0x1

    if-ge v0, v6, :cond_0

    .line 743
    add-int/lit8 v0, v0, 0x1

    .line 744
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getPageAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v6

    iget v7, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mPageSpacing:I

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    goto :goto_0

    .line 746
    :cond_0
    move v3, v0

    .line 747
    iget-boolean v6, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mIsLoopScroll:Z

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getChildCount()I

    move-result v6

    if-le v6, v10, :cond_1

    .line 748
    :goto_1
    int-to-float v6, v5

    iget v7, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mTouchX:F

    int-to-float v8, v4

    add-float/2addr v7, v8

    cmpg-float v6, v6, v7

    if-gez v6, :cond_2

    add-int/lit8 v6, v1, -0x1

    if-ge v3, v6, :cond_2

    .line 749
    add-int/lit8 v3, v3, 0x1

    .line 750
    invoke-virtual {p0, v3}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getPageAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v6

    iget v7, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mPageSpacing:I

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    goto :goto_1

    .line 753
    :cond_1
    :goto_2
    iget v6, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mScrollX:I

    add-int/2addr v6, v4

    if-ge v5, v6, :cond_2

    add-int/lit8 v6, v1, -0x1

    if-ge v3, v6, :cond_2

    .line 754
    add-int/lit8 v3, v3, 0x1

    .line 755
    invoke-virtual {p0, v3}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getPageAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v6

    iget v7, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mPageSpacing:I

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    goto :goto_2

    .line 758
    :cond_2
    aput v0, p1, v9

    .line 759
    aput v3, p1, v10

    .line 764
    .end local v0           #leftScreen:I
    .end local v2           #pageWidth:I
    .end local v3           #rightScreen:I
    .end local v4           #screenWidth:I
    .end local v5           #x:I
    :goto_3
    return-void

    .line 761
    :cond_3
    aput v6, p1, v9

    .line 762
    aput v6, p1, v10

    goto :goto_3
.end method

.method protected hitsNextPage(FF)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 893
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getRelativeChildOffset(I)I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mPageSpacing:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected hitsPreviousPage(FF)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 886
    iget v0, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getRelativeChildOffset(I)I

    move-result v0

    iget v1, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mPageSpacing:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public indexToPage(I)I
    .locals 0
    .parameter "index"

    .prologue
    .line 276
    return p1
.end method

.method protected init()V
    .locals 4

    .prologue
    .line 226
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mDirtyPageContent:Ljava/util/ArrayList;

    .line 227
    iget-object v1, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mDirtyPageContent:Ljava/util/ArrayList;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 228
    new-instance v1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/baidu/launcher/ui/common/BaiduViewPagger$ScrollInterpolator;

    invoke-direct {v3}, Lcom/baidu/launcher/ui/common/BaiduViewPagger$ScrollInterpolator;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mScroller:Landroid/widget/Scroller;

    .line 229
    const/4 v1, 0x0

    iput v1, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mCurrentPage:I

    .line 230
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mCenterPagesVertically:Z

    .line 232
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 233
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mTouchSlop:I

    .line 234
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mPagingTouchSlop:I

    .line 235
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mMaximumVelocity:I

    .line 236
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mDensity:F

    .line 237
    return-void
.end method

.method protected invalidateCachedOffsets()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 664
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getChildCount()I

    move-result v0

    .line 665
    .local v0, count:I
    if-nez v0, :cond_1

    .line 666
    iput-object v2, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mChildOffsets:[I

    .line 667
    iput-object v2, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mChildRelativeOffsets:[I

    .line 668
    iput-object v2, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mChildOffsetsWithLayoutScale:[I

    .line 680
    :cond_0
    return-void

    .line 672
    :cond_1
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mChildOffsets:[I

    .line 673
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mChildRelativeOffsets:[I

    .line 674
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mChildOffsetsWithLayoutScale:[I

    .line 675
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 676
    iget-object v2, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mChildOffsets:[I

    aput v3, v2, v1

    .line 677
    iget-object v2, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mChildRelativeOffsets:[I

    aput v3, v2, v1

    .line 678
    iget-object v2, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mChildOffsetsWithLayoutScale:[I

    aput v3, v2, v1

    .line 675
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected invalidatePageData()V
    .locals 2

    .prologue
    .line 1791
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->invalidatePageData(IZ)V

    .line 1792
    return-void
.end method

.method protected invalidatePageData(I)V
    .locals 1
    .parameter "currentPage"

    .prologue
    .line 1795
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->invalidatePageData(IZ)V

    .line 1796
    return-void
.end method

.method protected invalidatePageData(IZ)V
    .locals 7
    .parameter "currentPage"
    .parameter "immediateAndOnly"

    .prologue
    const/high16 v6, 0x4000

    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 1799
    iget-boolean v2, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mIsDataReady:Z

    if-nez v2, :cond_1

    .line 1833
    :cond_0
    :goto_0
    return-void

    .line 1803
    :cond_1
    iget-boolean v2, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mContentIsRefreshable:Z

    if-eqz v2, :cond_0

    .line 1805
    iget-object v2, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2, v5}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 1806
    iput v4, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mNextPage:I

    .line 1809
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->syncPages()V

    .line 1814
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getMeasuredWidth()I

    move-result v2

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getMeasuredHeight()I

    move-result v3

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->measure(II)V

    .line 1818
    if-le p1, v4, :cond_2

    .line 1819
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->setCurrentPage(I)V

    .line 1823
    :cond_2
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getChildCount()I

    move-result v0

    .line 1824
    .local v0, count:I
    iget-object v2, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1825
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 1826
    iget-object v2, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1825
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1830
    :cond_3
    iget v2, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mCurrentPage:I

    invoke-virtual {p0, v2, p2}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->loadAssociatedPages(IZ)V

    .line 1831
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->requestLayout()V

    goto :goto_0
.end method

.method protected isChoiceMode(I)Z
    .locals 1
    .parameter "mode"

    .prologue
    .line 1724
    iget v0, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mChoiceMode:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isDataReady()Z
    .locals 1

    .prologue
    .line 255
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mIsDataReady:Z

    return v0
.end method

.method public isPageMoving()Z
    .locals 1

    .prologue
    .line 331
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mIsPageMoving:Z

    return v0
.end method

.method public loadAssociatedPages(I)V
    .locals 1
    .parameter "page"

    .prologue
    .line 1642
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->loadAssociatedPages(IZ)V

    .line 1643
    return-void
.end method

.method public loadAssociatedPages(IZ)V
    .locals 10
    .parameter "page"
    .parameter "immediateAndOnly"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1653
    iget-boolean v6, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mContentIsRefreshable:Z

    if-eqz v6, :cond_6

    .line 1654
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getChildCount()I

    move-result v1

    .line 1655
    .local v1, count:I
    if-ge p1, v1, :cond_6

    .line 1656
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getAssociatedLowerPageBound(I)I

    move-result v4

    .line 1657
    .local v4, lowerPageBound:I
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getAssociatedUpperPageBound(I)I

    move-result v5

    .line 1661
    .local v5, upperPageBound:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_5

    .line 1662
    if-eq v2, p1, :cond_1

    if-eqz p2, :cond_1

    .line 1661
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1665
    :cond_1
    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/ui/common/Page;

    .line 1666
    .local v3, layout:Lcom/baidu/launcher/ui/common/Page;
    invoke-interface {v3}, Lcom/baidu/launcher/ui/common/Page;->getPageChildCount()I

    move-result v0

    .line 1667
    .local v0, childCount:I
    if-gt v4, v2, :cond_3

    if-gt v2, v5, :cond_3

    .line 1668
    iget-object v6, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1669
    if-ne v2, p1, :cond_2

    if-eqz p2, :cond_2

    move v6, v7

    :goto_2
    invoke-virtual {p0, v2, v6}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->syncPageItems(IZ)V

    .line 1670
    iget-object v6, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v6, v2, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    move v6, v8

    .line 1669
    goto :goto_2

    .line 1673
    :cond_3
    if-lez v0, :cond_4

    .line 1674
    invoke-interface {v3}, Lcom/baidu/launcher/ui/common/Page;->removeAllViewsOnPage()V

    .line 1676
    :cond_4
    iget-object v6, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v6, v2, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1680
    .end local v0           #childCount:I
    .end local v3           #layout:Lcom/baidu/launcher/ui/common/Page;
    :cond_5
    iget-boolean v6, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mIsLoopScroll:Z

    if-eqz v6, :cond_6

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getChildCount()I

    move-result v6

    if-le v6, v7, :cond_6

    .line 1681
    if-nez v4, :cond_8

    if-ne v5, v7, :cond_8

    .line 1682
    iget-object v6, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mDirtyPageContent:Ljava/util/ArrayList;

    add-int/lit8 v9, v1, -0x1

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1683
    add-int/lit8 v6, v1, -0x1

    add-int/lit8 v9, v1, -0x1

    if-ne v9, p1, :cond_7

    if-eqz p2, :cond_7

    :goto_3
    invoke-virtual {p0, v6, v7}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->syncPageItems(IZ)V

    .line 1684
    iget-object v6, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mDirtyPageContent:Ljava/util/ArrayList;

    add-int/lit8 v7, v1, -0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1696
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v4           #lowerPageBound:I
    .end local v5           #upperPageBound:I
    :cond_6
    :goto_4
    return-void

    .restart local v1       #count:I
    .restart local v2       #i:I
    .restart local v4       #lowerPageBound:I
    .restart local v5       #upperPageBound:I
    :cond_7
    move v7, v8

    .line 1683
    goto :goto_3

    .line 1686
    :cond_8
    add-int/lit8 v6, v1, -0x2

    if-ne v4, v6, :cond_6

    add-int/lit8 v6, v1, -0x1

    if-ne v5, v6, :cond_6

    .line 1687
    iget-object v6, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1688
    if-nez p1, :cond_9

    if-eqz p2, :cond_9

    :goto_5
    invoke-virtual {p0, v8, v7}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->syncPageItems(IZ)V

    .line 1689
    iget-object v6, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v8, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_9
    move v7, v8

    .line 1688
    goto :goto_5
.end method

.method protected maxOverScroll()F
    .locals 3

    .prologue
    .line 1153
    const/high16 v0, 0x3f80

    .line 1154
    .local v0, f:F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float v1, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-direct {p0, v2}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->overScrollInfluenceCurve(F)F

    move-result v2

    mul-float v0, v1, v2

    .line 1155
    const v1, 0x3e0f5c29

    mul-float/2addr v1, v0

    return v1
.end method

.method public notifyPageSwitchListener()V
    .locals 3

    .prologue
    .line 311
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mPageSwitchListener:Lcom/baidu/launcher/ui/common/BaiduViewPagger$PageSwitchListener;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mPageSwitchListener:Lcom/baidu/launcher/ui/common/BaiduViewPagger$PageSwitchListener;

    iget v1, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mCurrentPage:I

    invoke-interface {v0, v1, v2}, Lcom/baidu/launcher/ui/common/BaiduViewPagger$PageSwitchListener;->onPageSwitch(Landroid/view/View;I)V

    .line 314
    :cond_0
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1862
    const/4 v0, 0x1

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "ev"

    .prologue
    const/4 v10, 0x3

    const/4 v8, -0x1

    const/4 v9, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 903
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 906
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getChildCount()I

    move-result v7

    if-gtz v7, :cond_1

    .line 907
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    .line 1000
    :cond_0
    :goto_0
    return v5

    .line 913
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 914
    .local v0, action:I
    if-ne v0, v9, :cond_2

    iget v7, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mTouchState:I

    if-eq v7, v5, :cond_0

    .line 919
    :cond_2
    and-int/lit16 v7, v0, 0xff

    packed-switch v7, :pswitch_data_0

    .line 1000
    :cond_3
    :goto_1
    :pswitch_0
    iget v7, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mTouchState:I

    if-nez v7, :cond_0

    move v5, v6

    goto :goto_0

    .line 926
    :pswitch_1
    iget v7, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mActivePointerId:I

    if-eq v7, v8, :cond_4

    .line 927
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->determineScrollingStart(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 942
    :cond_4
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 943
    .local v2, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 945
    .local v4, y:F
    iput v2, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mDownMotionX:F

    .line 946
    iput v2, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mLastMotionX:F

    .line 947
    iput v4, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mLastMotionY:F

    .line 948
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mActivePointerId:I

    .line 949
    iput-boolean v5, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mAllowLongPress:Z

    .line 956
    iget-object v7, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->getFinalX()I

    move-result v7

    iget-object v8, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->getCurrX()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 957
    .local v3, xDist:I
    iget-object v7, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->isFinished()Z

    move-result v7

    if-nez v7, :cond_5

    iget v7, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mTouchSlop:I

    if-ge v3, v7, :cond_6

    :cond_5
    move v1, v5

    .line 958
    .local v1, finishedScrolling:Z
    :goto_2
    if-eqz v1, :cond_7

    .line 959
    iput v6, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mTouchState:I

    .line 960
    iget-object v7, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->abortAnimation()V

    .line 968
    :goto_3
    iget v7, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mTouchState:I

    if-eq v7, v9, :cond_3

    iget v7, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mTouchState:I

    if-eq v7, v10, :cond_3

    .line 969
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getChildCount()I

    move-result v7

    if-lez v7, :cond_3

    .line 970
    invoke-virtual {p0, v2, v4}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->hitsPreviousPage(FF)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 971
    iput v9, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mTouchState:I

    goto :goto_1

    .end local v1           #finishedScrolling:Z
    :cond_6
    move v1, v6

    .line 957
    goto :goto_2

    .line 962
    .restart local v1       #finishedScrolling:Z
    :cond_7
    iput v5, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mTouchState:I

    goto :goto_3

    .line 972
    :cond_8
    invoke-virtual {p0, v2, v4}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->hitsNextPage(FF)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 973
    iput v10, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mTouchState:I

    goto :goto_1

    .line 982
    .end local v1           #finishedScrolling:Z
    .end local v2           #x:F
    .end local v3           #xDist:I
    .end local v4           #y:F
    :pswitch_3
    iput v6, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mTouchState:I

    .line 983
    iput-boolean v6, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mAllowLongPress:Z

    .line 984
    iput v8, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mActivePointerId:I

    .line 985
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->onPageEndMoving()V

    .line 986
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->releaseVelocityTracker()V

    goto :goto_1

    .line 991
    :pswitch_4
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 992
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->releaseVelocityTracker()V

    goto/16 :goto_1

    .line 919
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 11
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 597
    iget-boolean v9, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mIsDataReady:Z

    if-nez v9, :cond_1

    .line 648
    :cond_0
    :goto_0
    return-void

    .line 603
    :cond_1
    iget v9, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mPaddingTop:I

    iget v10, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mPaddingBottom:I

    add-int v8, v9, v10

    .line 604
    .local v8, verticalPadding:I
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getChildCount()I

    move-result v1

    .line 605
    .local v1, childCount:I
    const/4 v3, 0x0

    .line 606
    .local v3, childLeft:I
    if-lez v1, :cond_2

    .line 610
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getRelativeChildOffset(I)I

    move-result v3

    .line 613
    iget v9, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mPageSpacing:I

    if-gez v9, :cond_2

    .line 614
    sub-int v9, p4, p2

    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    invoke-virtual {p0, v9}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->setPageSpacing(I)V

    .line 618
    :cond_2
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v1, :cond_5

    .line 619
    invoke-virtual {p0, v6}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 620
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-eq v9, v10, :cond_4

    .line 621
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v5

    .line 622
    .local v5, childWidth:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 623
    .local v2, childHeight:I
    iget v4, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mPaddingTop:I

    .line 624
    .local v4, childTop:I
    iget-boolean v9, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mCenterPagesVertically:Z

    if-eqz v9, :cond_3

    .line 625
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getMeasuredHeight()I

    move-result v9

    sub-int/2addr v9, v8

    sub-int/2addr v9, v2

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v4, v9

    .line 630
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v9, v3

    add-int v10, v4, v2

    invoke-virtual {v0, v3, v4, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 632
    iget v9, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mPageSpacing:I

    add-int/2addr v9, v5

    add-int/2addr v3, v9

    .line 618
    .end local v2           #childHeight:I
    .end local v4           #childTop:I
    .end local v5           #childWidth:I
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 636
    .end local v0           #child:Landroid/view/View;
    :cond_5
    iget-boolean v9, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mFirstLayout:Z

    if-eqz v9, :cond_6

    iget v9, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mCurrentPage:I

    if-ltz v9, :cond_6

    iget v9, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getChildCount()I

    move-result v10

    if-ge v9, v10, :cond_6

    .line 637
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->setHorizontalScrollBarEnabled(Z)V

    .line 638
    iget v9, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mCurrentPage:I

    invoke-virtual {p0, v9}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getChildOffset(I)I

    move-result v9

    iget v10, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mCurrentPage:I

    invoke-virtual {p0, v10}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getRelativeChildOffset(I)I

    move-result v10

    sub-int v7, v9, v10

    .line 639
    .local v7, newX:I
    const/4 v9, 0x0

    invoke-virtual {p0, v7, v9}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->scrollTo(II)V

    .line 640
    iget-object v9, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v9, v7}, Landroid/widget/Scroller;->setFinalX(I)V

    .line 641
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->setHorizontalScrollBarEnabled(Z)V

    .line 642
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mFirstLayout:Z

    .line 645
    .end local v7           #newX:I
    :cond_6
    iget-boolean v9, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mFirstLayout:Z

    if-eqz v9, :cond_0

    iget v9, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mCurrentPage:I

    if-ltz v9, :cond_0

    iget v9, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getChildCount()I

    move-result v10

    if-ge v9, v10, :cond_0

    .line 646
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mFirstLayout:Z

    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 19
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 456
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mIsDataReady:Z

    move/from16 v17, v0

    if-nez v17, :cond_0

    .line 457
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 535
    :goto_0
    return-void

    .line 461
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v15

    .line 462
    .local v15, widthMode:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v16

    .line 463
    .local v16, widthSize:I
    const/high16 v17, 0x4000

    move/from16 v0, v17

    if-eq v15, v0, :cond_1

    .line 464
    new-instance v17, Ljava/lang/IllegalStateException;

    const-string v18, "Workspace can only be used in EXACTLY mode."

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 474
    :cond_1
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 475
    .local v8, heightMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 476
    .local v9, heightSize:I
    const/4 v13, 0x0

    .line 478
    .local v13, maxChildHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mPaddingTop:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mPaddingBottom:I

    move/from16 v18, v0

    add-int v14, v17, v18

    .line 479
    .local v14, verticalPadding:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mPaddingLeft:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mPaddingRight:I

    move/from16 v18, v0

    add-int v10, v17, v18

    .line 485
    .local v10, horizontalPadding:I
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getChildCount()I

    move-result v3

    .line 486
    .local v3, childCount:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    if-ge v11, v3, :cond_4

    .line 488
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    .line 489
    .local v2, child:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    .line 492
    .local v12, lp:Landroid/view/ViewGroup$LayoutParams;
    iget v0, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v17, v0

    const/16 v18, -0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 493
    const/high16 v7, -0x8000

    .line 499
    .local v7, childWidthMode:I
    :goto_2
    iget v0, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v17, v0

    const/16 v18, -0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 500
    const/high16 v5, -0x8000

    .line 505
    .local v5, childHeightMode:I
    :goto_3
    sub-int v17, v16, v10

    move/from16 v0, v17

    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 507
    .local v6, childWidthMeasureSpec:I
    sub-int v17, v9, v14

    move/from16 v0, v17

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 510
    .local v4, childHeightMeasureSpec:I
    invoke-virtual {v2, v6, v4}, Landroid/view/View;->measure(II)V

    .line 511
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    move/from16 v0, v17

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 486
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 495
    .end local v4           #childHeightMeasureSpec:I
    .end local v5           #childHeightMode:I
    .end local v6           #childWidthMeasureSpec:I
    .end local v7           #childWidthMode:I
    :cond_2
    const/high16 v7, 0x4000

    .restart local v7       #childWidthMode:I
    goto :goto_2

    .line 502
    :cond_3
    const/high16 v5, 0x4000

    .restart local v5       #childHeightMode:I
    goto :goto_3

    .line 517
    .end local v2           #child:Landroid/view/View;
    .end local v5           #childHeightMode:I
    .end local v7           #childWidthMode:I
    .end local v12           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    const/high16 v17, -0x8000

    move/from16 v0, v17

    if-ne v8, v0, :cond_5

    .line 518
    add-int v9, v13, v14

    .line 521
    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1, v9}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->setMeasuredDimension(II)V

    .line 528
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->invalidateCachedOffsets()V

    .line 530
    if-lez v3, :cond_6

    .line 531
    add-int/lit8 v17, v3, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getChildOffset(I)I

    move-result v17

    add-int/lit8 v18, v3, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getRelativeChildOffset(I)I

    move-result v18

    sub-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mMaxScrollX:I

    goto/16 :goto_0

    .line 533
    :cond_6
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mMaxScrollX:I

    goto/16 :goto_0
.end method

.method public onPageBeginMoving()V
    .locals 0

    .prologue
    .line 337
    return-void
.end method

.method public onPageEndMoving()V
    .locals 0

    .prologue
    .line 342
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 4
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 796
    iget v2, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mNextPage:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 797
    iget v0, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mNextPage:I

    .line 801
    .local v0, focusablePage:I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    .line 802
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 803
    invoke-virtual {v1, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v2

    .line 805
    :goto_1
    return v2

    .line 799
    .end local v0           #focusablePage:I
    .end local v1           #v:Landroid/view/View;
    :cond_0
    iget v0, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mCurrentPage:I

    .restart local v0       #focusablePage:I
    goto :goto_0

    .line 805
    .restart local v1       #v:Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "ev"

    .prologue
    .line 1361
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 1363
    .local v2, pointerIndex:I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1364
    .local v1, pointerId:I
    iget v3, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 1368
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 1369
    .local v0, newPointerIndex:I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mDownMotionX:F

    iput v3, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mLastMotionX:F

    .line 1370
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iput v3, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mLastMotionY:F

    .line 1371
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mActivePointerId:I

    .line 1372
    iget-object v3, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 1373
    iget-object v3, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 1376
    .end local v0           #newPointerIndex:I
    :cond_0
    return-void

    .line 1368
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 20
    .parameter "ev"

    .prologue
    .line 1161
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getChildCount()I

    move-result v17

    if-gtz v17, :cond_0

    .line 1162
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v17

    .line 1313
    :goto_0
    return v17

    .line 1164
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 1166
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 1168
    .local v2, action:I
    and-int/lit16 v0, v2, 0xff

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    .line 1313
    :cond_1
    :goto_1
    :pswitch_0
    const/16 v17, 0x1

    goto :goto_0

    .line 1174
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Scroller;->isFinished()Z

    move-result v17

    if-nez v17, :cond_2

    .line 1175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1177
    :cond_2
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mCorrectionFactor:I

    .line 1179
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mLastMotionX:F

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mDownMotionX:F

    .line 1180
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mActivePointerId:I

    .line 1181
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mTouchState:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 1182
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->pageBeginMoving()V

    goto :goto_1

    .line 1188
    :pswitch_2
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mCorrectionFactor:I

    .line 1189
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mTouchState:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 1191
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mActivePointerId:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v11

    .line 1192
    .local v11, pointerIndex:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v16

    .line 1193
    .local v16, x:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mLastMotionX:F

    move/from16 v17, v0

    sub-float v4, v17, v16

    .line 1200
    .local v4, deltaX:F
    float-to-int v0, v4

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    move-result v17

    if-lez v17, :cond_3

    .line 1201
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mTouchX:F

    move/from16 v17, v0

    add-float v17, v17, v4

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mTouchX:F

    .line 1202
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v17

    move-wide/from16 v0, v17

    long-to-float v0, v0

    move/from16 v17, v0

    const v18, 0x4e6e6b28

    div-float v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mSmoothingTime:F

    .line 1203
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->postInvalidate()V

    .line 1204
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mLastMotionX:F

    goto/16 :goto_1

    .line 1206
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->awakenScrollBars()Z

    goto/16 :goto_1

    .line 1209
    .end local v4           #deltaX:F
    .end local v11           #pointerIndex:I
    .end local v16           #x:F
    :cond_4
    invoke-virtual/range {p0 .. p1}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->determineScrollingStart(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 1214
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mTouchState:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_17

    .line 1215
    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mActivePointerId:I

    .line 1216
    .local v3, activePointerId:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v11

    .line 1217
    .restart local v11       #pointerIndex:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v16

    .line 1218
    .restart local v16       #x:F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1219
    .local v14, velocityTracker:Landroid/view/VelocityTracker;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mIsLoopScroll:Z

    move/from16 v17, v0

    if-eqz v17, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getChildCount()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_9

    const/4 v8, 0x1

    .line 1220
    .local v8, loop:Z
    :goto_2
    const/16 v17, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mMaximumVelocity:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1221
    invoke-virtual {v14, v3}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v17

    move/from16 v0, v17

    float-to-int v15, v0

    .line 1222
    .local v15, velocityX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mDownMotionX:F

    move/from16 v17, v0

    sub-float v17, v16, v17

    move/from16 v0, v17

    float-to-int v4, v0

    .line 1223
    .local v4, deltaX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mCurrentPage:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getPageAt(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v10

    .line 1224
    .local v10, pageWidth:I
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    int-to-float v0, v10

    move/from16 v18, v0

    const v19, 0x3ecccccd

    mul-float v18, v18, v19

    cmpl-float v17, v17, v18

    if-lez v17, :cond_a

    const/4 v7, 0x1

    .line 1227
    .local v7, isSignificantMove:Z
    :goto_3
    sget v13, Lcom/baidu/launcher/utils/DefaultConfigurationHelper;->defaultLauncherSnapVelocity:I

    .line 1230
    .local v13, snapVelocity:I
    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v17

    move/from16 v0, v17

    if-le v0, v13, :cond_b

    const/4 v6, 0x1

    .line 1238
    .local v6, isFling:Z
    :goto_4
    const/4 v12, 0x0

    .line 1239
    .local v12, returnToOriginalPage:Z
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    int-to-float v0, v10

    move/from16 v18, v0

    const v19, 0x3ea8f5c3

    mul-float v18, v18, v19

    cmpl-float v17, v17, v18

    if-lez v17, :cond_5

    int-to-float v0, v15

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->signum(F)F

    move-result v17

    int-to-float v0, v4

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->signum(F)F

    move-result v18

    cmpl-float v17, v17, v18

    if-eqz v17, :cond_5

    if-eqz v6, :cond_5

    .line 1241
    const/4 v12, 0x1

    .line 1251
    :cond_5
    if-eqz v7, :cond_6

    if-lez v4, :cond_6

    if-eqz v6, :cond_7

    :cond_6
    if-eqz v6, :cond_f

    if-lez v15, :cond_f

    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mCurrentPage:I

    move/from16 v18, v0

    if-eqz v8, :cond_c

    const/16 v17, -0x1

    :goto_5
    move/from16 v0, v18

    move/from16 v1, v17

    if-le v0, v1, :cond_f

    .line 1253
    if-eqz v12, :cond_d

    move-object/from16 v0, p0

    iget v5, v0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mCurrentPage:I

    .line 1254
    .local v5, finalPage:I
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mCurrentPage:I

    move/from16 v17, v0

    if-nez v17, :cond_8

    if-eqz v8, :cond_8

    .line 1255
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mCurrentPage:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getPageAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getWidth()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getChildCount()I

    move-result v18

    mul-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mScrollX:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mScrollX:I

    .line 1257
    :cond_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v15}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->snapToPageWithVelocity(II)V

    .line 1294
    .end local v3           #activePointerId:I
    .end local v4           #deltaX:I
    .end local v5           #finalPage:I
    .end local v6           #isFling:Z
    .end local v7           #isSignificantMove:Z
    .end local v8           #loop:Z
    .end local v10           #pageWidth:I
    .end local v11           #pointerIndex:I
    .end local v12           #returnToOriginalPage:Z
    .end local v13           #snapVelocity:I
    .end local v14           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v15           #velocityX:I
    .end local v16           #x:F
    :goto_7
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mTouchState:I

    .line 1295
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mActivePointerId:I

    .line 1296
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->releaseVelocityTracker()V

    goto/16 :goto_1

    .line 1219
    .restart local v3       #activePointerId:I
    .restart local v11       #pointerIndex:I
    .restart local v14       #velocityTracker:Landroid/view/VelocityTracker;
    .restart local v16       #x:F
    :cond_9
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 1224
    .restart local v4       #deltaX:I
    .restart local v8       #loop:Z
    .restart local v10       #pageWidth:I
    .restart local v15       #velocityX:I
    :cond_a
    const/4 v7, 0x0

    goto/16 :goto_3

    .line 1230
    .restart local v7       #isSignificantMove:Z
    .restart local v13       #snapVelocity:I
    :cond_b
    const/4 v6, 0x0

    goto/16 :goto_4

    .line 1251
    .restart local v6       #isFling:Z
    .restart local v12       #returnToOriginalPage:Z
    :cond_c
    const/16 v17, 0x0

    goto :goto_5

    .line 1253
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mCurrentPage:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    if-gez v17, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getChildCount()I

    move-result v17

    add-int/lit8 v5, v17, -0x1

    goto :goto_6

    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mCurrentPage:I

    move/from16 v17, v0

    add-int/lit8 v5, v17, -0x1

    goto :goto_6

    .line 1258
    :cond_f
    if-eqz v7, :cond_10

    if-gez v4, :cond_10

    if-eqz v6, :cond_11

    :cond_10
    if-eqz v6, :cond_16

    if-gez v15, :cond_16

    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mCurrentPage:I

    move/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getChildCount()I

    move-result v19

    if-eqz v8, :cond_13

    const/16 v17, 0x0

    :goto_8
    sub-int v17, v19, v17

    move/from16 v0, v18

    move/from16 v1, v17

    if-ge v0, v1, :cond_16

    .line 1261
    if-eqz v12, :cond_14

    move-object/from16 v0, p0

    iget v5, v0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mCurrentPage:I

    .line 1262
    .restart local v5       #finalPage:I
    :goto_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mCurrentPage:I

    move/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getChildCount()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_12

    if-eqz v8, :cond_12

    .line 1263
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mScrollX:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mCurrentPage:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getPageAt(I)Landroid/view/View;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getWidth()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getChildCount()I

    move-result v19

    mul-int v18, v18, v19

    sub-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mScrollX:I

    .line 1265
    :cond_12
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v15}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->snapToPageWithVelocity(II)V

    goto/16 :goto_7

    .line 1258
    .end local v5           #finalPage:I
    :cond_13
    const/16 v17, 0x1

    goto :goto_8

    .line 1261
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mCurrentPage:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getChildCount()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_15

    const/4 v5, 0x0

    goto :goto_9

    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mCurrentPage:I

    move/from16 v17, v0

    add-int/lit8 v5, v17, 0x1

    goto :goto_9

    .line 1267
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->snapToDestination()V

    goto/16 :goto_7

    .line 1269
    .end local v3           #activePointerId:I
    .end local v4           #deltaX:I
    .end local v6           #isFling:Z
    .end local v7           #isSignificantMove:Z
    .end local v8           #loop:Z
    .end local v10           #pageWidth:I
    .end local v11           #pointerIndex:I
    .end local v12           #returnToOriginalPage:Z
    .end local v13           #snapVelocity:I
    .end local v14           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v15           #velocityX:I
    .end local v16           #x:F
    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mTouchState:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_19

    .line 1274
    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mCurrentPage:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1275
    .local v9, nextPage:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mCurrentPage:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v9, v0, :cond_18

    .line 1276
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->snapToPage(I)V

    goto/16 :goto_7

    .line 1278
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->snapToDestination()V

    goto/16 :goto_7

    .line 1280
    .end local v9           #nextPage:I
    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mTouchState:I

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1b

    .line 1285
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getChildCount()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mCurrentPage:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 1286
    .restart local v9       #nextPage:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mCurrentPage:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v9, v0, :cond_1a

    .line 1287
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->snapToPage(I)V

    goto/16 :goto_7

    .line 1289
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->snapToDestination()V

    goto/16 :goto_7

    .line 1292
    .end local v9           #nextPage:I
    :cond_1b
    invoke-virtual/range {p0 .. p1}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->onUnhandledTap(Landroid/view/MotionEvent;)V

    goto/16 :goto_7

    .line 1300
    :pswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mTouchState:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1c

    .line 1301
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->snapToDestination()V

    .line 1303
    :cond_1c
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mTouchState:I

    .line 1304
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mActivePointerId:I

    .line 1305
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->releaseVelocityTracker()V

    goto/16 :goto_1

    .line 1309
    :pswitch_5
    invoke-virtual/range {p0 .. p1}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 1168
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
    .line 1379
    return-void
.end method

.method protected overScroll(F)V
    .locals 0
    .parameter "amount"

    .prologue
    .line 1145
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->dampedOverScroll(F)V

    .line 1146
    return-void
.end method

.method public pageBeginMoving()V
    .locals 1

    .prologue
    .line 317
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mIsPageMoving:Z

    if-nez v0, :cond_0

    .line 318
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mIsPageMoving:Z

    .line 320
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->onPageBeginMoving()V

    .line 321
    return-void
.end method

.method public pageEndMoving()V
    .locals 1

    .prologue
    .line 324
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mIsPageMoving:Z

    if-eqz v0, :cond_0

    .line 325
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mIsPageMoving:Z

    .line 327
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->onPageEndMoving()V

    .line 328
    return-void
.end method

.method protected releaseVelocityTracker()V
    .locals 1

    .prologue
    .line 1354
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1355
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1356
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1358
    :cond_0
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 1383
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1384
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->indexToPage(I)I

    move-result v0

    .line 1385
    .local v0, page:I
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getCurrentPage()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1386
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->snapToPage(I)V

    .line 1388
    :cond_0
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 2
    .parameter "child"
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 785
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->indexToPage(I)I

    move-result v0

    .line 786
    .local v0, page:I
    iget v1, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mCurrentPage:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    .line 787
    :cond_0
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->snapToPage(I)V

    .line 788
    const/4 v1, 0x1

    .line 790
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 2
    .parameter "disallowIntercept"

    .prologue
    .line 872
    if-eqz p1, :cond_0

    .line 875
    iget v1, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 876
    .local v0, currentPage:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 878
    .end local v0           #currentPage:Landroid/view/View;
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 879
    return-void
.end method

.method protected resetCheckedGrandchildren()V
    .locals 4

    .prologue
    .line 1767
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getCheckedGrandchildren()Ljava/util/ArrayList;

    move-result-object v1

    .line 1768
    .local v1, checked:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/Checkable;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1769
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Checkable;

    .line 1770
    .local v0, c:Landroid/widget/Checkable;
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 1768
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1772
    .end local v0           #c:Landroid/widget/Checkable;
    :cond_0
    return-void
.end method

.method public abstract screenScrolled(I)V
.end method

.method public scrollLeft()V
    .locals 1

    .prologue
    .line 1563
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1564
    iget v0, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mCurrentPage:I

    if-lez v0, :cond_0

    .line 1565
    iget v0, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->snapToPage(I)V

    .line 1570
    :cond_0
    :goto_0
    return-void

    .line 1567
    :cond_1
    iget v0, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mNextPage:I

    if-lez v0, :cond_0

    .line 1568
    iget v0, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mNextPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->snapToPage(I)V

    goto :goto_0
.end method

.method public scrollRight()V
    .locals 2

    .prologue
    .line 1573
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1574
    iget v0, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 1575
    iget v0, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->snapToPage(I)V

    .line 1580
    :cond_0
    :goto_0
    return-void

    .line 1577
    :cond_1
    iget v0, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mNextPage:I

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 1578
    iget v0, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mNextPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->snapToPage(I)V

    goto :goto_0
.end method

.method public scrollTo(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 366
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 367
    int-to-float v0, p1

    iput v0, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mTouchX:F

    .line 368
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    long-to-float v0, v0

    const v1, 0x4e6e6b28

    div-float/2addr v0, v1

    iput v0, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mSmoothingTime:F

    .line 369
    return-void
.end method

.method public setAllowLongPress(Z)V
    .locals 0
    .parameter "allowLongPress"

    .prologue
    .line 1608
    iput-boolean p1, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mAllowLongPress:Z

    .line 1609
    return-void
.end method

.method public setCurrentPage(I)V
    .locals 2
    .parameter "currentPage"

    .prologue
    .line 294
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 300
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 308
    :goto_0
    return-void

    .line 304
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mCurrentPage:I

    .line 305
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->updateCurrentPageScroll()V

    .line 306
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->notifyPageSwitchListener()V

    .line 307
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->invalidate()V

    goto :goto_0
.end method

.method protected setDataIsReady()V
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mIsDataReady:Z

    .line 252
    return-void
.end method

.method public setLayoutScale(F)V
    .locals 0
    .parameter "childrenScale"

    .prologue
    .line 588
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 3
    .parameter "l"

    .prologue
    .line 352
    iput-object p1, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 353
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getPageCount()I

    move-result v0

    .line 354
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 355
    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 354
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 357
    :cond_0
    return-void
.end method

.method public setPageSpacing(I)V
    .locals 0
    .parameter "pageSpacing"

    .prologue
    .line 591
    iput p1, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mPageSpacing:I

    .line 592
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->invalidateCachedOffsets()V

    .line 593
    return-void
.end method

.method public setPageSwitchListener(Lcom/baidu/launcher/ui/common/BaiduViewPagger$PageSwitchListener;)V
    .locals 3
    .parameter "pageSwitchListener"

    .prologue
    .line 240
    iput-object p1, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mPageSwitchListener:Lcom/baidu/launcher/ui/common/BaiduViewPagger$PageSwitchListener;

    .line 241
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mPageSwitchListener:Lcom/baidu/launcher/ui/common/BaiduViewPagger$PageSwitchListener;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mPageSwitchListener:Lcom/baidu/launcher/ui/common/BaiduViewPagger$PageSwitchListener;

    iget v1, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mCurrentPage:I

    invoke-interface {v0, v1, v2}, Lcom/baidu/launcher/ui/common/BaiduViewPagger$PageSwitchListener;->onPageSwitch(Landroid/view/View;I)V

    .line 244
    :cond_0
    return-void
.end method

.method protected snapToDestination()V
    .locals 2

    .prologue
    .line 1433
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getPageNearestToCenterOfScreen()I

    move-result v0

    const/16 v1, 0x226

    invoke-virtual {p0, v0, v1}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->snapToPage(II)V

    .line 1434
    return-void
.end method

.method protected snapToPage(I)V
    .locals 1
    .parameter "whichPage"

    .prologue
    .line 1507
    const/16 v0, 0x226

    invoke-virtual {p0, p1, v0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->snapToPage(II)V

    .line 1508
    return-void
.end method

.method protected snapToPage(II)V
    .locals 9
    .parameter "whichPage"
    .parameter "duration"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1511
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getPageCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-static {p1, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1512
    iget-boolean v7, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mIsLoopScroll:Z

    if-eqz v7, :cond_1

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getPageCount()I

    move-result v7

    if-le v7, v5, :cond_1

    move v1, v5

    .line 1518
    .local v1, loopScroll:Z
    :goto_0
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getChildOffset(I)I

    move-result v7

    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getRelativeChildOffset(I)I

    move-result v8

    sub-int v2, v7, v8

    .line 1519
    .local v2, newX:I
    iget v7, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mOverScrollX:I

    if-ltz v7, :cond_0

    iget v7, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mOverScrollX:I

    iget v8, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mMaxScrollX:I

    if-le v7, v8, :cond_2

    :cond_0
    if-nez v1, :cond_2

    move v3, v5

    .line 1520
    .local v3, overScroll:Z
    :goto_1
    if-eqz v3, :cond_3

    iget v5, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mTouchX:F

    float-to-int v4, v5

    .line 1521
    .local v4, sX:I
    :goto_2
    sub-int v0, v2, v4

    .line 1522
    .local v0, delta:I
    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->snapToPage(III)V

    .line 1523
    return-void

    .end local v0           #delta:I
    .end local v1           #loopScroll:Z
    .end local v2           #newX:I
    .end local v3           #overScroll:Z
    .end local v4           #sX:I
    :cond_1
    move v1, v6

    .line 1512
    goto :goto_0

    .restart local v1       #loopScroll:Z
    .restart local v2       #newX:I
    :cond_2
    move v3, v6

    .line 1519
    goto :goto_1

    .line 1520
    .restart local v3       #overScroll:Z
    :cond_3
    iget v4, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mScrollX:I

    goto :goto_2
.end method

.method protected snapToPage(III)V
    .locals 10
    .parameter "whichPage"
    .parameter "delta"
    .parameter "duration"

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 1526
    iput v2, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mCorrectionFactor:I

    .line 1527
    iput p1, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mNextPage:I

    .line 1529
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getFocusedChild()Landroid/view/View;

    move-result-object v6

    .line 1530
    .local v6, focusedChild:Landroid/view/View;
    if-eqz v6, :cond_0

    iget v0, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mCurrentPage:I

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    if-ne v6, v0, :cond_0

    .line 1532
    invoke-virtual {v6}, Landroid/view/View;->clearFocus()V

    .line 1535
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->pageBeginMoving()V

    .line 1537
    invoke-virtual {p0, p3}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->awakenScrollBars(I)Z

    .line 1538
    if-nez p3, :cond_1

    .line 1539
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p3

    .line 1542
    :cond_1
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mIsLoopScroll:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getPageCount()I

    move-result v0

    if-le v0, v9, :cond_4

    move v7, v9

    .line 1543
    .local v7, loopScroll:Z
    :goto_0
    iget v0, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mOverScrollX:I

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mOverScrollX:I

    iget v3, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mMaxScrollX:I

    if-le v0, v3, :cond_5

    :cond_2
    if-nez v7, :cond_5

    move v8, v9

    .line 1544
    .local v8, overScroll:Z
    :goto_1
    if-eqz v8, :cond_6

    iget v0, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mTouchX:F

    float-to-int v1, v0

    .line 1546
    .local v1, start:I
    :goto_2
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1547
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1548
    :cond_3
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mScroller:Landroid/widget/Scroller;

    move v3, p2

    move v4, v2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1553
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mDeferScrollUpdate:Z

    if-eqz v0, :cond_7

    .line 1554
    iget v0, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mNextPage:I

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->loadAssociatedPages(I)V

    .line 1558
    :goto_3
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->notifyPageSwitchListener()V

    .line 1559
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->invalidate()V

    .line 1560
    return-void

    .end local v1           #start:I
    .end local v7           #loopScroll:Z
    .end local v8           #overScroll:Z
    :cond_4
    move v7, v2

    .line 1542
    goto :goto_0

    .restart local v7       #loopScroll:Z
    :cond_5
    move v8, v2

    .line 1543
    goto :goto_1

    .line 1544
    .restart local v8       #overScroll:Z
    :cond_6
    iget v1, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mScrollX:I

    goto :goto_2

    .line 1556
    .restart local v1       #start:I
    :cond_7
    iput-boolean v9, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mDeferLoadAssociatedPagesUntilScrollCompletes:Z

    goto :goto_3
.end method

.method protected snapToPageWithVelocity(II)V
    .locals 13
    .parameter "whichPage"
    .parameter "velocity"

    .prologue
    .line 1461
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getChildCount()I

    move-result v0

    .line 1462
    .local v0, childCount:I
    const/4 v10, 0x0

    add-int/lit8 v11, v0, -0x1

    invoke-static {p1, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1463
    iget-boolean v10, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mIsLoopScroll:Z

    if-eqz v10, :cond_3

    const/4 v10, 0x1

    if-le v0, v10, :cond_3

    const/4 v6, 0x1

    .line 1464
    .local v6, loopScroll:Z
    :goto_0
    if-eqz v6, :cond_4

    const/4 v10, -0x1

    move v11, v10

    :goto_1
    if-eqz v6, :cond_5

    const/4 v10, 0x0

    :goto_2
    sub-int v10, v0, v10

    invoke-static {p1, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1465
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getMeasuredWidth()I

    move-result v10

    div-int/lit8 v5, v10, 0x2

    .line 1469
    .local v5, halfScreenSize:I
    iget v10, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mScrollX:I

    if-lez v10, :cond_6

    const/4 v7, 0x1

    .line 1470
    .local v7, mScrollXPositive:Z
    :goto_3
    iget v10, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getChildCount()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    if-ne v10, v11, :cond_0

    if-nez p1, :cond_0

    iget v10, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mScrollX:I

    iget v11, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mMaxScrollX:I

    if-lt v10, v11, :cond_0

    .line 1471
    iget v10, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mScrollX:I

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getWidth()I

    move-result v11

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getChildCount()I

    move-result v12

    mul-int/2addr v11, v12

    sub-int/2addr v10, v11

    iput v10, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mScrollX:I

    .line 1473
    :cond_0
    if-eqz v7, :cond_1

    .line 1474
    iget v10, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mScrollX:I

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    iput v10, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mScrollX:I

    .line 1476
    :cond_1
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getChildOffset(I)I

    move-result v10

    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getRelativeChildOffset(I)I

    move-result v11

    sub-int v8, v10, v11

    .line 1477
    .local v8, newX:I
    iget v10, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mOverScrollX:I

    if-lez v10, :cond_2

    iget v10, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mOverScrollX:I

    iget v11, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mMaxScrollX:I

    if-lt v10, v11, :cond_7

    :cond_2
    if-nez v6, :cond_7

    const/4 v9, 0x1

    .line 1478
    .local v9, overScroll:Z
    :goto_4
    if-eqz v9, :cond_8

    iget v10, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mTouchX:F

    float-to-int v10, v10

    :goto_5
    sub-int v1, v8, v10

    .line 1479
    .local v1, delta:I
    const/4 v4, 0x0

    .line 1481
    .local v4, duration:I
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v10

    const/16 v11, 0xfa

    if-ge v10, v11, :cond_9

    .line 1484
    const/16 v10, 0x226

    invoke-virtual {p0, p1, v10}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->snapToPage(II)V

    .line 1504
    :goto_6
    return-void

    .line 1463
    .end local v1           #delta:I
    .end local v4           #duration:I
    .end local v5           #halfScreenSize:I
    .end local v6           #loopScroll:Z
    .end local v7           #mScrollXPositive:Z
    .end local v8           #newX:I
    .end local v9           #overScroll:Z
    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    .line 1464
    .restart local v6       #loopScroll:Z
    :cond_4
    const/4 v10, 0x0

    move v11, v10

    goto :goto_1

    :cond_5
    const/4 v10, 0x1

    goto :goto_2

    .line 1469
    .restart local v5       #halfScreenSize:I
    :cond_6
    const/4 v7, 0x0

    goto :goto_3

    .line 1477
    .restart local v7       #mScrollXPositive:Z
    .restart local v8       #newX:I
    :cond_7
    const/4 v9, 0x0

    goto :goto_4

    .line 1478
    .restart local v9       #overScroll:Z
    :cond_8
    iget v10, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mScrollX:I

    goto :goto_5

    .line 1492
    .restart local v1       #delta:I
    .restart local v4       #duration:I
    :cond_9
    const/high16 v10, 0x3f80

    const/high16 v11, 0x3f80

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v11, v12

    mul-int/lit8 v12, v5, 0x2

    int-to-float v12, v12

    div-float/2addr v11, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 1493
    .local v3, distanceRatio:F
    int-to-float v10, v5

    int-to-float v11, v5

    invoke-virtual {p0, v3}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->distanceInfluenceForSnapDuration(F)F

    move-result v12

    mul-float/2addr v11, v12

    add-float v2, v10, v11

    .line 1496
    .local v2, distance:F
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 1497
    const/16 v10, 0x898

    invoke-static {v10, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 1502
    const/high16 v10, 0x447a

    int-to-float v11, p2

    div-float v11, v2, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    mul-int/lit8 v4, v10, 0x4

    .line 1503
    invoke-virtual {p0, p1, v1, v4}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->snapToPage(III)V

    goto :goto_6
.end method

.method public abstract syncPageItems(IZ)V
.end method

.method public abstract syncPages()V
.end method

.method public updateCurrentPageScroll()V
    .locals 3

    .prologue
    .line 285
    iget v1, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getChildOffset(I)I

    move-result v1

    iget v2, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mCurrentPage:I

    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->getRelativeChildOffset(I)I

    move-result v2

    sub-int v0, v1, v2

    .line 286
    .local v0, newX:I
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->scrollTo(II)V

    .line 287
    iget-object v1, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1, v0}, Landroid/widget/Scroller;->setFinalX(I)V

    .line 288
    return-void
.end method
