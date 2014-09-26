.class public Lcom/baidu/launcher/ui/homeview/CellLayout;
.super Landroid/view/ViewGroup;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;,
        Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;,
        Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;,
        Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;,
        Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;
    }
.end annotation


# static fields
.field private static final DESTRUCTIVE_REORDER:Z = false

.field private static final INVALID_DIRECTION:I = -0x64

.field public static final MODE_ACCEPT_DROP:I = 0x3

.field public static final MODE_DRAG_OVER:I = 0x0

.field public static final MODE_ON_DROP:I = 0x1

.field public static final MODE_ON_DROP_EXTERNAL:I = 0x2

.field private static final REORDER_ANIMATION_DURATION:I = 0x96

.field private static final REORDER_HINT_MAGNITUDE:F = 0.12f


# instance fields
.field private alphaForLowApi:F

.field private doubleClick:Z

.field isAddScreen:Z

.field private mBackgroundAlpha:F

.field private mBackgroundAlphaMultiplier:F

.field private mBackgroundRect:Landroid/graphics/Rect;

.field private mCellHeight:I

.field private final mCellInfo:Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;

.field private mCellWidth:I

.field mCellXY:[I

.field private mCreateFolderView:Landroid/view/View;

.field private mDestPosition:[I

.field private mDirectionVector:[I

.field private mDirtyTag:Z

.field private final mDragCell:[I

.field private final mDragCenter:Landroid/graphics/Point;

.field private mDragOutlineAlphas:[F

.field private mDragOutlineAnims:[Lcom/baidu/launcher/ui/animation/InterruptibleInOutAnimator;

.field private mDragOutlineCurrent:I

.field private final mDragOutlinePaint:Landroid/graphics/Paint;

.field private mDragOutlines:[Landroid/graphics/Rect;

.field private mDragRect:Landroid/graphics/RectF;

.field private mFolderHighlightView:Landroid/view/View;

.field private mForegroundAlpha:I

.field private mForegroundRect:Landroid/graphics/Rect;

.field private mHeightGap:I

.field private mIntersectingViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mIsDragOverlapping:Z

.field private mItemPlacementDirty:Z

.field private mLastDownOnOccupiedCell:Z

.field private mLongAxisCells:I

.field private mLongAxisEndPadding:I

.field private mLongAxisStartPadding:I

.field mOccupied:[[Z

.field private mOccupiedRect:Landroid/graphics/Rect;

.field private mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mOverScrollLeft:Landroid/graphics/drawable/Drawable;

.field private mOverScrollRight:Landroid/graphics/drawable/Drawable;

.field private final mPortrait:Z

.field mPreviousReorderDirection:[I

.field private mRealPosition:[F

.field private final mRect:Landroid/graphics/Rect;

.field private mReorderAnimators:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;",
            "Lcom/baidu/launcher/ui/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mReorderHintAnimationMagnitude:F

.field private mScrollingTransformsDirty:Z

.field private mShakeAnimators:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private mShortAxisCells:I

.field private mShortAxisEndPadding:I

.field private mShortAxisStartPadding:I

.field mTempLocation:[I

.field private final mTempRectStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field mTmpOccupied:[[Z

.field private final mTmpPoint:[I

.field private final mTmpXY:[I

.field private mWidthGap:I

.field private matrixForLowApi:Landroid/graphics/Matrix;

.field private pendingDoubleClick:Ljava/lang/Runnable;

.field private pivotXForLowApi:F

.field private pivotYForLowApi:F

.field private rotationForLowApi:F

.field private rotationXForLowApi:F

.field private rotationYForLowApi:F

.field private scaleXForLowApi:F

.field private scaleYForLowApi:F

.field private translationXForLowApi:F

.field private translationYForLowApi:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 184
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/baidu/launcher/ui/homeview/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 185
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 188
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/baidu/launcher/ui/homeview/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 189
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 17
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 192
    invoke-direct/range {p0 .. p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 97
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mRect:Landroid/graphics/Rect;

    .line 98
    new-instance v11, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;

    invoke-direct {v11}, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mCellInfo:Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;

    .line 100
    const/4 v11, 0x2

    new-array v11, v11, [I

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mCellXY:[I

    .line 104
    new-instance v11, Landroid/graphics/RectF;

    invoke-direct {v11}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mDragRect:Landroid/graphics/RectF;

    .line 107
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mLastDownOnOccupiedCell:Z

    .line 109
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mScrollingTransformsDirty:Z

    .line 114
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mForegroundAlpha:I

    .line 119
    const/high16 v11, 0x3f80

    move-object/from16 v0, p0

    iput v11, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mBackgroundAlphaMultiplier:F

    .line 121
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mIsDragOverlapping:Z

    .line 123
    const/4 v11, 0x2

    new-array v11, v11, [I

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mDestPosition:[I

    .line 124
    const/4 v11, 0x2

    new-array v11, v11, [F

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mRealPosition:[F

    .line 126
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->isAddScreen:Z

    .line 129
    const/4 v11, 0x2

    new-array v11, v11, [I

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mTmpXY:[I

    .line 130
    const/4 v11, 0x2

    new-array v11, v11, [I

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mTmpPoint:[I

    .line 131
    const/4 v11, 0x2

    new-array v11, v11, [I

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mTempLocation:[I

    .line 136
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mItemPlacementDirty:Z

    .line 141
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    .line 142
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mOccupiedRect:Landroid/graphics/Rect;

    .line 143
    const/4 v11, 0x2

    new-array v11, v11, [I

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mDirectionVector:[I

    .line 144
    const/4 v11, 0x2

    new-array v11, v11, [I

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mPreviousReorderDirection:[I

    .line 146
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mReorderAnimators:Ljava/util/HashMap;

    .line 148
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mShakeAnimators:Ljava/util/HashMap;

    .line 152
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->translationXForLowApi:F

    .line 153
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->translationYForLowApi:F

    .line 154
    const/high16 v11, 0x3f80

    move-object/from16 v0, p0

    iput v11, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->scaleXForLowApi:F

    .line 155
    const/high16 v11, 0x3f80

    move-object/from16 v0, p0

    iput v11, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->scaleYForLowApi:F

    .line 156
    const/high16 v11, 0x3f00

    move-object/from16 v0, p0

    iput v11, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->pivotXForLowApi:F

    .line 157
    const/high16 v11, 0x3f00

    move-object/from16 v0, p0

    iput v11, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->pivotYForLowApi:F

    .line 158
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->rotationForLowApi:F

    .line 159
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->rotationXForLowApi:F

    .line 160
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->rotationYForLowApi:F

    .line 161
    const/high16 v11, 0x3f80

    move-object/from16 v0, p0

    iput v11, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->alphaForLowApi:F

    .line 162
    new-instance v11, Landroid/graphics/Matrix;

    invoke-direct {v11}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->matrixForLowApi:Landroid/graphics/Matrix;

    .line 167
    const/4 v11, 0x4

    new-array v11, v11, [Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    .line 168
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    array-length v11, v11

    new-array v11, v11, [F

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mDragOutlineAlphas:[F

    .line 169
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    array-length v11, v11

    new-array v11, v11, [Lcom/baidu/launcher/ui/animation/InterruptibleInOutAnimator;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mDragOutlineAnims:[Lcom/baidu/launcher/ui/animation/InterruptibleInOutAnimator;

    .line 173
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mDragOutlineCurrent:I

    .line 174
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mDragOutlinePaint:Landroid/graphics/Paint;

    .line 175
    new-instance v11, Landroid/graphics/Point;

    invoke-direct {v11}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mDragCenter:Landroid/graphics/Point;

    .line 177
    const/4 v11, 0x2

    new-array v11, v11, [I

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mDragCell:[I

    .line 180
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->doubleClick:Z

    .line 2119
    new-instance v11, Ljava/util/Stack;

    invoke-direct {v11}, Ljava/util/Stack;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mTempRectStack:Ljava/util/Stack;

    .line 193
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget v11, v11, Landroid/content/res/Configuration;->orientation:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1

    const/4 v11, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mPortrait:Z

    .line 195
    sget-object v11, Lcom/baidu/home2/R$styleable;->CellLayout:[I

    const/4 v12, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v11, v2, v12}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 197
    .local v3, a:Landroid/content/res/TypedArray;
    const/4 v11, 0x0

    const/16 v12, 0xa

    invoke-virtual {v3, v11, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mCellWidth:I

    .line 198
    const/4 v11, 0x1

    const/16 v12, 0xa

    invoke-virtual {v3, v11, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mCellHeight:I

    .line 200
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/baidu/launcher/data/WidgetPreviewCache;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/WidgetPreviewCache;

    move-result-object v11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mCellWidth:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mCellHeight:I

    invoke-virtual {v11, v12, v13}, Lcom/baidu/launcher/data/WidgetPreviewCache;->intitCellSize(II)V

    .line 202
    const/4 v11, 0x2

    const/16 v12, 0xa

    invoke-virtual {v3, v11, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mLongAxisStartPadding:I

    .line 204
    const/4 v11, 0x3

    const/16 v12, 0xa

    invoke-virtual {v3, v11, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mLongAxisEndPadding:I

    .line 206
    const/4 v11, 0x4

    const/16 v12, 0xa

    invoke-virtual {v3, v11, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mShortAxisStartPadding:I

    .line 208
    const/4 v11, 0x5

    const/16 v12, 0xa

    invoke-virtual {v3, v11, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mShortAxisEndPadding:I

    .line 211
    sget v11, Lcom/baidu/launcher/utils/DefaultConfigurationHelper;->deflautHomeLineNum:I

    const/4 v12, 0x3

    if-le v11, v12, :cond_2

    sget v11, Lcom/baidu/launcher/utils/DefaultConfigurationHelper;->deflautHomeLineNum:I

    :goto_1
    move-object/from16 v0, p0

    iput v11, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mShortAxisCells:I

    .line 212
    sget v11, Lcom/baidu/launcher/utils/DefaultConfigurationHelper;->defaultHomeRowNum:I

    const/4 v12, 0x3

    if-le v11, v12, :cond_3

    sget v11, Lcom/baidu/launcher/utils/DefaultConfigurationHelper;->defaultHomeRowNum:I

    :goto_2
    move-object/from16 v0, p0

    iput v11, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mLongAxisCells:I

    .line 218
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 220
    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/baidu/launcher/ui/homeview/CellLayout;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 221
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mOccupied:[[Z

    if-nez v11, :cond_0

    .line 222
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mPortrait:Z

    if-eqz v11, :cond_4

    .line 223
    move-object/from16 v0, p0

    iget v11, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mShortAxisCells:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mLongAxisCells:I

    filled-new-array {v11, v12}, [I

    move-result-object v11

    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v12, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [[Z

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mOccupied:[[Z

    .line 224
    move-object/from16 v0, p0

    iget v11, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mShortAxisCells:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mLongAxisCells:I

    filled-new-array {v11, v12}, [I

    move-result-object v11

    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v12, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [[Z

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mTmpOccupied:[[Z

    .line 231
    :cond_0
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 232
    .local v8, res:Landroid/content/res/Resources;
    const v11, 0x7f0202e3

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mOverScrollLeft:Landroid/graphics/drawable/Drawable;

    .line 233
    const v11, 0x7f0202e4

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mOverScrollRight:Landroid/graphics/drawable/Drawable;

    .line 234
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mForegroundRect:Landroid/graphics/Rect;

    .line 235
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    .line 239
    const v11, 0x3df5c28f

    sget v12, Lcom/baidu/launcher/utils/DefaultConfigurationHelper;->app_icon_size:I

    int-to-float v12, v12

    mul-float/2addr v11, v12

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    iget v12, v12, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v11, v12

    move-object/from16 v0, p0

    iput v11, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mReorderHintAnimationMagnitude:F

    .line 242
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mDragCell:[I

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mDragCell:[I

    const/4 v14, 0x1

    const/4 v15, -0x1

    aput v15, v13, v14

    aput v15, v11, v12

    .line 243
    const/4 v7, 0x0

    .local v7, i:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    array-length v11, v11

    if-ge v7, v11, :cond_5

    .line 244
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    new-instance v12, Landroid/graphics/Rect;

    const/4 v13, -0x1

    const/4 v14, -0x1

    const/4 v15, -0x1

    const/16 v16, -0x1

    invoke-direct/range {v12 .. v16}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v12, v11, v7

    .line 243
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 193
    .end local v3           #a:Landroid/content/res/TypedArray;
    .end local v7           #i:I
    .end local v8           #res:Landroid/content/res/Resources;
    :cond_1
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 211
    .restart local v3       #a:Landroid/content/res/TypedArray;
    :cond_2
    sget v11, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->NUMBER_CELLS_X:I

    goto/16 :goto_1

    .line 212
    :cond_3
    sget v11, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->NUMBER_CELLS_Y:I

    goto/16 :goto_2

    .line 226
    :cond_4
    move-object/from16 v0, p0

    iget v11, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mLongAxisCells:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mShortAxisCells:I

    filled-new-array {v11, v12}, [I

    move-result-object v11

    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v12, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [[Z

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mOccupied:[[Z

    .line 227
    move-object/from16 v0, p0

    iget v11, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mLongAxisCells:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mShortAxisCells:I

    filled-new-array {v11, v12}, [I

    move-result-object v11

    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v12, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [[Z

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mTmpOccupied:[[Z

    goto/16 :goto_3

    .line 251
    .restart local v7       #i:I
    .restart local v8       #res:Landroid/content/res/Resources;
    :cond_5
    const v11, 0x7f0d0010

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 252
    .local v5, duration:I
    const/4 v6, 0x0

    .line 253
    .local v6, fromAlphaValue:F
    const v11, 0x7f0d0011

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    int-to-float v10, v11

    .line 255
    .local v10, toAlphaValue:F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mDragOutlineAlphas:[F

    const/4 v12, 0x0

    invoke-static {v11, v12}, Ljava/util/Arrays;->fill([FF)V

    .line 257
    const/4 v7, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mDragOutlineAnims:[Lcom/baidu/launcher/ui/animation/InterruptibleInOutAnimator;

    array-length v11, v11

    if-ge v7, v11, :cond_6

    .line 258
    new-instance v4, Lcom/baidu/launcher/ui/animation/InterruptibleInOutAnimator;

    int-to-long v11, v5

    const/4 v13, 0x0

    invoke-direct {v4, v11, v12, v13, v10}, Lcom/baidu/launcher/ui/animation/InterruptibleInOutAnimator;-><init>(JFF)V

    .line 260
    .local v4, anim:Lcom/baidu/launcher/ui/animation/InterruptibleInOutAnimator;
    invoke-virtual {v4}, Lcom/baidu/launcher/ui/animation/InterruptibleInOutAnimator;->getAnimator()Lcom/baidu/launcher/ui/animation/ValueAnimator;

    move-result-object v11

    new-instance v12, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v13, 0x4020

    invoke-direct {v12, v13}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v11, v12}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 261
    move v9, v7

    .line 262
    .local v9, thisIndex:I
    invoke-virtual {v4}, Lcom/baidu/launcher/ui/animation/InterruptibleInOutAnimator;->getAnimator()Lcom/baidu/launcher/ui/animation/ValueAnimator;

    move-result-object v11

    new-instance v12, Lcom/baidu/launcher/ui/homeview/CellLayout$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v4, v9}, Lcom/baidu/launcher/ui/homeview/CellLayout$1;-><init>(Lcom/baidu/launcher/ui/homeview/CellLayout;Lcom/baidu/launcher/ui/animation/InterruptibleInOutAnimator;I)V

    invoke-virtual {v11, v12}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->addUpdateListener(Lcom/baidu/launcher/ui/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 279
    invoke-virtual {v4}, Lcom/baidu/launcher/ui/animation/InterruptibleInOutAnimator;->getAnimator()Lcom/baidu/launcher/ui/animation/ValueAnimator;

    move-result-object v11

    new-instance v12, Lcom/baidu/launcher/ui/homeview/CellLayout$2;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v4}, Lcom/baidu/launcher/ui/homeview/CellLayout$2;-><init>(Lcom/baidu/launcher/ui/homeview/CellLayout;Lcom/baidu/launcher/ui/animation/InterruptibleInOutAnimator;)V

    invoke-virtual {v11, v12}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->addListener(Lcom/baidu/launcher/ui/animation/Animator$AnimatorListener;)V

    .line 287
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mDragOutlineAnims:[Lcom/baidu/launcher/ui/animation/InterruptibleInOutAnimator;

    aput-object v4, v11, v7

    .line 257
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 289
    .end local v4           #anim:Lcom/baidu/launcher/ui/animation/InterruptibleInOutAnimator;
    .end local v9           #thisIndex:I
    :cond_6
    new-instance v11, Lcom/baidu/launcher/ui/homeview/CellLayout$3;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/baidu/launcher/ui/homeview/CellLayout$3;-><init>(Lcom/baidu/launcher/ui/homeview/CellLayout;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->pendingDoubleClick:Ljava/lang/Runnable;

    .line 295
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/launcher/ui/homeview/CellLayout;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mDragOutlineAlphas:[F

    return-object v0
.end method

.method static synthetic access$100(Lcom/baidu/launcher/ui/homeview/CellLayout;)[Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$202(Lcom/baidu/launcher/ui/homeview/CellLayout;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->doubleClick:Z

    return p1
.end method

.method static synthetic access$300(Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;IIII[[Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 80
    invoke-static/range {p0 .. p5}, Lcom/baidu/launcher/ui/homeview/CellLayout;->findIntersectingVacantCells(Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;IIII[[Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/baidu/launcher/ui/homeview/CellLayout;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mReorderAnimators:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/baidu/launcher/ui/homeview/CellLayout;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mTmpPoint:[I

    return-object v0
.end method

.method static synthetic access$600(Lcom/baidu/launcher/ui/homeview/CellLayout;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mReorderHintAnimationMagnitude:F

    return v0
.end method

.method static synthetic access$700(Lcom/baidu/launcher/ui/homeview/CellLayout;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mShakeAnimators:Ljava/util/HashMap;

    return-object v0
.end method

.method private static addVacantCell(Landroid/graphics/Rect;Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;)V
    .locals 3
    .parameter "current"
    .parameter "cellInfo"

    .prologue
    .line 598
    invoke-static {}, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo$VacantCell;->acquire()Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo$VacantCell;

    move-result-object v0

    .line 599
    .local v0, cell:Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo$VacantCell;
    iget v1, p0, Landroid/graphics/Rect;->left:I

    iput v1, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo$VacantCell;->cellX:I

    .line 600
    iget v1, p0, Landroid/graphics/Rect;->top:I

    iput v1, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo$VacantCell;->cellY:I

    .line 601
    iget v1, p0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo$VacantCell;->spanX:I

    .line 602
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo$VacantCell;->spanY:I

    .line 603
    iget v1, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo$VacantCell;->spanX:I

    iget v2, p1, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->maxVacantSpanX:I

    if-le v1, v2, :cond_0

    .line 604
    iget v1, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo$VacantCell;->spanX:I

    iput v1, p1, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->maxVacantSpanX:I

    .line 605
    iget v1, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo$VacantCell;->spanY:I

    iput v1, p1, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->maxVacantSpanXSpanY:I

    .line 607
    :cond_0
    iget v1, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo$VacantCell;->spanY:I

    iget v2, p1, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->maxVacantSpanY:I

    if-le v1, v2, :cond_1

    .line 608
    iget v1, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo$VacantCell;->spanY:I

    iput v1, p1, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->maxVacantSpanY:I

    .line 609
    iget v1, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo$VacantCell;->spanX:I

    iput v1, p1, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->maxVacantSpanYSpanX:I

    .line 611
    :cond_1
    iget-object v1, p1, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->vacantCells:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 612
    return-void
.end method

.method private addViewInDirection(Ljava/util/ArrayList;Landroid/graphics/Rect;[I[[ZLandroid/view/View;Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;)Z
    .locals 24
    .parameter
    .parameter "boundingRect"
    .parameter "direction"
    .parameter "occupied"
    .parameter "dragView"
    .parameter "currentState"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/graphics/Rect;",
            "[I[[Z",
            "Landroid/view/View;",
            "Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 2476
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v10, 0x0

    .line 2478
    .local v10, found:Z
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getChildCount()I

    move-result v7

    .line 2479
    .local v7, childCount:I
    new-instance v15, Landroid/graphics/Rect;

    move-object/from16 v0, p2

    invoke-direct {v15, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 2480
    .local v15, r0:Landroid/graphics/Rect;
    new-instance v16, Landroid/graphics/Rect;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Rect;-><init>()V

    .line 2482
    .local v16, r1:Landroid/graphics/Rect;
    const/4 v8, 0x0

    .line 2483
    .local v8, deltaX:I
    const/4 v9, 0x0

    .line 2484
    .local v9, deltaY:I
    const/16 v19, 0x1

    aget v19, p3, v19

    if-gez v19, :cond_2

    .line 2485
    iget v0, v15, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    iget v0, v15, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    iget v0, v15, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    iget v0, v15, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 2486
    const/4 v9, -0x1

    .line 2498
    :cond_0
    :goto_0
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    if-ge v11, v7, :cond_6

    .line 2499
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2500
    .local v6, child:Landroid/view/View;
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1

    move-object/from16 v0, p5

    if-ne v6, v0, :cond_5

    .line 2498
    :cond_1
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 2487
    .end local v6           #child:Landroid/view/View;
    .end local v11           #i:I
    :cond_2
    const/16 v19, 0x1

    aget v19, p3, v19

    if-lez v19, :cond_3

    .line 2488
    iget v0, v15, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    iget v0, v15, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    iget v0, v15, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    iget v0, v15, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 2489
    const/4 v9, 0x1

    goto :goto_0

    .line 2490
    :cond_3
    const/16 v19, 0x0

    aget v19, p3, v19

    if-gez v19, :cond_4

    .line 2491
    iget v0, v15, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    iget v0, v15, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    iget v0, v15, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    iget v0, v15, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 2492
    const/4 v8, -0x1

    goto :goto_0

    .line 2493
    :cond_4
    const/16 v19, 0x0

    aget v19, p3, v19

    if-lez v19, :cond_0

    .line 2494
    iget v0, v15, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    iget v0, v15, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    iget v0, v15, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x1

    iget v0, v15, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 2495
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 2501
    .restart local v6       #child:Landroid/view/View;
    .restart local v11       #i:I
    :cond_5
    move-object/from16 v0, p6

    iget-object v0, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;

    .line 2503
    .local v5, c:Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;

    .line 2504
    .local v13, lp:Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;
    iget v0, v5, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;->x:I

    move/from16 v19, v0

    iget v0, v5, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;->y:I

    move/from16 v20, v0

    iget v0, v5, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;->x:I

    move/from16 v21, v0

    iget v0, v5, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;->spanX:I

    move/from16 v22, v0

    add-int v21, v21, v22

    iget v0, v5, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;->y:I

    move/from16 v22, v0

    iget v0, v5, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;->spanY:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move-object/from16 v0, v16

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2505
    invoke-static/range {v15 .. v16}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 2506
    iget-boolean v0, v13, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->canReorder:Z

    move/from16 v19, v0

    if-nez v19, :cond_7

    .line 2507
    const/4 v10, 0x0

    .line 2526
    .end local v5           #c:Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;
    .end local v6           #child:Landroid/view/View;
    .end local v10           #found:Z
    .end local v13           #lp:Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;
    :cond_6
    return v10

    .line 2509
    .restart local v5       #c:Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;
    .restart local v6       #child:Landroid/view/View;
    .restart local v10       #found:Z
    .restart local v13       #lp:Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;
    :cond_7
    const/4 v14, 0x0

    .line 2510
    .local v14, pushed:Z
    iget v0, v5, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;->x:I

    move/from16 v17, v0

    .local v17, x:I
    :goto_3
    iget v0, v5, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;->x:I

    move/from16 v19, v0

    iget v0, v5, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;->spanX:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_b

    .line 2511
    iget v0, v5, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;->y:I

    move/from16 v18, v0

    .local v18, y:I
    :goto_4
    iget v0, v5, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;->y:I

    move/from16 v19, v0

    iget v0, v5, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;->spanY:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_a

    .line 2512
    sub-int v19, v17, v8

    if-ltz v19, :cond_9

    sub-int v19, v17, v8

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getCountX()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_9

    sub-int v19, v18, v9

    if-ltz v19, :cond_9

    sub-int v19, v18, v9

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getCountY()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_9

    const/4 v12, 0x1

    .line 2514
    .local v12, inBounds:Z
    :goto_5
    if-eqz v12, :cond_8

    sub-int v19, v17, v8

    aget-object v19, p4, v19

    sub-int v20, v18, v9

    aget-boolean v19, v19, v20

    if-eqz v19, :cond_8

    .line 2515
    const/4 v14, 0x1

    .line 2511
    :cond_8
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    .line 2512
    .end local v12           #inBounds:Z
    :cond_9
    const/4 v12, 0x0

    goto :goto_5

    .line 2510
    :cond_a
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 2519
    .end local v18           #y:I
    :cond_b
    if-eqz v14, :cond_1

    .line 2520
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2521
    iget v0, v5, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;->x:I

    move/from16 v19, v0

    iget v0, v5, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;->y:I

    move/from16 v20, v0

    iget v0, v5, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;->x:I

    move/from16 v21, v0

    iget v0, v5, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;->spanX:I

    move/from16 v22, v0

    add-int v21, v21, v22

    iget v0, v5, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;->y:I

    move/from16 v22, v0

    iget v0, v5, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;->spanY:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move-object/from16 v0, p2

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->union(IIII)V

    .line 2522
    const/4 v10, 0x1

    goto/16 :goto_2
.end method

.method private addViewToTempLocation(Landroid/view/View;Landroid/graphics/Rect;[ILcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;)Z
    .locals 11
    .parameter "v"
    .parameter "rectOccupiedByPotentialDrop"
    .parameter "direction"
    .parameter "currentState"

    .prologue
    .line 2455
    iget-object v0, p4, Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;

    .line 2456
    .local v9, c:Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;
    const/4 v10, 0x0

    .line 2457
    .local v10, success:Z
    iget v1, v9, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;->x:I

    iget v2, v9, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;->y:I

    iget v3, v9, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;->spanX:I

    iget v4, v9, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;->spanY:I

    iget-object v5, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mTmpOccupied:[[Z

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/baidu/launcher/ui/homeview/CellLayout;->markCellsForView(IIII[[ZZ)V

    .line 2458
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mTmpOccupied:[[Z

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Lcom/baidu/launcher/ui/homeview/CellLayout;->markCellsForRect(Landroid/graphics/Rect;[[ZZ)V

    .line 2460
    iget v1, v9, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;->x:I

    iget v2, v9, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;->y:I

    iget v3, v9, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;->spanX:I

    iget v4, v9, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;->spanY:I

    iget-object v6, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mTmpOccupied:[[Z

    const/4 v7, 0x0

    check-cast v7, [[Z

    iget-object v8, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mTempLocation:[I

    move-object v0, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v8}, Lcom/baidu/launcher/ui/homeview/CellLayout;->findNearestArea(IIII[I[[Z[[Z[I)[I

    .line 2462
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mTempLocation:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mTempLocation:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    if-ltz v0, :cond_0

    .line 2463
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mTempLocation:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, v9, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;->x:I

    .line 2464
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mTempLocation:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, v9, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;->y:I

    .line 2465
    const/4 v10, 0x1

    .line 2468
    :cond_0
    iget v1, v9, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;->x:I

    iget v2, v9, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;->y:I

    iget v3, v9, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;->spanX:I

    iget v4, v9, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;->spanY:I

    iget-object v5, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mTmpOccupied:[[Z

    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/baidu/launcher/ui/homeview/CellLayout;->markCellsForView(IIII[[ZZ)V

    .line 2469
    return v10
.end method

.method private addViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[IZLandroid/view/View;Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;)Z
    .locals 28
    .parameter
    .parameter "rectOccupiedByPotentialDrop"
    .parameter "direction"
    .parameter "push"
    .parameter "dragView"
    .parameter "currentState"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/graphics/Rect;",
            "[IZ",
            "Landroid/view/View;",
            "Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 2531
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    const/16 v25, 0x1

    .line 2596
    :cond_0
    return v25

    .line 2533
    :cond_1
    const/16 v25, 0x0

    .line 2534
    .local v25, success:Z
    const/4 v4, 0x0

    .line 2536
    .local v4, boundingRect:Landroid/graphics/Rect;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/view/View;

    .line 2537
    .local v27, v:Landroid/view/View;
    move-object/from16 v0, p6

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;

    .line 2538
    .local v20, c:Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;
    if-nez v4, :cond_2

    .line 2539
    new-instance v4, Landroid/graphics/Rect;

    .end local v4           #boundingRect:Landroid/graphics/Rect;
    move-object/from16 v0, v20

    iget v2, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;->x:I

    move-object/from16 v0, v20

    iget v5, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;->y:I

    move-object/from16 v0, v20

    iget v6, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;->x:I

    move-object/from16 v0, v20

    iget v7, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;->spanX:I

    add-int/2addr v6, v7

    move-object/from16 v0, v20

    iget v7, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;->y:I

    move-object/from16 v0, v20

    iget v8, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;->spanY:I

    add-int/2addr v7, v8

    invoke-direct {v4, v2, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v4       #boundingRect:Landroid/graphics/Rect;
    goto :goto_0

    .line 2541
    :cond_2
    move-object/from16 v0, v20

    iget v2, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;->x:I

    move-object/from16 v0, v20

    iget v5, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;->y:I

    move-object/from16 v0, v20

    iget v6, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;->x:I

    move-object/from16 v0, v20

    iget v7, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;->spanX:I

    add-int/2addr v6, v7

    move-object/from16 v0, v20

    iget v7, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;->y:I

    move-object/from16 v0, v20

    iget v8, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;->spanY:I

    add-int/2addr v7, v8

    invoke-virtual {v4, v2, v5, v6, v7}, Landroid/graphics/Rect;->union(IIII)V

    goto :goto_0

    .line 2546
    .end local v20           #c:Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;
    .end local v27           #v:Landroid/view/View;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 2549
    .local v3, dup:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_4
    if-eqz p4, :cond_5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mTmpOccupied:[[Z

    move-object/from16 v2, p0

    move-object/from16 v5, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v2 .. v8}, Lcom/baidu/launcher/ui/homeview/CellLayout;->addViewInDirection(Ljava/util/ArrayList;Landroid/graphics/Rect;[I[[ZLandroid/view/View;Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 2554
    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_1
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/view/View;

    .line 2555
    .restart local v27       #v:Landroid/view/View;
    move-object/from16 v0, p6

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;

    .line 2556
    .restart local v20       #c:Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;
    move-object/from16 v0, v20

    iget v6, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;->x:I

    move-object/from16 v0, v20

    iget v7, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;->y:I

    move-object/from16 v0, v20

    iget v8, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;->spanX:I

    move-object/from16 v0, v20

    iget v9, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;->spanY:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mTmpOccupied:[[Z

    const/4 v11, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/baidu/launcher/ui/homeview/CellLayout;->markCellsForView(IIII[[ZZ)V

    goto :goto_1

    .line 2559
    .end local v20           #c:Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;
    .end local v27           #v:Landroid/view/View;
    :cond_6
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v5

    filled-new-array {v2, v5}, [I

    move-result-object v2

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[Z

    .line 2560
    .local v10, blockOccupied:[[Z
    iget v0, v4, Landroid/graphics/Rect;->top:I

    move/from16 v26, v0

    .line 2561
    .local v26, top:I
    iget v0, v4, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    .line 2564
    .local v24, left:I
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_2
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/view/View;

    .line 2565
    .restart local v27       #v:Landroid/view/View;
    move-object/from16 v0, p6

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;

    .line 2566
    .restart local v20       #c:Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;
    move-object/from16 v0, v20

    iget v2, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;->x:I

    sub-int v6, v2, v24

    move-object/from16 v0, v20

    iget v2, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;->y:I

    sub-int v7, v2, v26

    move-object/from16 v0, v20

    iget v8, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;->spanX:I

    move-object/from16 v0, v20

    iget v9, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;->spanY:I

    const/4 v11, 0x1

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/baidu/launcher/ui/homeview/CellLayout;->markCellsForView(IIII[[ZZ)V

    goto :goto_2

    .line 2569
    .end local v20           #c:Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;
    .end local v27           #v:Landroid/view/View;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mTmpOccupied:[[Z

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v2, v5}, Lcom/baidu/launcher/ui/homeview/CellLayout;->markCellsForRect(Landroid/graphics/Rect;[[ZZ)V

    .line 2571
    if-eqz p4, :cond_8

    .line 2572
    iget v12, v4, Landroid/graphics/Rect;->left:I

    iget v13, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v14

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mTmpOccupied:[[Z

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mTempLocation:[I

    move-object/from16 v19, v0

    move-object/from16 v11, p0

    move-object/from16 v16, p3

    move-object/from16 v18, v10

    invoke-direct/range {v11 .. v19}, Lcom/baidu/launcher/ui/homeview/CellLayout;->findNearestAreaInDirection(IIII[I[[Z[[Z[I)[I

    .line 2580
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mTempLocation:[I

    const/4 v5, 0x0

    aget v2, v2, v5

    if-ltz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mTempLocation:[I

    const/4 v5, 0x1

    aget v2, v2, v5

    if-ltz v2, :cond_a

    .line 2581
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mTempLocation:[I

    const/4 v5, 0x0

    aget v2, v2, v5

    iget v5, v4, Landroid/graphics/Rect;->left:I

    sub-int v21, v2, v5

    .line 2582
    .local v21, deltaX:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mTempLocation:[I

    const/4 v5, 0x1

    aget v2, v2, v5

    iget v5, v4, Landroid/graphics/Rect;->top:I

    sub-int v22, v2, v5

    .line 2583
    .local v22, deltaY:I
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_4
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/view/View;

    .line 2584
    .restart local v27       #v:Landroid/view/View;
    move-object/from16 v0, p6

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;

    .line 2585
    .restart local v20       #c:Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;
    move-object/from16 v0, v20

    iget v2, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;->x:I

    add-int v2, v2, v21

    move-object/from16 v0, v20

    iput v2, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;->x:I

    .line 2586
    move-object/from16 v0, v20

    iget v2, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;->y:I

    add-int v2, v2, v22

    move-object/from16 v0, v20

    iput v2, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;->y:I

    goto :goto_4

    .line 2575
    .end local v20           #c:Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;
    .end local v21           #deltaX:I
    .end local v22           #deltaY:I
    .end local v27           #v:Landroid/view/View;
    :cond_8
    iget v12, v4, Landroid/graphics/Rect;->left:I

    iget v13, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v14

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mTmpOccupied:[[Z

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mTempLocation:[I

    move-object/from16 v19, v0

    move-object/from16 v11, p0

    move-object/from16 v16, p3

    move-object/from16 v18, v10

    invoke-direct/range {v11 .. v19}, Lcom/baidu/launcher/ui/homeview/CellLayout;->findNearestArea(IIII[I[[Z[[Z[I)[I

    goto :goto_3

    .line 2588
    .restart local v21       #deltaX:I
    .restart local v22       #deltaY:I
    :cond_9
    const/16 v25, 0x1

    .line 2592
    .end local v21           #deltaX:I
    .end local v22           #deltaY:I
    :cond_a
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_5
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/view/View;

    .line 2593
    .restart local v27       #v:Landroid/view/View;
    move-object/from16 v0, p6

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;

    .line 2594
    .restart local v20       #c:Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;
    move-object/from16 v0, v20

    iget v12, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;->x:I

    move-object/from16 v0, v20

    iget v13, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;->y:I

    move-object/from16 v0, v20

    iget v14, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;->spanX:I

    move-object/from16 v0, v20

    iget v15, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;->spanY:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mTmpOccupied:[[Z

    move-object/from16 v16, v0

    const/16 v17, 0x1

    move-object/from16 v11, p0

    invoke-direct/range {v11 .. v17}, Lcom/baidu/launcher/ui/homeview/CellLayout;->markCellsForView(IIII[[ZZ)V

    goto :goto_5
.end method

.method private animateItemsToSolution(Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;Landroid/view/View;Z)V
    .locals 15
    .parameter "solution"
    .parameter "dragView"
    .parameter "commitDragView"

    .prologue
    .line 2861
    iget-object v14, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mTmpOccupied:[[Z

    check-cast v14, [[Z

    .line 2862
    .local v14, occupied:[[Z
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getCountX()I

    move-result v1

    if-ge v12, v1, :cond_1

    .line 2863
    const/4 v13, 0x0

    .local v13, j:I
    :goto_1
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getCountY()I

    move-result v1

    if-ge v13, v1, :cond_0

    .line 2864
    aget-object v1, v14, v12

    const/4 v3, 0x0

    aput-boolean v3, v1, v13

    .line 2863
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 2862
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 2868
    .end local v13           #j:I
    :cond_1
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getChildCount()I

    move-result v11

    .line 2869
    .local v11, childCount:I
    const/4 v12, 0x0

    :goto_2
    if-ge v12, v11, :cond_4

    .line 2870
    invoke-virtual {p0, v12}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2871
    .local v2, child:Landroid/view/View;
    move-object/from16 v0, p2

    if-ne v2, v0, :cond_3

    .line 2869
    :cond_2
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 2872
    :cond_3
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;

    .line 2873
    .local v10, c:Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;
    if-eqz v10, :cond_2

    .line 2874
    iget v3, v10, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;->x:I

    iget v4, v10, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;->y:I

    const/16 v5, 0x96

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/baidu/launcher/ui/homeview/CellLayout;->animateChildToPosition(Landroid/view/View;IIIIZZ)Z

    .line 2876
    iget v4, v10, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;->x:I

    iget v5, v10, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;->y:I

    iget v6, v10, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;->spanX:I

    iget v7, v10, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;->spanY:I

    const/4 v9, 0x1

    move-object v3, p0

    move-object v8, v14

    invoke-direct/range {v3 .. v9}, Lcom/baidu/launcher/ui/homeview/CellLayout;->markCellsForView(IIII[[ZZ)V

    goto :goto_3

    .line 2879
    .end local v2           #child:Landroid/view/View;
    .end local v10           #c:Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;
    :cond_4
    if-eqz p3, :cond_5

    .line 2880
    move-object/from16 v0, p1

    iget v4, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;->dragViewX:I

    move-object/from16 v0, p1

    iget v5, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;->dragViewY:I

    move-object/from16 v0, p1

    iget v6, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;->dragViewSpanX:I

    move-object/from16 v0, p1

    iget v7, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;->dragViewSpanY:I

    const/4 v9, 0x1

    move-object v3, p0

    move-object v8, v14

    invoke-direct/range {v3 .. v9}, Lcom/baidu/launcher/ui/homeview/CellLayout;->markCellsForView(IIII[[ZZ)V

    .line 2883
    :cond_5
    return-void
.end method

.method private attemptPushInDirection(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;)Z
    .locals 9
    .parameter
    .parameter "occupied"
    .parameter "direction"
    .parameter "ignoreView"
    .parameter "solution"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/graphics/Rect;",
            "[I",
            "Landroid/view/View;",
            "Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, intersectingViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v8, 0x0

    const/4 v4, 0x1

    .line 2608
    aget v0, p3, v8

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    aget v1, p3, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    if-le v0, v4, :cond_2

    .line 2611
    aget v7, p3, v4

    .line 2612
    .local v7, temp:I
    aput v8, p3, v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    .line 2613
    invoke-direct/range {v0 .. v6}, Lcom/baidu/launcher/ui/homeview/CellLayout;->addViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[IZLandroid/view/View;Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2696
    .end local v7           #temp:I
    :cond_0
    :goto_0
    return v4

    .line 2617
    .restart local v7       #temp:I
    :cond_1
    aput v7, p3, v4

    .line 2618
    aget v7, p3, v8

    .line 2619
    aput v8, p3, v8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    .line 2620
    invoke-direct/range {v0 .. v6}, Lcom/baidu/launcher/ui/homeview/CellLayout;->addViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[IZLandroid/view/View;Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2625
    aput v7, p3, v8

    .line 2628
    aget v0, p3, v8

    mul-int/lit8 v0, v0, -0x1

    aput v0, p3, v8

    .line 2629
    aget v0, p3, v4

    mul-int/lit8 v0, v0, -0x1

    aput v0, p3, v4

    .line 2630
    aget v7, p3, v4

    .line 2631
    aput v8, p3, v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    .line 2632
    invoke-direct/range {v0 .. v6}, Lcom/baidu/launcher/ui/homeview/CellLayout;->addViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[IZLandroid/view/View;Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2637
    aput v7, p3, v4

    .line 2638
    aget v7, p3, v8

    .line 2639
    aput v8, p3, v8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    .line 2640
    invoke-direct/range {v0 .. v6}, Lcom/baidu/launcher/ui/homeview/CellLayout;->addViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[IZLandroid/view/View;Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2645
    aput v7, p3, v8

    .line 2646
    aget v0, p3, v8

    mul-int/lit8 v0, v0, -0x1

    aput v0, p3, v8

    .line 2647
    aget v0, p3, v4

    mul-int/lit8 v0, v0, -0x1

    aput v0, p3, v4

    :goto_1
    move v4, v8

    .line 2696
    goto :goto_0

    .end local v7           #temp:I
    :cond_2
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    .line 2652
    invoke-direct/range {v0 .. v6}, Lcom/baidu/launcher/ui/homeview/CellLayout;->addViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[IZLandroid/view/View;Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2658
    aget v0, p3, v8

    mul-int/lit8 v0, v0, -0x1

    aput v0, p3, v8

    .line 2659
    aget v0, p3, v4

    mul-int/lit8 v0, v0, -0x1

    aput v0, p3, v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    .line 2660
    invoke-direct/range {v0 .. v6}, Lcom/baidu/launcher/ui/homeview/CellLayout;->addViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[IZLandroid/view/View;Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2665
    aget v0, p3, v8

    mul-int/lit8 v0, v0, -0x1

    aput v0, p3, v8

    .line 2666
    aget v0, p3, v4

    mul-int/lit8 v0, v0, -0x1

    aput v0, p3, v4

    .line 2672
    aget v7, p3, v4

    .line 2673
    .restart local v7       #temp:I
    aget v0, p3, v8

    aput v0, p3, v4

    .line 2674
    aput v7, p3, v8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    .line 2675
    invoke-direct/range {v0 .. v6}, Lcom/baidu/launcher/ui/homeview/CellLayout;->addViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[IZLandroid/view/View;Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2681
    aget v0, p3, v8

    mul-int/lit8 v0, v0, -0x1

    aput v0, p3, v8

    .line 2682
    aget v0, p3, v4

    mul-int/lit8 v0, v0, -0x1

    aput v0, p3, v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    .line 2683
    invoke-direct/range {v0 .. v6}, Lcom/baidu/launcher/ui/homeview/CellLayout;->addViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[IZLandroid/view/View;Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2688
    aget v0, p3, v8

    mul-int/lit8 v0, v0, -0x1

    aput v0, p3, v8

    .line 2689
    aget v0, p3, v4

    mul-int/lit8 v0, v0, -0x1

    aput v0, p3, v4

    .line 2692
    aget v7, p3, v4

    .line 2693
    aget v0, p3, v8

    aput v0, p3, v4

    .line 2694
    aput v7, p3, v8

    goto :goto_1
.end method

.method private beginOrAdjustHintAnimations(Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;Landroid/view/View;I)V
    .locals 13
    .parameter "solution"
    .parameter "dragView"
    .parameter "delay"

    .prologue
    .line 2887
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getChildCount()I

    move-result v10

    .line 2888
    .local v10, childCount:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    if-ge v11, v10, :cond_2

    .line 2889
    invoke-virtual {p0, v11}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2890
    .local v2, child:Landroid/view/View;
    if-ne v2, p2, :cond_1

    .line 2888
    :cond_0
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 2891
    :cond_1
    iget-object v1, p1, Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;

    .line 2892
    .local v9, c:Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;

    .line 2893
    .local v12, lp:Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;
    if-eqz v9, :cond_0

    .line 2894
    new-instance v0, Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;

    iget v3, v12, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellX:I

    iget v4, v12, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellY:I

    iget v5, v9, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;->x:I

    iget v6, v9, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;->y:I

    iget v7, v9, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;->spanX:I

    iget v8, v9, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;->spanY:I

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;-><init>(Lcom/baidu/launcher/ui/homeview/CellLayout;Landroid/view/View;IIIIII)V

    .line 2896
    .local v0, rha:Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;
    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;->animate()V

    goto :goto_1

    .line 2899
    .end local v0           #rha:Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;
    .end local v2           #child:Landroid/view/View;
    .end local v9           #c:Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;
    .end local v12           #lp:Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;
    :cond_2
    return-void
.end method

.method private cancelFolderHighlightDraw()V
    .locals 1

    .prologue
    .line 1225
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mFolderHighlightView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1226
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mFolderHighlightView:Landroid/view/View;

    check-cast v0, Lcom/baidu/launcher/ui/common/BubbleTextView;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/common/BubbleTextView;->cancelFolderHighlight()V

    .line 1228
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mFolderHighlightView:Landroid/view/View;

    .line 1229
    return-void
.end method

.method private commitTempPlacement()V
    .locals 9

    .prologue
    .line 3144
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getCountX()I

    move-result v7

    if-ge v2, v7, :cond_1

    .line 3145
    const/4 v4, 0x0

    .local v4, j:I
    :goto_1
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getCountY()I

    move-result v7

    if-ge v4, v7, :cond_0

    .line 3146
    iget-object v7, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mOccupied:[[Z

    aget-object v7, v7, v2

    iget-object v8, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mTmpOccupied:[[Z

    aget-object v8, v8, v2

    aget-boolean v8, v8, v4

    aput-boolean v8, v7, v4

    .line 3145
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 3144
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3149
    .end local v4           #j:I
    :cond_1
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getChildCount()I

    move-result v1

    .line 3150
    .local v1, childCount:I
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_3

    .line 3151
    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3152
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;

    .line 3153
    .local v5, lp:Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/data/item/HomeItemInfo;

    .line 3156
    .local v3, info:Lcom/baidu/launcher/data/item/HomeItemInfo;
    if-eqz v3, :cond_2

    .line 3157
    iget v7, v5, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->tmpCellX:I

    iput v7, v5, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellX:I

    iput v7, v3, Lcom/baidu/launcher/data/item/HomeItemInfo;->cellX:I

    .line 3158
    iget v7, v5, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->tmpCellY:I

    iput v7, v5, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellY:I

    iput v7, v3, Lcom/baidu/launcher/data/item/HomeItemInfo;->cellY:I

    .line 3159
    iget v7, v5, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellHSpan:I

    iput v7, v3, Lcom/baidu/launcher/data/item/HomeItemInfo;->spanX:I

    .line 3160
    iget v7, v5, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellVSpan:I

    iput v7, v3, Lcom/baidu/launcher/data/item/HomeItemInfo;->spanY:I

    .line 3150
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3163
    .end local v0           #child:Landroid/view/View;
    .end local v3           #info:Lcom/baidu/launcher/data/item/HomeItemInfo;
    .end local v5           #lp:Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;
    :cond_3
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Lcom/baidu/launcher/ui/homeview/Workspace;

    .line 3164
    .local v6, workspace:Lcom/baidu/launcher/ui/homeview/Workspace;
    invoke-virtual {v6, p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->updateItemLocationsInDatabase(Lcom/baidu/launcher/ui/homeview/CellLayout;)V

    .line 3165
    return-void
.end method

.method private completeAndClearReorderHintAnimations()V
    .locals 3

    .prologue
    .line 3137
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mShakeAnimators:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;

    .line 3138
    .local v0, a:Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;
    #calls: Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;->completeAnimationImmediately()V
    invoke-static {v0}, Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;->access$800(Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;)V

    goto :goto_0

    .line 3140
    .end local v0           #a:Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;
    :cond_0
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mShakeAnimators:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 3141
    return-void
.end method

.method private computeDestinationLoc(Landroid/view/View;Landroid/view/View;[I[II)V
    .locals 13
    .parameter "dragView"
    .parameter "child"
    .parameter "targetXY"
    .parameter "result"
    .parameter "deltaY"

    .prologue
    .line 1102
    const/4 v2, 0x0

    aget v2, p3, v2

    const/4 v3, 0x1

    aget v3, p3, v3

    move-object/from16 v0, p4

    invoke-virtual {p0, v2, v3, v0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->cellToPoint(II[I)V

    .line 1103
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;

    .line 1104
    .local v1, lp:Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;
    iget v2, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mCellWidth:I

    iget v3, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mCellHeight:I

    iget v4, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mWidthGap:I

    iget v5, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mHeightGap:I

    iget v6, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mShortAxisStartPadding:I

    iget v7, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mLongAxisStartPadding:I

    invoke-virtual/range {v1 .. v7}, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->setup(IIIIII)V

    .line 1105
    const/4 v2, 0x0

    aget v3, p4, v2

    iget v4, v1, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    aput v3, p4, v2

    .line 1106
    const/4 v2, 0x1

    aget v3, p4, v2

    iget v4, v1, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    aput v3, p4, v2

    .line 1107
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    .line 1108
    .local v10, dragViewW:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 1109
    .local v9, dragViewH:I
    instance-of v2, p2, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    move-object v12, p2

    .line 1110
    check-cast v12, Landroid/widget/TextView;

    .line 1111
    .local v12, tv:Landroid/widget/TextView;
    invoke-virtual {v12}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v8, v2, v3

    .line 1114
    .local v8, d:Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x1

    aget v3, p4, v2

    invoke-virtual {v12}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    aput v3, p4, v2

    .line 1115
    const/4 v2, 0x1

    aget v3, p4, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    aput v3, p4, v2

    .line 1118
    const/4 v2, 0x0

    aget v3, p4, v2

    iget v4, v1, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->width:I

    sub-int v4, v10, v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    aput v3, p4, v2

    .line 1124
    .end local v8           #d:Landroid/graphics/drawable/Drawable;
    .end local v12           #tv:Landroid/widget/TextView;
    :goto_0
    iget-object v11, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mRealPosition:[F

    .line 1125
    .local v11, realPoints:[F
    const/4 v2, 0x0

    const/4 v3, 0x0

    aget v3, p4, v3

    int-to-float v3, v3

    aput v3, v11, v2

    .line 1126
    const/4 v2, 0x1

    const/4 v3, 0x1

    aget v3, p4, v3

    int-to-float v3, v3

    aput v3, v11, v2

    .line 1127
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1128
    const/4 v2, 0x1

    aget v3, v11, v2

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getTop()I

    move-result v4

    sub-int v4, v4, p5

    int-to-float v4, v4

    add-float/2addr v3, v4

    aput v3, v11, v2

    .line 1129
    const/4 v2, 0x0

    const/4 v3, 0x0

    aget v3, v11, v3

    float-to-int v3, v3

    const/high16 v4, 0x3f80

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getScaleX()F

    move-result v5

    sub-float/2addr v4, v5

    int-to-float v5, v10

    mul-float/2addr v4, v5

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    float-to-int v4, v4

    sub-int/2addr v3, v4

    aput v3, p4, v2

    .line 1130
    const/4 v2, 0x1

    const/4 v3, 0x1

    aget v3, v11, v3

    float-to-int v3, v3

    const/high16 v4, 0x3f80

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getScaleY()F

    move-result v5

    sub-float/2addr v4, v5

    int-to-float v5, v9

    mul-float/2addr v4, v5

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    float-to-int v4, v4

    sub-int/2addr v3, v4

    aput v3, p4, v2

    .line 1131
    return-void

    .line 1121
    .end local v11           #realPoints:[F
    :cond_0
    const/4 v2, 0x1

    aget v3, p4, v2

    iget v4, v1, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->height:I

    sub-int v4, v9, v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    aput v3, p4, v2

    .line 1122
    const/4 v2, 0x0

    aget v3, p4, v2

    iget v4, v1, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->width:I

    sub-int v4, v10, v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    aput v3, p4, v2

    goto :goto_0
.end method

.method private computeDirectionVector(FF[I)V
    .locals 8
    .parameter "deltaX"
    .parameter "deltaY"
    .parameter "result"

    .prologue
    const/4 v7, 0x1

    const-wide/high16 v5, 0x3fe0

    const/4 v4, 0x0

    .line 2758
    div-float v2, p2, p1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    .line 2760
    .local v0, angle:D
    aput v4, p3, v4

    .line 2761
    aput v4, p3, v7

    .line 2762
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v2, v2, v5

    if-lez v2, :cond_0

    .line 2763
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v2

    float-to-int v2, v2

    aput v2, p3, v4

    .line 2765
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v2, v2, v5

    if-lez v2, :cond_1

    .line 2766
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    float-to-int v2, v2

    aput v2, p3, v7

    .line 2768
    :cond_1
    return-void
.end method

.method private copyCurrentStateToSolution(Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;Z)V
    .locals 10
    .parameter "solution"
    .parameter "temp"

    .prologue
    .line 2819
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getChildCount()I

    move-result v7

    .line 2820
    .local v7, childCount:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v7, :cond_1

    .line 2821
    invoke-virtual {p0, v8}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2822
    .local v6, child:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;

    .line 2824
    .local v9, lp:Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;
    if-eqz p2, :cond_0

    .line 2825
    new-instance v0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;

    iget v2, v9, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->tmpCellX:I

    iget v3, v9, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->tmpCellY:I

    iget v4, v9, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellHSpan:I

    iget v5, v9, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellVSpan:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;-><init>(Lcom/baidu/launcher/ui/homeview/CellLayout;IIII)V

    .line 2829
    .local v0, c:Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;
    :goto_1
    iget-object v1, p1, Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v1, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2820
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2827
    .end local v0           #c:Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;
    :cond_0
    new-instance v0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;

    iget v2, v9, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellX:I

    iget v3, v9, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellY:I

    iget v4, v9, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellHSpan:I

    iget v5, v9, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellVSpan:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;-><init>(Lcom/baidu/launcher/ui/homeview/CellLayout;IIII)V

    .restart local v0       #c:Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;
    goto :goto_1

    .line 2831
    .end local v0           #c:Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;
    .end local v6           #child:Landroid/view/View;
    .end local v9           #lp:Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;
    :cond_1
    return-void
.end method

.method private copyOccupiedArray([[Z)V
    .locals 4
    .parameter "occupied"

    .prologue
    .line 2771
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getCountX()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 2772
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getCountY()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2773
    aget-object v2, p1, v0

    iget-object v3, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mOccupied:[[Z

    aget-object v3, v3, v0

    aget-boolean v3, v3, v1

    aput-boolean v3, v2, v1

    .line 2772
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2771
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2776
    .end local v1           #j:I
    :cond_1
    return-void
.end method

.method private copySolutionToTempState(Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;Landroid/view/View;)V
    .locals 13
    .parameter "solution"
    .parameter "dragView"

    .prologue
    const/4 v6, 0x1

    .line 2834
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getCountX()I

    move-result v0

    if-ge v10, v0, :cond_1

    .line 2835
    const/4 v11, 0x0

    .local v11, j:I
    :goto_1
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getCountY()I

    move-result v0

    if-ge v11, v0, :cond_0

    .line 2836
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mTmpOccupied:[[Z

    aget-object v0, v0, v10

    const/4 v1, 0x0

    aput-boolean v1, v0, v11

    .line 2835
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 2834
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 2840
    .end local v11           #j:I
    :cond_1
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getChildCount()I

    move-result v9

    .line 2841
    .local v9, childCount:I
    const/4 v10, 0x0

    :goto_2
    if-ge v10, v9, :cond_4

    .line 2842
    invoke-virtual {p0, v10}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 2843
    .local v8, child:Landroid/view/View;
    if-ne v8, p2, :cond_3

    .line 2841
    :cond_2
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 2844
    :cond_3
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;

    .line 2845
    .local v12, lp:Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;
    iget-object v0, p1, Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;

    .line 2846
    .local v7, c:Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;
    if-eqz v7, :cond_2

    .line 2847
    iget v0, v7, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;->x:I

    iput v0, v12, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->tmpCellX:I

    .line 2848
    iget v0, v7, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;->y:I

    iput v0, v12, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->tmpCellY:I

    .line 2849
    iget v0, v7, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;->spanX:I

    iput v0, v12, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellHSpan:I

    .line 2850
    iget v0, v7, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;->spanY:I

    iput v0, v12, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellVSpan:I

    .line 2851
    iget v1, v7, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;->x:I

    iget v2, v7, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;->y:I

    iget v3, v7, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;->spanX:I

    iget v4, v7, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;->spanY:I

    iget-object v5, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mTmpOccupied:[[Z

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/baidu/launcher/ui/homeview/CellLayout;->markCellsForView(IIII[[ZZ)V

    goto :goto_3

    .line 2854
    .end local v7           #c:Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;
    .end local v8           #child:Landroid/view/View;
    .end local v12           #lp:Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;
    :cond_4
    iget v1, p1, Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;->dragViewX:I

    iget v2, p1, Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;->dragViewY:I

    iget v3, p1, Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;->dragViewSpanX:I

    iget v4, p1, Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;->dragViewSpanY:I

    iget-object v5, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mTmpOccupied:[[Z

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/baidu/launcher/ui/homeview/CellLayout;->markCellsForView(IIII[[ZZ)V

    .line 2856
    return-void
.end method

.method private static findIntersectingVacantCells(Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;IIII[[Z)V
    .locals 1
    .parameter "cellInfo"
    .parameter "x"
    .parameter "y"
    .parameter "xCount"
    .parameter "yCount"
    .parameter "occupied"

    .prologue
    const/high16 v0, -0x8000

    .line 544
    iput v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->maxVacantSpanX:I

    .line 545
    iput v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->maxVacantSpanXSpanY:I

    .line 546
    iput v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->maxVacantSpanY:I

    .line 547
    iput v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->maxVacantSpanYSpanX:I

    .line 548
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->clearVacantCells()V

    .line 550
    aget-object v0, p5, p1

    aget-boolean v0, v0, p2

    if-eqz v0, :cond_0

    .line 557
    :goto_0
    return-void

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->current:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 556
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->current:Landroid/graphics/Rect;

    invoke-static {v0, p3, p4, p5, p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->findVacantCell(Landroid/graphics/Rect;II[[ZLcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;)V

    goto :goto_0
.end method

.method private findNearestArea(IIII[I[[Z[[Z[I)[I
    .locals 20
    .parameter "cellX"
    .parameter "cellY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "direction"
    .parameter "occupied"
    .parameter "blockOccupied"
    .parameter "result"

    .prologue
    .line 2343
    if-eqz p8, :cond_1

    move-object/from16 v5, p8

    .line 2344
    .local v5, bestXY:[I
    :goto_0
    const v4, 0x7f7fffff

    .line 2345
    .local v4, bestDistance:F
    const/high16 v3, -0x8000

    .line 2347
    .local v3, bestDirectionScore:I
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getCountX()I

    move-result v6

    .line 2348
    .local v6, countX:I
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getCountY()I

    move-result v7

    .line 2350
    .local v7, countY:I
    const/16 v16, 0x0

    .local v16, y:I
    :goto_1
    add-int/lit8 v17, p4, -0x1

    sub-int v17, v7, v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_a

    .line 2352
    const/4 v15, 0x0

    .local v15, x:I
    :goto_2
    add-int/lit8 v17, p3, -0x1

    sub-int v17, v6, v17

    move/from16 v0, v17

    if-ge v15, v0, :cond_9

    .line 2354
    const/4 v13, 0x0

    .local v13, i:I
    :goto_3
    move/from16 v0, p3

    if-ge v13, v0, :cond_4

    .line 2355
    const/4 v14, 0x0

    .local v14, j:I
    :goto_4
    move/from16 v0, p4

    if-ge v14, v0, :cond_3

    .line 2356
    add-int v17, v15, v13

    aget-object v17, p6, v17

    add-int v18, v16, v14

    aget-boolean v17, v17, v18

    if-eqz v17, :cond_2

    if-eqz p7, :cond_0

    aget-object v17, p7, v13

    aget-boolean v17, v17, v14

    if-eqz v17, :cond_2

    .line 2352
    .end local v14           #j:I
    :cond_0
    :goto_5
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 2343
    .end local v3           #bestDirectionScore:I
    .end local v4           #bestDistance:F
    .end local v5           #bestXY:[I
    .end local v6           #countX:I
    .end local v7           #countY:I
    .end local v13           #i:I
    .end local v15           #x:I
    .end local v16           #y:I
    :cond_1
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v5, v0, [I

    goto :goto_0

    .line 2355
    .restart local v3       #bestDirectionScore:I
    .restart local v4       #bestDistance:F
    .restart local v5       #bestXY:[I
    .restart local v6       #countX:I
    .restart local v7       #countY:I
    .restart local v13       #i:I
    .restart local v14       #j:I
    .restart local v15       #x:I
    .restart local v16       #y:I
    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 2354
    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 2362
    .end local v14           #j:I
    :cond_4
    sub-int v17, v15, p1

    sub-int v18, v15, p1

    mul-int v17, v17, v18

    sub-int v18, v16, p2

    sub-int v19, v16, p2

    mul-int v18, v18, v19

    add-int v17, v17, v18

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-float v11, v0

    .line 2364
    .local v11, distance:F
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mTmpPoint:[I

    .line 2365
    .local v8, curDirection:[I
    sub-int v17, v15, p1

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sub-int v18, v16, p2

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2, v8}, Lcom/baidu/launcher/ui/homeview/CellLayout;->computeDirectionVector(FF[I)V

    .line 2368
    const/16 v17, 0x0

    aget v17, p5, v17

    const/16 v18, 0x0

    aget v18, v8, v18

    mul-int v17, v17, v18

    const/16 v18, 0x1

    aget v18, p5, v18

    const/16 v19, 0x1

    aget v19, v8, v19

    mul-int v18, v18, v19

    add-int v9, v17, v18

    .line 2370
    .local v9, curDirectionScore:I
    const/4 v12, 0x0

    .line 2371
    .local v12, exactDirectionOnly:Z
    const/16 v17, 0x0

    aget v17, p5, v17

    const/16 v18, 0x0

    aget v18, v8, v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    const/16 v17, 0x0

    aget v17, p5, v17

    const/16 v18, 0x0

    aget v18, v8, v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    const/4 v10, 0x1

    .line 2373
    .local v10, directionMatches:Z
    :goto_6
    if-nez v10, :cond_5

    if-nez v12, :cond_6

    :cond_5
    invoke-static {v11, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v17

    if-ltz v17, :cond_7

    :cond_6
    invoke-static {v11, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v17

    if-nez v17, :cond_0

    if-le v9, v3, :cond_0

    .line 2376
    :cond_7
    move v4, v11

    .line 2377
    move v3, v9

    .line 2378
    const/16 v17, 0x0

    aput v15, v5, v17

    .line 2379
    const/16 v17, 0x1

    aput v16, v5, v17

    goto/16 :goto_5

    .line 2371
    .end local v10           #directionMatches:Z
    :cond_8
    const/4 v10, 0x0

    goto :goto_6

    .line 2350
    .end local v8           #curDirection:[I
    .end local v9           #curDirectionScore:I
    .end local v11           #distance:F
    .end local v12           #exactDirectionOnly:Z
    .end local v13           #i:I
    :cond_9
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_1

    .line 2385
    .end local v15           #x:I
    :cond_a
    const v17, 0x7f7fffff

    cmpl-float v17, v4, v17

    if-nez v17, :cond_b

    .line 2386
    const/16 v17, 0x0

    const/16 v18, -0x1

    aput v18, v5, v17

    .line 2387
    const/16 v17, 0x1

    const/16 v18, -0x1

    aput v18, v5, v17

    .line 2389
    :cond_b
    return-object v5
.end method

.method private findNearestAreaInDirection(IIII[I[[Z[[Z[I)[I
    .locals 11
    .parameter "cellX"
    .parameter "cellY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "direction"
    .parameter "occupied"
    .parameter "blockOccupied"
    .parameter "result"

    .prologue
    .line 2414
    if-eqz p8, :cond_2

    move-object/from16 v1, p8

    .line 2415
    .local v1, bestXY:[I
    :goto_0
    const/4 v8, 0x0

    const/4 v9, -0x1

    aput v9, v1, v8

    .line 2416
    const/4 v8, 0x1

    const/4 v9, -0x1

    aput v9, v1, v8

    .line 2417
    const v0, 0x7f7fffff

    .line 2420
    .local v0, bestDistance:F
    const/4 v8, 0x0

    aget v8, p5, v8

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    aget v8, p5, v8

    if-nez v8, :cond_1

    :cond_0
    const/4 v8, 0x0

    aget v8, p5, v8

    if-nez v8, :cond_3

    const/4 v8, 0x1

    aget v8, p5, v8

    if-nez v8, :cond_3

    .line 2450
    :cond_1
    return-object v1

    .line 2414
    .end local v0           #bestDistance:F
    .end local v1           #bestXY:[I
    :cond_2
    const/4 v8, 0x2

    new-array v1, v8, [I

    goto :goto_0

    .line 2426
    .restart local v0       #bestDistance:F
    .restart local v1       #bestXY:[I
    :cond_3
    const/4 v8, 0x0

    aget v8, p5, v8

    add-int v6, p1, v8

    .line 2427
    .local v6, x:I
    const/4 v8, 0x1

    aget v8, p5, v8

    add-int v7, p2, v8

    .line 2428
    .local v7, y:I
    :goto_1
    if-ltz v6, :cond_1

    add-int v8, v6, p3

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getCountX()I

    move-result v9

    if-gt v8, v9, :cond_1

    if-ltz v7, :cond_1

    add-int v8, v7, p4

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getCountY()I

    move-result v9

    if-gt v8, v9, :cond_1

    .line 2430
    const/4 v3, 0x0

    .line 2431
    .local v3, fail:Z
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    if-ge v4, p3, :cond_7

    .line 2432
    const/4 v5, 0x0

    .local v5, j:I
    :goto_3
    if-ge v5, p4, :cond_6

    .line 2433
    add-int v8, v6, v4

    aget-object v8, p6, v8

    add-int v9, v7, v5

    aget-boolean v8, v8, v9

    if-eqz v8, :cond_5

    if-eqz p7, :cond_4

    aget-object v8, p7, v4

    aget-boolean v8, v8, v5

    if-eqz v8, :cond_5

    .line 2434
    :cond_4
    const/4 v3, 0x1

    .line 2432
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 2431
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2438
    .end local v5           #j:I
    :cond_7
    if-nez v3, :cond_8

    .line 2439
    sub-int v8, v6, p1

    sub-int v9, v6, p1

    mul-int/2addr v8, v9

    sub-int v9, v7, p2

    sub-int v10, v7, p2

    mul-int/2addr v9, v10

    add-int/2addr v8, v9

    int-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v2, v8

    .line 2441
    .local v2, distance:F
    invoke-static {v2, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-gez v8, :cond_8

    .line 2442
    move v0, v2

    .line 2443
    const/4 v8, 0x0

    aput v6, v1, v8

    .line 2444
    const/4 v8, 0x1

    aput v7, v1, v8

    .line 2447
    .end local v2           #distance:F
    :cond_8
    const/4 v8, 0x0

    aget v8, p5, v8

    add-int/2addr v6, v8

    .line 2448
    const/4 v8, 0x1

    aget v8, p5, v8

    add-int/2addr v7, v8

    .line 2449
    goto :goto_1
.end method

.method private findOccupiedCells(II[[ZLandroid/view/View;)V
    .locals 8
    .parameter "xCount"
    .parameter "yCount"
    .parameter "occupied"
    .parameter "ignoreView"

    .prologue
    .line 1345
    const/4 v4, 0x0

    .local v4, x:I
    :goto_0
    if-ge v4, p1, :cond_1

    .line 1346
    const/4 v5, 0x0

    .local v5, y:I
    :goto_1
    if-ge v5, p2, :cond_0

    .line 1347
    aget-object v6, p3, v4

    const/4 v7, 0x0

    aput-boolean v7, v6, v5

    .line 1346
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1345
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1351
    .end local v5           #y:I
    :cond_1
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getChildCount()I

    move-result v1

    .line 1352
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v1, :cond_5

    .line 1353
    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1354
    .local v0, child:Landroid/view/View;
    instance-of v6, v0, Lcom/baidu/launcher/ui/folder/Folder;

    if-nez v6, :cond_2

    invoke-virtual {v0, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1352
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1357
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;

    .line 1359
    .local v3, lp:Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;
    iget v4, v3, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellX:I

    :goto_3
    iget v6, v3, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellX:I

    iget v7, v3, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellHSpan:I

    add-int/2addr v6, v7

    if-ge v4, v6, :cond_2

    if-ge v4, p1, :cond_2

    .line 1360
    iget v5, v3, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellY:I

    .restart local v5       #y:I
    :goto_4
    iget v6, v3, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellY:I

    iget v7, v3, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellVSpan:I

    add-int/2addr v6, v7

    if-ge v5, v6, :cond_4

    if-ge v5, p2, :cond_4

    .line 1361
    aget-object v6, p3, v4

    const/4 v7, 0x1

    aput-boolean v7, v6, v5

    .line 1360
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 1359
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1365
    .end local v0           #child:Landroid/view/View;
    .end local v3           #lp:Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;
    .end local v5           #y:I
    :cond_5
    return-void
.end method

.method private static findVacantCell(Landroid/graphics/Rect;II[[ZLcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;)V
    .locals 3
    .parameter "current"
    .parameter "xCount"
    .parameter "yCount"
    .parameter "occupied"
    .parameter "cellInfo"

    .prologue
    .line 562
    invoke-static {p0, p4}, Lcom/baidu/launcher/ui/homeview/CellLayout;->addVacantCell(Landroid/graphics/Rect;Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;)V

    .line 564
    iget v0, p0, Landroid/graphics/Rect;->left:I

    if-lez v0, :cond_0

    .line 565
    iget v0, p0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v1, v2, p3}, Lcom/baidu/launcher/ui/homeview/CellLayout;->isColumnEmpty(III[[Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 566
    iget v0, p0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 567
    invoke-static {p0, p1, p2, p3, p4}, Lcom/baidu/launcher/ui/homeview/CellLayout;->findVacantCell(Landroid/graphics/Rect;II[[ZLcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;)V

    .line 568
    iget v0, p0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 572
    :cond_0
    iget v0, p0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v1, p1, -0x1

    if-ge v0, v1, :cond_1

    .line 573
    iget v0, p0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v1, v2, p3}, Lcom/baidu/launcher/ui/homeview/CellLayout;->isColumnEmpty(III[[Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 574
    iget v0, p0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 575
    invoke-static {p0, p1, p2, p3, p4}, Lcom/baidu/launcher/ui/homeview/CellLayout;->findVacantCell(Landroid/graphics/Rect;II[[ZLcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;)V

    .line 576
    iget v0, p0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 580
    :cond_1
    iget v0, p0, Landroid/graphics/Rect;->top:I

    if-lez v0, :cond_2

    .line 581
    iget v0, p0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/graphics/Rect;->right:I

    invoke-static {v0, v1, v2, p3}, Lcom/baidu/launcher/ui/homeview/CellLayout;->isRowEmpty(III[[Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 582
    iget v0, p0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 583
    invoke-static {p0, p1, p2, p3, p4}, Lcom/baidu/launcher/ui/homeview/CellLayout;->findVacantCell(Landroid/graphics/Rect;II[[ZLcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;)V

    .line 584
    iget v0, p0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 588
    :cond_2
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, p2, -0x1

    if-ge v0, v1, :cond_3

    .line 589
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/graphics/Rect;->right:I

    invoke-static {v0, v1, v2, p3}, Lcom/baidu/launcher/ui/homeview/CellLayout;->isRowEmpty(III[[Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 590
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 591
    invoke-static {p0, p1, p2, p3, p4}, Lcom/baidu/launcher/ui/homeview/CellLayout;->findVacantCell(Landroid/graphics/Rect;II[[ZLcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;)V

    .line 592
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 595
    :cond_3
    return-void
.end method

.method public static findVacantCell([IIIII[[Z)Z
    .locals 8
    .parameter "vacant"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "xCount"
    .parameter "yCount"
    .parameter "occupied"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1305
    const/4 v3, 0x0

    .local v3, x:I
    :goto_0
    if-ge v3, p3, :cond_7

    .line 1306
    const/4 v4, 0x0

    .local v4, y:I
    :goto_1
    if-ge v4, p4, :cond_6

    .line 1307
    aget-object v7, p5, v3

    aget-boolean v7, v7, v4

    if-nez v7, :cond_1

    move v0, v5

    .line 1308
    .local v0, available:Z
    :goto_2
    move v1, v3

    .local v1, i:I
    :goto_3
    add-int v7, v3, p1

    add-int/lit8 v7, v7, -0x1

    if-ge v1, v7, :cond_0

    if-ge v3, p3, :cond_0

    .line 1309
    move v2, v4

    .local v2, j:I
    :goto_4
    add-int v7, v4, p2

    add-int/lit8 v7, v7, -0x1

    if-ge v2, v7, :cond_4

    if-ge v4, p4, :cond_4

    .line 1310
    if-eqz v0, :cond_2

    aget-object v7, p5, v1

    aget-boolean v7, v7, v2

    if-nez v7, :cond_2

    move v0, v5

    .line 1311
    :goto_5
    if-nez v0, :cond_3

    .line 1315
    .end local v2           #j:I
    :cond_0
    if-eqz v0, :cond_5

    .line 1316
    aput v3, p0, v6

    .line 1317
    aput v4, p0, v5

    .line 1323
    .end local v0           #available:Z
    .end local v1           #i:I
    .end local v4           #y:I
    :goto_6
    return v5

    .restart local v4       #y:I
    :cond_1
    move v0, v6

    .line 1307
    goto :goto_2

    .restart local v0       #available:Z
    .restart local v1       #i:I
    .restart local v2       #j:I
    :cond_2
    move v0, v6

    .line 1310
    goto :goto_5

    .line 1309
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1308
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1306
    .end local v2           #j:I
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1305
    .end local v0           #available:Z
    .end local v1           #i:I
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v4           #y:I
    :cond_7
    move v5, v6

    .line 1323
    goto :goto_6
.end method

.method private getDirectionVectorForDrop(IIIILandroid/view/View;[I)V
    .locals 28
    .parameter "dragViewCenterX"
    .parameter "dragViewCenterY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "dragView"
    .parameter "resultDirection"

    .prologue
    .line 3208
    const/4 v2, 0x2

    new-array v7, v2, [I

    .local v7, targetDestination:[I
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    .line 3210
    invoke-virtual/range {v2 .. v7}, Lcom/baidu/launcher/ui/homeview/CellLayout;->findNearestArea(IIII[I)[I

    .line 3211
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    .line 3212
    .local v13, dragRect:Landroid/graphics/Rect;
    const/4 v2, 0x0

    aget v9, v7, v2

    const/4 v2, 0x1

    aget v10, v7, v2

    move-object/from16 v8, p0

    move/from16 v11, p3

    move/from16 v12, p4

    invoke-virtual/range {v8 .. v13}, Lcom/baidu/launcher/ui/homeview/CellLayout;->regionToRect(IIIILandroid/graphics/Rect;)V

    .line 3213
    invoke-virtual {v13}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {v13}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    sub-int v3, p2, v3

    invoke-virtual {v13, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 3215
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    .line 3216
    .local v20, dropRegionRect:Landroid/graphics/Rect;
    const/4 v2, 0x0

    aget v15, v7, v2

    const/4 v2, 0x1

    aget v16, v7, v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v14, p0

    move/from16 v17, p3

    move/from16 v18, p4

    move-object/from16 v19, p5

    invoke-direct/range {v14 .. v21}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getViewsIntersectingRegion(IIIILandroid/view/View;Landroid/graphics/Rect;Ljava/util/ArrayList;)V

    .line 3219
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->width()I

    move-result v24

    .line 3220
    .local v24, dropRegionSpanX:I
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->height()I

    move-result v25

    .line 3222
    .local v25, dropRegionSpanY:I
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->width()I

    move-result v18

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->height()I

    move-result v19

    move-object/from16 v15, p0

    invoke-virtual/range {v15 .. v20}, Lcom/baidu/launcher/ui/homeview/CellLayout;->regionToRect(IIIILandroid/graphics/Rect;)V

    .line 3225
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    sub-int v2, v2, p1

    div-int v22, v2, p3

    .line 3226
    .local v22, deltaX:I
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    sub-int v2, v2, p2

    div-int v23, v2, p4

    .line 3227
    .local v23, deltaY:I
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getCountX()I

    move-result v26

    .line 3228
    .local v26, mCountX:I
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getCountY()I

    move-result v27

    .line 3229
    .local v27, mCountY:I
    move/from16 v0, v24

    move/from16 v1, v26

    if-eq v0, v1, :cond_0

    move/from16 v0, p3

    move/from16 v1, v26

    if-ne v0, v1, :cond_1

    .line 3230
    :cond_0
    const/16 v22, 0x0

    .line 3232
    :cond_1
    move/from16 v0, v25

    move/from16 v1, v27

    if-eq v0, v1, :cond_2

    move/from16 v0, p4

    move/from16 v1, v27

    if-ne v0, v1, :cond_3

    .line 3233
    :cond_2
    const/16 v23, 0x0

    .line 3236
    :cond_3
    if-nez v22, :cond_4

    if-nez v23, :cond_4

    .line 3238
    const/4 v2, 0x0

    const/4 v3, 0x1

    aput v3, p6, v2

    .line 3239
    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, p6, v2

    .line 3243
    :goto_0
    return-void

    .line 3241
    :cond_4
    move/from16 v0, v22

    int-to-float v2, v0

    move/from16 v0, v23

    int-to-float v3, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v2, v3, v1}, Lcom/baidu/launcher/ui/homeview/CellLayout;->computeDirectionVector(FF[I)V

    goto :goto_0
.end method

.method private getViewsIntersectingRegion(IIIILandroid/view/View;Landroid/graphics/Rect;Ljava/util/ArrayList;)V
    .locals 12
    .parameter "cellX"
    .parameter "cellY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "dragView"
    .parameter "boundingRect"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3248
    .local p7, intersectingViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p6, :cond_0

    .line 3249
    add-int v7, p1, p3

    add-int v8, p2, p4

    move-object/from16 v0, p6

    invoke-virtual {v0, p1, p2, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 3251
    :cond_0
    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->clear()V

    .line 3252
    new-instance v5, Landroid/graphics/Rect;

    add-int v7, p1, p3

    add-int v8, p2, p4

    invoke-direct {v5, p1, p2, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 3253
    .local v5, r0:Landroid/graphics/Rect;
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 3254
    .local v6, r1:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getChildCount()I

    move-result v2

    .line 3255
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 3256
    invoke-virtual {p0, v3}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3257
    .local v1, child:Landroid/view/View;
    move-object/from16 v0, p5

    if-ne v1, v0, :cond_2

    .line 3255
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3258
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;

    .line 3259
    .local v4, lp:Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;
    iget v7, v4, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellX:I

    iget v8, v4, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellY:I

    iget v9, v4, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellX:I

    iget v10, v4, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellHSpan:I

    add-int/2addr v9, v10

    iget v10, v4, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellY:I

    iget v11, v4, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellVSpan:I

    add-int/2addr v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 3260
    invoke-static {v5, v6}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3261
    iget-object v7, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3262
    if-eqz p6, :cond_1

    .line 3263
    move-object/from16 v0, p6

    invoke-virtual {v0, v6}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 3267
    .end local v1           #child:Landroid/view/View;
    .end local v4           #lp:Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;
    :cond_3
    return-void
.end method

.method private static isColumnEmpty(III[[Z)Z
    .locals 2
    .parameter "x"
    .parameter "top"
    .parameter "bottom"
    .parameter "occupied"

    .prologue
    .line 651
    move v0, p1

    .local v0, y:I
    :goto_0
    if-gt v0, p2, :cond_1

    .line 652
    aget-object v1, p3, p0

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    .line 653
    const/4 v1, 0x0

    .line 656
    :goto_1
    return v1

    .line 651
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 656
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private static isRowEmpty(III[[Z)Z
    .locals 2
    .parameter "y"
    .parameter "left"
    .parameter "right"
    .parameter "occupied"

    .prologue
    .line 660
    move v0, p1

    .local v0, x:I
    :goto_0
    if-gt v0, p2, :cond_1

    .line 661
    aget-object v1, p3, v0

    aget-boolean v1, v1, p0

    if-eqz v1, :cond_0

    .line 662
    const/4 v1, 0x0

    .line 665
    :goto_1
    return v1

    .line 660
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 665
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private lazyInitTempRectStack()V
    .locals 3

    .prologue
    .line 2121
    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mTempRectStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2122
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getCountX()I

    move-result v1

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getCountY()I

    move-result v2

    mul-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    .line 2123
    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mTempRectStack:Ljava/util/Stack;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2122
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2126
    .end local v0           #i:I
    :cond_0
    return-void
.end method

.method private markCellsForRect(Landroid/graphics/Rect;[[ZZ)V
    .locals 7
    .parameter "r"
    .parameter "occupied"
    .parameter "value"

    .prologue
    .line 2600
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    move-object v0, p0

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/baidu/launcher/ui/homeview/CellLayout;->markCellsForView(IIII[[ZZ)V

    .line 2601
    return-void
.end method

.method private markCellsForView(IIIIZ)V
    .locals 3
    .parameter "cellX"
    .parameter "cellY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "value"

    .prologue
    .line 1801
    move v0, p1

    .local v0, x:I
    :goto_0
    add-int v2, p1, p3

    if-ge v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getCountX()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1802
    move v1, p2

    .local v1, y:I
    :goto_1
    add-int v2, p2, p4

    if-ge v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getCountY()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1803
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mOccupied:[[Z

    aget-object v2, v2, v0

    aput-boolean p5, v2, v1

    .line 1802
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1801
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1806
    .end local v1           #y:I
    :cond_1
    return-void
.end method

.method private markCellsForView(IIII[[ZZ)V
    .locals 3
    .parameter "cellX"
    .parameter "cellY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "occupied"
    .parameter "value"

    .prologue
    .line 1810
    if-ltz p1, :cond_0

    if-gez p2, :cond_1

    .line 1816
    :cond_0
    return-void

    .line 1811
    :cond_1
    move v0, p1

    .local v0, x:I
    :goto_0
    add-int v2, p1, p3

    if-ge v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getCountX()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1812
    move v1, p2

    .local v1, y:I
    :goto_1
    add-int v2, p2, p4

    if-ge v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getCountY()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1813
    aget-object v2, p5, v0

    aput-boolean p6, v2, v1

    .line 1812
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1811
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private rearrangementExists(IIII[ILandroid/view/View;Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;)Z
    .locals 18
    .parameter "cellX"
    .parameter "cellY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "direction"
    .parameter "ignoreView"
    .parameter "solution"

    .prologue
    .line 2702
    if-ltz p1, :cond_0

    if-gez p2, :cond_1

    :cond_0
    const/4 v4, 0x0

    .line 2750
    :goto_0
    return v4

    .line 2704
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 2705
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mOccupiedRect:Landroid/graphics/Rect;

    add-int v5, p1, p3

    add-int v6, p2, p4

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v4, v0, v1, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 2708
    if-eqz p6, :cond_2

    .line 2709
    move-object/from16 v0, p7

    iget-object v4, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    move-object/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;

    .line 2710
    .local v11, c:Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;
    if-eqz v11, :cond_2

    .line 2711
    move/from16 v0, p1

    iput v0, v11, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;->x:I

    .line 2712
    move/from16 v0, p2

    iput v0, v11, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;->y:I

    .line 2715
    .end local v11           #c:Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;
    :cond_2
    new-instance v15, Landroid/graphics/Rect;

    add-int v4, p1, p3

    add-int v5, p2, p4

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-direct {v15, v0, v1, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2716
    .local v15, r0:Landroid/graphics/Rect;
    new-instance v16, Landroid/graphics/Rect;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Rect;-><init>()V

    .line 2717
    .local v16, r1:Landroid/graphics/Rect;
    move-object/from16 v0, p7

    iget-object v4, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    .line 2718
    .local v12, child:Landroid/view/View;
    move-object/from16 v0, p6

    if-eq v12, v0, :cond_3

    .line 2719
    move-object/from16 v0, p7

    iget-object v4, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v4, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;

    .line 2720
    .restart local v11       #c:Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;

    .line 2721
    .local v14, lp:Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;
    iget v4, v11, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;->x:I

    iget v5, v11, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;->y:I

    iget v6, v11, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;->x:I

    iget v7, v11, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;->spanX:I

    add-int/2addr v6, v7

    iget v7, v11, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;->y:I

    iget v8, v11, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;->spanY:I

    add-int/2addr v7, v8

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 2722
    invoke-static/range {v15 .. v16}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2723
    iget-boolean v4, v14, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->canReorder:Z

    if-nez v4, :cond_4

    .line 2724
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 2726
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2733
    .end local v11           #c:Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;
    .end local v12           #child:Landroid/view/View;
    .end local v14           #lp:Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mOccupiedRect:Landroid/graphics/Rect;

    move-object/from16 v4, p0

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v4 .. v9}, Lcom/baidu/launcher/ui/homeview/CellLayout;->attemptPushInDirection(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2735
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2739
    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mOccupiedRect:Landroid/graphics/Rect;

    const/4 v8, 0x0

    move-object/from16 v4, p0

    move-object/from16 v7, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v4 .. v10}, Lcom/baidu/launcher/ui/homeview/CellLayout;->addViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[IZLandroid/view/View;Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2741
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2745
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_8
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/View;

    .line 2746
    .local v17, v:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mOccupiedRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p5

    move-object/from16 v3, p7

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/baidu/launcher/ui/homeview/CellLayout;->addViewToTempLocation(Landroid/view/View;Landroid/graphics/Rect;[ILcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 2747
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 2750
    .end local v17           #v:Landroid/view/View;
    :cond_9
    const/4 v4, 0x1

    goto/16 :goto_0
.end method

.method public static rectToCell(Landroid/content/res/Resources;II)[I
    .locals 10
    .parameter "resources"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v9, 0x3

    .line 1268
    const v7, 0x7f0b002f

    invoke-virtual {p0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1269
    .local v1, actualWidth:I
    const v7, 0x7f0b0030

    invoke-virtual {p0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1270
    .local v0, actualHeight:I
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1273
    .local v4, smallerSize:I
    int-to-float v7, p1

    int-to-float v8, v4

    div-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v5, v7

    .line 1274
    .local v5, spanX:I
    int-to-float v7, p2

    int-to-float v8, v4

    div-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v6, v7

    .line 1276
    .local v6, spanY:I
    sget v7, Lcom/baidu/launcher/utils/DefaultConfigurationHelper;->deflautHomeLineNum:I

    if-le v7, v9, :cond_0

    sget v2, Lcom/baidu/launcher/utils/DefaultConfigurationHelper;->deflautHomeLineNum:I

    .line 1277
    .local v2, homeX:I
    :goto_0
    sget v7, Lcom/baidu/launcher/utils/DefaultConfigurationHelper;->defaultHomeRowNum:I

    if-le v7, v9, :cond_1

    sget v3, Lcom/baidu/launcher/utils/DefaultConfigurationHelper;->defaultHomeRowNum:I

    .line 1279
    .local v3, homeY:I
    :goto_1
    const/4 v7, 0x2

    new-array v7, v7, [I

    const/4 v8, 0x0

    if-le v5, v2, :cond_2

    .end local v2           #homeX:I
    :goto_2
    aput v2, v7, v8

    const/4 v8, 0x1

    if-le v6, v3, :cond_3

    .end local v3           #homeY:I
    :goto_3
    aput v3, v7, v8

    return-object v7

    .line 1276
    :cond_0
    sget v2, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->NUMBER_CELLS_X:I

    goto :goto_0

    .line 1277
    .restart local v2       #homeX:I
    :cond_1
    sget v3, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->NUMBER_CELLS_Y:I

    goto :goto_1

    .restart local v3       #homeY:I
    :cond_2
    move v2, v5

    .line 1279
    goto :goto_2

    .end local v2           #homeX:I
    :cond_3
    move v3, v6

    goto :goto_3
.end method

.method private recycleTempRects(Ljava/util/Stack;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack",
            "<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2129
    .local p1, used:Ljava/util/Stack;,"Ljava/util/Stack<Landroid/graphics/Rect;>;"
    :goto_0
    invoke-virtual {p1}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2130
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mTempRectStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2132
    :cond_0
    return-void
.end method

.method private screenIndex()I
    .locals 2

    .prologue
    .line 1077
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/homeview/Workspace;

    .line 1078
    .local v0, ws:Lcom/baidu/launcher/ui/homeview/Workspace;
    invoke-virtual {v0, p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v1

    return v1
.end method

.method private submitUBCMoveView(Landroid/view/View;[I)V
    .locals 6
    .parameter "child"
    .parameter "targetXY"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 1082
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 1083
    .local v1, o:Ljava/lang/Object;
    instance-of v3, v1, Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;

    if-eqz v3, :cond_2

    move-object v0, v1

    .line 1085
    check-cast v0, Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;

    .line 1086
    .local v0, info:Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;
    iget v3, v0, Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;->cellX:I

    aget v4, p2, v4

    if-ne v3, v4, :cond_0

    iget v3, v0, Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;->cellY:I

    aget v4, p2, v5

    if-ne v3, v4, :cond_0

    iget v3, v0, Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;->screen:I

    invoke-direct {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->screenIndex()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 1087
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0, p2}, Lcom/baidu/launcher/ubc/UBCMetric;->moveWidget(Landroid/content/Context;Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;[I)V

    .line 1099
    .end local v0           #info:Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;
    :cond_1
    :goto_0
    return-void

    .line 1089
    :cond_2
    instance-of v3, v1, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    if-eqz v3, :cond_1

    move-object v0, v1

    .line 1091
    check-cast v0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    .line 1092
    .local v0, info:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    const/4 v3, 0x2

    new-array v2, v3, [I

    iget v3, v0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->cellX:I

    aput v3, v2, v4

    iget v3, v0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->cellY:I

    aput v3, v2, v5

    .line 1095
    .local v2, orgXY:[I
    iget v3, v0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->cellY:I

    aput v3, v2, v5

    .line 1096
    iget v3, v0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->cellX:I

    aget v4, p2, v4

    if-ne v3, v4, :cond_3

    iget v3, v0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->cellY:I

    aget v4, p2, v5

    if-ne v3, v4, :cond_3

    iget v3, v0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->screen:I

    invoke-direct {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->screenIndex()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 1097
    :cond_3
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->screenIndex()I

    move-result v4

    invoke-static {v3, v0, p2, v2, v4}, Lcom/baidu/launcher/ubc/UBCMetric;->moveShortcut(Landroid/content/Context;Lcom/baidu/launcher/data/item/HomeShortcutInfo;[I[II)V

    goto :goto_0
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 6
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 399
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/ui/homeview/Workspace;

    .line 400
    .local v3, ws:Lcom/baidu/launcher/ui/homeview/Workspace;
    instance-of v4, p1, Lcom/baidu/launcher/ui/dragdrop/DropTarget;

    if-eqz v4, :cond_0

    move-object v4, p1

    .line 401
    check-cast v4, Lcom/baidu/launcher/ui/dragdrop/DropTarget;

    invoke-virtual {v3, v4}, Lcom/baidu/launcher/ui/homeview/Workspace;->addDropTarget(Lcom/baidu/launcher/ui/dragdrop/DropTarget;)V

    :cond_0
    move-object v0, p3

    .line 405
    check-cast v0, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;

    .line 406
    .local v0, cellParams:Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->regenerateId:Z

    .line 414
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 415
    .local v2, parent:Landroid/view/ViewParent;
    instance-of v4, v2, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    .line 416
    check-cast v2, Landroid/view/ViewGroup;

    .end local v2           #parent:Landroid/view/ViewParent;
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 418
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    :goto_0
    return-void

    .line 419
    :catch_0
    move-exception v1

    .line 420
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "Launcher.CellLayout"

    const-string v5, "Could not add view."

    invoke-static {v4, v5, v1}, Lcom/baidu/launcher/utils/LogEx;->debugErro(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public animateChildToPosition(Landroid/view/View;IIIIZZ)Z
    .locals 15
    .parameter "child"
    .parameter "cellX"
    .parameter "cellY"
    .parameter "duration"
    .parameter "delay"
    .parameter "permanent"
    .parameter "adjustOccupied"

    .prologue
    .line 2903
    iget-object v11, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mOccupied:[[Z

    .line 2904
    .local v11, occupied:[[Z
    if-nez p6, :cond_0

    .line 2905
    iget-object v11, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mTmpOccupied:[[Z

    .line 2908
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/baidu/launcher/ui/homeview/CellLayout;->indexOfChild(Landroid/view/View;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_6

    .line 2909
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;

    .line 2910
    .local v1, lp:Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/baidu/launcher/data/item/HomeItemInfo;

    .line 2913
    .local v10, info:Lcom/baidu/launcher/data/item/HomeItemInfo;
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mReorderAnimators:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2914
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mReorderAnimators:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/ui/animation/Animator;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/animation/Animator;->cancel()V

    .line 2915
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mReorderAnimators:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2918
    :cond_1
    iget v12, v1, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->x:I

    .line 2919
    .local v12, oldX:I
    iget v13, v1, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->y:I

    .line 2920
    .local v13, oldY:I
    if-eqz p7, :cond_2

    .line 2921
    iget v2, v1, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellX:I

    aget-object v2, v11, v2

    iget v3, v1, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellY:I

    const/4 v4, 0x0

    aput-boolean v4, v2, v3

    .line 2922
    aget-object v2, v11, p2

    const/4 v3, 0x1

    aput-boolean v3, v2, p3

    .line 2924
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 2925
    if-eqz p6, :cond_3

    .line 2926
    move/from16 v0, p2

    iput v0, v10, Lcom/baidu/launcher/data/item/HomeItemInfo;->cellX:I

    move/from16 v0, p2

    iput v0, v1, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellX:I

    .line 2927
    move/from16 v0, p3

    iput v0, v10, Lcom/baidu/launcher/data/item/HomeItemInfo;->cellY:I

    move/from16 v0, p3

    iput v0, v1, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellY:I

    .line 2932
    :goto_0
    iget-boolean v2, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mPortrait:Z

    if-eqz v2, :cond_4

    .line 2933
    iget v2, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mCellWidth:I

    iget v3, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mCellHeight:I

    iget v4, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mWidthGap:I

    iget v5, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mHeightGap:I

    iget v6, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mShortAxisStartPadding:I

    iget v7, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mLongAxisStartPadding:I

    invoke-virtual/range {v1 .. v7}, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->setup(IIIIII)V

    .line 2939
    :goto_1
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 2940
    iget v6, v1, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->x:I

    .line 2941
    .local v6, newX:I
    iget v8, v1, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->y:I

    .line 2943
    .local v8, newY:I
    iput v12, v1, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->x:I

    .line 2944
    iput v13, v1, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->y:I

    .line 2947
    if-ne v12, v6, :cond_5

    if-ne v13, v8, :cond_5

    .line 2948
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 2949
    const/4 v2, 0x1

    .line 2987
    .end local v1           #lp:Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;
    .end local v6           #newX:I
    .end local v8           #newY:I
    .end local v10           #info:Lcom/baidu/launcher/data/item/HomeItemInfo;
    .end local v12           #oldX:I
    .end local v13           #oldY:I
    :goto_2
    return v2

    .line 2929
    .restart local v1       #lp:Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;
    .restart local v10       #info:Lcom/baidu/launcher/data/item/HomeItemInfo;
    .restart local v12       #oldX:I
    .restart local v13       #oldY:I
    :cond_3
    move/from16 v0, p2

    iput v0, v1, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->tmpCellX:I

    .line 2930
    move/from16 v0, p3

    iput v0, v1, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->tmpCellY:I

    goto :goto_0

    .line 2936
    :cond_4
    iget v2, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mCellWidth:I

    iget v3, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mCellHeight:I

    iget v4, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mWidthGap:I

    iget v5, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mHeightGap:I

    iget v6, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mLongAxisStartPadding:I

    iget v7, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mShortAxisStartPadding:I

    invoke-virtual/range {v1 .. v7}, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->setup(IIIIII)V

    goto :goto_1

    .line 2952
    .restart local v6       #newX:I
    .restart local v8       #newY:I
    :cond_5
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->ofFloat([F)Lcom/baidu/launcher/ui/animation/ValueAnimator;

    move-result-object v14

    .line 2953
    .local v14, va:Lcom/baidu/launcher/ui/animation/ValueAnimator;
    move/from16 v0, p4

    int-to-long v2, v0

    invoke-virtual {v14, v2, v3}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->setDuration(J)Lcom/baidu/launcher/ui/animation/ValueAnimator;

    .line 2954
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mReorderAnimators:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2956
    new-instance v2, Lcom/baidu/launcher/ui/homeview/CellLayout$5;

    move-object v3, p0

    move-object v4, v1

    move v5, v12

    move v7, v13

    move-object/from16 v9, p1

    invoke-direct/range {v2 .. v9}, Lcom/baidu/launcher/ui/homeview/CellLayout$5;-><init>(Lcom/baidu/launcher/ui/homeview/CellLayout;Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;IIIILandroid/view/View;)V

    invoke-virtual {v14, v2}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->addUpdateListener(Lcom/baidu/launcher/ui/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2965
    new-instance v2, Lcom/baidu/launcher/ui/homeview/CellLayout$6;

    move-object/from16 v0, p1

    invoke-direct {v2, p0, v1, v0}, Lcom/baidu/launcher/ui/homeview/CellLayout$6;-><init>(Lcom/baidu/launcher/ui/homeview/CellLayout;Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;Landroid/view/View;)V

    invoke-virtual {v14, v2}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->addListener(Lcom/baidu/launcher/ui/animation/Animator$AnimatorListener;)V

    .line 2983
    move/from16 v0, p5

    int-to-long v2, v0

    invoke-virtual {v14, v2, v3}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->setStartDelay(J)V

    .line 2984
    invoke-virtual {v14}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->start()V

    .line 2985
    const/4 v2, 0x1

    goto :goto_2

    .line 2987
    .end local v1           #lp:Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;
    .end local v6           #newX:I
    .end local v8           #newY:I
    .end local v10           #info:Lcom/baidu/launcher/data/item/HomeItemInfo;
    .end local v12           #oldX:I
    .end local v13           #oldY:I
    .end local v14           #va:Lcom/baidu/launcher/ui/animation/ValueAnimator;
    :cond_6
    const/4 v2, 0x0

    goto :goto_2

    .line 2952
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public backupCreateFolderViewOnDrop()V
    .locals 1

    .prologue
    .line 1199
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mFolderHighlightView:Landroid/view/View;

    iput-object v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mCreateFolderView:Landroid/view/View;

    .line 1200
    return-void
.end method

.method public cancelLongPress()V
    .locals 3

    .prologue
    .line 379
    invoke-super {p0}, Landroid/view/ViewGroup;->cancelLongPress()V

    .line 382
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getChildCount()I

    move-result v1

    .line 383
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 384
    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 385
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 383
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 387
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return-void
.end method

.method cellToCenterPoint(II[I)V
    .locals 6
    .parameter "cellX"
    .parameter "cellY"
    .parameter "result"

    .prologue
    const/4 v3, 0x1

    .line 2283
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v3

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/launcher/ui/homeview/CellLayout;->regionToCenterPoint(IIII[I)V

    .line 2284
    return-void
.end method

.method public cellToPoint(II[I)V
    .locals 6
    .parameter "cellX"
    .parameter "cellY"
    .parameter "result"

    .prologue
    .line 760
    iget-boolean v1, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mPortrait:Z

    .line 762
    .local v1, portrait:Z
    if-eqz v1, :cond_0

    iget v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mShortAxisStartPadding:I

    .line 763
    .local v0, hStartPadding:I
    :goto_0
    if-eqz v1, :cond_1

    iget v2, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mLongAxisStartPadding:I

    .line 766
    .local v2, vStartPadding:I
    :goto_1
    const/4 v3, 0x0

    iget v4, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mCellWidth:I

    iget v5, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mWidthGap:I

    add-int/2addr v4, v5

    mul-int/2addr v4, p1

    add-int/2addr v4, v0

    aput v4, p3, v3

    .line 767
    const/4 v3, 0x1

    iget v4, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mCellHeight:I

    iget v5, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mHeightGap:I

    add-int/2addr v4, v5

    mul-int/2addr v4, p2

    add-int/2addr v4, v2

    aput v4, p3, v3

    .line 768
    return-void

    .line 762
    .end local v0           #hStartPadding:I
    .end local v2           #vStartPadding:I
    :cond_0
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mLongAxisStartPadding:I

    goto :goto_0

    .line 763
    .restart local v0       #hStartPadding:I
    :cond_1
    iget v2, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mShortAxisStartPadding:I

    goto :goto_1
.end method

.method public cellToRect(IIIILandroid/graphics/RectF;)V
    .locals 16
    .parameter "cellX"
    .parameter "cellY"
    .parameter "cellHSpan"
    .parameter "cellVSpan"
    .parameter "dragRect"

    .prologue
    .line 1240
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mPortrait:Z

    .line 1241
    .local v6, portrait:Z
    move-object/from16 v0, p0

    iget v2, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mCellWidth:I

    .line 1242
    .local v2, cellWidth:I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mCellHeight:I

    .line 1243
    .local v1, cellHeight:I
    move-object/from16 v0, p0

    iget v9, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mWidthGap:I

    .line 1244
    .local v9, widthGap:I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mHeightGap:I

    .line 1246
    .local v5, heightGap:I
    if-eqz v6, :cond_0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mShortAxisStartPadding:I

    .line 1247
    .local v3, hStartPadding:I
    :goto_0
    if-eqz v6, :cond_1

    move-object/from16 v0, p0

    iget v7, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mLongAxisStartPadding:I

    .line 1249
    .local v7, vStartPadding:I
    :goto_1
    mul-int v12, p3, v2

    add-int/lit8 v13, p3, -0x1

    mul-int/2addr v13, v9

    add-int v8, v12, v13

    .line 1250
    .local v8, width:I
    mul-int v12, p4, v1

    add-int/lit8 v13, p4, -0x1

    mul-int/2addr v13, v5

    add-int v4, v12, v13

    .line 1252
    .local v4, height:I
    add-int v12, v2, v9

    mul-int v12, v12, p1

    add-int v10, v3, v12

    .line 1253
    .local v10, x:I
    add-int v12, v1, v5

    mul-int v12, v12, p2

    add-int v11, v7, v12

    .line 1255
    .local v11, y:I
    int-to-float v12, v10

    int-to-float v13, v11

    add-int v14, v10, v8

    int-to-float v14, v14

    add-int v15, v11, v4

    int-to-float v15, v15

    move-object/from16 v0, p5

    invoke-virtual {v0, v12, v13, v14, v15}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1256
    return-void

    .line 1246
    .end local v3           #hStartPadding:I
    .end local v4           #height:I
    .end local v7           #vStartPadding:I
    .end local v8           #width:I
    .end local v10           #x:I
    .end local v11           #y:I
    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mLongAxisStartPadding:I

    goto :goto_0

    .line 1247
    .restart local v3       #hStartPadding:I
    :cond_1
    move-object/from16 v0, p0

    iget v7, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mShortAxisStartPadding:I

    goto :goto_1
.end method

.method public changePadding(II)V
    .locals 0
    .parameter "longAxisStartPadding"
    .parameter "longAxisEndPadding"

    .prologue
    .line 903
    iput p2, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mLongAxisEndPadding:I

    .line 904
    iput p1, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mLongAxisStartPadding:I

    .line 905
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 1388
    instance-of v0, p1, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;

    return v0
.end method

.method public clearDragOutlines()V
    .locals 6

    .prologue
    .line 3508
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mDragOutlineCurrent:I

    .line 3509
    .local v0, oldIndex:I
    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mDragOutlineAnims:[Lcom/baidu/launcher/ui/animation/InterruptibleInOutAnimator;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/animation/InterruptibleInOutAnimator;->animateOut()V

    .line 3510
    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mDragCell:[I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mDragCell:[I

    const/4 v4, 0x1

    const/4 v5, -0x1

    aput v5, v3, v4

    aput v5, v1, v2

    .line 3511
    return-void
.end method

.method public convertViewToBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "view"

    .prologue
    .line 372
    invoke-virtual {p1}, Landroid/view/View;->buildDrawingCache()V

    .line 373
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 374
    .local v0, bitmap:Landroid/graphics/Bitmap;
    return-object v0
.end method

.method createArea(IIIIIILandroid/view/View;[I[II)[I
    .locals 17
    .parameter "pixelX"
    .parameter "pixelY"
    .parameter "minSpanX"
    .parameter "minSpanY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "dragView"
    .parameter "result"
    .parameter "resultSpan"
    .parameter "mode"

    .prologue
    .line 3328
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p8

    invoke-virtual/range {v2 .. v7}, Lcom/baidu/launcher/ui/homeview/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object p8

    .line 3330
    if-nez p9, :cond_0

    .line 3331
    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 p9, v0

    .line 3337
    :cond_0
    const/4 v2, 0x1

    move/from16 v0, p10

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    move/from16 v0, p10

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    move/from16 v0, p10

    if-ne v0, v2, :cond_a

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mPreviousReorderDirection:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    const/16 v3, -0x64

    if-eq v2, v3, :cond_a

    .line 3339
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mDirectionVector:[I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mPreviousReorderDirection:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    aput v4, v2, v3

    .line 3340
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mDirectionVector:[I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mPreviousReorderDirection:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    aput v4, v2, v3

    .line 3342
    const/4 v2, 0x1

    move/from16 v0, p10

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    move/from16 v0, p10

    if-ne v0, v2, :cond_3

    .line 3343
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mPreviousReorderDirection:[I

    const/4 v3, 0x0

    const/16 v4, -0x64

    aput v4, v2, v3

    .line 3344
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mPreviousReorderDirection:[I

    const/4 v3, 0x1

    const/16 v4, -0x64

    aput v4, v2, v3

    .line 3352
    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mDirectionVector:[I

    const/4 v11, 0x1

    new-instance v12, Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v2}, Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;-><init>(Lcom/baidu/launcher/ui/homeview/CellLayout;Lcom/baidu/launcher/ui/homeview/CellLayout$1;)V

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v10, p7

    invoke-virtual/range {v2 .. v12}, Lcom/baidu/launcher/ui/homeview/CellLayout;->simpleSwap(IIIIII[ILandroid/view/View;ZLcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;)Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;

    move-result-object v16

    .line 3356
    .local v16, swapSolution:Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;
    new-instance v10, Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v2}, Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;-><init>(Lcom/baidu/launcher/ui/homeview/CellLayout;Lcom/baidu/launcher/ui/homeview/CellLayout$1;)V

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v2 .. v10}, Lcom/baidu/launcher/ui/homeview/CellLayout;->findConfigurationNoShuffle(IIIIIILandroid/view/View;Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;)Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;

    move-result-object v15

    .line 3359
    .local v15, noShuffleSolution:Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;
    const/4 v13, 0x0

    .line 3360
    .local v13, finalSolution:Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;
    move-object/from16 v0, v16

    iget-boolean v2, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;->isSolution:Z

    if-eqz v2, :cond_b

    invoke-virtual/range {v16 .. v16}, Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;->area()I

    move-result v2

    invoke-virtual {v15}, Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;->area()I

    move-result v3

    if-lt v2, v3, :cond_b

    .line 3361
    move-object/from16 v13, v16

    .line 3366
    :cond_4
    :goto_1
    const/4 v14, 0x1

    .line 3368
    .local v14, foundSolution:Z
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/baidu/launcher/ui/homeview/CellLayout;->setUseTempCoords(Z)V

    .line 3371
    if-eqz v13, :cond_e

    .line 3372
    const/4 v2, 0x0

    iget v3, v13, Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;->dragViewX:I

    aput v3, p8, v2

    .line 3373
    const/4 v2, 0x1

    iget v3, v13, Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;->dragViewY:I

    aput v3, p8, v2

    .line 3374
    const/4 v2, 0x0

    iget v3, v13, Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;->dragViewSpanX:I

    aput v3, p9, v2

    .line 3375
    const/4 v2, 0x1

    iget v3, v13, Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;->dragViewSpanY:I

    aput v3, p9, v2

    .line 3380
    if-eqz p10, :cond_5

    const/4 v2, 0x1

    move/from16 v0, p10

    if-eq v0, v2, :cond_5

    const/4 v2, 0x2

    move/from16 v0, p10

    if-ne v0, v2, :cond_7

    .line 3382
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-direct {v0, v13, v1}, Lcom/baidu/launcher/ui/homeview/CellLayout;->copySolutionToTempState(Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;Landroid/view/View;)V

    .line 3384
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/baidu/launcher/ui/homeview/CellLayout;->setItemPlacementDirty(Z)V

    .line 3385
    const/4 v2, 0x1

    move/from16 v0, p10

    if-ne v0, v2, :cond_c

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-direct {v0, v13, v1, v2}, Lcom/baidu/launcher/ui/homeview/CellLayout;->animateItemsToSolution(Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;Landroid/view/View;Z)V

    .line 3387
    const/4 v2, 0x1

    move/from16 v0, p10

    if-eq v0, v2, :cond_6

    const/4 v2, 0x2

    move/from16 v0, p10

    if-ne v0, v2, :cond_d

    .line 3389
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->commitTempPlacement()V

    .line 3390
    invoke-direct/range {p0 .. p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->completeAndClearReorderHintAnimations()V

    .line 3391
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/baidu/launcher/ui/homeview/CellLayout;->setItemPlacementDirty(Z)V

    .line 3402
    :cond_7
    :goto_3
    const/4 v2, 0x1

    move/from16 v0, p10

    if-eq v0, v2, :cond_8

    if-nez v14, :cond_9

    .line 3403
    :cond_8
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/baidu/launcher/ui/homeview/CellLayout;->setUseTempCoords(Z)V

    .line 3406
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->requestLayout()V

    .line 3407
    return-object p8

    .line 3347
    .end local v13           #finalSolution:Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;
    .end local v14           #foundSolution:Z
    .end local v15           #noShuffleSolution:Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;
    .end local v16           #swapSolution:Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;
    :cond_a
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mDirectionVector:[I

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v2 .. v8}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getDirectionVectorForDrop(IIIILandroid/view/View;[I)V

    .line 3348
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mPreviousReorderDirection:[I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mDirectionVector:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    aput v4, v2, v3

    .line 3349
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mPreviousReorderDirection:[I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mDirectionVector:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    aput v4, v2, v3

    goto/16 :goto_0

    .line 3362
    .restart local v13       #finalSolution:Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;
    .restart local v15       #noShuffleSolution:Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;
    .restart local v16       #swapSolution:Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;
    :cond_b
    iget-boolean v2, v15, Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;->isSolution:Z

    if-eqz v2, :cond_4

    .line 3363
    move-object v13, v15

    goto/16 :goto_1

    .line 3385
    .restart local v14       #foundSolution:Z
    :cond_c
    const/4 v2, 0x0

    goto :goto_2

    .line 3393
    :cond_d
    const/16 v2, 0x96

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-direct {v0, v13, v1, v2}, Lcom/baidu/launcher/ui/homeview/CellLayout;->beginOrAdjustHintAnimations(Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;Landroid/view/View;I)V

    goto :goto_3

    .line 3398
    :cond_e
    const/4 v14, 0x0

    .line 3399
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, -0x1

    aput v6, p9, v5

    aput v6, p9, v4

    aput v6, p8, v3

    aput v6, p8, v2

    goto :goto_3
.end method

.method createAreaForResize(IIIILandroid/view/View;[IZ)Z
    .locals 22
    .parameter "cellX"
    .parameter "cellY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "dragView"
    .parameter "direction"
    .parameter "commit"

    .prologue
    .line 3296
    const/4 v4, 0x2

    new-array v9, v4, [I

    .local v9, pixelXY:[I
    move-object/from16 v4, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    .line 3297
    invoke-virtual/range {v4 .. v9}, Lcom/baidu/launcher/ui/homeview/CellLayout;->regionToCenterPoint(IIII[I)V

    .line 3300
    const/4 v4, 0x0

    aget v11, v9, v4

    const/4 v4, 0x1

    aget v12, v9, v4

    const/16 v19, 0x1

    new-instance v20, Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;

    const/4 v4, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;-><init>(Lcom/baidu/launcher/ui/homeview/CellLayout;Lcom/baidu/launcher/ui/homeview/CellLayout$1;)V

    move-object/from16 v10, p0

    move/from16 v13, p3

    move/from16 v14, p4

    move/from16 v15, p3

    move/from16 v16, p4

    move-object/from16 v17, p6

    move-object/from16 v18, p5

    invoke-virtual/range {v10 .. v20}, Lcom/baidu/launcher/ui/homeview/CellLayout;->simpleSwap(IIIIII[ILandroid/view/View;ZLcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;)Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;

    move-result-object v21

    .line 3303
    .local v21, swapSolution:Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/baidu/launcher/ui/homeview/CellLayout;->setUseTempCoords(Z)V

    .line 3304
    if-eqz v21, :cond_0

    move-object/from16 v0, v21

    iget-boolean v4, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;->isSolution:Z

    if-eqz v4, :cond_0

    .line 3308
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p5

    invoke-direct {v0, v1, v2}, Lcom/baidu/launcher/ui/homeview/CellLayout;->copySolutionToTempState(Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;Landroid/view/View;)V

    .line 3309
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/baidu/launcher/ui/homeview/CellLayout;->setItemPlacementDirty(Z)V

    .line 3310
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p5

    move/from16 v3, p7

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/launcher/ui/homeview/CellLayout;->animateItemsToSolution(Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;Landroid/view/View;Z)V

    .line 3312
    if-eqz p7, :cond_1

    .line 3313
    invoke-direct/range {p0 .. p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->commitTempPlacement()V

    .line 3314
    invoke-direct/range {p0 .. p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->completeAndClearReorderHintAnimations()V

    .line 3315
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/baidu/launcher/ui/homeview/CellLayout;->setItemPlacementDirty(Z)V

    .line 3320
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->requestLayout()V

    .line 3322
    :cond_0
    move-object/from16 v0, v21

    iget-boolean v4, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;->isSolution:Z

    return v4

    .line 3317
    :cond_1
    const/16 v4, 0x96

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p5

    invoke-direct {v0, v1, v2, v4}, Lcom/baidu/launcher/ui/homeview/CellLayout;->beginOrAdjustHintAnimations(Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;Landroid/view/View;I)V

    goto :goto_0
.end method

.method public createFolderOnDropCell(Ljava/lang/Object;)Z
    .locals 3
    .parameter "dragInfo"

    .prologue
    .line 1202
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mCreateFolderView:Landroid/view/View;

    if-nez v2, :cond_1

    .line 1203
    const/4 v0, 0x0

    .line 1214
    :cond_0
    :goto_0
    return v0

    .line 1205
    :cond_1
    const/4 v0, 0x1

    .line 1206
    .local v0, create:Z
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mCreateFolderView:Landroid/view/View;

    instance-of v2, v2, Lcom/baidu/launcher/ui/folder/FolderIcon;

    if-eqz v2, :cond_2

    .line 1207
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mCreateFolderView:Landroid/view/View;

    check-cast v2, Lcom/baidu/launcher/ui/folder/FolderIcon;

    invoke-virtual {v2, p1}, Lcom/baidu/launcher/ui/folder/FolderIcon;->acceptDrop(Ljava/lang/Object;)Z

    move-result v0

    .line 1209
    :cond_2
    if-eqz v0, :cond_0

    .line 1210
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/homeview/Workspace;

    .line 1211
    .local v1, ws:Lcom/baidu/launcher/ui/homeview/Workspace;
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mCreateFolderView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/ui/homeview/Workspace;->createFolder(Landroid/view/View;)V

    .line 1212
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mCreateFolderView:Landroid/view/View;

    goto :goto_0
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter "canvas"

    .prologue
    .line 308
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v8

    if-nez v8, :cond_0

    .line 309
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 310
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getScaleX()F

    move-result v8

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getScaleY()F

    move-result v9

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getPivotX()F

    move-result v10

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getPivotY()F

    move-result v11

    invoke-virtual {p1, v8, v9, v10, v11}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 311
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getTranslationX()F

    move-result v8

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getTranslationY()F

    move-result v9

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 313
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 314
    iget v8, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mBackgroundAlpha:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-lez v8, :cond_2

    .line 316
    iget v8, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mBackgroundAlpha:F

    iget v9, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mBackgroundAlphaMultiplier:F

    mul-float/2addr v8, v9

    const/high16 v9, 0x437f

    mul-float v1, v8, v9

    .line 317
    .local v1, alpha:F
    iget-boolean v8, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mIsDragOverlapping:Z

    if-nez v8, :cond_1

    .line 318
    const v8, 0x3f19999a

    mul-float/2addr v1, v8

    .line 321
    :cond_1
    iget-boolean v8, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->isAddScreen:Z

    if-eqz v8, :cond_7

    .line 322
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/baidu/launcher/utils/Utilities;->getSmallAddBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 327
    .local v3, bg:Landroid/graphics/drawable/Drawable;
    :goto_0
    float-to-int v8, v1

    invoke-virtual {v3, v8}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 328
    iget-object v8, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v8}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 329
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 331
    .end local v1           #alpha:F
    .end local v3           #bg:Landroid/graphics/drawable/Drawable;
    :cond_2
    iget v8, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mForegroundAlpha:I

    if-lez v8, :cond_4

    .line 332
    iget-object v8, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mForegroundRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 333
    iget-object v8, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v8, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v5

    .line 334
    .local v5, p:Landroid/graphics/Paint;
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 335
    new-instance v8, Landroid/graphics/PorterDuffXfermode;

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v8, v9}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 338
    :cond_3
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 341
    .end local v5           #p:Landroid/graphics/Paint;
    :cond_4
    iget-boolean v8, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->isAddScreen:Z

    if-eqz v8, :cond_5

    .line 342
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 343
    iget-object v8, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020179

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 344
    .local v0, add:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getWidth()I

    move-result v8

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getHeight()I

    move-result v9

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 345
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 346
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 347
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 351
    .end local v0           #add:Landroid/graphics/drawable/Drawable;
    :cond_5
    iget-object v6, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mDragOutlinePaint:Landroid/graphics/Paint;

    .line 352
    .local v6, paint:Landroid/graphics/Paint;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    iget-object v8, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    array-length v8, v8

    if-ge v4, v8, :cond_a

    .line 353
    iget-object v8, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mDragOutlineAlphas:[F

    aget v1, v8, v4

    .line 354
    .restart local v1       #alpha:F
    const/4 v8, 0x0

    cmpl-float v8, v1, v8

    if-lez v8, :cond_9

    .line 355
    iget-object v8, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    aget-object v7, v8, v4

    .line 356
    .local v7, r:Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mDragOutlineAnims:[Lcom/baidu/launcher/ui/animation/InterruptibleInOutAnimator;

    aget-object v8, v8, v4

    invoke-virtual {v8}, Lcom/baidu/launcher/ui/animation/InterruptibleInOutAnimator;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 357
    .local v2, b:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 367
    .end local v1           #alpha:F
    .end local v2           #b:Landroid/graphics/Bitmap;
    .end local v7           #r:Landroid/graphics/Rect;
    :cond_6
    :goto_2
    return-void

    .line 324
    .end local v4           #i:I
    .end local v6           #paint:Landroid/graphics/Paint;
    .restart local v1       #alpha:F
    :cond_7
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/baidu/launcher/utils/Utilities;->getSmallBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .restart local v3       #bg:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    .line 358
    .end local v3           #bg:Landroid/graphics/drawable/Drawable;
    .restart local v2       #b:Landroid/graphics/Bitmap;
    .restart local v4       #i:I
    .restart local v6       #paint:Landroid/graphics/Paint;
    .restart local v7       #r:Landroid/graphics/Rect;
    :cond_8
    const/high16 v8, 0x3f00

    add-float/2addr v8, v1

    float-to-int v8, v8

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 359
    const/4 v8, 0x0

    invoke-virtual {p1, v2, v8, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 352
    .end local v2           #b:Landroid/graphics/Bitmap;
    .end local v7           #r:Landroid/graphics/Rect;
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 363
    .end local v1           #alpha:F
    :cond_a
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v8

    if-nez v8, :cond_6

    .line 364
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_2
.end method

.method enableHardwareLayers()V
    .locals 2

    .prologue
    .line 1850
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1851
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/baidu/launcher/ui/homeview/CellLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1853
    :cond_0
    return-void
.end method

.method findAllVacantCells([ZLandroid/view/View;)Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;
    .locals 10
    .parameter "occupiedCells"
    .parameter "ignoreView"

    .prologue
    .line 669
    iget-boolean v3, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mPortrait:Z

    .line 670
    .local v3, portrait:Z
    if-eqz v3, :cond_0

    iget v5, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mShortAxisCells:I

    .line 671
    .local v5, xCount:I
    :goto_0
    if-eqz v3, :cond_1

    iget v7, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mLongAxisCells:I

    .line 673
    .local v7, yCount:I
    :goto_1
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mOccupied:[[Z

    .line 675
    .local v2, occupied:[[Z
    if-eqz p1, :cond_3

    .line 676
    const/4 v6, 0x0

    .local v6, y:I
    :goto_2
    if-ge v6, v7, :cond_4

    .line 677
    const/4 v4, 0x0

    .local v4, x:I
    :goto_3
    if-ge v4, v5, :cond_2

    .line 678
    aget-object v8, v2, v4

    mul-int v9, v6, v5

    add-int/2addr v9, v4

    aget-boolean v9, p1, v9

    aput-boolean v9, v8, v6

    .line 677
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 670
    .end local v2           #occupied:[[Z
    .end local v4           #x:I
    .end local v5           #xCount:I
    .end local v6           #y:I
    .end local v7           #yCount:I
    :cond_0
    iget v5, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mLongAxisCells:I

    goto :goto_0

    .line 671
    .restart local v5       #xCount:I
    :cond_1
    iget v7, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mShortAxisCells:I

    goto :goto_1

    .line 676
    .restart local v2       #occupied:[[Z
    .restart local v4       #x:I
    .restart local v6       #y:I
    .restart local v7       #yCount:I
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 682
    .end local v4           #x:I
    .end local v6           #y:I
    :cond_3
    invoke-direct {p0, v5, v7, v2, p2}, Lcom/baidu/launcher/ui/homeview/CellLayout;->findOccupiedCells(II[[ZLandroid/view/View;)V

    .line 685
    :cond_4
    new-instance v0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;

    invoke-direct {v0}, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;-><init>()V

    .line 687
    .local v0, cellInfo:Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;
    const/4 v8, -0x1

    iput v8, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->cellX:I

    .line 688
    const/4 v8, -0x1

    iput v8, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->cellY:I

    .line 689
    const/4 v8, 0x0

    iput v8, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->spanY:I

    .line 690
    const/4 v8, 0x0

    iput v8, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->spanX:I

    .line 691
    const/high16 v8, -0x8000

    iput v8, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->maxVacantSpanX:I

    .line 692
    const/high16 v8, -0x8000

    iput v8, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->maxVacantSpanXSpanY:I

    .line 693
    const/high16 v8, -0x8000

    iput v8, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->maxVacantSpanY:I

    .line 694
    const/high16 v8, -0x8000

    iput v8, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->maxVacantSpanYSpanX:I

    .line 695
    iget-object v8, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mCellInfo:Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;

    iget v8, v8, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->screen:I

    iput v8, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->screen:I

    .line 697
    iget-object v1, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->current:Landroid/graphics/Rect;

    .line 699
    .local v1, current:Landroid/graphics/Rect;
    const/4 v6, 0x0

    .restart local v6       #y:I
    :goto_4
    if-ge v6, v7, :cond_7

    .line 700
    const/4 v4, 0x0

    .restart local v4       #x:I
    :goto_5
    if-ge v4, v5, :cond_6

    .line 701
    aget-object v8, v2, v4

    aget-boolean v8, v8, v6

    if-nez v8, :cond_5

    .line 702
    invoke-virtual {v1, v4, v6, v4, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 703
    invoke-static {v1, v5, v7, v2, v0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->findVacantCell(Landroid/graphics/Rect;II[[ZLcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;)V

    .line 704
    aget-object v8, v2, v4

    const/4 v9, 0x1

    aput-boolean v9, v8, v6

    .line 700
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 699
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 709
    .end local v4           #x:I
    :cond_7
    iget-object v8, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->vacantCells:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_8

    const/4 v8, 0x1

    :goto_6
    iput-boolean v8, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->valid:Z

    .line 714
    return-object v0

    .line 709
    :cond_8
    const/4 v8, 0x0

    goto :goto_6
.end method

.method findConfigurationNoShuffle(IIIIIILandroid/view/View;Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;)Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;
    .locals 13
    .parameter "pixelX"
    .parameter "pixelY"
    .parameter "minSpanX"
    .parameter "minSpanY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "dragView"
    .parameter "solution"

    .prologue
    .line 3177
    const/4 v1, 0x2

    new-array v10, v1, [I

    .line 3178
    .local v10, result:[I
    const/4 v1, 0x2

    new-array v11, v1, [I

    .line 3179
    .local v11, resultSpan:[I
    const/4 v8, 0x0

    const/4 v9, 0x1

    iget-object v12, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mOccupied:[[Z

    move-object v1, p0

    move v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v1 .. v12}, Lcom/baidu/launcher/ui/homeview/CellLayout;->findNearestArea(IIIIIILandroid/view/View;Z[I[I[[Z)[I

    .line 3181
    const/4 v1, 0x0

    aget v1, v10, v1

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    aget v1, v10, v1

    if-ltz v1, :cond_0

    .line 3182
    const/4 v1, 0x0

    move-object/from16 v0, p8

    invoke-direct {p0, v0, v1}, Lcom/baidu/launcher/ui/homeview/CellLayout;->copyCurrentStateToSolution(Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;Z)V

    .line 3183
    const/4 v1, 0x0

    aget v1, v10, v1

    move-object/from16 v0, p8

    iput v1, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;->dragViewX:I

    .line 3184
    const/4 v1, 0x1

    aget v1, v10, v1

    move-object/from16 v0, p8

    iput v1, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;->dragViewY:I

    .line 3185
    const/4 v1, 0x0

    aget v1, v11, v1

    move-object/from16 v0, p8

    iput v1, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;->dragViewSpanX:I

    .line 3186
    const/4 v1, 0x1

    aget v1, v11, v1

    move-object/from16 v0, p8

    iput v1, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;->dragViewSpanY:I

    .line 3187
    const/4 v1, 0x1

    move-object/from16 v0, p8

    iput-boolean v1, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;->isSolution:Z

    .line 3191
    :goto_0
    return-object p8

    .line 3189
    :cond_0
    const/4 v1, 0x0

    move-object/from16 v0, p8

    iput-boolean v1, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;->isSolution:Z

    goto :goto_0
.end method

.method findNearestArea(IIIIIILandroid/view/View;Z[I[I[[Z)[I
    .locals 33
    .parameter "pixelX"
    .parameter "pixelY"
    .parameter "minSpanX"
    .parameter "minSpanY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "ignoreView"
    .parameter "ignoreOccupied"
    .parameter "result"
    .parameter "resultSpan"
    .parameter "occupied"

    .prologue
    .line 2153
    invoke-direct/range {p0 .. p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->lazyInitTempRectStack()V

    .line 2155
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p11

    invoke-virtual {v0, v1, v2}, Lcom/baidu/launcher/ui/homeview/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;[[Z)V

    .line 2160
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mCellWidth:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mWidthGap:I

    move/from16 v29, v0

    add-int v28, v28, v29

    add-int/lit8 v29, p5, -0x1

    mul-int v28, v28, v29

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    const/high16 v29, 0x4000

    div-float v28, v28, v29

    sub-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 p1, v0

    .line 2161
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mCellHeight:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mHeightGap:I

    move/from16 v29, v0

    add-int v28, v28, v29

    add-int/lit8 v29, p6, -0x1

    mul-int v28, v28, v29

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    const/high16 v29, 0x4000

    div-float v28, v28, v29

    sub-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 p2, v0

    .line 2164
    if-eqz p9, :cond_1

    move-object/from16 v7, p9

    .line 2165
    .local v7, bestXY:[I
    :goto_0
    const-wide v4, 0x7fefffffffffffffL

    .line 2166
    .local v4, bestDistance:D
    new-instance v6, Landroid/graphics/Rect;

    const/16 v27, -0x1

    const/16 v28, -0x1

    const/16 v29, -0x1

    const/16 v30, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-direct {v6, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2167
    .local v6, bestRect:Landroid/graphics/Rect;
    new-instance v22, Ljava/util/Stack;

    invoke-direct/range {v22 .. v22}, Ljava/util/Stack;-><init>()V

    .line 2169
    .local v22, validRegions:Ljava/util/Stack;,"Ljava/util/Stack<Landroid/graphics/Rect;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getCountX()I

    move-result v10

    .line 2170
    .local v10, countX:I
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getCountY()I

    move-result v11

    .line 2172
    .local v11, countY:I
    if-lez p3, :cond_0

    if-lez p4, :cond_0

    if-lez p5, :cond_0

    if-lez p6, :cond_0

    move/from16 v0, p5

    move/from16 v1, p3

    if-lt v0, v1, :cond_0

    move/from16 v0, p6

    move/from16 v1, p4

    if-ge v0, v1, :cond_2

    .line 2271
    :cond_0
    :goto_1
    return-object v7

    .line 2164
    .end local v4           #bestDistance:D
    .end local v6           #bestRect:Landroid/graphics/Rect;
    .end local v7           #bestXY:[I
    .end local v10           #countX:I
    .end local v11           #countY:I
    .end local v22           #validRegions:Ljava/util/Stack;,"Ljava/util/Stack<Landroid/graphics/Rect;>;"
    :cond_1
    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v7, v0, [I

    goto :goto_0

    .line 2177
    .restart local v4       #bestDistance:D
    .restart local v6       #bestRect:Landroid/graphics/Rect;
    .restart local v7       #bestXY:[I
    .restart local v10       #countX:I
    .restart local v11       #countY:I
    .restart local v22       #validRegions:Ljava/util/Stack;,"Ljava/util/Stack<Landroid/graphics/Rect;>;"
    :cond_2
    const/16 v25, 0x0

    .local v25, y:I
    :goto_2
    add-int/lit8 v27, p4, -0x1

    sub-int v27, v11, v27

    move/from16 v0, v25

    move/from16 v1, v27

    if-ge v0, v1, :cond_1e

    .line 2179
    const/16 v23, 0x0

    .local v23, x:I
    :goto_3
    add-int/lit8 v27, p3, -0x1

    sub-int v27, v10, v27

    move/from16 v0, v23

    move/from16 v1, v27

    if-ge v0, v1, :cond_1d

    .line 2180
    const/16 v26, -0x1

    .line 2181
    .local v26, ySize:I
    const/16 v24, -0x1

    .line 2182
    .local v24, xSize:I
    if-eqz p8, :cond_16

    .line 2184
    const/16 v17, 0x0

    .local v17, i:I
    :goto_4
    move/from16 v0, v17

    move/from16 v1, p3

    if-ge v0, v1, :cond_6

    .line 2185
    const/16 v20, 0x0

    .local v20, j:I
    :goto_5
    move/from16 v0, v20

    move/from16 v1, p4

    if-ge v0, v1, :cond_5

    .line 2186
    add-int v27, v23, v17

    aget-object v27, p11, v27

    add-int v28, v25, v20

    aget-boolean v27, v27, v28

    if-eqz v27, :cond_4

    .line 2179
    .end local v17           #i:I
    .end local v20           #j:I
    :cond_3
    :goto_6
    add-int/lit8 v23, v23, 0x1

    goto :goto_3

    .line 2185
    .restart local v17       #i:I
    .restart local v20       #j:I
    :cond_4
    add-int/lit8 v20, v20, 0x1

    goto :goto_5

    .line 2184
    :cond_5
    add-int/lit8 v17, v17, 0x1

    goto :goto_4

    .line 2191
    .end local v20           #j:I
    :cond_6
    move/from16 v24, p3

    .line 2192
    move/from16 v26, p4

    .line 2197
    const/16 v19, 0x1

    .line 2198
    .local v19, incX:Z
    move/from16 v0, v24

    move/from16 v1, p5

    if-lt v0, v1, :cond_a

    const/4 v15, 0x1

    .line 2199
    .local v15, hitMaxX:Z
    :goto_7
    move/from16 v0, v26

    move/from16 v1, p6

    if-lt v0, v1, :cond_b

    const/16 v16, 0x1

    .line 2200
    .local v16, hitMaxY:Z
    :goto_8
    if-eqz v15, :cond_7

    if-nez v16, :cond_15

    .line 2201
    :cond_7
    if-eqz v19, :cond_e

    if-nez v15, :cond_e

    .line 2202
    const/16 v20, 0x0

    .restart local v20       #j:I
    :goto_9
    move/from16 v0, v20

    move/from16 v1, v26

    if-ge v0, v1, :cond_c

    .line 2203
    add-int v27, v23, v24

    add-int/lit8 v28, v10, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-gt v0, v1, :cond_8

    add-int v27, v23, v24

    aget-object v27, p11, v27

    add-int v28, v25, v20

    aget-boolean v27, v27, v28

    if-eqz v27, :cond_9

    .line 2205
    :cond_8
    const/4 v15, 0x1

    .line 2202
    :cond_9
    add-int/lit8 v20, v20, 0x1

    goto :goto_9

    .line 2198
    .end local v15           #hitMaxX:Z
    .end local v16           #hitMaxY:Z
    .end local v20           #j:I
    :cond_a
    const/4 v15, 0x0

    goto :goto_7

    .line 2199
    .restart local v15       #hitMaxX:Z
    :cond_b
    const/16 v16, 0x0

    goto :goto_8

    .line 2208
    .restart local v16       #hitMaxY:Z
    .restart local v20       #j:I
    :cond_c
    if-nez v15, :cond_d

    .line 2209
    add-int/lit8 v24, v24, 0x1

    .line 2222
    .end local v20           #j:I
    :cond_d
    :goto_a
    move/from16 v0, v24

    move/from16 v1, p5

    if-lt v0, v1, :cond_12

    const/16 v27, 0x1

    :goto_b
    or-int v15, v15, v27

    .line 2223
    move/from16 v0, v26

    move/from16 v1, p6

    if-lt v0, v1, :cond_13

    const/16 v27, 0x1

    :goto_c
    or-int v16, v16, v27

    .line 2224
    if-nez v19, :cond_14

    const/16 v19, 0x1

    :goto_d
    goto :goto_8

    .line 2211
    :cond_e
    if-nez v16, :cond_d

    .line 2212
    const/16 v17, 0x0

    :goto_e
    move/from16 v0, v17

    move/from16 v1, v24

    if-ge v0, v1, :cond_11

    .line 2213
    add-int v27, v25, v26

    add-int/lit8 v28, v11, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-gt v0, v1, :cond_f

    add-int v27, v23, v17

    aget-object v27, p11, v27

    add-int v28, v25, v26

    aget-boolean v27, v27, v28

    if-eqz v27, :cond_10

    .line 2215
    :cond_f
    const/16 v16, 0x1

    .line 2212
    :cond_10
    add-int/lit8 v17, v17, 0x1

    goto :goto_e

    .line 2218
    :cond_11
    if-nez v16, :cond_d

    .line 2219
    add-int/lit8 v26, v26, 0x1

    goto :goto_a

    .line 2222
    :cond_12
    const/16 v27, 0x0

    goto :goto_b

    .line 2223
    :cond_13
    const/16 v27, 0x0

    goto :goto_c

    .line 2224
    :cond_14
    const/16 v19, 0x0

    goto :goto_d

    .line 2226
    :cond_15
    const/16 v19, 0x1

    .line 2227
    move/from16 v0, v24

    move/from16 v1, p5

    if-lt v0, v1, :cond_1c

    const/4 v15, 0x1

    .line 2228
    :goto_f
    move/from16 v0, v26

    move/from16 v1, p6

    if-lt v0, v1, :cond_16

    .line 2230
    .end local v15           #hitMaxX:Z
    .end local v16           #hitMaxY:Z
    .end local v17           #i:I
    .end local v19           #incX:Z
    :cond_16
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mTmpXY:[I

    .line 2231
    .local v8, cellXY:[I
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2, v8}, Lcom/baidu/launcher/ui/homeview/CellLayout;->cellToCenterPoint(II[I)V

    .line 2236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mTempRectStack:Ljava/util/Stack;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    .line 2237
    .local v12, currentRect:Landroid/graphics/Rect;
    add-int v27, v23, v24

    add-int v28, v25, v26

    move/from16 v0, v23

    move/from16 v1, v25

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 2238
    const/4 v9, 0x0

    .line 2239
    .local v9, contained:Z
    invoke-virtual/range {v22 .. v22}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, i$:Ljava/util/Iterator;
    :cond_17
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_18

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/graphics/Rect;

    .line 2240
    .local v21, r:Landroid/graphics/Rect;
    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v27

    if-eqz v27, :cond_17

    .line 2241
    const/4 v9, 0x1

    .line 2245
    .end local v21           #r:Landroid/graphics/Rect;
    :cond_18
    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2246
    const/16 v27, 0x0

    aget v27, v8, v27

    sub-int v27, v27, p1

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v27, v0

    const-wide/high16 v29, 0x4000

    invoke-static/range {v27 .. v30}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v27

    const/16 v29, 0x1

    aget v29, v8, v29

    sub-int v29, v29, p2

    move/from16 v0, v29

    int-to-double v0, v0

    move-wide/from16 v29, v0

    const-wide/high16 v31, 0x4000

    invoke-static/range {v29 .. v32}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v29

    add-double v27, v27, v29

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    .line 2249
    .local v13, distance:D
    cmpg-double v27, v13, v4

    if-gtz v27, :cond_19

    if-eqz v9, :cond_1a

    :cond_19
    invoke-virtual {v12, v6}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v27

    if-eqz v27, :cond_3

    .line 2251
    :cond_1a
    move-wide v4, v13

    .line 2252
    const/16 v27, 0x0

    aput v23, v7, v27

    .line 2253
    const/16 v27, 0x1

    aput v25, v7, v27

    .line 2254
    if-eqz p10, :cond_1b

    .line 2255
    const/16 v27, 0x0

    aput v24, p10, v27

    .line 2256
    const/16 v27, 0x1

    aput v26, p10, v27

    .line 2258
    :cond_1b
    invoke-virtual {v6, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_6

    .line 2227
    .end local v8           #cellXY:[I
    .end local v9           #contained:Z
    .end local v12           #currentRect:Landroid/graphics/Rect;
    .end local v13           #distance:D
    .end local v18           #i$:Ljava/util/Iterator;
    .restart local v15       #hitMaxX:Z
    .restart local v16       #hitMaxY:Z
    .restart local v17       #i:I
    .restart local v19       #incX:Z
    :cond_1c
    const/4 v15, 0x0

    goto/16 :goto_f

    .line 2177
    .end local v15           #hitMaxX:Z
    .end local v16           #hitMaxY:Z
    .end local v17           #i:I
    .end local v19           #incX:Z
    .end local v24           #xSize:I
    .end local v26           #ySize:I
    :cond_1d
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_2

    .line 2263
    .end local v23           #x:I
    :cond_1e
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p11

    invoke-virtual {v0, v1, v2}, Lcom/baidu/launcher/ui/homeview/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;[[Z)V

    .line 2266
    const-wide v27, 0x7fefffffffffffffL

    cmpl-double v27, v4, v27

    if-nez v27, :cond_1f

    .line 2267
    const/16 v27, 0x0

    const/16 v28, -0x1

    aput v28, v7, v27

    .line 2268
    const/16 v27, 0x1

    const/16 v28, -0x1

    aput v28, v7, v27

    .line 2270
    :cond_1f
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/baidu/launcher/ui/homeview/CellLayout;->recycleTempRects(Ljava/util/Stack;)V

    goto/16 :goto_1
.end method

.method findNearestArea(IIIILandroid/view/View;Z[I)[I
    .locals 12
    .parameter "pixelX"
    .parameter "pixelY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "ignoreView"
    .parameter "ignoreOccupied"
    .parameter "result"

    .prologue
    .line 2115
    const/4 v10, 0x0

    iget-object v11, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mOccupied:[[Z

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v0 .. v11}, Lcom/baidu/launcher/ui/homeview/CellLayout;->findNearestArea(IIIIIILandroid/view/View;Z[I[I[[Z)[I

    move-result-object v0

    return-object v0
.end method

.method findNearestArea(IIII[I)[I
    .locals 8
    .parameter "pixelX"
    .parameter "pixelY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "result"

    .prologue
    .line 2407
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/baidu/launcher/ui/homeview/CellLayout;->findNearestArea(IIIILandroid/view/View;Z[I)[I

    move-result-object v0

    return-object v0
.end method

.method findNearestVacantArea(IIIILcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;[I)[I
    .locals 16
    .parameter "pixelX"
    .parameter "pixelY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "vacantCells"
    .parameter "recycle"

    .prologue
    .line 976
    if-eqz p6, :cond_1

    move-object/from16 v3, p6

    .line 977
    .local v3, bestXY:[I
    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mCellXY:[I

    .line 978
    .local v5, cellXY:[I
    const-wide v1, 0x7fefffffffffffffL

    .line 981
    .local v1, bestDistance:D
    move-object/from16 v0, p5

    iget-boolean v10, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->valid:Z

    if-nez v10, :cond_2

    .line 982
    const/4 v3, 0x0

    .line 1011
    .end local v3           #bestXY:[I
    :cond_0
    :goto_1
    return-object v3

    .line 976
    .end local v1           #bestDistance:D
    .end local v5           #cellXY:[I
    :cond_1
    const/4 v10, 0x2

    new-array v3, v10, [I

    goto :goto_0

    .line 986
    .restart local v1       #bestDistance:D
    .restart local v3       #bestXY:[I
    .restart local v5       #cellXY:[I
    :cond_2
    move-object/from16 v0, p5

    iget-object v10, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->vacantCells:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 987
    .local v9, size:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_2
    if-ge v8, v9, :cond_5

    .line 988
    move-object/from16 v0, p5

    iget-object v10, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->vacantCells:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo$VacantCell;

    .line 991
    .local v4, cell:Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo$VacantCell;
    iget v10, v4, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo$VacantCell;->spanX:I

    move/from16 v0, p3

    if-ne v10, v0, :cond_3

    iget v10, v4, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo$VacantCell;->spanY:I

    move/from16 v0, p4

    if-eq v10, v0, :cond_4

    .line 987
    :cond_3
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 996
    :cond_4
    iget v10, v4, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo$VacantCell;->cellX:I

    iget v11, v4, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo$VacantCell;->cellY:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11, v5}, Lcom/baidu/launcher/ui/homeview/CellLayout;->cellToPoint(II[I)V

    .line 998
    const/4 v10, 0x0

    aget v10, v5, v10

    sub-int v10, v10, p1

    int-to-double v10, v10

    const-wide/high16 v12, 0x4000

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    const/4 v12, 0x1

    aget v12, v5, v12

    sub-int v12, v12, p2

    int-to-double v12, v12

    const-wide/high16 v14, 0x4000

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    add-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 1000
    .local v6, distance:D
    cmpg-double v10, v6, v1

    if-gtz v10, :cond_3

    .line 1001
    move-wide v1, v6

    .line 1002
    const/4 v10, 0x0

    iget v11, v4, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo$VacantCell;->cellX:I

    aput v11, v3, v10

    .line 1003
    const/4 v10, 0x1

    iget v11, v4, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo$VacantCell;->cellY:I

    aput v11, v3, v10

    goto :goto_3

    .line 1008
    .end local v4           #cell:Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo$VacantCell;
    .end local v6           #distance:D
    :cond_5
    const-wide v10, 0x7fefffffffffffffL

    cmpg-double v10, v1, v10

    if-ltz v10, :cond_0

    .line 1011
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public findVacantForSlot(IILcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;[I)Z
    .locals 8
    .parameter "spanX"
    .parameter "spanY"
    .parameter "vacantCells"
    .parameter "xy"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 616
    iget-boolean v7, p3, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->valid:Z

    if-nez v7, :cond_1

    .line 641
    :cond_0
    :goto_0
    return v5

    .line 620
    :cond_1
    iget-object v7, p3, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->vacantCells:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 621
    .local v2, size:I
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getCountX()I

    move-result v7

    add-int/lit8 v3, v7, 0x1

    .line 622
    .local v3, x:I
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getCountY()I

    move-result v7

    add-int/lit8 v4, v7, 0x1

    .line 623
    .local v4, y:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_4

    .line 624
    iget-object v7, p3, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->vacantCells:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo$VacantCell;

    .line 626
    .local v0, cell:Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo$VacantCell;
    iget v7, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo$VacantCell;->spanX:I

    if-lt v7, p1, :cond_2

    iget v7, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo$VacantCell;->spanY:I

    if-ge v7, p2, :cond_3

    .line 623
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 630
    :cond_3
    iget v3, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo$VacantCell;->cellX:I

    .line 632
    iget v4, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo$VacantCell;->cellY:I

    .line 636
    .end local v0           #cell:Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo$VacantCell;
    :cond_4
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getCountX()I

    move-result v7

    if-ge v3, v7, :cond_0

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getCountY()I

    move-result v7

    if-ge v4, v7, :cond_0

    .line 637
    aput v3, p4, v5

    .line 638
    aput v4, p4, v6

    move v5, v6

    .line 639
    goto :goto_0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 1383
    new-instance v0, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 1393
    new-instance v0, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getAlpha()F
    .locals 1

    .prologue
    .line 2072
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2073
    invoke-super {p0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v0

    .line 2075
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->alphaForLowApi:F

    goto :goto_0
.end method

.method public getBackgroundAlpha()F
    .locals 1

    .prologue
    .line 1867
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mBackgroundAlpha:F

    return v0
.end method

.method public getBackgroundAlphaMultiplier()F
    .locals 1

    .prologue
    .line 1879
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mBackgroundAlphaMultiplier:F

    return v0
.end method

.method public getBottomPadding()I
    .locals 1

    .prologue
    .line 791
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mPortrait:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mLongAxisEndPadding:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mShortAxisEndPadding:I

    goto :goto_0
.end method

.method public getCellHeight()I
    .locals 1

    .prologue
    .line 775
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mCellHeight:I

    return v0
.end method

.method public getCellHeightWithGap()I
    .locals 2

    .prologue
    .line 1677
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mCellHeight:I

    iget v1, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mHeightGap:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getCellWidth()I
    .locals 1

    .prologue
    .line 771
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mCellWidth:I

    return v0
.end method

.method public getChildAt(II)Landroid/view/View;
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1368
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getChildCount()I

    move-result v1

    .line 1369
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1370
    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1371
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;

    .line 1373
    .local v3, lp:Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;
    iget v4, v3, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellX:I

    if-gt v4, p1, :cond_0

    iget v4, v3, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellX:I

    iget v5, v3, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellHSpan:I

    add-int/2addr v4, v5

    if-ge p1, v4, :cond_0

    iget v4, v3, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellY:I

    if-gt v4, p2, :cond_0

    iget v4, v3, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellY:I

    iget v5, v3, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellVSpan:I

    add-int/2addr v4, v5

    if-ge p2, v4, :cond_0

    .line 1378
    .end local v0           #child:Landroid/view/View;
    .end local v3           #lp:Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;
    :goto_1
    return-object v0

    .line 1369
    .restart local v0       #child:Landroid/view/View;
    .restart local v3       #lp:Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1378
    .end local v0           #child:Landroid/view/View;
    .end local v3           #lp:Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getCountX()I
    .locals 1

    .prologue
    .line 390
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mPortrait:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mShortAxisCells:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mLongAxisCells:I

    goto :goto_0
.end method

.method public getCountY()I
    .locals 1

    .prologue
    .line 394
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mPortrait:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mLongAxisCells:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mShortAxisCells:I

    goto :goto_0
.end method

.method public getDistanceFromCell(FF[I)F
    .locals 8
    .parameter "x"
    .parameter "y"
    .parameter "cell"

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    const-wide/high16 v5, 0x4000

    .line 1192
    aget v1, p3, v4

    aget v2, p3, v7

    iget-object v3, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mTmpPoint:[I

    invoke-virtual {p0, v1, v2, v3}, Lcom/baidu/launcher/ui/homeview/CellLayout;->cellToCenterPoint(II[I)V

    .line 1193
    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mTmpPoint:[I

    aget v1, v1, v4

    int-to-float v1, v1

    sub-float v1, p1, v1

    float-to-double v1, v1

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    iget-object v3, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mTmpPoint:[I

    aget v3, v3, v7

    int-to-float v3, v3

    sub-float v3, p2, v3

    float-to-double v3, v3

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v0, v1

    .line 1195
    .local v0, distance:F
    return v0
.end method

.method public getExpandabilityArrayForView(Landroid/view/View;[I)V
    .locals 10
    .parameter "view"
    .parameter "expandability"

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1699
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;

    .line 1702
    .local v1, lp:Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;
    aput v6, p2, v6

    .line 1703
    iget v4, v1, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellX:I

    add-int/lit8 v2, v4, -0x1

    .local v2, x:I
    :goto_0
    if-ltz v2, :cond_2

    .line 1704
    const/4 v0, 0x0

    .line 1705
    .local v0, flag:Z
    iget v3, v1, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellY:I

    .local v3, y:I
    :goto_1
    iget v4, v1, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellY:I

    iget v5, v1, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellVSpan:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_1

    .line 1706
    iget-object v4, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mOccupied:[[Z

    aget-object v4, v4, v2

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_0

    .line 1707
    const/4 v0, 0x1

    .line 1705
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1709
    :cond_1
    if-eqz v0, :cond_4

    .line 1713
    .end local v0           #flag:Z
    .end local v3           #y:I
    :cond_2
    aput v6, p2, v7

    .line 1714
    iget v4, v1, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellY:I

    add-int/lit8 v3, v4, -0x1

    .restart local v3       #y:I
    :goto_2
    if-ltz v3, :cond_6

    .line 1715
    const/4 v0, 0x0

    .line 1716
    .restart local v0       #flag:Z
    iget v2, v1, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellX:I

    :goto_3
    iget v4, v1, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellX:I

    iget v5, v1, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellHSpan:I

    add-int/2addr v4, v5

    if-ge v2, v4, :cond_5

    .line 1717
    iget-object v4, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mOccupied:[[Z

    aget-object v4, v4, v2

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_3

    .line 1718
    const/4 v0, 0x1

    .line 1716
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1710
    :cond_4
    aget v4, p2, v6

    add-int/lit8 v4, v4, 0x1

    aput v4, p2, v6

    .line 1703
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1720
    :cond_5
    if-eqz v0, :cond_8

    .line 1724
    .end local v0           #flag:Z
    :cond_6
    aput v6, p2, v8

    .line 1725
    iget v4, v1, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellX:I

    iget v5, v1, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellHSpan:I

    add-int v2, v4, v5

    :goto_4
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getCountX()I

    move-result v4

    if-ge v2, v4, :cond_a

    .line 1726
    const/4 v0, 0x0

    .line 1727
    .restart local v0       #flag:Z
    iget v3, v1, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellY:I

    :goto_5
    iget v4, v1, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellY:I

    iget v5, v1, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellVSpan:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_9

    .line 1728
    iget-object v4, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mOccupied:[[Z

    aget-object v4, v4, v2

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_7

    .line 1729
    const/4 v0, 0x1

    .line 1727
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1721
    :cond_8
    aget v4, p2, v7

    add-int/lit8 v4, v4, 0x1

    aput v4, p2, v7

    .line 1714
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 1731
    :cond_9
    if-eqz v0, :cond_c

    .line 1735
    .end local v0           #flag:Z
    :cond_a
    aput v6, p2, v9

    .line 1736
    iget v4, v1, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellY:I

    iget v5, v1, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellVSpan:I

    add-int v3, v4, v5

    :goto_6
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getCountY()I

    move-result v4

    if-ge v3, v4, :cond_e

    .line 1737
    const/4 v0, 0x0

    .line 1738
    .restart local v0       #flag:Z
    iget v2, v1, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellX:I

    :goto_7
    iget v4, v1, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellX:I

    iget v5, v1, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellHSpan:I

    add-int/2addr v4, v5

    if-ge v2, v4, :cond_d

    .line 1739
    iget-object v4, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mOccupied:[[Z

    aget-object v4, v4, v2

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_b

    .line 1740
    const/4 v0, 0x1

    .line 1738
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1732
    :cond_c
    aget v4, p2, v8

    add-int/lit8 v4, v4, 0x1

    aput v4, p2, v8

    .line 1725
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1742
    :cond_d
    if-eqz v0, :cond_f

    .line 1745
    .end local v0           #flag:Z
    :cond_e
    return-void

    .line 1743
    .restart local v0       #flag:Z
    :cond_f
    aget v4, p2, v9

    add-int/lit8 v4, v4, 0x1

    aput v4, p2, v9

    .line 1736
    add-int/lit8 v3, v3, 0x1

    goto :goto_6
.end method

.method public getHeightGap()I
    .locals 1

    .prologue
    .line 1752
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mHeightGap:I

    return v0
.end method

.method getIsDragOverlapping()Z
    .locals 1

    .prologue
    .line 1863
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mIsDragOverlapping:Z

    return v0
.end method

.method public getLeftPadding()I
    .locals 1

    .prologue
    .line 779
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mPortrait:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mShortAxisStartPadding:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mLongAxisStartPadding:I

    goto :goto_0
.end method

.method public getLongAxisEndPadding()I
    .locals 1

    .prologue
    .line 896
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mLongAxisEndPadding:I

    return v0
.end method

.method public getLongAxisStartPadding()I
    .locals 1

    .prologue
    .line 899
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mLongAxisStartPadding:I

    return v0
.end method

.method public getMatrix()Landroid/graphics/Matrix;
    .locals 5

    .prologue
    .line 2088
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2089
    invoke-super {p0}, Landroid/view/ViewGroup;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 2095
    :goto_0
    return-object v0

    .line 2091
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->matrixForLowApi:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 2092
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->matrixForLowApi:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getTranslationX()F

    move-result v1

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getTranslationY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 2093
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->matrixForLowApi:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getRotation()F

    move-result v1

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getPivotX()F

    move-result v2

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getPivotY()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 2094
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->matrixForLowApi:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getScaleX()F

    move-result v1

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getScaleY()F

    move-result v2

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getPivotX()F

    move-result v3

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getPivotY()F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    .line 2095
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->matrixForLowApi:Landroid/graphics/Matrix;

    goto :goto_0
.end method

.method public getOccupiedCells()[Z
    .locals 9

    .prologue
    .line 1327
    iget-boolean v2, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mPortrait:Z

    .line 1328
    .local v2, portrait:Z
    if-eqz v2, :cond_0

    iget v4, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mShortAxisCells:I

    .line 1329
    .local v4, xCount:I
    :goto_0
    if-eqz v2, :cond_1

    iget v6, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mLongAxisCells:I

    .line 1330
    .local v6, yCount:I
    :goto_1
    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mOccupied:[[Z

    .line 1332
    .local v1, occupied:[[Z
    const/4 v7, 0x0

    invoke-direct {p0, v4, v6, v1, v7}, Lcom/baidu/launcher/ui/homeview/CellLayout;->findOccupiedCells(II[[ZLandroid/view/View;)V

    .line 1334
    mul-int v7, v4, v6

    new-array v0, v7, [Z

    .line 1335
    .local v0, flat:[Z
    const/4 v5, 0x0

    .local v5, y:I
    :goto_2
    if-ge v5, v6, :cond_3

    .line 1336
    const/4 v3, 0x0

    .local v3, x:I
    :goto_3
    if-ge v3, v4, :cond_2

    .line 1337
    mul-int v7, v5, v4

    add-int/2addr v7, v3

    aget-object v8, v1, v3

    aget-boolean v8, v8, v5

    aput-boolean v8, v0, v7

    .line 1336
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1328
    .end local v0           #flat:[Z
    .end local v1           #occupied:[[Z
    .end local v3           #x:I
    .end local v4           #xCount:I
    .end local v5           #y:I
    .end local v6           #yCount:I
    :cond_0
    iget v4, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mLongAxisCells:I

    goto :goto_0

    .line 1329
    .restart local v4       #xCount:I
    :cond_1
    iget v6, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mShortAxisCells:I

    goto :goto_1

    .line 1335
    .restart local v0       #flat:[Z
    .restart local v1       #occupied:[[Z
    .restart local v3       #x:I
    .restart local v5       #y:I
    .restart local v6       #yCount:I
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1341
    .end local v3           #x:I
    :cond_3
    return-object v0
.end method

.method public getPivotX()F
    .locals 2

    .prologue
    .line 2040
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2041
    invoke-super {p0}, Landroid/view/ViewGroup;->getPivotX()F

    move-result v0

    .line 2043
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->pivotXForLowApi:F

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    goto :goto_0
.end method

.method public getPivotY()F
    .locals 2

    .prologue
    .line 2056
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2057
    invoke-super {p0}, Landroid/view/ViewGroup;->getPivotY()F

    move-result v0

    .line 2059
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->pivotYForLowApi:F

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    goto :goto_0
.end method

.method public getRightPadding()I
    .locals 1

    .prologue
    .line 787
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mPortrait:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mShortAxisEndPadding:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mLongAxisEndPadding:I

    goto :goto_0
.end method

.method public getRotation()F
    .locals 1

    .prologue
    .line 1896
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1897
    invoke-super {p0}, Landroid/view/ViewGroup;->getRotation()F

    move-result v0

    .line 1899
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->rotationForLowApi:F

    goto :goto_0
.end method

.method public getRotationX()F
    .locals 1

    .prologue
    .line 1928
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1929
    invoke-super {p0}, Landroid/view/ViewGroup;->getRotationX()F

    move-result v0

    .line 1931
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->rotationXForLowApi:F

    goto :goto_0
.end method

.method public getRotationY()F
    .locals 1

    .prologue
    .line 1912
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1913
    invoke-super {p0}, Landroid/view/ViewGroup;->getRotationY()F

    move-result v0

    .line 1915
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->rotationYForLowApi:F

    goto :goto_0
.end method

.method public getScaleX()F
    .locals 1

    .prologue
    .line 2008
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2009
    invoke-super {p0}, Landroid/view/ViewGroup;->getScaleX()F

    move-result v0

    .line 2011
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->scaleXForLowApi:F

    goto :goto_0
.end method

.method public getScaleY()F
    .locals 1

    .prologue
    .line 2024
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2025
    invoke-super {p0}, Landroid/view/ViewGroup;->getScaleY()F

    move-result v0

    .line 2027
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->scaleYForLowApi:F

    goto :goto_0
.end method

.method public getSlotForSpan([III)Z
    .locals 2
    .parameter "xy"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    const/4 v1, 0x0

    .line 646
    invoke-virtual {p0, v1, v1}, Lcom/baidu/launcher/ui/homeview/CellLayout;->findAllVacantCells([ZLandroid/view/View;)Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;

    move-result-object v0

    .line 647
    .local v0, v:Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;
    invoke-virtual {p0, p2, p3, v0, p1}, Lcom/baidu/launcher/ui/homeview/CellLayout;->findVacantForSlot(IILcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;[I)Z

    move-result v1

    return v1
.end method

.method public getTag()Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;
    .locals 7

    .prologue
    .line 525
    invoke-super {p0}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;

    .line 526
    .local v0, info:Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;
    iget-boolean v1, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mDirtyTag:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->valid:Z

    if-eqz v1, :cond_0

    .line 527
    iget-boolean v6, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mPortrait:Z

    .line 528
    .local v6, portrait:Z
    if-eqz v6, :cond_1

    iget v3, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mShortAxisCells:I

    .line 529
    .local v3, xCount:I
    :goto_0
    if-eqz v6, :cond_2

    iget v4, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mLongAxisCells:I

    .line 531
    .local v4, yCount:I
    :goto_1
    iget-object v5, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mOccupied:[[Z

    .line 532
    .local v5, occupied:[[Z
    const/4 v1, 0x0

    invoke-direct {p0, v3, v4, v5, v1}, Lcom/baidu/launcher/ui/homeview/CellLayout;->findOccupiedCells(II[[ZLandroid/view/View;)V

    .line 534
    iget v1, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->cellX:I

    iget v2, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->cellY:I

    invoke-static/range {v0 .. v5}, Lcom/baidu/launcher/ui/homeview/CellLayout;->findIntersectingVacantCells(Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;IIII[[Z)V

    .line 536
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mDirtyTag:Z

    .line 538
    .end local v3           #xCount:I
    .end local v4           #yCount:I
    .end local v5           #occupied:[[Z
    .end local v6           #portrait:Z
    :cond_0
    return-object v0

    .line 528
    .restart local v6       #portrait:Z
    :cond_1
    iget v3, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mLongAxisCells:I

    goto :goto_0

    .line 529
    .restart local v3       #xCount:I
    :cond_2
    iget v4, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mShortAxisCells:I

    goto :goto_1
.end method

.method public bridge synthetic getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getTag()Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;

    move-result-object v0

    return-object v0
.end method

.method public getTopPadding()I
    .locals 1

    .prologue
    .line 783
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mPortrait:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mLongAxisStartPadding:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mShortAxisStartPadding:I

    goto :goto_0
.end method

.method public getTranslationX()F
    .locals 1

    .prologue
    .line 1976
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1977
    invoke-super {p0}, Landroid/view/ViewGroup;->getTranslationX()F

    move-result v0

    .line 1979
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->translationXForLowApi:F

    goto :goto_0
.end method

.method public getTranslationY()F
    .locals 1

    .prologue
    .line 1992
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1993
    invoke-super {p0}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v0

    .line 1995
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->translationYForLowApi:F

    goto :goto_0
.end method

.method public getVacantCell([III)Z
    .locals 7
    .parameter "vacant"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 1292
    iget-boolean v6, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mPortrait:Z

    .line 1293
    .local v6, portrait:Z
    if-eqz v6, :cond_0

    iget v3, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mShortAxisCells:I

    .line 1294
    .local v3, xCount:I
    :goto_0
    if-eqz v6, :cond_1

    iget v4, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mLongAxisCells:I

    .line 1295
    .local v4, yCount:I
    :goto_1
    iget-object v5, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mOccupied:[[Z

    .line 1297
    .local v5, occupied:[[Z
    const/4 v0, 0x0

    invoke-direct {p0, v3, v4, v5, v0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->findOccupiedCells(II[[ZLandroid/view/View;)V

    move-object v0, p1

    move v1, p2

    move v2, p3

    .line 1299
    invoke-static/range {v0 .. v5}, Lcom/baidu/launcher/ui/homeview/CellLayout;->findVacantCell([IIIII[[Z)Z

    move-result v0

    return v0

    .line 1293
    .end local v3           #xCount:I
    .end local v4           #yCount:I
    .end local v5           #occupied:[[Z
    :cond_0
    iget v3, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mLongAxisCells:I

    goto :goto_0

    .line 1294
    .restart local v3       #xCount:I
    :cond_1
    iget v4, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mShortAxisCells:I

    goto :goto_1
.end method

.method public getWidthGap()I
    .locals 1

    .prologue
    .line 1748
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mWidthGap:I

    return v0
.end method

.method public getX()F
    .locals 2

    .prologue
    .line 1944
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1945
    invoke-super {p0}, Landroid/view/ViewGroup;->getX()F

    move-result v0

    .line 1947
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mLeft:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getTranslationX()F

    move-result v1

    add-float/2addr v0, v1

    goto :goto_0
.end method

.method public getY()F
    .locals 2

    .prologue
    .line 1960
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1961
    invoke-super {p0}, Landroid/view/ViewGroup;->getY()F

    move-result v0

    .line 1963
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mTop:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getTranslationY()F

    move-result v1

    add-float/2addr v0, v1

    goto :goto_0
.end method

.method hideFolderAccept()V
    .locals 0

    .prologue
    .line 1178
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->removeCreateFolderCallbacks()V

    .line 1179
    return-void
.end method

.method isItemPlacementDirty()Z
    .locals 1

    .prologue
    .line 3414
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mItemPlacementDirty:Z

    return v0
.end method

.method isNearestDropLocationOccupied(IIIILandroid/view/View;[I)Z
    .locals 8
    .parameter "pixelX"
    .parameter "pixelY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "dragView"
    .parameter "result"

    .prologue
    .line 3271
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/launcher/ui/homeview/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object p6

    .line 3272
    const/4 v0, 0x0

    aget v1, p6, v0

    const/4 v0, 0x1

    aget v2, p6, v0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    move-object v0, p0

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getViewsIntersectingRegion(IIIILandroid/view/View;Landroid/graphics/Rect;Ljava/util/ArrayList;)V

    .line 3274
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lastDownOnOccupiedCell()Z
    .locals 1

    .prologue
    .line 1665
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mLastDownOnOccupiedCell:Z

    return v0
.end method

.method public markCellsAsOccupiedForView(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    .line 1776
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_1

    .line 1779
    :cond_0
    :goto_0
    return-void

    .line 1777
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;

    .line 1778
    .local v6, lp:Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;
    iget v1, v6, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellX:I

    iget v2, v6, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellY:I

    iget v3, v6, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellHSpan:I

    iget v4, v6, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellVSpan:I

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/baidu/launcher/ui/homeview/CellLayout;->markCellsForView(IIIIZ)V

    goto :goto_0
.end method

.method public markCellsAsOccupiedForView(Landroid/view/View;[[Z)V
    .locals 8
    .parameter "view"
    .parameter "occupied"

    .prologue
    .line 1782
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_1

    .line 1785
    :cond_0
    :goto_0
    return-void

    .line 1783
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;

    .line 1784
    .local v7, lp:Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;
    iget v1, v7, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellX:I

    iget v2, v7, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellY:I

    iget v3, v7, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellHSpan:I

    iget v4, v7, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellVSpan:I

    const/4 v6, 0x1

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/baidu/launcher/ui/homeview/CellLayout;->markCellsForView(IIII[[ZZ)V

    goto :goto_0
.end method

.method public markCellsAsUnoccupiedForView(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    .line 1788
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_1

    .line 1791
    :cond_0
    :goto_0
    return-void

    .line 1789
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;

    .line 1790
    .local v6, lp:Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;
    iget v1, v6, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellX:I

    iget v2, v6, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellY:I

    iget v3, v6, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellHSpan:I

    iget v4, v6, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellVSpan:I

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/baidu/launcher/ui/homeview/CellLayout;->markCellsForView(IIIIZ)V

    goto :goto_0
.end method

.method public markCellsAsUnoccupiedForView(Landroid/view/View;[[Z)V
    .locals 8
    .parameter "view"
    .parameter "occupied"

    .prologue
    .line 1794
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_1

    .line 1797
    :cond_0
    :goto_0
    return-void

    .line 1795
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;

    .line 1796
    .local v7, lp:Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;
    iget v1, v7, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellX:I

    iget v2, v7, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellY:I

    iget v3, v7, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellHSpan:I

    iget v4, v7, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellVSpan:I

    const/4 v6, 0x0

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/baidu/launcher/ui/homeview/CellLayout;->markCellsForView(IIII[[ZZ)V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 436
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 437
    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mCellInfo:Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iput v0, v1, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->screen:I

    .line 438
    return-void
.end method

.method onDragChild(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 1158
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;

    .line 1159
    .local v0, lp:Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->isDragging:Z

    .line 1160
    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mDragRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->setEmpty()V

    .line 1161
    return-void
.end method

.method onDragExit()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1182
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->hideFolderAccept()V

    .line 1184
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mDragCell:[I

    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mDragCell:[I

    const/4 v2, 0x1

    const/4 v3, -0x1

    aput v3, v1, v2

    aput v3, v0, v4

    .line 1185
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mDragOutlineAnims:[Lcom/baidu/launcher/ui/animation/InterruptibleInOutAnimator;

    iget v1, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mDragOutlineCurrent:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/animation/InterruptibleInOutAnimator;->animateOut()V

    .line 1186
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mDragOutlineCurrent:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mDragOutlineAnims:[Lcom/baidu/launcher/ui/animation/InterruptibleInOutAnimator;

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mDragOutlineCurrent:I

    .line 1187
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->revertTempState()V

    .line 1188
    invoke-virtual {p0, v4}, Lcom/baidu/launcher/ui/homeview/CellLayout;->setIsDragOverlapping(Z)V

    .line 1189
    return-void
.end method

.method onDropAborted(Landroid/view/View;Landroid/view/View;Lcom/baidu/launcher/ui/dragdrop/DragLayer;I)V
    .locals 16
    .parameter "child"
    .parameter "dragView"
    .parameter "dragLayer"
    .parameter "statusBarHeight"

    .prologue
    .line 1134
    if-eqz p1, :cond_1

    .line 1135
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;

    .line 1136
    .local v15, lp:Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;
    const/4 v1, 0x2

    new-array v4, v1, [I

    .line 1137
    .local v4, targetXY:[I
    const/4 v1, 0x0

    iget v2, v15, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellX:I

    aput v2, v4, v1

    .line 1138
    const/4 v1, 0x1

    iget v2, v15, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellY:I

    aput v2, v4, v1

    .line 1139
    const/4 v1, 0x0

    iput-boolean v1, v15, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->isDragging:Z

    .line 1140
    const/4 v1, 0x1

    iput-boolean v1, v15, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->dropped:Z

    .line 1141
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mDragRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->setEmpty()V

    .line 1142
    if-nez p2, :cond_0

    .line 1143
    move-object/from16 p2, p1

    .line 1145
    :cond_0
    const/4 v1, 0x2

    new-array v5, v1, [I

    .local v5, destPoints:[I
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    move/from16 v6, p4

    .line 1146
    invoke-direct/range {v1 .. v6}, Lcom/baidu/launcher/ui/homeview/CellLayout;->computeDestinationLoc(Landroid/view/View;Landroid/view/View;[I[II)V

    .line 1147
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getScaleX()F

    move-result v13

    move/from16 v0, p4

    neg-int v14, v0

    move-object/from16 v6, p3

    move-object/from16 v7, p2

    move-object/from16 v8, p1

    move-object v9, v5

    invoke-virtual/range {v6 .. v14}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->animateViewIntoPosition(Landroid/view/View;Landroid/view/View;[ILcom/baidu/launcher/ui/dragdrop/DragSource;Ljava/lang/Object;Ljava/lang/Runnable;FI)V

    .line 1148
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->requestLayout()V

    .line 1150
    .end local v4           #targetXY:[I
    .end local v5           #destPoints:[I
    .end local v15           #lp:Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;
    :cond_1
    return-void
.end method

.method onDropChild(Lcom/baidu/launcher/ui/dragdrop/DragView;Lcom/baidu/launcher/ui/dragdrop/DragLayer;Landroid/view/View;[II)V
    .locals 11
    .parameter "dragView"
    .parameter "dragLayer"
    .parameter "child"
    .parameter "targetXY"
    .parameter "statusBarHeight"

    .prologue
    .line 1054
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->removeCreateFolderCallbacks()V

    .line 1055
    if-eqz p3, :cond_0

    .line 1056
    invoke-direct {p0, p3, p4}, Lcom/baidu/launcher/ui/homeview/CellLayout;->submitUBCMoveView(Landroid/view/View;[I)V

    .line 1057
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;

    .line 1058
    .local v10, lp:Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;
    if-nez v10, :cond_1

    .line 1074
    .end local v10           #lp:Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;
    :cond_0
    :goto_0
    return-void

    .line 1059
    .restart local v10       #lp:Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;
    :cond_1
    const/4 v0, 0x0

    aget v0, p4, v0

    iput v0, v10, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellX:I

    .line 1060
    const/4 v0, 0x1

    aget v0, p4, v0

    iput v0, v10, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellY:I

    .line 1061
    const/4 v0, 0x0

    iput-boolean v0, v10, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->isDragging:Z

    .line 1062
    const/4 v0, 0x1

    iput-boolean v0, v10, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->dropped:Z

    .line 1063
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mDragRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    .line 1064
    if-eqz p1, :cond_2

    .line 1065
    iget-object v4, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mDestPosition:[I

    .line 1066
    .local v4, destPoints:[I
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/baidu/launcher/ui/homeview/CellLayout;->computeDestinationLoc(Landroid/view/View;Landroid/view/View;[I[II)V

    .line 1067
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getScaleX()F

    move-result v8

    const/4 v9, 0x0

    move-object v1, p2

    move-object v2, p1

    move-object v3, p3

    invoke-virtual/range {v1 .. v9}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->animateViewIntoPosition(Landroid/view/View;Landroid/view/View;[ILcom/baidu/launcher/ui/dragdrop/DragSource;Ljava/lang/Object;Ljava/lang/Runnable;FI)V

    .line 1068
    invoke-virtual {p3}, Landroid/view/View;->requestLayout()V

    goto :goto_0

    .line 1070
    .end local v4           #destPoints:[I
    :cond_2
    invoke-virtual {p3}, Landroid/view/View;->requestLayout()V

    .line 1071
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->invalidate()V

    goto :goto_0
.end method

.method onDropWidgetFromLauncher(Lcom/baidu/launcher/ui/dragdrop/DragView;Lcom/baidu/launcher/ui/dragdrop/DragLayer;Ljava/lang/Object;I[I[II)V
    .locals 14
    .parameter "dragView"
    .parameter "dragLayer"
    .parameter "widgetInfo"
    .parameter "screen"
    .parameter "span"
    .parameter "targetXY"
    .parameter "statusBarHeight"

    .prologue
    .line 1016
    const/4 v2, 0x2

    new-array v11, v2, [I

    .line 1017
    .local v11, position:[I
    invoke-virtual {p1}, Lcom/baidu/launcher/ui/dragdrop/DragView;->getMeasuredWidth()I

    move-result v10

    .line 1018
    .local v10, dragViewW:I
    invoke-virtual {p1}, Lcom/baidu/launcher/ui/dragdrop/DragView;->getMeasuredHeight()I

    move-result v8

    .line 1020
    .local v8, dragViewH:I
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/homeview/Workspace;

    .line 1021
    .local v0, workspace:Lcom/baidu/launcher/ui/homeview/Workspace;
    if-nez v0, :cond_0

    .line 1044
    :goto_0
    return-void

    .line 1022
    :cond_0
    const/4 v2, 0x0

    aget v3, p6, v2

    const/4 v2, 0x1

    aget v4, p6, v2

    const/4 v2, 0x0

    aget v5, p5, v2

    const/4 v2, 0x1

    aget v6, p5, v2

    move-object v1, p0

    move-object/from16 v2, p3

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/launcher/ui/homeview/Workspace;->estimateItemPosition(Lcom/baidu/launcher/ui/homeview/CellLayout;Ljava/lang/Object;IIII)Landroid/graphics/RectF;

    move-result-object v12

    .line 1025
    .local v12, r:Landroid/graphics/RectF;
    const/4 v2, 0x0

    iget v3, v12, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    aput v3, v11, v2

    .line 1026
    const/4 v2, 0x1

    iget v3, v12, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    aput v3, v11, v2

    .line 1028
    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v2

    int-to-float v3, v10

    div-float/2addr v2, v3

    invoke-virtual {v12}, Landroid/graphics/RectF;->height()F

    move-result v3

    int-to-float v4, v8

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 1030
    .local v9, dragViewScale:F
    iget-object v13, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mRealPosition:[F

    .line 1031
    .local v13, realPoints:[F
    const/4 v2, 0x0

    const/4 v3, 0x0

    aget v3, v11, v3

    int-to-float v3, v3

    aput v3, v13, v2

    .line 1032
    const/4 v2, 0x1

    const/4 v3, 0x1

    aget v3, v11, v3

    int-to-float v3, v3

    aput v3, v13, v2

    .line 1033
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1034
    const/4 v2, 0x1

    aget v3, v13, v2

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getTop()I

    move-result v4

    sub-int v4, v4, p7

    int-to-float v4, v4

    add-float/2addr v3, v4

    aput v3, v13, v2

    .line 1035
    const/4 v2, 0x0

    const/4 v3, 0x0

    aget v3, v13, v3

    int-to-float v4, v10

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getScaleX()F

    move-result v5

    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v6

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-int v3, v3

    aput v3, v11, v2

    .line 1036
    const/4 v2, 0x1

    const/4 v3, 0x1

    aget v3, v13, v3

    int-to-float v4, v8

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getScaleY()F

    move-result v5

    invoke-virtual {v12}, Landroid/graphics/RectF;->height()F

    move-result v6

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-int v3, v3

    aput v3, v11, v2

    .line 1037
    new-instance v1, Lcom/baidu/launcher/ui/homeview/CellLayout$4;

    move-object v2, p0

    move-object v3, v0

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/baidu/launcher/ui/homeview/CellLayout$4;-><init>(Lcom/baidu/launcher/ui/homeview/CellLayout;Lcom/baidu/launcher/ui/homeview/Workspace;Ljava/lang/Object;I[I)V

    .line 1043
    .local v1, exitSpringLoadedRunnable:Ljava/lang/Runnable;
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getScaleX()F

    move-result v2

    mul-float v6, v2, v9

    const/4 v7, 0x0

    move-object/from16 v2, p2

    move-object v3, p1

    move-object v4, v11

    move-object v5, v1

    invoke-virtual/range {v2 .. v7}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->animateViewIntoPosition(Landroid/view/View;[ILjava/lang/Runnable;FZ)V

    goto/16 :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 24
    .parameter "ev"

    .prologue
    .line 442
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    .line 443
    .local v5, action:I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mCellInfo:Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;

    .line 445
    .local v6, cellInfo:Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;
    if-nez v5, :cond_9

    .line 446
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mRect:Landroid/graphics/Rect;

    .line 447
    .local v11, frame:Landroid/graphics/Rect;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v21

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mScrollX:I

    move/from16 v22, v0

    add-int v17, v21, v22

    .line 448
    .local v17, x:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v21

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mScrollY:I

    move/from16 v22, v0

    add-int v19, v21, v22

    .line 449
    .local v19, y:I
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getChildCount()I

    move-result v9

    .line 451
    .local v9, count:I
    const/4 v10, 0x0

    .line 452
    .local v10, found:Z
    add-int/lit8 v12, v9, -0x1

    .local v12, i:I
    :goto_0
    if-ltz v12, :cond_1

    .line 453
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 455
    .local v8, child:Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v21

    if-eqz v21, :cond_0

    invoke-virtual {v8}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v21

    if-eqz v21, :cond_4

    .line 456
    :cond_0
    invoke-virtual {v8, v11}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 457
    move/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 458
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;

    .line 459
    .local v13, lp:Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;
    iput-object v8, v6, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 460
    iget v0, v13, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellX:I

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v6, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->cellX:I

    .line 461
    iget v0, v13, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellY:I

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v6, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->cellY:I

    .line 462
    iget v0, v13, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellHSpan:I

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v6, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->spanX:I

    .line 463
    iget v0, v13, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellVSpan:I

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v6, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->spanY:I

    .line 464
    const/16 v21, 0x1

    move/from16 v0, v21

    iput-boolean v0, v6, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->valid:Z

    .line 465
    const/4 v10, 0x1

    .line 466
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/baidu/launcher/ui/homeview/CellLayout;->mDirtyTag:Z

    .line 472
    .end local v8           #child:Landroid/view/View;
    .end local v13           #lp:Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;
    :cond_1
    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mLastDownOnOccupiedCell:Z

    .line 474
    if-nez v10, :cond_2

    .line 475
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mCellXY:[I

    .line 476
    .local v7, cellXY:[I
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v7}, Lcom/baidu/launcher/ui/homeview/CellLayout;->pointToCellExact(II[I)V

    .line 478
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mPortrait:Z

    .line 479
    .local v15, portrait:Z
    if-eqz v15, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mShortAxisCells:I

    move/from16 v18, v0

    .line 480
    .local v18, xCount:I
    :goto_1
    if-eqz v15, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mLongAxisCells:I

    move/from16 v20, v0

    .line 482
    .local v20, yCount:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mOccupied:[[Z

    .line 483
    .local v14, occupied:[[Z
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v20

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v14, v3}, Lcom/baidu/launcher/ui/homeview/CellLayout;->findOccupiedCells(II[[ZLandroid/view/View;)V

    .line 485
    const/16 v21, 0x0

    move-object/from16 v0, v21

    iput-object v0, v6, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 486
    const/16 v21, 0x0

    aget v21, v7, v21

    move/from16 v0, v21

    iput v0, v6, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->cellX:I

    .line 487
    const/16 v21, 0x1

    aget v21, v7, v21

    move/from16 v0, v21

    iput v0, v6, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->cellY:I

    .line 488
    const/16 v21, 0x1

    move/from16 v0, v21

    iput v0, v6, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->spanX:I

    .line 489
    const/16 v21, 0x1

    move/from16 v0, v21

    iput v0, v6, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->spanY:I

    .line 490
    const/16 v21, 0x0

    aget v21, v7, v21

    if-ltz v21, :cond_7

    const/16 v21, 0x1

    aget v21, v7, v21

    if-ltz v21, :cond_7

    const/16 v21, 0x0

    aget v21, v7, v21

    move/from16 v0, v21

    move/from16 v1, v18

    if-ge v0, v1, :cond_7

    const/16 v21, 0x1

    aget v21, v7, v21

    move/from16 v0, v21

    move/from16 v1, v20

    if-ge v0, v1, :cond_7

    const/16 v21, 0x0

    aget v21, v7, v21

    aget-object v21, v14, v21

    const/16 v22, 0x1

    aget v22, v7, v22

    aget-boolean v21, v21, v22

    if-nez v21, :cond_7

    const/16 v21, 0x1

    :goto_3
    move/from16 v0, v21

    iput-boolean v0, v6, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->valid:Z

    .line 498
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/baidu/launcher/ui/homeview/CellLayout;->mDirtyTag:Z

    .line 499
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->doubleClick:Z

    move/from16 v21, v0

    if-eqz v21, :cond_8

    .line 500
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/baidu/launcher/ui/homeview/CellLayout;->doubleClick:Z

    .line 501
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v16

    check-cast v16, Lcom/baidu/launcher/ui/homeview/Workspace;

    .line 502
    .local v16, workspace:Lcom/baidu/launcher/ui/homeview/Workspace;
    new-instance v21, Landroid/graphics/Rect;

    add-int/lit8 v22, v17, 0x2

    add-int/lit8 v23, v19, 0x2

    move-object/from16 v0, v21

    move/from16 v1, v17

    move/from16 v2, v19

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->doDoubleClick(Landroid/graphics/Rect;)V

    .line 508
    .end local v7           #cellXY:[I
    .end local v14           #occupied:[[Z
    .end local v15           #portrait:Z
    .end local v16           #workspace:Lcom/baidu/launcher/ui/homeview/Workspace;
    .end local v18           #xCount:I
    .end local v20           #yCount:I
    :cond_2
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/baidu/launcher/ui/homeview/CellLayout;->setTag(Ljava/lang/Object;)V

    .line 520
    .end local v9           #count:I
    .end local v10           #found:Z
    .end local v11           #frame:Landroid/graphics/Rect;
    .end local v12           #i:I
    .end local v17           #x:I
    .end local v19           #y:I
    :cond_3
    :goto_5
    const/16 v21, 0x0

    return v21

    .line 452
    .restart local v8       #child:Landroid/view/View;
    .restart local v9       #count:I
    .restart local v10       #found:Z
    .restart local v11       #frame:Landroid/graphics/Rect;
    .restart local v12       #i:I
    .restart local v17       #x:I
    .restart local v19       #y:I
    :cond_4
    add-int/lit8 v12, v12, -0x1

    goto/16 :goto_0

    .line 479
    .end local v8           #child:Landroid/view/View;
    .restart local v7       #cellXY:[I
    .restart local v15       #portrait:Z
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mLongAxisCells:I

    move/from16 v18, v0

    goto/16 :goto_1

    .line 480
    .restart local v18       #xCount:I
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mShortAxisCells:I

    move/from16 v20, v0

    goto/16 :goto_2

    .line 490
    .restart local v14       #occupied:[[Z
    .restart local v20       #yCount:I
    :cond_7
    const/16 v21, 0x0

    goto :goto_3

    .line 504
    :cond_8
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/baidu/launcher/ui/homeview/CellLayout;->doubleClick:Z

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->pendingDoubleClick:Ljava/lang/Runnable;

    move-object/from16 v21, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/launcher/ui/homeview/CellLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    .line 509
    .end local v7           #cellXY:[I
    .end local v9           #count:I
    .end local v10           #found:Z
    .end local v11           #frame:Landroid/graphics/Rect;
    .end local v12           #i:I
    .end local v14           #occupied:[[Z
    .end local v15           #portrait:Z
    .end local v17           #x:I
    .end local v18           #xCount:I
    .end local v19           #y:I
    .end local v20           #yCount:I
    :cond_9
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v5, v0, :cond_3

    .line 510
    const/16 v21, 0x0

    move-object/from16 v0, v21

    iput-object v0, v6, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 511
    const/16 v21, -0x1

    move/from16 v0, v21

    iput v0, v6, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->cellX:I

    .line 512
    const/16 v21, -0x1

    move/from16 v0, v21

    iput v0, v6, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->cellY:I

    .line 513
    const/16 v21, 0x0

    move/from16 v0, v21

    iput v0, v6, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->spanX:I

    .line 514
    const/16 v21, 0x0

    move/from16 v0, v21

    iput v0, v6, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->spanY:I

    .line 515
    const/16 v21, 0x0

    move/from16 v0, v21

    iput-boolean v0, v6, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->valid:Z

    .line 516
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/baidu/launcher/ui/homeview/CellLayout;->mDirtyTag:Z

    .line 517
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/baidu/launcher/ui/homeview/CellLayout;->setTag(Ljava/lang/Object;)V

    goto :goto_5
.end method

.method protected onLayout(ZIIII)V
    .locals 14
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 909
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getChildCount()I

    move-result v11

    .line 911
    .local v11, count:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    if-ge v12, v11, :cond_1

    .line 912
    invoke-virtual {p0, v12}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 913
    .local v8, child:Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 915
    :try_start_0
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;

    .line 917
    .local v13, lp:Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;
    iget v9, v13, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->x:I

    .line 918
    .local v9, childLeft:I
    iget v10, v13, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->y:I

    .line 919
    .local v10, childTop:I
    iget v0, v13, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->width:I

    add-int/2addr v0, v9

    iget v1, v13, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->height:I

    add-int/2addr v1, v10

    invoke-virtual {v8, v9, v10, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 920
    iget-boolean v0, v13, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->dropped:Z

    if-eqz v0, :cond_0

    .line 921
    const/4 v0, 0x0

    iput-boolean v0, v13, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->dropped:Z

    .line 923
    iget-object v7, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mCellXY:[I

    .line 924
    .local v7, cellXY:[I
    invoke-virtual {p0, v7}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getLocationOnScreen([I)V

    .line 925
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const-string v2, "android.home.drop"

    const/4 v3, 0x0

    aget v3, v7, v3

    add-int/2addr v3, v9

    iget v4, v13, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->width:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    const/4 v4, 0x1

    aget v4, v7, v4

    add-int/2addr v4, v10

    iget v5, v13, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->height:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 911
    .end local v7           #cellXY:[I
    .end local v9           #childLeft:I
    .end local v10           #childTop:I
    .end local v13           #lp:Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;
    :cond_0
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 934
    .end local v8           #child:Landroid/view/View;
    :cond_1
    return-void

    .line 929
    .restart local v8       #child:Landroid/view/View;
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 34
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 816
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v32

    .line 817
    .local v32, widthSpecMode:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v33

    .line 819
    .local v33, widthSpecSize:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v22

    .line 820
    .local v22, heightSpecMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v23

    .line 822
    .local v23, heightSpecSize:I
    if-eqz v32, :cond_0

    if-nez v22, :cond_1

    .line 823
    :cond_0
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "CellLayout cannot have UNSPECIFIED dimensions"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 826
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mShortAxisCells:I

    move/from16 v29, v0

    .line 827
    .local v29, shortAxisCells:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mLongAxisCells:I

    move/from16 v25, v0

    .line 828
    .local v25, longAxisCells:I
    move-object/from16 v0, p0

    iget v9, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mLongAxisStartPadding:I

    .line 829
    .local v9, longAxisStartPadding:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mLongAxisEndPadding:I

    move/from16 v26, v0

    .line 830
    .local v26, longAxisEndPadding:I
    move-object/from16 v0, p0

    iget v8, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mShortAxisStartPadding:I

    .line 831
    .local v8, shortAxisStartPadding:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mShortAxisEndPadding:I

    move/from16 v30, v0

    .line 832
    .local v30, shortAxisEndPadding:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mCellWidth:I

    .line 833
    .local v4, cellWidth:I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mCellHeight:I

    .line 837
    .local v5, cellHeight:I
    add-int/lit8 v28, v29, -0x1

    .line 838
    .local v28, numShortGaps:I
    add-int/lit8 v27, v25, -0x1

    .line 840
    .local v27, numLongGaps:I
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mPortrait:Z

    if-eqz v6, :cond_4

    .line 841
    sub-int v6, v23, v9

    sub-int v6, v6, v26

    mul-int v7, v5, v25

    sub-int v31, v6, v7

    .line 843
    .local v31, vSpaceLeft:I
    div-int v6, v31, v27

    move-object/from16 v0, p0

    iput v6, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mHeightGap:I

    .line 845
    sub-int v6, v33, v8

    sub-int v6, v6, v30

    mul-int v7, v4, v29

    sub-int v21, v6, v7

    .line 847
    .local v21, hSpaceLeft:I
    if-lez v28, :cond_3

    .line 848
    div-int v6, v21, v28

    move-object/from16 v0, p0

    iput v6, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mWidthGap:I

    .line 866
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getChildCount()I

    move-result v20

    .line 868
    .local v20, count:I
    const/16 v24, 0x0

    .local v24, i:I
    :goto_1
    move/from16 v0, v24

    move/from16 v1, v20

    if-ge v0, v1, :cond_7

    .line 869
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 870
    .local v17, child:Landroid/view/View;
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;

    .line 872
    .local v3, lp:Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mPortrait:Z

    if-eqz v6, :cond_6

    .line 873
    move-object/from16 v0, p0

    iget v6, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mWidthGap:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mHeightGap:I

    invoke-virtual/range {v3 .. v9}, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->setup(IIIIII)V

    .line 880
    :goto_2
    iget-boolean v6, v3, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->regenerateId:Z

    if-eqz v6, :cond_2

    .line 881
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getId()I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    iget v7, v3, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellX:I

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    iget v7, v3, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellY:I

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/view/View;->setId(I)V

    .line 882
    const/4 v6, 0x0

    iput-boolean v6, v3, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->regenerateId:Z

    .line 885
    :cond_2
    iget v6, v3, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->width:I

    const/high16 v7, 0x4000

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v18

    .line 886
    .local v18, childWidthMeasureSpec:I
    iget v6, v3, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->height:I

    const/high16 v7, 0x4000

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v19

    .line 888
    .local v19, childheightMeasureSpec:I
    invoke-virtual/range {v17 .. v19}, Landroid/view/View;->measure(II)V

    .line 868
    add-int/lit8 v24, v24, 0x1

    goto :goto_1

    .line 850
    .end local v3           #lp:Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;
    .end local v17           #child:Landroid/view/View;
    .end local v18           #childWidthMeasureSpec:I
    .end local v19           #childheightMeasureSpec:I
    .end local v20           #count:I
    .end local v24           #i:I
    :cond_3
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput v6, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mWidthGap:I

    goto :goto_0

    .line 853
    .end local v21           #hSpaceLeft:I
    .end local v31           #vSpaceLeft:I
    :cond_4
    sub-int v6, v33, v9

    sub-int v6, v6, v26

    mul-int v7, v4, v25

    sub-int v21, v6, v7

    .line 855
    .restart local v21       #hSpaceLeft:I
    div-int v6, v21, v27

    move-object/from16 v0, p0

    iput v6, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mWidthGap:I

    .line 857
    sub-int v6, v23, v8

    sub-int v6, v6, v30

    mul-int v7, v5, v29

    sub-int v31, v6, v7

    .line 859
    .restart local v31       #vSpaceLeft:I
    if-lez v28, :cond_5

    .line 860
    div-int v6, v31, v28

    move-object/from16 v0, p0

    iput v6, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mHeightGap:I

    goto/16 :goto_0

    .line 862
    :cond_5
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput v6, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mHeightGap:I

    goto/16 :goto_0

    .line 876
    .restart local v3       #lp:Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;
    .restart local v17       #child:Landroid/view/View;
    .restart local v20       #count:I
    .restart local v24       #i:I
    :cond_6
    move-object/from16 v0, p0

    iget v13, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mWidthGap:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mHeightGap:I

    move-object v10, v3

    move v11, v4

    move v12, v5

    move v15, v9

    move/from16 v16, v8

    invoke-virtual/range {v10 .. v16}, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->setup(IIIIII)V

    goto :goto_2

    .line 891
    .end local v3           #lp:Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;
    .end local v17           #child:Landroid/view/View;
    :cond_7
    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/baidu/launcher/ui/homeview/CellLayout;->setMeasuredDimension(II)V

    .line 892
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 3547
    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 3548
    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3549
    .local v2, view:Landroid/view/View;
    instance-of v3, v2, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 3550
    check-cast v0, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;

    .line 3551
    .local v0, b:Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;
    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;->onPause()V

    .line 3547
    .end local v0           #b:Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3554
    .end local v2           #view:Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onScroll(Z)V
    .locals 4
    .parameter "scrolling"

    .prologue
    .line 3526
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 3527
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3528
    .local v1, view:Landroid/view/View;
    instance-of v3, v1, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 3529
    check-cast v2, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;

    .line 3530
    .local v2, widget:Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;
    invoke-virtual {v2, p1}, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;->onScroll(Z)V

    .line 3526
    .end local v2           #widget:Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3533
    .end local v1           #view:Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 5
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/4 v1, 0x0

    .line 301
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 302
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 303
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mForegroundRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getLeftPadding()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getTopPadding()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getRightPadding()I

    move-result v3

    sub-int v3, p1, v3

    add-int/lit8 v3, v3, -0x4

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getBottomPadding()I

    move-result v4

    sub-int v4, p2, v4

    add-int/lit8 v4, v4, -0x4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 304
    return-void
.end method

.method public onSnap(I)V
    .locals 4
    .parameter "screen"

    .prologue
    .line 3537
    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 3538
    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3539
    .local v2, view:Landroid/view/View;
    instance-of v3, v2, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 3540
    check-cast v0, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;

    .line 3541
    .local v0, b:Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;
    invoke-virtual {v0, p1}, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;->onSnapTo(I)V

    .line 3537
    .end local v0           #b:Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3544
    .end local v2           #view:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public pointToCellExact(II[I)V
    .locals 10
    .parameter "x"
    .parameter "y"
    .parameter "result"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 724
    iget-boolean v1, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mPortrait:Z

    .line 726
    .local v1, portrait:Z
    if-eqz v1, :cond_4

    iget v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mShortAxisStartPadding:I

    .line 727
    .local v0, hStartPadding:I
    :goto_0
    if-eqz v1, :cond_5

    iget v2, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mLongAxisStartPadding:I

    .line 729
    .local v2, vStartPadding:I
    :goto_1
    sub-int v5, p1, v0

    iget v6, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mCellWidth:I

    iget v7, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mWidthGap:I

    add-int/2addr v6, v7

    div-int/2addr v5, v6

    aput v5, p3, v8

    .line 730
    sub-int v5, p2, v2

    iget v6, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mCellHeight:I

    iget v7, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mHeightGap:I

    add-int/2addr v6, v7

    div-int/2addr v5, v6

    aput v5, p3, v9

    .line 732
    if-eqz v1, :cond_6

    iget v3, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mShortAxisCells:I

    .line 733
    .local v3, xAxis:I
    :goto_2
    if-eqz v1, :cond_7

    iget v4, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mLongAxisCells:I

    .line 735
    .local v4, yAxis:I
    :goto_3
    aget v5, p3, v8

    if-gez v5, :cond_0

    aput v8, p3, v8

    .line 736
    :cond_0
    aget v5, p3, v8

    if-lt v5, v3, :cond_1

    add-int/lit8 v5, v3, -0x1

    aput v5, p3, v8

    .line 737
    :cond_1
    aget v5, p3, v9

    if-gez v5, :cond_2

    aput v8, p3, v9

    .line 738
    :cond_2
    aget v5, p3, v9

    if-lt v5, v4, :cond_3

    add-int/lit8 v5, v4, -0x1

    aput v5, p3, v9

    .line 739
    :cond_3
    return-void

    .line 726
    .end local v0           #hStartPadding:I
    .end local v2           #vStartPadding:I
    .end local v3           #xAxis:I
    .end local v4           #yAxis:I
    :cond_4
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mLongAxisStartPadding:I

    goto :goto_0

    .line 727
    .restart local v0       #hStartPadding:I
    :cond_5
    iget v2, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mShortAxisStartPadding:I

    goto :goto_1

    .line 732
    .restart local v2       #vStartPadding:I
    :cond_6
    iget v3, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mLongAxisCells:I

    goto :goto_2

    .line 733
    .restart local v3       #xAxis:I
    :cond_7
    iget v4, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mShortAxisCells:I

    goto :goto_3
.end method

.method public pointToCellRounded(II[I)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "result"

    .prologue
    .line 748
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mCellWidth:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    iget v1, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mCellHeight:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p2

    invoke-virtual {p0, v0, v1, p3}, Lcom/baidu/launcher/ui/homeview/CellLayout;->pointToCellExact(II[I)V

    .line 749
    return-void
.end method

.method public prepareChildForDrag(Landroid/view/View;)V
    .locals 0
    .parameter "child"

    .prologue
    .line 3195
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/homeview/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 3196
    return-void
.end method

.method regionToCenterPoint(IIII[I)V
    .locals 7
    .parameter "cellX"
    .parameter "cellY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "result"

    .prologue
    .line 2295
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getPaddingLeft()I

    move-result v0

    .line 2296
    .local v0, hStartPadding:I
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getPaddingTop()I

    move-result v1

    .line 2297
    .local v1, vStartPadding:I
    const/4 v2, 0x0

    iget v3, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mCellWidth:I

    iget v4, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mWidthGap:I

    add-int/2addr v3, v4

    mul-int/2addr v3, p1

    add-int/2addr v3, v0

    iget v4, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mCellWidth:I

    mul-int/2addr v4, p3

    add-int/lit8 v5, p3, -0x1

    iget v6, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mWidthGap:I

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    aput v3, p5, v2

    .line 2299
    const/4 v2, 0x1

    iget v3, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mCellHeight:I

    iget v4, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mHeightGap:I

    add-int/2addr v3, v4

    mul-int/2addr v3, p2

    add-int/2addr v3, v1

    iget v4, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mCellHeight:I

    mul-int/2addr v4, p4

    add-int/lit8 v5, p4, -0x1

    iget v6, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mHeightGap:I

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    aput v3, p5, v2

    .line 2301
    return-void
.end method

.method regionToRect(IIIILandroid/graphics/Rect;)V
    .locals 8
    .parameter "cellX"
    .parameter "cellY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "result"

    .prologue
    .line 2311
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getPaddingLeft()I

    move-result v0

    .line 2312
    .local v0, hStartPadding:I
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getPaddingTop()I

    move-result v3

    .line 2313
    .local v3, vStartPadding:I
    iget v4, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mCellWidth:I

    iget v5, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mWidthGap:I

    add-int/2addr v4, v5

    mul-int/2addr v4, p1

    add-int v1, v0, v4

    .line 2314
    .local v1, left:I
    iget v4, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mCellHeight:I

    iget v5, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mHeightGap:I

    add-int/2addr v4, v5

    mul-int/2addr v4, p2

    add-int v2, v3, v4

    .line 2315
    .local v2, top:I
    iget v4, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mCellWidth:I

    mul-int/2addr v4, p3

    add-int/lit8 v5, p3, -0x1

    iget v6, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mWidthGap:I

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    add-int/2addr v4, v1

    iget v5, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mCellHeight:I

    mul-int/2addr v5, p4

    add-int/lit8 v6, p4, -0x1

    iget v7, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mHeightGap:I

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    add-int/2addr v5, v2

    invoke-virtual {p5, v1, v2, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 2317
    return-void
.end method

.method public removeCreateFolderCallbacks()V
    .locals 0

    .prologue
    .line 1218
    invoke-direct {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->cancelFolderHighlightDraw()V

    .line 1219
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 1682
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/homeview/Workspace;

    .line 1683
    .local v0, ws:Lcom/baidu/launcher/ui/homeview/Workspace;
    instance-of v1, p1, Lcom/baidu/launcher/ui/dragdrop/DropTarget;

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 1684
    check-cast v1, Lcom/baidu/launcher/ui/dragdrop/DropTarget;

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->removeDropTarget(Lcom/baidu/launcher/ui/dragdrop/DropTarget;)V

    .line 1686
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1690
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 426
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 427
    if-eqz p1, :cond_0

    .line 428
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 429
    .local v0, r:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 430
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    .line 432
    .end local v0           #r:Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method public resetOccupiedCells()V
    .locals 8

    .prologue
    .line 1756
    const/4 v4, 0x0

    .local v4, x:I
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getCountX()I

    move-result v6

    if-ge v4, v6, :cond_1

    .line 1757
    const/4 v5, 0x0

    .local v5, y:I
    :goto_1
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getCountY()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 1758
    iget-object v6, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mOccupied:[[Z

    aget-object v6, v6, v4

    const/4 v7, 0x0

    aput-boolean v7, v6, v5

    .line 1757
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1756
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1762
    .end local v5           #y:I
    :cond_1
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getChildCount()I

    move-result v1

    .line 1763
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v1, :cond_4

    .line 1764
    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1765
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;

    .line 1767
    .local v3, lp:Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;
    iget v4, v3, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellX:I

    :goto_3
    iget v6, v3, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellX:I

    iget v7, v3, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellHSpan:I

    add-int/2addr v6, v7

    if-ge v4, v6, :cond_3

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getCountX()I

    move-result v6

    if-ge v4, v6, :cond_3

    .line 1768
    iget v5, v3, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellY:I

    .restart local v5       #y:I
    :goto_4
    iget v6, v3, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellY:I

    iget v7, v3, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellVSpan:I

    add-int/2addr v6, v7

    if-ge v5, v6, :cond_2

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getCountY()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 1769
    iget-object v6, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mOccupied:[[Z

    aget-object v6, v6, v4

    const/4 v7, 0x1

    aput-boolean v7, v6, v5

    .line 1768
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 1767
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1763
    .end local v5           #y:I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1773
    .end local v0           #child:Landroid/view/View;
    .end local v3           #lp:Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;
    :cond_4
    return-void
.end method

.method protected resetOverscrollTransforms()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1823
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mScrollingTransformsDirty:Z

    if-eqz v0, :cond_0

    .line 1824
    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/homeview/CellLayout;->setOverscrollTransformsDirty(Z)V

    .line 1825
    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/homeview/CellLayout;->setTranslationX(F)V

    .line 1826
    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/homeview/CellLayout;->setRotationY(F)V

    .line 1831
    invoke-virtual {p0, v1, v2}, Lcom/baidu/launcher/ui/homeview/CellLayout;->setOverScrollAmount(FZ)V

    .line 1832
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->setPivotX(F)V

    .line 1833
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->setPivotY(F)V

    .line 1835
    :cond_0
    return-void
.end method

.method revertTempState()V
    .locals 11

    .prologue
    const/4 v5, 0x0

    .line 3278
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->isItemPlacementDirty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3279
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getChildCount()I

    move-result v8

    .line 3280
    .local v8, count:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v8, :cond_2

    .line 3281
    invoke-virtual {p0, v9}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3282
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;

    .line 3283
    .local v10, lp:Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;
    iget v0, v10, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->tmpCellX:I

    iget v2, v10, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellX:I

    if-ne v0, v2, :cond_0

    iget v0, v10, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->tmpCellY:I

    iget v2, v10, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellY:I

    if-eq v0, v2, :cond_1

    .line 3284
    :cond_0
    iget v0, v10, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellX:I

    iput v0, v10, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->tmpCellX:I

    .line 3285
    iget v0, v10, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellY:I

    iput v0, v10, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->tmpCellY:I

    .line 3286
    iget v2, v10, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellX:I

    iget v3, v10, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellY:I

    const/16 v4, 0x96

    move-object v0, p0

    move v6, v5

    move v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/baidu/launcher/ui/homeview/CellLayout;->animateChildToPosition(Landroid/view/View;IIIIZZ)Z

    .line 3280
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 3290
    .end local v1           #child:Landroid/view/View;
    .end local v10           #lp:Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;
    :cond_2
    invoke-direct {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->completeAndClearReorderHintAnimations()V

    .line 3291
    invoke-virtual {p0, v5}, Lcom/baidu/launcher/ui/homeview/CellLayout;->setItemPlacementDirty(Z)V

    .line 3292
    .end local v8           #count:I
    .end local v9           #i:I
    :cond_3
    return-void
.end method

.method public setAlpha(F)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 2080
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2081
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 2085
    :goto_0
    return-void

    .line 2083
    :cond_0
    iput p1, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->alphaForLowApi:F

    goto :goto_0
.end method

.method public setBackgroundAlpha(F)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 1883
    iput p1, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mBackgroundAlpha:F

    .line 1884
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->invalidate()V

    .line 1885
    return-void
.end method

.method public setBackgroundAlphaMultiplier(F)V
    .locals 0
    .parameter "multiplier"

    .prologue
    .line 1875
    iput p1, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mBackgroundAlphaMultiplier:F

    .line 1876
    return-void
.end method

.method protected setChildrenDrawingCacheEnabled(Z)V
    .locals 6
    .parameter "enabled"

    .prologue
    const/4 v4, 0x1

    .line 938
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getChildCount()I

    move-result v1

    .line 939
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 940
    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 941
    .local v3, view:Landroid/view/View;
    invoke-virtual {v3, p1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 942
    move v0, p1

    .line 943
    .local v0, cache:Z
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 944
    if-eqz p1, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v5

    if-nez v5, :cond_2

    move v0, v4

    .line 947
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 948
    invoke-virtual {v3, v4}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 939
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 944
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 951
    .end local v0           #cache:Z
    .end local v3           #view:Landroid/view/View;
    :cond_3
    return-void
.end method

.method protected setChildrenDrawnWithCacheEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 956
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 957
    return-void
.end method

.method public setFastBackgroundAlpha(F)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 1871
    iput p1, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mBackgroundAlpha:F

    .line 1872
    return-void
.end method

.method setIsDragOverlapping(Z)V
    .locals 1
    .parameter "isDragOverlapping"

    .prologue
    .line 1856
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mIsDragOverlapping:Z

    if-eq v0, p1, :cond_0

    .line 1857
    iput-boolean p1, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mIsDragOverlapping:Z

    .line 1858
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->invalidate()V

    .line 1860
    :cond_0
    return-void
.end method

.method setItemPlacementDirty(Z)V
    .locals 0
    .parameter "dirty"

    .prologue
    .line 3411
    iput-boolean p1, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mItemPlacementDirty:Z

    .line 3412
    return-void
.end method

.method setOverScrollAmount(FZ)V
    .locals 2
    .parameter "r"
    .parameter "left"

    .prologue
    .line 1838
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mOverScrollLeft:Landroid/graphics/drawable/Drawable;

    if-eq v0, v1, :cond_1

    .line 1839
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mOverScrollLeft:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 1844
    :cond_0
    :goto_0
    const/high16 v0, 0x437f

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mForegroundAlpha:I

    .line 1845
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mForegroundAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1846
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->invalidate()V

    .line 1847
    return-void

    .line 1840
    :cond_1
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mOverScrollRight:Landroid/graphics/drawable/Drawable;

    if-eq v0, v1, :cond_0

    .line 1841
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mOverScrollRight:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method protected setOverscrollTransformsDirty(Z)V
    .locals 0
    .parameter "dirty"

    .prologue
    .line 1819
    iput-boolean p1, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mScrollingTransformsDirty:Z

    .line 1820
    return-void
.end method

.method public setPivotX(F)V
    .locals 1
    .parameter "pivotX"

    .prologue
    .line 2048
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2049
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setPivotX(F)V

    .line 2053
    :cond_0
    return-void
.end method

.method public setPivotY(F)V
    .locals 1
    .parameter "pivotY"

    .prologue
    .line 2064
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2065
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setPivotY(F)V

    .line 2069
    :cond_0
    return-void
.end method

.method public setRotation(F)V
    .locals 1
    .parameter "rotation"

    .prologue
    .line 1904
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1905
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setRotation(F)V

    .line 1909
    :goto_0
    return-void

    .line 1907
    :cond_0
    iput p1, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->rotationForLowApi:F

    goto :goto_0
.end method

.method public setRotationX(F)V
    .locals 1
    .parameter "rotationX"

    .prologue
    .line 1936
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1937
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setRotationX(F)V

    .line 1941
    :goto_0
    return-void

    .line 1939
    :cond_0
    iput p1, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->rotationXForLowApi:F

    goto :goto_0
.end method

.method public setRotationY(F)V
    .locals 1
    .parameter "rotationY"

    .prologue
    .line 1920
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1921
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setRotationY(F)V

    .line 1925
    :goto_0
    return-void

    .line 1923
    :cond_0
    iput p1, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->rotationYForLowApi:F

    goto :goto_0
.end method

.method public setScaleX(F)V
    .locals 1
    .parameter "scaleX"

    .prologue
    .line 2016
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2017
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 2021
    :goto_0
    return-void

    .line 2019
    :cond_0
    iput p1, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->scaleXForLowApi:F

    goto :goto_0
.end method

.method public setScaleY(F)V
    .locals 1
    .parameter "scaleY"

    .prologue
    .line 2032
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2033
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setScaleY(F)V

    .line 2037
    :goto_0
    return-void

    .line 2035
    :cond_0
    iput p1, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->scaleYForLowApi:F

    goto :goto_0
.end method

.method public setTopPadding(I)V
    .locals 1
    .parameter "padding"

    .prologue
    .line 1669
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mPortrait:Z

    if-eqz v0, :cond_0

    .line 1670
    iput p1, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mLongAxisStartPadding:I

    .line 1674
    :goto_0
    return-void

    .line 1672
    :cond_0
    iput p1, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mShortAxisStartPadding:I

    goto :goto_0
.end method

.method public setTranslationX(F)V
    .locals 1
    .parameter "translationX"

    .prologue
    .line 1984
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1985
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 1989
    :goto_0
    return-void

    .line 1987
    :cond_0
    iput p1, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->translationXForLowApi:F

    goto :goto_0
.end method

.method public setTranslationY(F)V
    .locals 1
    .parameter "translationY"

    .prologue
    .line 2000
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2001
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 2005
    :goto_0
    return-void

    .line 2003
    :cond_0
    iput p1, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->translationYForLowApi:F

    goto :goto_0
.end method

.method public setUseTempCoords(Z)V
    .locals 4
    .parameter "useTempCoords"

    .prologue
    .line 3168
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getChildCount()I

    move-result v0

    .line 3169
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3170
    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;

    .line 3171
    .local v2, lp:Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;
    iput-boolean p1, v2, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->useTmpCoords:Z

    .line 3169
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3173
    .end local v2           #lp:Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method public setX(F)V
    .locals 1
    .parameter "x"

    .prologue
    .line 1952
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1953
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setX(F)V

    .line 1957
    :goto_0
    return-void

    .line 1955
    :cond_0
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mLeft:I

    int-to-float v0, v0

    sub-float v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->setTranslationX(F)V

    goto :goto_0
.end method

.method public setY(F)V
    .locals 1
    .parameter "y"

    .prologue
    .line 1968
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1969
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setY(F)V

    .line 1973
    :goto_0
    return-void

    .line 1971
    :cond_0
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mTop:I

    int-to-float v0, v0

    sub-float v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->setTranslationY(F)V

    goto :goto_0
.end method

.method showFolderAccept(II)V
    .locals 2
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 1165
    invoke-virtual {p0, p1, p2}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    .line 1166
    .local v0, view:Landroid/view/View;
    instance-of v1, v0, Lcom/baidu/launcher/ui/common/BubbleTextView;

    if-eqz v1, :cond_1

    .line 1167
    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mFolderHighlightView:Landroid/view/View;

    if-eq v1, v0, :cond_1

    .line 1168
    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mFolderHighlightView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 1169
    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mFolderHighlightView:Landroid/view/View;

    check-cast v1, Lcom/baidu/launcher/ui/common/BubbleTextView;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/common/BubbleTextView;->cancelFolderHighlight()V

    .line 1171
    :cond_0
    iput-object v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mFolderHighlightView:Landroid/view/View;

    .line 1172
    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mFolderHighlightView:Landroid/view/View;

    check-cast v1, Lcom/baidu/launcher/ui/common/BubbleTextView;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/common/BubbleTextView;->drawFolderHighlight()V

    .line 1175
    :cond_1
    return-void
.end method

.method simpleSwap(IIIIII[ILandroid/view/View;ZLcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;)Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;
    .locals 20
    .parameter "pixelX"
    .parameter "pixelY"
    .parameter "minSpanX"
    .parameter "minSpanY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "direction"
    .parameter "dragView"
    .parameter "decX"
    .parameter "solution"

    .prologue
    .line 2781
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p10

    invoke-direct {v0, v1, v2}, Lcom/baidu/launcher/ui/homeview/CellLayout;->copyCurrentStateToSolution(Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;Z)V

    .line 2784
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mTmpOccupied:[[Z

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/baidu/launcher/ui/homeview/CellLayout;->copyOccupiedArray([[Z)V

    .line 2788
    const/4 v2, 0x2

    new-array v7, v2, [I

    .local v7, result:[I
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p5

    move/from16 v6, p6

    .line 2789
    invoke-virtual/range {v2 .. v7}, Lcom/baidu/launcher/ui/homeview/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object v7

    .line 2791
    const/16 v19, 0x0

    .line 2794
    .local v19, success:Z
    const/4 v2, 0x0

    aget v9, v7, v2

    const/4 v2, 0x1

    aget v10, v7, v2

    move-object/from16 v8, p0

    move/from16 v11, p5

    move/from16 v12, p6

    move-object/from16 v13, p7

    move-object/from16 v14, p8

    move-object/from16 v15, p10

    invoke-direct/range {v8 .. v15}, Lcom/baidu/launcher/ui/homeview/CellLayout;->rearrangementExists(IIII[ILandroid/view/View;Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;)Z

    move-result v19

    .line 2797
    if-nez v19, :cond_3

    .line 2800
    move/from16 v0, p5

    move/from16 v1, p3

    if-le v0, v1, :cond_1

    move/from16 v0, p4

    move/from16 v1, p6

    if-eq v0, v1, :cond_0

    if-eqz p9, :cond_1

    .line 2801
    :cond_0
    add-int/lit8 v13, p5, -0x1

    const/16 v17, 0x0

    move-object/from16 v8, p0

    move/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    move/from16 v14, p6

    move-object/from16 v15, p7

    move-object/from16 v16, p8

    move-object/from16 v18, p10

    invoke-virtual/range {v8 .. v18}, Lcom/baidu/launcher/ui/homeview/CellLayout;->simpleSwap(IIIIII[ILandroid/view/View;ZLcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;)Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;

    move-result-object p10

    .line 2815
    .end local p10
    :goto_0
    return-object p10

    .line 2803
    .restart local p10
    :cond_1
    move/from16 v0, p6

    move/from16 v1, p4

    if-le v0, v1, :cond_2

    .line 2804
    add-int/lit8 v14, p6, -0x1

    const/16 v17, 0x1

    move-object/from16 v8, p0

    move/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    move/from16 v13, p5

    move-object/from16 v15, p7

    move-object/from16 v16, p8

    move-object/from16 v18, p10

    invoke-virtual/range {v8 .. v18}, Lcom/baidu/launcher/ui/homeview/CellLayout;->simpleSwap(IIIIII[ILandroid/view/View;ZLcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;)Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;

    move-result-object p10

    goto :goto_0

    .line 2807
    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p10

    iput-boolean v2, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;->isSolution:Z

    goto :goto_0

    .line 2809
    :cond_3
    const/4 v2, 0x1

    move-object/from16 v0, p10

    iput-boolean v2, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;->isSolution:Z

    .line 2810
    const/4 v2, 0x0

    aget v2, v7, v2

    move-object/from16 v0, p10

    iput v2, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;->dragViewX:I

    .line 2811
    const/4 v2, 0x1

    aget v2, v7, v2

    move-object/from16 v0, p10

    iput v2, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;->dragViewY:I

    .line 2812
    move/from16 v0, p5

    move-object/from16 v1, p10

    iput v0, v1, Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;->dragViewSpanX:I

    .line 2813
    move/from16 v0, p6

    move-object/from16 v1, p10

    iput v0, v1, Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;->dragViewSpanY:I

    goto :goto_0
.end method

.method visualizeDropLocation(Landroid/view/View;Landroid/graphics/Bitmap;IIIIIIZLandroid/graphics/Point;Landroid/graphics/Rect;)V
    .locals 14
    .parameter "v"
    .parameter "dragOutline"
    .parameter "originX"
    .parameter "originY"
    .parameter "cellX"
    .parameter "cellY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "resize"
    .parameter "dragOffset"
    .parameter "dragRegion"

    .prologue
    .line 3441
    iget-object v10, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mDragCell:[I

    const/4 v11, 0x0

    aget v4, v10, v11

    .line 3442
    .local v4, oldDragCellX:I
    iget-object v10, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mDragCell:[I

    const/4 v11, 0x1

    aget v5, v10, v11

    .line 3444
    .local v5, oldDragCellY:I
    if-eqz p1, :cond_1

    if-nez p10, :cond_1

    .line 3445
    iget-object v10, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mDragCenter:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    add-int v11, v11, p3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    add-int v12, v12, p4

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Point;->set(II)V

    .line 3450
    :goto_0
    if-nez p2, :cond_2

    if-nez p1, :cond_2

    .line 3505
    :cond_0
    :goto_1
    return-void

    .line 3447
    :cond_1
    iget-object v10, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mDragCenter:Landroid/graphics/Point;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Point;->set(II)V

    goto :goto_0

    .line 3454
    :cond_2
    move/from16 v0, p5

    if-ne v0, v4, :cond_3

    move/from16 v0, p6

    if-eq v0, v5, :cond_0

    .line 3455
    :cond_3
    iget-object v10, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mDragCell:[I

    const/4 v11, 0x0

    aput p5, v10, v11

    .line 3456
    iget-object v10, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mDragCell:[I

    const/4 v11, 0x1

    aput p6, v10, v11

    .line 3458
    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mTmpPoint:[I

    .line 3459
    .local v9, topLeft:[I
    move/from16 v0, p5

    move/from16 v1, p6

    invoke-virtual {p0, v0, v1, v9}, Lcom/baidu/launcher/ui/homeview/CellLayout;->cellToPoint(II[I)V

    .line 3461
    const/4 v10, 0x0

    aget v2, v9, v10

    .line 3462
    .local v2, left:I
    const/4 v10, 0x1

    aget v8, v9, v10

    .line 3464
    .local v8, top:I
    if-eqz p1, :cond_4

    if-nez p10, :cond_4

    .line 3467
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3468
    .local v3, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v10, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v10

    .line 3469
    iget v10, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v8, v10

    .line 3474
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v8, v10

    .line 3476
    iget v10, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mCellWidth:I

    mul-int v10, v10, p7

    add-int/lit8 v11, p7, -0x1

    iget v12, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mWidthGap:I

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v2, v10

    .line 3493
    .end local v3           #lp:Landroid/view/ViewGroup$MarginLayoutParams;
    :goto_2
    iget v6, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mDragOutlineCurrent:I

    .line 3494
    .local v6, oldIndex:I
    iget-object v10, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mDragOutlineAnims:[Lcom/baidu/launcher/ui/animation/InterruptibleInOutAnimator;

    aget-object v10, v10, v6

    invoke-virtual {v10}, Lcom/baidu/launcher/ui/animation/InterruptibleInOutAnimator;->animateOut()V

    .line 3495
    add-int/lit8 v10, v6, 0x1

    iget-object v11, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    array-length v11, v11

    rem-int/2addr v10, v11

    iput v10, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mDragOutlineCurrent:I

    .line 3496
    iget-object v10, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    iget v11, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mDragOutlineCurrent:I

    aget-object v7, v10, v11

    .line 3497
    .local v7, r:Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    add-int/2addr v10, v2

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    add-int/2addr v11, v8

    invoke-virtual {v7, v2, v8, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 3502
    iget-object v10, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mDragOutlineAnims:[Lcom/baidu/launcher/ui/animation/InterruptibleInOutAnimator;

    iget v11, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mDragOutlineCurrent:I

    aget-object v10, v10, v11

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Lcom/baidu/launcher/ui/animation/InterruptibleInOutAnimator;->setTag(Ljava/lang/Object;)V

    .line 3503
    iget-object v10, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mDragOutlineAnims:[Lcom/baidu/launcher/ui/animation/InterruptibleInOutAnimator;

    iget v11, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mDragOutlineCurrent:I

    aget-object v10, v10, v11

    invoke-virtual {v10}, Lcom/baidu/launcher/ui/animation/InterruptibleInOutAnimator;->animateIn()V

    goto/16 :goto_1

    .line 3479
    .end local v6           #oldIndex:I
    .end local v7           #r:Landroid/graphics/Rect;
    :cond_4
    if-eqz p10, :cond_5

    if-eqz p11, :cond_5

    .line 3482
    move-object/from16 v0, p10

    iget v10, v0, Landroid/graphics/Point;->x:I

    iget v11, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mCellWidth:I

    mul-int v11, v11, p7

    add-int/lit8 v12, p7, -0x1

    iget v13, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mWidthGap:I

    mul-int/2addr v12, v13

    add-int/2addr v11, v12

    invoke-virtual/range {p11 .. p11}, Landroid/graphics/Rect;->width()I

    move-result v12

    sub-int/2addr v11, v12

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    add-int/2addr v2, v10

    .line 3484
    move-object/from16 v0, p10

    iget v10, v0, Landroid/graphics/Point;->y:I

    add-int/2addr v8, v10

    goto :goto_2

    .line 3487
    :cond_5
    iget v10, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mCellWidth:I

    mul-int v10, v10, p7

    add-int/lit8 v11, p7, -0x1

    iget v12, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mWidthGap:I

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v2, v10

    .line 3489
    iget v10, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mCellHeight:I

    mul-int v10, v10, p8

    add-int/lit8 v11, p8, -0x1

    iget v12, p0, Lcom/baidu/launcher/ui/homeview/CellLayout;->mHeightGap:I

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v8, v10

    goto :goto_2
.end method
