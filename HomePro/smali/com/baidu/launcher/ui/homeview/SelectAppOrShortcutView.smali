.class public Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;
.super Lcom/baidu/launcher/ui/common/BaiduViewPagger;
.source "SelectAppOrShortcutView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView$1;,
        Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView$AppDataLoader;,
        Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView$ZInterpolator;
    }
.end annotation


# static fields
.field private static CAMERA_DISTANCE:F = 0.0f

.field private static final PERFORM_OVERSCROLL_ROTATION:Z = true

.field public static SELECT_APP:I

.field public static SELECT_SHORTCUT:I

.field private static TRANSITION_MAX_OVERSCROLL:F

.field private static TRANSITION_MAX_ROTATION:F

.field private static TRANSITION_PIVOT:F

.field private static TRANSITION_SCALE_FACTOR:F


# instance fields
.field private mAlphaInterpolator:Landroid/view/animation/AccelerateInterpolator;

.field private mApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/data/item/BaseItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContentWidth:I

.field private mIndicator:Lcom/baidu/launcher/ui/homeview/Indicator;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLeftScreenAlphaInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private mMaxAppCellCountX:I

.field private mMaxAppCellCountY:I

.field private mNumAppsPages:I

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mShortcuts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mType:I

.field private mWidgetSpacingLayout:Lcom/baidu/launcher/ui/common/PagedViewCellLayout;

.field mZInterpolator:Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView$ZInterpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    sput v0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->SELECT_APP:I

    .line 61
    const/4 v0, 0x1

    sput v0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->SELECT_SHORTCUT:I

    .line 74
    const v0, 0x45cb2000

    sput v0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->CAMERA_DISTANCE:F

    .line 75
    const v0, 0x3ef5c28f

    sput v0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->TRANSITION_SCALE_FACTOR:F

    .line 76
    const v0, 0x3f266666

    sput v0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->TRANSITION_PIVOT:F

    .line 77
    const/high16 v0, 0x41b0

    sput v0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->TRANSITION_MAX_ROTATION:F

    .line 78
    const v0, 0x3ec28f5c

    sput v0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->TRANSITION_MAX_OVERSCROLL:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 107
    invoke-direct {p0, p1, p2}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    sget v1, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->SELECT_APP:I

    iput v1, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mType:I

    .line 73
    new-instance v1, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView$ZInterpolator;

    const/high16 v2, 0x3f00

    invoke-direct {v1, v2}, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView$ZInterpolator;-><init>(F)V

    iput-object v1, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mZInterpolator:Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView$ZInterpolator;

    .line 80
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    const v2, 0x3f666666

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v1, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mAlphaInterpolator:Landroid/view/animation/AccelerateInterpolator;

    .line 81
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x4080

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v1, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mLeftScreenAlphaInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 108
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 109
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mApps:Ljava/util/ArrayList;

    .line 110
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mShortcuts:Ljava/util/ArrayList;

    .line 112
    sget-object v1, Lcom/baidu/home2/R$styleable;->AppsCustomizePagedView:[I

    invoke-virtual {p1, p2, v1, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 113
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mMaxAppCellCountX:I

    .line 114
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mMaxAppCellCountY:I

    .line 115
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 116
    new-instance v1, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mWidgetSpacingLayout:Lcom/baidu/launcher/ui/common/PagedViewCellLayout;

    .line 118
    iput-boolean v3, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mFadeInAdjacentScreens:Z

    .line 119
    return-void
.end method

.method private screenScrolledWithICE(I)V
    .locals 14
    .parameter "screenCenter"

    .prologue
    const/high16 v13, 0x4000

    const/high16 v9, 0x3f80

    const/4 v12, 0x0

    .line 421
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->getChildCount()I

    move-result v10

    if-ge v1, v10, :cond_6

    .line 422
    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->getPageAt(I)Landroid/view/View;

    move-result-object v8

    .line 423
    .local v8, v:Landroid/view/View;
    if-eqz v8, :cond_0

    .line 424
    invoke-virtual {p0, p1, v8, v1}, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->getScrollProgress(ILandroid/view/View;I)F

    move-result v6

    .line 426
    .local v6, scrollProgress:F
    iget-object v10, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mZInterpolator:Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView$ZInterpolator;

    invoke-static {v6, v12}, Ljava/lang/Math;->min(FF)F

    move-result v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    invoke-virtual {v10, v11}, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView$ZInterpolator;->getInterpolation(F)F

    move-result v2

    .line 428
    .local v2, interpolatedProgress:F
    sub-float v10, v9, v2

    sget v11, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->TRANSITION_SCALE_FACTOR:F

    mul-float/2addr v11, v2

    add-float v5, v10, v11

    .line 430
    .local v5, scale:F
    invoke-static {v12, v6}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    int-to-float v11, v11

    mul-float v7, v10, v11

    .line 434
    .local v7, translationX:F
    cmpg-float v10, v6, v12

    if-gez v10, :cond_2

    .line 435
    cmpg-float v10, v6, v12

    if-gez v10, :cond_1

    iget-object v10, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mAlphaInterpolator:Landroid/view/animation/AccelerateInterpolator;

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v11

    sub-float v11, v9, v11

    invoke-virtual {v10, v11}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v0

    .line 442
    .local v0, alpha:F
    :goto_1
    iget v10, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mDensity:F

    sget v11, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->CAMERA_DISTANCE:F

    mul-float/2addr v10, v11

    invoke-virtual {v8, v10}, Landroid/view/View;->setCameraDistance(F)V

    .line 443
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 444
    .local v4, pageWidth:I
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 446
    .local v3, pageHeight:I
    if-nez v1, :cond_3

    cmpg-float v10, v6, v12

    if-gez v10, :cond_3

    .line 448
    sget v10, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->TRANSITION_PIVOT:F

    int-to-float v11, v4

    mul-float/2addr v10, v11

    invoke-virtual {v8, v10}, Landroid/view/View;->setPivotX(F)V

    .line 449
    sget v10, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->TRANSITION_MAX_ROTATION:F

    neg-float v10, v10

    mul-float/2addr v10, v6

    invoke-virtual {v8, v10}, Landroid/view/View;->setRotationY(F)V

    .line 450
    const/high16 v5, 0x3f80

    .line 451
    const/high16 v0, 0x3f80

    .line 453
    const/4 v7, 0x0

    .line 471
    :goto_2
    invoke-virtual {v8, v7}, Landroid/view/View;->setTranslationX(F)V

    .line 472
    invoke-virtual {v8, v5}, Landroid/view/View;->setScaleX(F)V

    .line 473
    invoke-virtual {v8, v5}, Landroid/view/View;->setScaleY(F)V

    .line 474
    invoke-virtual {v8, v0}, Landroid/view/View;->setAlpha(F)V

    .line 477
    const v10, 0x3c23d70a

    cmpg-float v10, v0, v10

    if-gez v10, :cond_5

    .line 478
    const/4 v10, 0x4

    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    .line 421
    .end local v0           #alpha:F
    .end local v2           #interpolatedProgress:F
    .end local v3           #pageHeight:I
    .end local v4           #pageWidth:I
    .end local v5           #scale:F
    .end local v6           #scrollProgress:F
    .end local v7           #translationX:F
    :cond_0
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .restart local v2       #interpolatedProgress:F
    .restart local v5       #scale:F
    .restart local v6       #scrollProgress:F
    .restart local v7       #translationX:F
    :cond_1
    move v0, v9

    .line 435
    goto :goto_1

    .line 439
    :cond_2
    iget-object v10, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mLeftScreenAlphaInterpolator:Landroid/view/animation/DecelerateInterpolator;

    sub-float v11, v9, v6

    invoke-virtual {v10, v11}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v0

    .restart local v0       #alpha:F
    goto :goto_1

    .line 455
    .restart local v3       #pageHeight:I
    .restart local v4       #pageWidth:I
    :cond_3
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->getChildCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ne v1, v10, :cond_4

    cmpl-float v10, v6, v12

    if-lez v10, :cond_4

    .line 457
    sget v10, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->TRANSITION_PIVOT:F

    sub-float v10, v9, v10

    int-to-float v11, v4

    mul-float/2addr v10, v11

    invoke-virtual {v8, v10}, Landroid/view/View;->setPivotX(F)V

    .line 458
    sget v10, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->TRANSITION_MAX_ROTATION:F

    neg-float v10, v10

    mul-float/2addr v10, v6

    invoke-virtual {v8, v10}, Landroid/view/View;->setRotationY(F)V

    .line 459
    const/high16 v5, 0x3f80

    .line 460
    const/high16 v0, 0x3f80

    .line 462
    const/4 v7, 0x0

    goto :goto_2

    .line 465
    :cond_4
    int-to-float v10, v3

    div-float/2addr v10, v13

    invoke-virtual {v8, v10}, Landroid/view/View;->setPivotY(F)V

    .line 466
    int-to-float v10, v4

    div-float/2addr v10, v13

    invoke-virtual {v8, v10}, Landroid/view/View;->setPivotX(F)V

    .line 467
    invoke-virtual {v8, v12}, Landroid/view/View;->setRotationY(F)V

    goto :goto_2

    .line 479
    :cond_5
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-eqz v10, :cond_0

    .line 480
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 484
    .end local v0           #alpha:F
    .end local v2           #interpolatedProgress:F
    .end local v3           #pageHeight:I
    .end local v4           #pageWidth:I
    .end local v5           #scale:F
    .end local v6           #scrollProgress:F
    .end local v7           #translationX:F
    .end local v8           #v:Landroid/view/View;
    :cond_6
    return-void
.end method

.method private setVisibilityOnChildren(Landroid/view/ViewGroup;I)V
    .locals 3
    .parameter "layout"
    .parameter "visibility"

    .prologue
    .line 260
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 261
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 262
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/view/View;->setVisibility(I)V

    .line 261
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 264
    :cond_0
    return-void
.end method

.method private setupPage(Lcom/baidu/launcher/ui/common/PagedViewCellLayout;)V
    .locals 7
    .parameter "layout"

    .prologue
    const/high16 v6, -0x8000

    .line 267
    iget v2, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mCellCountX:I

    iget v3, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mCellCountY:I

    invoke-virtual {p1, v2, v3}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->setCellCount(II)V

    .line 268
    iget v2, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mPageLayoutWidthGap:I

    iget v3, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mPageLayoutHeightGap:I

    invoke-virtual {p1, v2, v3}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->setGap(II)V

    .line 269
    iget v2, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mPageLayoutPaddingLeft:I

    iget v3, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mPageLayoutPaddingTop:I

    iget v4, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mPageLayoutPaddingRight:I

    iget v5, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mPageLayoutPaddingBottom:I

    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->setPadding(IIII)V

    .line 276
    const/16 v2, 0x8

    invoke-direct {p0, p1, v2}, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->setVisibilityOnChildren(Landroid/view/ViewGroup;I)V

    .line 277
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->getMeasuredWidth()I

    move-result v2

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 278
    .local v1, widthSpec:I
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->getMeasuredHeight()I

    move-result v2

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 279
    .local v0, heightSpec:I
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->getPageContentWidth()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->setMinimumWidth(I)V

    .line 280
    invoke-virtual {p1, v1, v0}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->measure(II)V

    .line 281
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->setVisibilityOnChildren(Landroid/view/ViewGroup;I)V

    .line 282
    return-void
.end method

.method private syncAppsPageItems(IZ)V
    .locals 14
    .parameter "page"
    .parameter "immediate"

    .prologue
    .line 286
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mCellCountX:I

    iget v3, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mCellCountY:I

    mul-int v11, v0, v3

    .line 287
    .local v11, numCells:I
    mul-int v12, p1, v11

    .line 288
    .local v12, startIndex:I
    add-int v0, v12, v11

    iget-object v3, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 290
    .local v6, endIndex:I
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->getPageAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;

    .line 292
    .local v10, layout:Lcom/baidu/launcher/ui/common/PagedViewCellLayout;
    invoke-virtual {v10}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->removeAllViewsOnPage()V

    .line 293
    move v7, v12

    .local v7, i:I
    :goto_0
    if-ge v7, v6, :cond_1

    .line 294
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/baidu/launcher/data/item/BaseItemInfo;

    .line 295
    .local v9, item:Lcom/baidu/launcher/data/item/BaseItemInfo;
    iget-object v0, v9, Lcom/baidu/launcher/data/item/BaseItemInfo;->iconBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 293
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03008b

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v10, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/baidu/launcher/ui/common/ActionTextView;

    .line 297
    .local v8, icon:Lcom/baidu/launcher/ui/common/ActionTextView;
    const/4 v0, 0x0

    iput-boolean v0, v8, Lcom/baidu/launcher/ui/common/ActionTextView;->shouldDrawBlur:Z

    .line 298
    const/4 v0, 0x0

    new-instance v3, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;

    iget-object v4, v9, Lcom/baidu/launcher/data/item/BaseItemInfo;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4}, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    const/4 v13, 0x0

    invoke-virtual {v8, v0, v3, v4, v13}, Lcom/baidu/launcher/ui/common/ActionTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 299
    const/4 v0, 0x6

    invoke-virtual {v8, v0}, Lcom/baidu/launcher/ui/common/ActionTextView;->setCompoundDrawablePadding(I)V

    .line 300
    iget-object v0, v9, Lcom/baidu/launcher/data/item/BaseItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v8, v0}, Lcom/baidu/launcher/ui/common/ActionTextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    invoke-virtual {v8, v9}, Lcom/baidu/launcher/ui/common/ActionTextView;->setTag(Ljava/lang/Object;)V

    .line 302
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v0}, Lcom/baidu/launcher/ui/common/ActionTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    sub-int v5, v7, v12

    .line 304
    .local v5, index:I
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mCellCountX:I

    rem-int v1, v5, v0

    .line 305
    .local v1, x:I
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mCellCountX:I

    div-int v2, v5, v0

    .line 306
    .local v2, y:I
    const/4 v13, -0x1

    new-instance v0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;-><init>(IIIII)V

    invoke-virtual {v10, v8, v13, v7, v0}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;)Z

    goto :goto_1

    .line 310
    .end local v1           #x:I
    .end local v2           #y:I
    .end local v5           #index:I
    .end local v8           #icon:Lcom/baidu/launcher/ui/common/ActionTextView;
    .end local v9           #item:Lcom/baidu/launcher/data/item/BaseItemInfo;
    :cond_1
    invoke-virtual {v10}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->createHardwareLayers()V

    .line 311
    return-void
.end method

.method private syncShortcutsPageItems(IZ)V
    .locals 15
    .parameter "page"
    .parameter "immediate"

    .prologue
    .line 315
    iget v11, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mCellCountX:I

    iget v12, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mCellCountY:I

    mul-int v7, v11, v12

    .line 316
    .local v7, numCells:I
    mul-int v8, p1, v7

    .line 317
    .local v8, startIndex:I
    add-int v11, v8, v7

    iget-object v12, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mShortcuts:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 318
    .local v0, endIndex:I
    invoke-virtual/range {p0 .. p1}, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->getPageAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;

    .line 320
    .local v6, layout:Lcom/baidu/launcher/ui/common/PagedViewCellLayout;
    invoke-virtual {v6}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->removeAllViewsOnPage()V

    .line 321
    move v1, v8

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 322
    iget-object v11, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mShortcuts:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 323
    .local v5, info:Landroid/content/pm/ResolveInfo;
    iget-object v11, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v12, "com.baidu.BaiduMap"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 321
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 324
    :cond_0
    iget-object v11, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v12, 0x7f03008b

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v6, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/ui/common/ActionTextView;

    .line 325
    .local v3, icon:Lcom/baidu/launcher/ui/common/ActionTextView;
    const/4 v11, 0x0

    iput-boolean v11, v3, Lcom/baidu/launcher/ui/common/ActionTextView;->shouldDrawBlur:Z

    .line 326
    iget-object v11, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    iget-object v12, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Lcom/baidu/launcher/utils/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 327
    .local v2, ic:Landroid/graphics/Bitmap;
    const/4 v11, 0x0

    new-instance v12, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;

    invoke-direct {v12, v2}, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v3, v11, v12, v13, v14}, Lcom/baidu/launcher/ui/common/ActionTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 328
    const/4 v11, 0x6

    invoke-virtual {v3, v11}, Lcom/baidu/launcher/ui/common/ActionTextView;->setCompoundDrawablePadding(I)V

    .line 329
    iget-object v11, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v3, v11}, Lcom/baidu/launcher/ui/common/ActionTextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    invoke-virtual {v3, v5}, Lcom/baidu/launcher/ui/common/ActionTextView;->setTag(Ljava/lang/Object;)V

    .line 331
    iget-object v11, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v11}, Lcom/baidu/launcher/ui/common/ActionTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 332
    sub-int v4, v1, v8

    .line 333
    .local v4, index:I
    iget v11, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mCellCountX:I

    rem-int v9, v4, v11

    .line 334
    .local v9, x:I
    iget v11, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mCellCountX:I

    div-int v10, v4, v11

    .line 335
    .local v10, y:I
    const/4 v11, -0x1

    new-instance v12, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-direct {v12, v9, v10, v13, v14}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v6, v3, v11, v1, v12}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;)Z

    goto :goto_1

    .line 338
    .end local v2           #ic:Landroid/graphics/Bitmap;
    .end local v3           #icon:Lcom/baidu/launcher/ui/common/ActionTextView;
    .end local v4           #index:I
    .end local v5           #info:Landroid/content/pm/ResolveInfo;
    .end local v9           #x:I
    .end local v10           #y:I
    :cond_1
    invoke-virtual {v6}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->createHardwareLayers()V

    .line 339
    return-void
.end method

.method private testDataReady()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 147
    iget v2, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mType:I

    sget v3, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->SELECT_APP:I

    if-ne v2, v3, :cond_2

    .line 148
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 150
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 148
    goto :goto_0

    .line 150
    :cond_2
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mShortcuts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private updatePageCounts()V
    .locals 3

    .prologue
    .line 156
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mCellCountX:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mCellCountY:I

    if-eqz v0, :cond_1

    .line 157
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mType:I

    sget v1, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->SELECT_APP:I

    if-ne v0, v1, :cond_0

    .line 158
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mCellCountX:I

    iget v2, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mCellCountY:I

    mul-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mNumAppsPages:I

    .line 166
    :goto_0
    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mShortcuts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mCellCountX:I

    iget v2, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mCellCountY:I

    mul-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mNumAppsPages:I

    goto :goto_0

    .line 163
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mNumAppsPages:I

    goto :goto_0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    const/4 v10, -0x1

    .line 220
    invoke-super {p0, p1}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 222
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->getChildCount()I

    move-result v4

    .line 223
    .local v4, pageCount:I
    if-lez v4, :cond_1

    .line 224
    iget-object v8, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v8}, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->getVisiblePages([I)V

    .line 225
    iget-object v8, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mTempVisiblePagesRange:[I

    const/4 v9, 0x0

    aget v3, v8, v9

    .line 226
    .local v3, leftScreen:I
    iget-object v8, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mTempVisiblePagesRange:[I

    const/4 v9, 0x1

    aget v5, v8, v9

    .line 227
    .local v5, rightScreen:I
    if-eq v3, v10, :cond_1

    if-eq v5, v10, :cond_1

    .line 228
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->getDrawingTime()J

    move-result-wide v0

    .line 229
    .local v0, drawingTime:J
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 231
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 232
    iget v8, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mScrollX:I

    iget v9, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mScrollY:I

    iget v10, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mScrollX:I

    iget v11, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mRight:I

    add-int/2addr v10, v11

    iget v11, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mLeft:I

    sub-int/2addr v10, v11

    iget v11, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mScrollY:I

    iget v12, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mBottom:I

    add-int/2addr v11, v12

    iget v12, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mTop:I

    sub-int/2addr v11, v12

    invoke-virtual {p1, v8, v9, v10, v11}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 235
    move v2, v5

    .local v2, i:I
    :goto_0
    if-lt v2, v3, :cond_0

    .line 236
    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->getPageAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0, p1, v8, v0, v1}, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 235
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 238
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 254
    .end local v0           #drawingTime:J
    .end local v2           #i:I
    .end local v3           #leftScreen:I
    .end local v5           #rightScreen:I
    :cond_1
    return-void

    .line 240
    .restart local v0       #drawingTime:J
    .restart local v3       #leftScreen:I
    .restart local v5       #rightScreen:I
    :cond_2
    move v2, v3

    .restart local v2       #i:I
    :goto_1
    if-gt v2, v5, :cond_1

    .line 241
    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->getPageAt(I)Landroid/view/View;

    move-result-object v7

    .line 242
    .local v7, v:Landroid/view/View;
    const/4 v6, 0x0

    .line 243
    .local v6, translationX:F
    instance-of v8, v7, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;

    if-eqz v8, :cond_3

    move-object v8, v7

    .line 244
    check-cast v8, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;

    iget v6, v8, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->translationXForLowApi:F

    .line 246
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 247
    const/4 v8, 0x0

    invoke-virtual {p1, v6, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 248
    invoke-virtual {p0, p1, v7, v0, v1}, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 249
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 240
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method protected getAllItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/data/item/BaseItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 504
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mApps:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPageAt(I)Landroid/view/View;
    .locals 1
    .parameter "index"

    .prologue
    .line 374
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->getChildCount()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getPageContentWidth()I
    .locals 1

    .prologue
    .line 491
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mContentWidth:I

    return v0
.end method

.method public indexToPage(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 379
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->getChildCount()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method protected init()V
    .locals 1

    .prologue
    .line 123
    invoke-super {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->init()V

    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mCenterPagesVertically:Z

    .line 125
    return-void
.end method

.method protected onDataReady(II)V
    .locals 12
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v5, -0x1

    const/high16 v9, -0x8000

    .line 170
    const v1, 0x7fffffff

    .line 171
    .local v1, maxCellCountX:I
    const v2, 0x7fffffff

    .line 172
    .local v2, maxCellCountY:I
    iget v4, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mMaxAppCellCountX:I

    if-le v4, v5, :cond_0

    .line 173
    iget v4, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mMaxAppCellCountX:I

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 175
    :cond_0
    iget v4, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mMaxAppCellCountY:I

    if-le v4, v5, :cond_1

    .line 176
    iget v4, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mMaxAppCellCountY:I

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 181
    :cond_1
    iget-object v4, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mWidgetSpacingLayout:Lcom/baidu/launcher/ui/common/PagedViewCellLayout;

    iget v5, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mPageLayoutWidthGap:I

    iget v6, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mPageLayoutHeightGap:I

    invoke-virtual {v4, v5, v6}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->setGap(II)V

    .line 182
    iget-object v4, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mWidgetSpacingLayout:Lcom/baidu/launcher/ui/common/PagedViewCellLayout;

    iget v5, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mPageLayoutPaddingLeft:I

    iget v6, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mPageLayoutPaddingTop:I

    iget v7, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mPageLayoutPaddingRight:I

    iget v8, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mPageLayoutPaddingBottom:I

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->setPadding(IIII)V

    .line 184
    iget-object v4, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mWidgetSpacingLayout:Lcom/baidu/launcher/ui/common/PagedViewCellLayout;

    invoke-virtual {v4, p1, p2, v1, v2}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->calculateCellCount(IIII)V

    .line 185
    iget-object v4, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mWidgetSpacingLayout:Lcom/baidu/launcher/ui/common/PagedViewCellLayout;

    invoke-virtual {v4}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->getCellCountX()I

    move-result v4

    iput v4, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mCellCountX:I

    .line 186
    iget-object v4, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mWidgetSpacingLayout:Lcom/baidu/launcher/ui/common/PagedViewCellLayout;

    invoke-virtual {v4}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->getCellCountY()I

    move-result v4

    iput v4, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mCellCountY:I

    .line 187
    iget v4, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mCellCountY:I

    if-ge v4, v11, :cond_2

    .line 188
    iput v11, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mCellCountY:I

    .line 190
    :cond_2
    invoke-direct {p0}, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->updatePageCounts()V

    .line 193
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->getMeasuredWidth()I

    move-result v4

    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 194
    .local v3, widthSpec:I
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->getMeasuredHeight()I

    move-result v4

    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 195
    .local v0, heightSpec:I
    iget-object v4, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mWidgetSpacingLayout:Lcom/baidu/launcher/ui/common/PagedViewCellLayout;

    invoke-virtual {v4, v3, v0}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->measure(II)V

    .line 196
    iget-object v4, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mWidgetSpacingLayout:Lcom/baidu/launcher/ui/common/PagedViewCellLayout;

    invoke-virtual {v4}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->getContentWidth()I

    move-result v4

    iput v4, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mContentWidth:I

    .line 198
    invoke-virtual {p0, v10, v10}, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->invalidatePageData(IZ)V

    .line 200
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 205
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 206
    .local v1, width:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 207
    .local v0, height:I
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->isDataReady()Z

    move-result v2

    if-nez v2, :cond_0

    .line 208
    invoke-direct {p0}, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->testDataReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 209
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->setDataIsReady()V

    .line 210
    invoke-virtual {p0, v1, v0}, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->setMeasuredDimension(II)V

    .line 211
    invoke-virtual {p0, v1, v0}, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->onDataReady(II)V

    .line 215
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->onMeasure(II)V

    .line 216
    return-void
.end method

.method public onPageBeginMoving()V
    .locals 0

    .prologue
    .line 495
    invoke-super {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->onPageBeginMoving()V

    .line 496
    return-void
.end method

.method public onPageEndMoving()V
    .locals 0

    .prologue
    .line 500
    invoke-super {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->onPageEndMoving()V

    .line 501
    return-void
.end method

.method protected onUnhandledTap(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "aEvent"

    .prologue
    .line 139
    return-void
.end method

.method protected overScroll(F)V
    .locals 0
    .parameter "amount"

    .prologue
    .line 487
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->acceleratedOverScroll(F)V

    .line 488
    return-void
.end method

.method public pageBeginMoving()V
    .locals 0

    .prologue
    .line 386
    invoke-super {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->pageBeginMoving()V

    .line 387
    return-void
.end method

.method public pageEndMoving()V
    .locals 2

    .prologue
    .line 391
    invoke-super {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->pageEndMoving()V

    .line 392
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mIndicator:Lcom/baidu/launcher/ui/homeview/Indicator;

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/homeview/Indicator;->setCurrentScreen(I)V

    .line 393
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 565
    return-void
.end method

.method public screenScrolled(I)V
    .locals 8
    .parameter "screenCenter"

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x0

    .line 398
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 399
    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->screenScrolledWithICE(I)V

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 401
    :cond_1
    iget v5, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mOverScrollX:I

    if-ltz v5, :cond_2

    iget v5, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mOverScrollX:I

    iget v6, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mMaxScrollX:I

    if-le v5, v6, :cond_4

    .line 402
    :cond_2
    iget v5, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mOverScrollX:I

    if-gez v5, :cond_3

    .line 403
    .local v0, index:I
    :goto_1
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;

    .line 404
    .local v2, pcl:Lcom/baidu/launcher/ui/common/PagedViewCellLayout;
    if-eqz v2, :cond_0

    .line 405
    invoke-virtual {p0, p1, v2, v0}, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->getScrollProgress(ILandroid/view/View;I)F

    move-result v4

    .line 406
    .local v4, scrollProgress:F
    neg-float v5, v4

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    sget v6, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->TRANSITION_MAX_OVERSCROLL:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    int-to-float v5, v5

    iput v5, v2, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->translationXForLowApi:F

    goto :goto_0

    .line 402
    .end local v0           #index:I
    .end local v2           #pcl:Lcom/baidu/launcher/ui/common/PagedViewCellLayout;
    .end local v4           #scrollProgress:F
    :cond_3
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->getChildCount()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    goto :goto_1

    .line 408
    :cond_4
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;

    .line 409
    .local v1, left:Lcom/baidu/launcher/ui/common/PagedViewCellLayout;
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v5}, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;

    .line 410
    .local v3, right:Lcom/baidu/launcher/ui/common/PagedViewCellLayout;
    if-eqz v1, :cond_5

    .line 411
    iput v7, v1, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->translationXForLowApi:F

    .line 413
    :cond_5
    if-eqz v3, :cond_0

    .line 414
    iput v7, v3, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->translationXForLowApi:F

    goto :goto_0
.end method

.method public setCurrentPage(I)V
    .locals 2
    .parameter "currentPage"

    .prologue
    .line 342
    invoke-super {p0, p1}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->setCurrentPage(I)V

    .line 343
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mIndicator:Lcom/baidu/launcher/ui/homeview/Indicator;

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/homeview/Indicator;->setCurrentScreen(I)V

    .line 344
    return-void
.end method

.method public setIndicator(Lcom/baidu/launcher/ui/homeview/Indicator;)V
    .locals 0
    .parameter "aIndicator"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mIndicator:Lcom/baidu/launcher/ui/homeview/Indicator;

    .line 129
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "aListener"

    .prologue
    .line 133
    iput-object p1, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 134
    return-void
.end method

.method public syncPageItems(IZ)V
    .locals 2
    .parameter "page"
    .parameter "immediate"

    .prologue
    .line 362
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mNumAppsPages:I

    if-ge p1, v0, :cond_0

    .line 363
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mType:I

    sget v1, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->SELECT_APP:I

    if-ne v0, v1, :cond_1

    .line 364
    invoke-direct {p0, p1, p2}, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->syncAppsPageItems(IZ)V

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 366
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->syncShortcutsPageItems(IZ)V

    goto :goto_0
.end method

.method public syncPages()V
    .locals 4

    .prologue
    .line 349
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->removeAllViews()V

    .line 350
    iget-object v3, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mIndicator:Lcom/baidu/launcher/ui/homeview/Indicator;

    invoke-virtual {v3}, Lcom/baidu/launcher/ui/homeview/Indicator;->removeAllViews()V

    .line 351
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 352
    .local v0, context:Landroid/content/Context;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v3, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mNumAppsPages:I

    if-ge v1, v3, :cond_0

    .line 353
    new-instance v2, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;

    invoke-direct {v2, v0}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;-><init>(Landroid/content/Context;)V

    .line 354
    .local v2, layout:Lcom/baidu/launcher/ui/common/PagedViewCellLayout;
    invoke-direct {p0, v2}, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->setupPage(Lcom/baidu/launcher/ui/common/PagedViewCellLayout;)V

    .line 355
    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->addView(Landroid/view/View;)V

    .line 356
    iget-object v3, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mIndicator:Lcom/baidu/launcher/ui/homeview/Indicator;

    invoke-virtual {v3}, Lcom/baidu/launcher/ui/homeview/Indicator;->addScreen()V

    .line 352
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 358
    .end local v2           #layout:Lcom/baidu/launcher/ui/common/PagedViewCellLayout;
    :cond_0
    return-void
.end method

.method public updateApps(IZ)V
    .locals 9
    .parameter "aType"
    .parameter "refresh"

    .prologue
    const/4 v8, 0x0

    .line 512
    iput p1, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mType:I

    .line 513
    iget v6, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mType:I

    sget v7, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->SELECT_APP:I

    if-ne v6, v7, :cond_3

    .line 514
    iget-object v6, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 515
    iget-object v6, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/baidu/launcher/data/AppsDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/AppsDataManager;

    move-result-object v4

    .line 516
    .local v4, manager:Lcom/baidu/launcher/data/AppsDataManager;
    invoke-virtual {v4}, Lcom/baidu/launcher/data/AppsDataManager;->isAppLoaded()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 517
    invoke-virtual {v4}, Lcom/baidu/launcher/data/AppsDataManager;->getAllApps()Ljava/util/ArrayList;

    move-result-object v1

    .line 518
    .local v1, appList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListAppInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/data/item/ListAppInfo;

    .line 519
    .local v0, app:Lcom/baidu/launcher/data/item/ListAppInfo;
    iget-object v6, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 522
    .end local v0           #app:Lcom/baidu/launcher/data/item/ListAppInfo;
    .end local v1           #appList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListAppInfo;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 523
    .local v2, container:Landroid/view/ViewGroup;
    iget-object v6, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f030078

    invoke-virtual {v6, v7, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 524
    new-instance v6, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView$AppDataLoader;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView$AppDataLoader;-><init>(Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView$1;)V

    new-array v7, v8, [Ljava/lang/Void;

    invoke-virtual {v6, v7}, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView$AppDataLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 532
    .end local v2           #container:Landroid/view/ViewGroup;
    .end local v4           #manager:Lcom/baidu/launcher/data/AppsDataManager;
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->isDataReady()Z

    move-result v6

    if-nez v6, :cond_4

    .line 533
    invoke-direct {p0}, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->updatePageCounts()V

    .line 534
    invoke-direct {p0}, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->testDataReady()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->requestLayout()V

    .line 543
    :cond_2
    :goto_2
    return-void

    .line 527
    :cond_3
    iget-object v6, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mShortcuts:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 528
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 529
    .local v5, shortcutsIntent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v5, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    iput-object v6, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mShortcuts:Ljava/util/ArrayList;

    goto :goto_1

    .line 536
    .end local v5           #shortcutsIntent:Landroid/content/Intent;
    :cond_4
    invoke-direct {p0}, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->updatePageCounts()V

    .line 537
    if-eqz p2, :cond_5

    .line 538
    invoke-virtual {p0, v8}, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->invalidatePageData(I)V

    goto :goto_2

    .line 540
    :cond_5
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->syncPages()V

    goto :goto_2
.end method

.method public updateShortcuts(Ljava/util/ArrayList;Z)V
    .locals 1
    .parameter
    .parameter "refresh"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 508
    .local p1, initItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->mShortcuts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 509
    return-void
.end method
