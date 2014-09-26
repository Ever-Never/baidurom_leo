.class public Lcom/baidu/launcher/ui/editview/EditAppsListView;
.super Lcom/baidu/launcher/ui/common/DraggableViewPagger;
.source "EditAppsListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/ui/editview/EditAppsListView$PageChangeListener;,
        Lcom/baidu/launcher/ui/editview/EditAppsListView$LoadDataTask;,
        Lcom/baidu/launcher/ui/editview/EditAppsListView$ZInterpolator;
    }
.end annotation


# static fields
.field private static CAMERA_DISTANCE:F = 0.0f

.field private static final PERFORM_OVERSCROLL_ROTATION:Z = true

.field private static TRANSITION_MAX_OVERSCROLL:F

.field private static TRANSITION_MAX_ROTATION:F

.field private static TRANSITION_PIVOT:F

.field private static TRANSITION_SCALE_FACTOR:F


# instance fields
.field private calendarViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/ui/common/ActionTextView;",
            ">;"
        }
    .end annotation
.end field

.field private eventViewList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/launcher/ui/common/ActionTextView;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lcom/baidu/launcher/ui/editview/EditAppsListView$PageChangeListener;

.field private mAlphaInterpolator:Landroid/view/animation/AccelerateInterpolator;

.field private mApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/data/item/ListAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContentWidth:I

.field private mDragItemIndex:I

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLeftScreenAlphaInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private mMaxAppCellCountX:I

.field private mMaxAppCellCountY:I

.field private mNumAppsPages:I

.field private mNumFoldersPages:I

.field private mNumShortcutsPages:I

.field private mNumWidgetPages:I

.field private mPageType:I

.field private mSaveInstanceStateItemIndex:I

.field public mShortcuts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mShowAnim:Landroid/animation/ObjectAnimator;

.field private mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

.field private mWidgetCountX:I

.field private mWidgetCountY:I

.field private mWidgetHeightGap:I

.field private mWidgetSpacingLayout:Lcom/baidu/launcher/ui/common/PagedViewCellLayout;

.field private mWidgetWidthGap:I

.field public mWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mZInterpolator:Lcom/baidu/launcher/ui/editview/EditAppsListView$ZInterpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 105
    const v0, 0x45cb2000

    sput v0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->CAMERA_DISTANCE:F

    .line 106
    const v0, 0x3ef5c28f

    sput v0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->TRANSITION_SCALE_FACTOR:F

    .line 107
    const v0, 0x3f266666

    sput v0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->TRANSITION_PIVOT:F

    .line 108
    const/high16 v0, 0x41b0

    sput v0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->TRANSITION_MAX_ROTATION:F

    .line 109
    const v0, 0x3ec28f5c

    sput v0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->TRANSITION_MAX_OVERSCROLL:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 136
    invoke-direct {p0, p1, p2}, Lcom/baidu/launcher/ui/common/DraggableViewPagger;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 92
    iput v4, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mSaveInstanceStateItemIndex:I

    .line 96
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->listener:Lcom/baidu/launcher/ui/editview/EditAppsListView$PageChangeListener;

    .line 104
    new-instance v1, Lcom/baidu/launcher/ui/editview/EditAppsListView$ZInterpolator;

    const/high16 v2, 0x3f00

    invoke-direct {v1, v2}, Lcom/baidu/launcher/ui/editview/EditAppsListView$ZInterpolator;-><init>(F)V

    iput-object v1, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mZInterpolator:Lcom/baidu/launcher/ui/editview/EditAppsListView$ZInterpolator;

    .line 111
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    const v2, 0x3f666666

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v1, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mAlphaInterpolator:Landroid/view/animation/AccelerateInterpolator;

    .line 113
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x4080

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v1, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mLeftScreenAlphaInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 137
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 138
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mApps:Ljava/util/ArrayList;

    .line 139
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mWidgets:Ljava/util/ArrayList;

    .line 140
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mShortcuts:Ljava/util/ArrayList;

    .line 143
    sget-object v1, Lcom/baidu/home2/R$styleable;->AppsCustomizePagedView:[I

    invoke-virtual {p1, p2, v1, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 145
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mMaxAppCellCountX:I

    .line 147
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mMaxAppCellCountY:I

    .line 149
    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mWidgetWidthGap:I

    .line 151
    invoke-virtual {v0, v6, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mWidgetHeightGap:I

    .line 153
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mWidgetCountX:I

    .line 155
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mWidgetCountY:I

    .line 157
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 158
    new-instance v1, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mWidgetSpacingLayout:Lcom/baidu/launcher/ui/common/PagedViewCellLayout;

    .line 160
    iput-boolean v3, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mFadeInAdjacentScreens:Z

    .line 161
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/launcher/ui/editview/EditAppsListView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/baidu/launcher/ui/editview/EditAppsListView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/baidu/launcher/ui/editview/EditAppsListView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->invalidatePageData(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/baidu/launcher/ui/editview/EditAppsListView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/baidu/launcher/ui/editview/EditAppsListView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/baidu/launcher/ui/editview/EditAppsListView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/baidu/launcher/ui/editview/EditAppsListView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mApps:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/baidu/launcher/ui/editview/EditAppsListView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->isDataReady()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/baidu/launcher/ui/editview/EditAppsListView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->updatePageCounts()V

    return-void
.end method

.method static synthetic access$800(Lcom/baidu/launcher/ui/editview/EditAppsListView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->testDataReady()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/baidu/launcher/ui/editview/EditAppsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->reloadCurrentPage()I

    move-result v0

    return v0
.end method

.method private getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-",
            "Lcom/baidu/launcher/data/item/ListItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1201
    sget v0, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->sortType:I

    if-nez v0, :cond_0

    .line 1202
    sget-object v0, Lcom/baidu/launcher/data/AppsDataManager;->APP_NAME_COMPARATOR:Ljava/util/Comparator;

    .line 1204
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/launcher/data/AppsDataManager;->getComparator(Landroid/content/pm/PackageManager;)Ljava/util/Comparator;

    move-result-object v0

    goto :goto_0
.end method

.method private getPageType(I)I
    .locals 3
    .parameter "page"

    .prologue
    .line 182
    const/4 v0, 0x0

    .line 184
    .local v0, type:I
    iget v1, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mNumAppsPages:I

    if-lt p1, v1, :cond_0

    .line 185
    const/4 v0, 0x1

    .line 188
    :cond_0
    iget v1, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mNumAppsPages:I

    iget v2, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mNumWidgetPages:I

    add-int/2addr v1, v2

    if-lt p1, v1, :cond_1

    .line 189
    const/4 v0, 0x2

    .line 192
    :cond_1
    iget v1, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mNumAppsPages:I

    iget v2, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mNumWidgetPages:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mNumShortcutsPages:I

    add-int/2addr v1, v2

    if-lt p1, v1, :cond_2

    .line 193
    const/4 v0, 0x3

    .line 195
    :cond_2
    return v0
.end method

.method private reloadCurrentPage()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 993
    const/4 v0, 0x0

    .line 994
    .local v0, page:I
    iget v1, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mPageType:I

    if-nez v1, :cond_1

    .line 995
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->getCurrentPage()I

    move-result v1

    iget v2, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mNumAppsPages:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1011
    :cond_0
    :goto_0
    return v0

    .line 996
    :cond_1
    iget v1, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mPageType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 997
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->getCurrentPage()I

    move-result v1

    iget v2, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mNumAppsPages:I

    iget v3, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mNumWidgetPages:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 999
    :cond_2
    iget v1, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mPageType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 1000
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->getCurrentPage()I

    move-result v1

    iget v2, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mNumAppsPages:I

    iget v3, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mNumWidgetPages:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mNumShortcutsPages:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 1004
    :cond_3
    iget v1, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mPageType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 1005
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->getCurrentPage()I

    move-result v1

    iget v2, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mNumAppsPages:I

    iget v3, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mNumWidgetPages:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mNumShortcutsPages:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mNumFoldersPages:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method private screenScrolledWithICE(I)V
    .locals 13
    .parameter "screenCenter"

    .prologue
    const/high16 v9, 0x3f80

    const/4 v12, 0x0

    .line 798
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->getChildCount()I

    move-result v10

    if-ge v1, v10, :cond_6

    .line 799
    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->getPageAt(I)Landroid/view/View;

    move-result-object v8

    .line 800
    .local v8, v:Landroid/view/View;
    if-eqz v8, :cond_0

    .line 801
    invoke-virtual {p0, p1, v8, v1}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->getScrollProgress(ILandroid/view/View;I)F

    move-result v6

    .line 803
    .local v6, scrollProgress:F
    iget-object v10, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mZInterpolator:Lcom/baidu/launcher/ui/editview/EditAppsListView$ZInterpolator;

    invoke-static {v6, v12}, Ljava/lang/Math;->min(FF)F

    move-result v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    invoke-virtual {v10, v11}, Lcom/baidu/launcher/ui/editview/EditAppsListView$ZInterpolator;->getInterpolation(F)F

    move-result v2

    .line 805
    .local v2, interpolatedProgress:F
    sub-float v10, v9, v2

    sget v11, Lcom/baidu/launcher/ui/editview/EditAppsListView;->TRANSITION_SCALE_FACTOR:F

    mul-float/2addr v11, v2

    add-float v5, v10, v11

    .line 807
    .local v5, scale:F
    invoke-static {v12, v6}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    int-to-float v11, v11

    mul-float v7, v10, v11

    .line 812
    .local v7, translationX:F
    cmpg-float v10, v6, v12

    if-gez v10, :cond_2

    .line 813
    cmpg-float v10, v6, v12

    if-gez v10, :cond_1

    iget-object v10, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mAlphaInterpolator:Landroid/view/animation/AccelerateInterpolator;

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v11

    sub-float v11, v9, v11

    invoke-virtual {v10, v11}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v0

    .line 823
    .local v0, alpha:F
    :goto_1
    iget v10, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mDensity:F

    sget v11, Lcom/baidu/launcher/ui/editview/EditAppsListView;->CAMERA_DISTANCE:F

    mul-float/2addr v10, v11

    invoke-virtual {v8, v10}, Landroid/view/View;->setCameraDistance(F)V

    .line 824
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 825
    .local v4, pageWidth:I
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 827
    .local v3, pageHeight:I
    if-nez v1, :cond_3

    cmpg-float v10, v6, v12

    if-gez v10, :cond_3

    .line 829
    sget v10, Lcom/baidu/launcher/ui/editview/EditAppsListView;->TRANSITION_PIVOT:F

    int-to-float v11, v4

    mul-float/2addr v10, v11

    invoke-virtual {v8, v10}, Landroid/view/View;->setPivotX(F)V

    .line 830
    sget v10, Lcom/baidu/launcher/ui/editview/EditAppsListView;->TRANSITION_MAX_ROTATION:F

    neg-float v10, v10

    mul-float/2addr v10, v6

    invoke-virtual {v8, v10}, Landroid/view/View;->setRotationY(F)V

    .line 832
    const/high16 v5, 0x3f80

    .line 833
    const/high16 v0, 0x3f80

    .line 836
    const/4 v7, 0x0

    .line 855
    :goto_2
    invoke-virtual {v8, v7}, Landroid/view/View;->setTranslationX(F)V

    .line 856
    invoke-virtual {v8, v5}, Landroid/view/View;->setScaleX(F)V

    .line 857
    invoke-virtual {v8, v5}, Landroid/view/View;->setScaleY(F)V

    .line 858
    invoke-virtual {v8, v0}, Landroid/view/View;->setAlpha(F)V

    .line 862
    const v10, 0x3c23d70a

    cmpg-float v10, v0, v10

    if-gez v10, :cond_5

    .line 863
    const/4 v10, 0x4

    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    .line 798
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

    .line 813
    goto :goto_1

    .line 819
    :cond_2
    iget-object v10, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mLeftScreenAlphaInterpolator:Landroid/view/animation/DecelerateInterpolator;

    sub-float v11, v9, v6

    invoke-virtual {v10, v11}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v0

    .restart local v0       #alpha:F
    goto :goto_1

    .line 838
    .restart local v3       #pageHeight:I
    .restart local v4       #pageWidth:I
    :cond_3
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->getChildCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ne v1, v10, :cond_4

    cmpl-float v10, v6, v12

    if-lez v10, :cond_4

    .line 840
    sget v10, Lcom/baidu/launcher/ui/editview/EditAppsListView;->TRANSITION_PIVOT:F

    sub-float v10, v9, v10

    int-to-float v11, v4

    mul-float/2addr v10, v11

    invoke-virtual {v8, v10}, Landroid/view/View;->setPivotX(F)V

    .line 841
    sget v10, Lcom/baidu/launcher/ui/editview/EditAppsListView;->TRANSITION_MAX_ROTATION:F

    neg-float v10, v10

    mul-float/2addr v10, v6

    invoke-virtual {v8, v10}, Landroid/view/View;->setRotationY(F)V

    .line 843
    const/high16 v5, 0x3f80

    .line 844
    const/high16 v0, 0x3f80

    .line 847
    const/4 v7, 0x0

    goto :goto_2

    .line 849
    :cond_4
    mul-int/lit8 v10, v4, 0x3

    div-int/lit8 v10, v10, 0x19

    int-to-float v10, v10

    invoke-virtual {v8, v10}, Landroid/view/View;->setPivotY(F)V

    .line 850
    int-to-float v10, v4

    const/high16 v11, 0x4000

    div-float/2addr v10, v11

    invoke-virtual {v8, v10}, Landroid/view/View;->setPivotX(F)V

    .line 851
    invoke-virtual {v8, v12}, Landroid/view/View;->setRotationY(F)V

    goto :goto_2

    .line 864
    :cond_5
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-eqz v10, :cond_0

    .line 865
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 869
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
    .line 436
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 437
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 438
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/view/View;->setVisibility(I)V

    .line 437
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 440
    :cond_0
    return-void
.end method

.method private setupPage(Lcom/baidu/launcher/ui/common/PagedViewCellLayout;)V
    .locals 7
    .parameter "layout"

    .prologue
    const/high16 v6, -0x8000

    .line 443
    iget v2, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mCellCountX:I

    iget v3, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mCellCountY:I

    invoke-virtual {p1, v2, v3}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->setCellCount(II)V

    .line 444
    iget v2, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mPageLayoutWidthGap:I

    iget v3, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mPageLayoutHeightGap:I

    invoke-virtual {p1, v2, v3}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->setGap(II)V

    .line 445
    iget v2, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mPageLayoutPaddingLeft:I

    iget v3, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mPageLayoutPaddingTop:I

    iget v4, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mPageLayoutPaddingRight:I

    iget v5, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mPageLayoutPaddingBottom:I

    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->setPadding(IIII)V

    .line 455
    const/16 v2, 0x8

    invoke-direct {p0, p1, v2}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->setVisibilityOnChildren(Landroid/view/ViewGroup;I)V

    .line 456
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->getMeasuredWidth()I

    move-result v2

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 458
    .local v1, widthSpec:I
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->getMeasuredHeight()I

    move-result v2

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 460
    .local v0, heightSpec:I
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->getPageContentWidth()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->setMinimumWidth(I)V

    .line 461
    invoke-virtual {p1, v1, v0}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->measure(II)V

    .line 462
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->setVisibilityOnChildren(Landroid/view/ViewGroup;I)V

    .line 463
    return-void
.end method

.method private setupPage(Lcom/baidu/launcher/ui/common/PagedViewGridLayout;)V
    .locals 7
    .parameter "layout"

    .prologue
    const/high16 v6, -0x8000

    .line 612
    iget v2, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mPageLayoutPaddingLeft:I

    iget v3, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mPageLayoutPaddingTop:I

    iget v4, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mPageLayoutPaddingRight:I

    iget v5, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mPageLayoutPaddingBottom:I

    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/baidu/launcher/ui/common/PagedViewGridLayout;->setPadding(IIII)V

    .line 617
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->getMeasuredWidth()I

    move-result v2

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 619
    .local v1, widthSpec:I
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->getMeasuredHeight()I

    move-result v2

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 621
    .local v0, heightSpec:I
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->getPageContentWidth()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/baidu/launcher/ui/common/PagedViewGridLayout;->setMinimumWidth(I)V

    .line 622
    invoke-virtual {p1, v1, v0}, Lcom/baidu/launcher/ui/common/PagedViewGridLayout;->measure(II)V

    .line 623
    return-void
.end method

.method private testDataReady()Z
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mShortcuts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updatePageCounts()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 276
    iget v0, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mCellCountX:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mCellCountY:I

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mShortcuts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mCellCountX:I

    iget v2, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mCellCountY:I

    mul-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mNumShortcutsPages:I

    .line 283
    :goto_0
    iget v0, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mWidgetCountX:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mWidgetCountY:I

    if-eqz v0, :cond_1

    .line 284
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mWidgetCountX:I

    iget v2, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mWidgetCountY:I

    mul-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mNumWidgetPages:I

    .line 290
    :goto_1
    iget v0, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mCellCountX:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mCellCountY:I

    if-eqz v0, :cond_2

    .line 291
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mCellCountX:I

    iget v2, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mCellCountY:I

    mul-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mNumAppsPages:I

    .line 298
    :goto_2
    iget v0, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mCellCountX:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mCellCountY:I

    if-eqz v0, :cond_3

    .line 305
    :goto_3
    return-void

    .line 281
    :cond_0
    iput v3, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mNumShortcutsPages:I

    goto :goto_0

    .line 288
    :cond_1
    iput v3, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mNumWidgetPages:I

    goto :goto_1

    .line 295
    :cond_2
    iput v3, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mNumAppsPages:I

    goto :goto_2

    .line 303
    :cond_3
    iput v3, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mNumFoldersPages:I

    goto :goto_3
.end method

.method private updateScrollingIndicatorPosition(F)V
    .locals 0
    .parameter "mScrollX"

    .prologue
    .line 795
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 0
    .parameter "child"

    .prologue
    .line 1160
    invoke-super {p0, p1}, Lcom/baidu/launcher/ui/common/DraggableViewPagger;->addView(Landroid/view/View;)V

    .line 1161
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .parameter "child"
    .parameter "params"

    .prologue
    .line 1168
    invoke-super {p0, p1, p2}, Lcom/baidu/launcher/ui/common/DraggableViewPagger;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1169
    return-void
.end method

.method public appCountOnePage()I
    .locals 2

    .prologue
    .line 1120
    iget v0, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mCellCountX:I

    iget v1, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mCellCountY:I

    mul-int/2addr v0, v1

    return v0
.end method

.method protected beginDragging(Landroid/view/View;)Z
    .locals 2
    .parameter "v"

    .prologue
    .line 1142
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->listener:Lcom/baidu/launcher/ui/editview/EditAppsListView$PageChangeListener;

    if-eqz v0, :cond_0

    .line 1143
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->listener:Lcom/baidu/launcher/ui/editview/EditAppsListView$PageChangeListener;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/baidu/launcher/ui/editview/EditAppsListView$PageChangeListener;->onItemLongClick(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v0

    .line 1145
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method changeCurrentPage(I)V
    .locals 0
    .parameter "page"

    .prologue
    .line 1108
    iput p1, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mCurrentPage:I

    .line 1109
    return-void
.end method

.method public clearAllPages()V
    .locals 5

    .prologue
    .line 410
    iget-object v3, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 411
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->getChildCount()I

    move-result v0

    .line 412
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 413
    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/ui/common/Page;

    .line 414
    .local v2, layout:Lcom/baidu/launcher/ui/common/Page;
    invoke-interface {v2}, Lcom/baidu/launcher/ui/common/Page;->removeAllViewsOnPage()V

    .line 415
    iget-object v3, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mDirtyPageContent:Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 417
    .end local v2           #layout:Lcom/baidu/launcher/ui/common/Page;
    :cond_0
    iget-object v3, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->eventViewList:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 418
    iget-object v3, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->calendarViewList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 420
    return-void
.end method

.method public clearDatas()V
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mApps:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 430
    :cond_0
    return-void
.end method

.method public clearOpenAnim()V
    .locals 1

    .prologue
    .line 1192
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mShowAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 1193
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mShowAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1195
    :cond_0
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1196
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->setAlpha(F)V

    .line 1198
    :cond_1
    return-void
.end method

.method protected determineDraggingStart(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "ev"

    .prologue
    .line 407
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    const/4 v10, -0x1

    .line 365
    invoke-super {p0, p1}, Lcom/baidu/launcher/ui/common/DraggableViewPagger;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 368
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->getChildCount()I

    move-result v4

    .line 369
    .local v4, pageCount:I
    if-lez v4, :cond_1

    .line 370
    iget-object v8, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v8}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->getVisiblePages([I)V

    .line 371
    iget-object v8, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mTempVisiblePagesRange:[I

    const/4 v9, 0x0

    aget v3, v8, v9

    .line 372
    .local v3, leftScreen:I
    iget-object v8, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mTempVisiblePagesRange:[I

    const/4 v9, 0x1

    aget v5, v8, v9

    .line 373
    .local v5, rightScreen:I
    if-eq v3, v10, :cond_1

    if-eq v5, v10, :cond_1

    .line 374
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->getDrawingTime()J

    move-result-wide v0

    .line 375
    .local v0, drawingTime:J
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 377
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 378
    iget v8, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mScrollX:I

    iget v9, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mScrollY:I

    iget v10, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mScrollX:I

    iget v11, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mRight:I

    add-int/2addr v10, v11

    iget v11, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mLeft:I

    sub-int/2addr v10, v11

    iget v11, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mScrollY:I

    iget v12, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mBottom:I

    add-int/2addr v11, v12

    iget v12, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mTop:I

    sub-int/2addr v11, v12

    invoke-virtual {p1, v8, v9, v10, v11}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 380
    move v2, v5

    .local v2, i:I
    :goto_0
    if-lt v2, v3, :cond_0

    .line 381
    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->getPageAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0, p1, v8, v0, v1}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 380
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 383
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 399
    .end local v0           #drawingTime:J
    .end local v2           #i:I
    .end local v3           #leftScreen:I
    .end local v5           #rightScreen:I
    :cond_1
    return-void

    .line 385
    .restart local v0       #drawingTime:J
    .restart local v3       #leftScreen:I
    .restart local v5       #rightScreen:I
    :cond_2
    move v2, v3

    .restart local v2       #i:I
    :goto_1
    if-gt v2, v5, :cond_1

    .line 386
    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->getPageAt(I)Landroid/view/View;

    move-result-object v7

    .line 387
    .local v7, v:Landroid/view/View;
    const/4 v6, 0x0

    .line 388
    .local v6, translationX:F
    instance-of v8, v7, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;

    if-eqz v8, :cond_3

    move-object v8, v7

    .line 389
    check-cast v8, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;

    iget v6, v8, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->translationXForLowApi:F

    .line 391
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 392
    const/4 v8, 0x0

    invoke-virtual {p1, v6, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 393
    invoke-virtual {p0, p1, v7, v0, v1}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 394
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 385
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public getAppCountOneLine()I
    .locals 1

    .prologue
    .line 1124
    iget v0, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mCellCountX:I

    return v0
.end method

.method public getDragItemIndex()I
    .locals 1

    .prologue
    .line 1116
    iget v0, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mDragItemIndex:I

    return v0
.end method

.method protected getItemLyout()I
    .locals 1

    .prologue
    .line 605
    const v0, 0x7f030005

    return v0
.end method

.method public getPageAt(I)Landroid/view/View;
    .locals 1
    .parameter "index"

    .prologue
    .line 750
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->getChildCount()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getPageContentWidth()I
    .locals 1

    .prologue
    .line 882
    iget v0, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mContentWidth:I

    return v0
.end method

.method getPageForComponent(I)I
    .locals 3
    .parameter "index"

    .prologue
    const/4 v1, 0x0

    .line 252
    if-gez p1, :cond_1

    .line 259
    :cond_0
    :goto_0
    return v1

    .line 255
    :cond_1
    iget-object v2, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 256
    iget v1, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mCellCountX:I

    iget v2, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mCellCountY:I

    mul-int v0, v1, v2

    .line 257
    .local v0, numItemsPerPage:I
    div-int v1, p1, v0

    goto :goto_0
.end method

.method public getPageType()I
    .locals 1

    .prologue
    .line 1184
    iget v0, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mPageType:I

    return v0
.end method

.method public indexToPage(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 755
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->getChildCount()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method protected init()V
    .locals 4

    .prologue
    .line 165
    invoke-super {p0}, Lcom/baidu/launcher/ui/common/DraggableViewPagger;->init()V

    .line 166
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mCenterPagesVertically:Z

    .line 168
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 169
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 170
    .local v1, r:Landroid/content/res/Resources;
    const v2, 0x7f0d0008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x42c8

    div-float/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->setDragSlopeThreshold(F)V

    .line 172
    check-cast v0, Lcom/baidu/launcher/app/Launcher;

    .end local v0           #context:Landroid/content/Context;
    invoke-virtual {v0}, Lcom/baidu/launcher/app/Launcher;->getViewManager()Lcom/baidu/launcher/ui/logic/ViewManager;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    .line 173
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->eventViewList:Ljava/util/HashMap;

    .line 174
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->calendarViewList:Ljava/util/ArrayList;

    .line 175
    return-void
.end method

.method public isFolderPage()Z
    .locals 3

    .prologue
    .line 199
    iget v0, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mCurrentPage:I

    iget v1, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mNumAppsPages:I

    iget v2, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mNumWidgetPages:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mNumShortcutsPages:I

    add-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    .line 201
    const/4 v0, 0x1

    .line 203
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->listener:Lcom/baidu/launcher/ui/editview/EditAppsListView$PageChangeListener;

    if-eqz v0, :cond_0

    .line 1136
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->listener:Lcom/baidu/launcher/ui/editview/EditAppsListView$PageChangeListener;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/baidu/launcher/ui/editview/EditAppsListView$PageChangeListener;->onItemClick(Landroid/view/View;Ljava/lang/Object;)V

    .line 1138
    :cond_0
    return-void
.end method

.method protected onDataReady(II)V
    .locals 12
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v11, 0x0

    const/4 v6, -0x1

    const/high16 v10, -0x8000

    .line 310
    const v1, 0x7fffffff

    .line 311
    .local v1, maxCellCountX:I
    const v2, 0x7fffffff

    .line 312
    .local v2, maxCellCountY:I
    iget v5, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mMaxAppCellCountX:I

    if-le v5, v6, :cond_0

    .line 313
    iget v5, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mMaxAppCellCountX:I

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 315
    :cond_0
    iget v5, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mMaxAppCellCountY:I

    if-le v5, v6, :cond_1

    .line 316
    iget v5, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mMaxAppCellCountY:I

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 322
    :cond_1
    iget-object v5, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mWidgetSpacingLayout:Lcom/baidu/launcher/ui/common/PagedViewCellLayout;

    iget v6, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mPageLayoutWidthGap:I

    iget v7, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mPageLayoutHeightGap:I

    invoke-virtual {v5, v6, v7}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->setGap(II)V

    .line 323
    iget-object v5, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mWidgetSpacingLayout:Lcom/baidu/launcher/ui/common/PagedViewCellLayout;

    iget v6, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mPageLayoutPaddingLeft:I

    iget v7, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mPageLayoutPaddingTop:I

    iget v8, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mPageLayoutPaddingRight:I

    iget v9, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mPageLayoutPaddingBottom:I

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->setPadding(IIII)V

    .line 326
    iget-object v5, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mWidgetSpacingLayout:Lcom/baidu/launcher/ui/common/PagedViewCellLayout;

    invoke-virtual {v5, p1, p2, v1, v2}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->calculateCellCount(IIII)V

    .line 328
    iget-object v5, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mWidgetSpacingLayout:Lcom/baidu/launcher/ui/common/PagedViewCellLayout;

    invoke-virtual {v5}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->getCellCountX()I

    move-result v5

    iput v5, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mCellCountX:I

    .line 329
    iget-object v5, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mWidgetSpacingLayout:Lcom/baidu/launcher/ui/common/PagedViewCellLayout;

    invoke-virtual {v5}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->getCellCountY()I

    move-result v5

    iput v5, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mCellCountY:I

    .line 333
    invoke-direct {p0}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->updatePageCounts()V

    .line 336
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->getMeasuredWidth()I

    move-result v5

    invoke-static {v5, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 338
    .local v4, widthSpec:I
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->getMeasuredHeight()I

    move-result v5

    invoke-static {v5, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 340
    .local v0, heightSpec:I
    iget-object v5, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mWidgetSpacingLayout:Lcom/baidu/launcher/ui/common/PagedViewCellLayout;

    invoke-virtual {v5, v4, v0}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->measure(II)V

    .line 341
    iget-object v5, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mWidgetSpacingLayout:Lcom/baidu/launcher/ui/common/PagedViewCellLayout;

    invoke-virtual {v5}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->getContentWidth()I

    move-result v5

    iput v5, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mContentWidth:I

    .line 344
    iget v5, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mSaveInstanceStateItemIndex:I

    invoke-virtual {p0, v5}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->getPageForComponent(I)I

    move-result v3

    .line 345
    .local v3, page:I
    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {p0, v5, v11}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->invalidatePageData(IZ)V

    .line 346
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 1130
    invoke-super {p0, p1}, Lcom/baidu/launcher/ui/common/DraggableViewPagger;->onLongClick(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 350
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 351
    .local v1, width:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 352
    .local v0, height:I
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->isDataReady()Z

    move-result v2

    if-nez v2, :cond_0

    .line 353
    invoke-direct {p0}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->testDataReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 354
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->setDataIsReady()V

    .line 355
    invoke-virtual {p0, v1, v0}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->setMeasuredDimension(II)V

    .line 356
    invoke-virtual {p0, v1, v0}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->onDataReady(II)V

    .line 360
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/baidu/launcher/ui/common/DraggableViewPagger;->onMeasure(II)V

    .line 361
    return-void
.end method

.method public onPageBeginMoving()V
    .locals 0

    .prologue
    .line 887
    invoke-super {p0}, Lcom/baidu/launcher/ui/common/DraggableViewPagger;->onPageBeginMoving()V

    .line 888
    return-void
.end method

.method public onPageEndMoving()V
    .locals 1

    .prologue
    .line 892
    invoke-super {p0}, Lcom/baidu/launcher/ui/common/DraggableViewPagger;->onPageEndMoving()V

    .line 896
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mSaveInstanceStateItemIndex:I

    .line 899
    return-void
.end method

.method protected overScroll(F)V
    .locals 0
    .parameter "amount"

    .prologue
    .line 873
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->acceleratedOverScroll(F)V

    .line 874
    return-void
.end method

.method public reloadData(Z)V
    .locals 2
    .parameter "needRefreshView"

    .prologue
    const/4 v1, 0x0

    .line 1149
    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->setCurrentPage(I)V

    .line 1150
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->loadAssociatedPages(IZ)V

    .line 1152
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->updateData(Z)V

    .line 1153
    return-void
.end method

.method public screenScrolled(I)V
    .locals 8
    .parameter "screenCenter"

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x0

    .line 763
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 764
    iget v5, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mScrollX:I

    int-to-float v5, v5

    invoke-direct {p0, v5}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->updateScrollingIndicatorPosition(F)V

    .line 765
    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->screenScrolledWithICE(I)V

    .line 790
    :cond_0
    :goto_0
    return-void

    .line 767
    :cond_1
    iget v5, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mOverScrollX:I

    if-ltz v5, :cond_2

    iget v5, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mOverScrollX:I

    iget v6, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mMaxScrollX:I

    if-le v5, v6, :cond_4

    .line 768
    :cond_2
    iget v5, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mOverScrollX:I

    if-gez v5, :cond_3

    .line 769
    .local v0, index:I
    :goto_1
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;

    .line 770
    .local v2, pcl:Lcom/baidu/launcher/ui/common/PagedViewCellLayout;
    if-eqz v2, :cond_0

    .line 772
    invoke-virtual {p0, p1, v2, v0}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->getScrollProgress(ILandroid/view/View;I)F

    move-result v4

    .line 774
    .local v4, scrollProgress:F
    neg-float v5, v4

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    sget v6, Lcom/baidu/launcher/ui/editview/EditAppsListView;->TRANSITION_MAX_OVERSCROLL:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    int-to-float v5, v5

    iput v5, v2, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->translationXForLowApi:F

    .line 776
    iget v5, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mScrollX:I

    int-to-float v5, v5

    iget v6, v2, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->translationXForLowApi:F

    sub-float/2addr v5, v6

    invoke-direct {p0, v5}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->updateScrollingIndicatorPosition(F)V

    goto :goto_0

    .line 768
    .end local v0           #index:I
    .end local v2           #pcl:Lcom/baidu/launcher/ui/common/PagedViewCellLayout;
    .end local v4           #scrollProgress:F
    :cond_3
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->getChildCount()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    goto :goto_1

    .line 779
    :cond_4
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;

    .line 780
    .local v1, left:Lcom/baidu/launcher/ui/common/PagedViewCellLayout;
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v5}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;

    .line 781
    .local v3, right:Lcom/baidu/launcher/ui/common/PagedViewCellLayout;
    if-eqz v1, :cond_5

    .line 782
    iput v7, v1, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->translationXForLowApi:F

    .line 784
    :cond_5
    if-eqz v3, :cond_6

    .line 785
    iput v7, v3, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->translationXForLowApi:F

    .line 787
    :cond_6
    iget v5, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mScrollX:I

    int-to-float v5, v5

    invoke-direct {p0, v5}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->updateScrollingIndicatorPosition(F)V

    goto :goto_0
.end method

.method public setCurrentPage(I)V
    .locals 3
    .parameter "currentPage"

    .prologue
    .line 208
    iget v0, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mCurrentPage:I

    .line 209
    .local v0, oldPage:I
    invoke-super {p0, p1}, Lcom/baidu/launcher/ui/common/DraggableViewPagger;->setCurrentPage(I)V

    .line 211
    iget v1, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mCurrentPage:I

    if-eq v0, v1, :cond_0

    .line 213
    invoke-direct {p0, v0}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->getPageType(I)I

    move-result v1

    iget v2, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mCurrentPage:I

    invoke-direct {p0, v2}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->getPageType(I)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 214
    iget-object v1, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->listener:Lcom/baidu/launcher/ui/editview/EditAppsListView$PageChangeListener;

    if-eqz v1, :cond_0

    .line 215
    iget-object v1, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->listener:Lcom/baidu/launcher/ui/editview/EditAppsListView$PageChangeListener;

    iget v2, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mCurrentPage:I

    invoke-direct {p0, v2}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->getPageType(I)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/baidu/launcher/ui/editview/EditAppsListView$PageChangeListener;->onPageTypeChanged(I)V

    .line 217
    iget v1, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mCurrentPage:I

    invoke-direct {p0, v1}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->getPageType(I)I

    move-result v1

    iput v1, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mPageType:I

    .line 223
    :cond_0
    return-void
.end method

.method public setDragItemIndex(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 1112
    iput p1, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mDragItemIndex:I

    .line 1113
    return-void
.end method

.method public setListener(Lcom/baidu/launcher/ui/editview/EditAppsListView$PageChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1180
    iput-object p1, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->listener:Lcom/baidu/launcher/ui/editview/EditAppsListView$PageChangeListener;

    .line 1181
    return-void
.end method

.method shouldAppDrawBlur()Z
    .locals 1

    .prologue
    .line 514
    const/4 v0, 0x0

    return v0
.end method

.method public showPages(IZ)V
    .locals 5
    .parameter "type"
    .parameter "animation"

    .prologue
    const/4 v4, 0x0

    .line 1046
    iget-object v1, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/logic/ViewManager;->getEditView()Lcom/baidu/launcher/ui/editview/EditView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/editview/EditView;->getEdit_applist_left()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1047
    iget-object v1, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/logic/ViewManager;->getEditView()Lcom/baidu/launcher/ui/editview/EditView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/editview/EditView;->getEdit_applist_right()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1048
    iput p1, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mPageType:I

    .line 1049
    const/4 v0, 0x0

    .line 1050
    .local v0, page:I
    packed-switch p1, :pswitch_data_0

    .line 1065
    :goto_0
    iget-object v1, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1066
    const/4 v1, -0x1

    iput v1, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mNextPage:I

    .line 1067
    iget-object v1, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1068
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->pageEndMoving()V

    .line 1071
    :cond_0
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->setCurrentPage(I)V

    .line 1072
    iget v1, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->loadAssociatedPages(I)V

    .line 1073
    if-eqz p2, :cond_2

    .line 1074
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1075
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->isHardwareAccelerated()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1076
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1078
    :cond_1
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->clearOpenAnim()V

    .line 1079
    const-string v1, "alpha"

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/high16 v3, 0x3f80

    aput v3, v2, v4

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mShowAnim:Landroid/animation/ObjectAnimator;

    .line 1080
    iget-object v1, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mShowAnim:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1081
    iget-object v1, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mShowAnim:Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/baidu/launcher/ui/editview/EditAppsListView$1;

    invoke-direct {v2, p0}, Lcom/baidu/launcher/ui/editview/EditAppsListView$1;-><init>(Lcom/baidu/launcher/ui/editview/EditAppsListView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1092
    iget-object v1, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mShowAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 1097
    :cond_2
    return-void

    .line 1052
    :pswitch_0
    iget-object v1, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/logic/ViewManager;->getEditView()Lcom/baidu/launcher/ui/editview/EditView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/editview/EditView;->getEdit_applist_left()Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1055
    :pswitch_1
    iget v0, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mNumAppsPages:I

    .line 1056
    goto :goto_0

    .line 1058
    :pswitch_2
    iget v1, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mNumAppsPages:I

    iget v2, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mNumWidgetPages:I

    add-int v0, v1, v2

    .line 1059
    goto :goto_0

    .line 1061
    :pswitch_3
    iget v1, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mNumAppsPages:I

    iget v2, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mNumWidgetPages:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mNumShortcutsPages:I

    add-int v0, v1, v2

    goto :goto_0

    .line 1050
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected snapToPage(III)V
    .locals 3
    .parameter "whichPage"
    .parameter "delta"
    .parameter "duration"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 227
    if-nez p1, :cond_1

    .line 228
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/logic/ViewManager;->getEditView()Lcom/baidu/launcher/ui/editview/EditView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/editview/EditView;->getEdit_applist_left()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 232
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->getPageCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_2

    .line 233
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/logic/ViewManager;->getEditView()Lcom/baidu/launcher/ui/editview/EditView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/editview/EditView;->getEdit_applist_right()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 237
    :goto_1
    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->getPageType(I)I

    move-result v0

    iget v1, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mCurrentPage:I

    invoke-direct {p0, v1}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->getPageType(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 238
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->listener:Lcom/baidu/launcher/ui/editview/EditAppsListView$PageChangeListener;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->listener:Lcom/baidu/launcher/ui/editview/EditAppsListView$PageChangeListener;

    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->getPageType(I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/baidu/launcher/ui/editview/EditAppsListView$PageChangeListener;->onPageTypeChanged(I)V

    .line 241
    iget v0, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mCurrentPage:I

    invoke-direct {p0, v0}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->getPageType(I)I

    move-result v0

    iput v0, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mPageType:I

    .line 244
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/baidu/launcher/ui/common/DraggableViewPagger;->snapToPage(III)V

    .line 245
    return-void

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/logic/ViewManager;->getEditView()Lcom/baidu/launcher/ui/editview/EditView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/editview/EditView;->getEdit_applist_left()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 235
    :cond_2
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/logic/ViewManager;->getEditView()Lcom/baidu/launcher/ui/editview/EditView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/editview/EditView;->getEdit_applist_right()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public syncAppsPageItems(IZ)V
    .locals 15
    .parameter "page"
    .parameter "immediate"

    .prologue
    .line 467
    iget v0, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mCellCountX:I

    iget v3, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mCellCountY:I

    mul-int v12, v0, v3

    .line 468
    .local v12, numCells:I
    mul-int v13, p1, v12

    .line 469
    .local v13, startIndex:I
    add-int v0, v13, v12

    iget-object v3, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 470
    .local v6, endIndex:I
    invoke-virtual/range {p0 .. p1}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->getPageAt(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;

    .line 471
    .local v11, layout:Lcom/baidu/launcher/ui/common/PagedViewCellLayout;
    invoke-virtual {v11}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->removeAllViewsOnPage()V

    .line 472
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 473
    .local v10, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    move v7, v13

    .local v7, i:I
    :goto_0
    if-ge v7, v6, :cond_1

    .line 474
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/baidu/launcher/data/item/ListAppInfo;

    .line 475
    .local v9, info:Lcom/baidu/launcher/data/item/ListAppInfo;
    iget-object v0, v9, Lcom/baidu/launcher/data/item/ListAppInfo;->iconBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 473
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->getItemLyout()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v11, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/baidu/launcher/ui/common/ActionTextView;

    .line 479
    .local v8, icon:Lcom/baidu/launcher/ui/common/ActionTextView;
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->shouldAppDrawBlur()Z

    move-result v0

    iput-boolean v0, v8, Lcom/baidu/launcher/ui/common/ActionTextView;->shouldDrawBlur:Z

    .line 480
    const/4 v0, 0x0

    new-instance v3, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;

    iget-object v4, v9, Lcom/baidu/launcher/data/item/ListAppInfo;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4}, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    const/4 v14, 0x0

    invoke-virtual {v8, v0, v3, v4, v14}, Lcom/baidu/launcher/ui/common/ActionTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 482
    const/4 v0, 0x6

    invoke-virtual {v8, v0}, Lcom/baidu/launcher/ui/common/ActionTextView;->setCompoundDrawablePadding(I)V

    .line 483
    iget-object v0, v9, Lcom/baidu/launcher/data/item/ListAppInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v8, v0}, Lcom/baidu/launcher/ui/common/ActionTextView;->setText(Ljava/lang/CharSequence;)V

    .line 484
    invoke-virtual {v8, v9}, Lcom/baidu/launcher/ui/common/ActionTextView;->setTag(Ljava/lang/Object;)V

    .line 485
    invoke-virtual {v8, p0}, Lcom/baidu/launcher/ui/common/ActionTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 486
    invoke-virtual {v8, p0}, Lcom/baidu/launcher/ui/common/ActionTextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 501
    sub-int v5, v7, v13

    .line 502
    .local v5, index:I
    iget v0, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mCellCountX:I

    rem-int v1, v5, v0

    .line 503
    .local v1, x:I
    iget v0, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mCellCountX:I

    div-int v2, v5, v0

    .line 504
    .local v2, y:I
    const/4 v14, -0x1

    new-instance v0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;-><init>(IIIII)V

    invoke-virtual {v11, v8, v14, v7, v0}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;)Z

    .line 507
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 510
    .end local v1           #x:I
    .end local v2           #y:I
    .end local v5           #index:I
    .end local v8           #icon:Lcom/baidu/launcher/ui/common/ActionTextView;
    .end local v9           #info:Lcom/baidu/launcher/data/item/ListAppInfo;
    :cond_1
    invoke-virtual {v11}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->createHardwareLayers()V

    .line 511
    return-void
.end method

.method public syncFoldersPageItems(IZ)V
    .locals 0
    .parameter "page"
    .parameter "immediate"

    .prologue
    .line 602
    return-void
.end method

.method public syncPageItems(IZ)V
    .locals 2
    .parameter "page"
    .parameter "immediate"

    .prologue
    .line 732
    iget v0, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mNumAppsPages:I

    if-ge p1, v0, :cond_0

    .line 733
    invoke-virtual {p0, p1, p2}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->syncAppsPageItems(IZ)V

    .line 743
    :goto_0
    return-void

    .line 734
    :cond_0
    iget v0, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mNumAppsPages:I

    iget v1, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mNumWidgetPages:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_1

    .line 735
    iget v0, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mNumAppsPages:I

    sub-int v0, p1, v0

    invoke-virtual {p0, v0, p2}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->syncWidgetPageItems(IZ)V

    goto :goto_0

    .line 736
    :cond_1
    iget v0, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mNumAppsPages:I

    iget v1, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mNumWidgetPages:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mNumShortcutsPages:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_2

    .line 737
    iget v0, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mNumAppsPages:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mNumWidgetPages:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0, p2}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->syncShortcutsPageItems(IZ)V

    goto :goto_0

    .line 740
    :cond_2
    iget v0, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mNumAppsPages:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mNumWidgetPages:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mNumShortcutsPages:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0, p2}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->syncFoldersPageItems(IZ)V

    goto :goto_0
.end method

.method public syncPages()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    .line 698
    iget-object v5, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->eventViewList:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 699
    iget-object v5, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->calendarViewList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 700
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->removeAllViews()V

    .line 703
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 705
    .local v0, context:Landroid/content/Context;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v5, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mNumFoldersPages:I

    if-ge v1, v5, :cond_0

    .line 706
    new-instance v4, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;

    invoke-direct {v4, v0}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;-><init>(Landroid/content/Context;)V

    .line 707
    .local v4, layout:Lcom/baidu/launcher/ui/common/PagedViewCellLayout;
    invoke-direct {p0, v4}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->setupPage(Lcom/baidu/launcher/ui/common/PagedViewCellLayout;)V

    .line 708
    invoke-virtual {p0, v4}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->addView(Landroid/view/View;)V

    .line 705
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 711
    .end local v4           #layout:Lcom/baidu/launcher/ui/common/PagedViewCellLayout;
    :cond_0
    const/4 v3, 0x0

    .local v3, k:I
    :goto_1
    iget v5, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mNumShortcutsPages:I

    if-ge v3, v5, :cond_1

    .line 712
    new-instance v4, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;

    invoke-direct {v4, v0}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;-><init>(Landroid/content/Context;)V

    .line 713
    .restart local v4       #layout:Lcom/baidu/launcher/ui/common/PagedViewCellLayout;
    invoke-direct {p0, v4}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->setupPage(Lcom/baidu/launcher/ui/common/PagedViewCellLayout;)V

    .line 714
    invoke-virtual {p0, v4}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->addView(Landroid/view/View;)V

    .line 711
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 716
    .end local v4           #layout:Lcom/baidu/launcher/ui/common/PagedViewCellLayout;
    :cond_1
    const/4 v2, 0x0

    .local v2, j:I
    :goto_2
    iget v5, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mNumWidgetPages:I

    if-ge v2, v5, :cond_2

    .line 717
    new-instance v4, Lcom/baidu/launcher/ui/common/PagedViewGridLayout;

    iget v5, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mWidgetCountX:I

    iget v6, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mWidgetCountY:I

    invoke-direct {v4, v0, v5, v6}, Lcom/baidu/launcher/ui/common/PagedViewGridLayout;-><init>(Landroid/content/Context;II)V

    .line 719
    .local v4, layout:Lcom/baidu/launcher/ui/common/PagedViewGridLayout;
    invoke-direct {p0, v4}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->setupPage(Lcom/baidu/launcher/ui/common/PagedViewGridLayout;)V

    .line 720
    new-instance v5, Lcom/baidu/launcher/ui/common/PagedViewGridLayout$LayoutParams;

    invoke-direct {v5, v7, v7}, Lcom/baidu/launcher/ui/common/PagedViewGridLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v4, v5}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 716
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 723
    .end local v4           #layout:Lcom/baidu/launcher/ui/common/PagedViewGridLayout;
    :cond_2
    const/4 v1, 0x0

    :goto_3
    iget v5, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mNumAppsPages:I

    if-ge v1, v5, :cond_3

    .line 724
    new-instance v4, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;

    invoke-direct {v4, v0}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;-><init>(Landroid/content/Context;)V

    .line 725
    .local v4, layout:Lcom/baidu/launcher/ui/common/PagedViewCellLayout;
    invoke-direct {p0, v4}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->setupPage(Lcom/baidu/launcher/ui/common/PagedViewCellLayout;)V

    .line 726
    invoke-virtual {p0, v4}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->addView(Landroid/view/View;)V

    .line 723
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 728
    .end local v4           #layout:Lcom/baidu/launcher/ui/common/PagedViewCellLayout;
    :cond_3
    return-void
.end method

.method public syncShortcutsPageItems(IZ)V
    .locals 17
    .parameter "page"
    .parameter "immediate"

    .prologue
    .line 519
    move-object/from16 v0, p0

    iget v13, v0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mCellCountX:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mCellCountY:I

    mul-int v8, v13, v14

    .line 520
    .local v8, numCells:I
    mul-int v10, p1, v8

    .line 521
    .local v10, startIndex:I
    add-int v13, v10, v8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mShortcuts:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 522
    .local v1, endIndex:I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mNumAppsPages:I

    add-int v13, v13, p1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mNumWidgetPages:I

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->getPageAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;

    .line 525
    .local v7, layout:Lcom/baidu/launcher/ui/common/PagedViewCellLayout;
    invoke-virtual {v7}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->removeAllViewsOnPage()V

    .line 526
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 527
    .local v9, pm:Landroid/content/pm/PackageManager;
    move v2, v10

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 528
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mShortcuts:Ljava/util/ArrayList;

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 529
    .local v6, info:Landroid/content/pm/ResolveInfo;
    iget-object v13, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v14, "com.baidu.BaiduMap"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 527
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 532
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->getItemLyout()I

    move-result v14

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v7, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/baidu/launcher/ui/common/ActionTextView;

    .line 534
    .local v4, icon:Lcom/baidu/launcher/ui/common/ActionTextView;
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->shouldAppDrawBlur()Z

    move-result v13

    iput-boolean v13, v4, Lcom/baidu/launcher/ui/common/ActionTextView;->shouldDrawBlur:Z

    .line 535
    invoke-virtual {v6, v9}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Lcom/baidu/launcher/utils/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 537
    .local v3, ic:Landroid/graphics/Bitmap;
    const/4 v13, 0x0

    new-instance v14, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;

    invoke-direct {v14, v3}, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v4, v13, v14, v15, v0}, Lcom/baidu/launcher/ui/common/ActionTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 539
    const/4 v13, 0x6

    invoke-virtual {v4, v13}, Lcom/baidu/launcher/ui/common/ActionTextView;->setCompoundDrawablePadding(I)V

    .line 540
    invoke-virtual {v6, v9}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v4, v13}, Lcom/baidu/launcher/ui/common/ActionTextView;->setText(Ljava/lang/CharSequence;)V

    .line 541
    invoke-virtual {v4, v6}, Lcom/baidu/launcher/ui/common/ActionTextView;->setTag(Ljava/lang/Object;)V

    .line 542
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/baidu/launcher/ui/common/ActionTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 543
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/baidu/launcher/ui/common/ActionTextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 545
    sub-int v5, v2, v10

    .line 546
    .local v5, index:I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mCellCountX:I

    rem-int v11, v5, v13

    .line 547
    .local v11, x:I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mCellCountX:I

    div-int v12, v5, v13

    .line 548
    .local v12, y:I
    const/4 v13, -0x1

    new-instance v14, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;

    const/4 v15, 0x1

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-direct {v14, v11, v12, v15, v0}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v7, v4, v13, v2, v14}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;)Z

    goto :goto_1

    .line 552
    .end local v3           #ic:Landroid/graphics/Bitmap;
    .end local v4           #icon:Lcom/baidu/launcher/ui/common/ActionTextView;
    .end local v5           #index:I
    .end local v6           #info:Landroid/content/pm/ResolveInfo;
    .end local v11           #x:I
    .end local v12           #y:I
    :cond_1
    invoke-virtual {v7}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->createHardwareLayers()V

    .line 553
    return-void
.end method

.method public syncWidgetPageItems(IZ)V
    .locals 24
    .parameter "page"
    .parameter "immediate"

    .prologue
    .line 626
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mWidgetCountX:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mWidgetCountY:I

    move/from16 v22, v0

    mul-int v15, v21, v22

    .line 629
    .local v15, numItemsPerPage:I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 630
    .local v9, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mWidgetSpacingLayout:Lcom/baidu/launcher/ui/common/PagedViewCellLayout;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->getContentWidth()I

    move-result v7

    .line 631
    .local v7, contentWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mPageLayoutPaddingLeft:I

    move/from16 v21, v0

    sub-int v21, v7, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mPageLayoutPaddingRight:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mWidgetCountX:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mWidgetWidthGap:I

    move/from16 v23, v0

    mul-int v22, v22, v23

    sub-int v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mWidgetCountX:I

    move/from16 v22, v0

    div-int v5, v21, v22

    .line 633
    .local v5, cellWidth:I
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->getMeasuredHeight()I

    move-result v6

    .line 634
    .local v6, contentHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mPageLayoutPaddingTop:I

    move/from16 v21, v0

    sub-int v21, v6, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mPageLayoutPaddingBottom:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mWidgetCountY:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mWidgetHeightGap:I

    move/from16 v23, v0

    mul-int v22, v22, v23

    sub-int v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mWidgetCountY:I

    move/from16 v22, v0

    div-int v3, v21, v22

    .line 637
    .local v3, cellHeight:I
    mul-int v16, p1, v15

    .line 638
    .local v16, offset:I
    move/from16 v8, v16

    .local v8, i:I
    :goto_0
    add-int v21, v16, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mWidgets:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(II)I

    move-result v21

    move/from16 v0, v21

    if-ge v8, v0, :cond_0

    .line 639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mWidgets:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 638
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 644
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mNumAppsPages:I

    move/from16 v21, v0

    add-int v21, v21, p1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->getPageAt(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/baidu/launcher/ui/common/PagedViewGridLayout;

    .line 646
    .local v12, layout:Lcom/baidu/launcher/ui/common/PagedViewGridLayout;
    invoke-virtual {v12}, Lcom/baidu/launcher/ui/common/PagedViewGridLayout;->getCellCountX()I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Lcom/baidu/launcher/ui/common/PagedViewGridLayout;->setColumnCount(I)V

    .line 647
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v4, v0, [I

    .line 648
    .local v4, cellSpans:[I
    const/4 v8, 0x0

    :goto_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v8, v0, :cond_6

    .line 649
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    .line 650
    .local v17, rawInfo:Ljava/lang/Object;
    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/baidu/launcher/data/item/ListWidgetInfo;

    move/from16 v21, v0

    if-eqz v21, :cond_4

    move-object/from16 v14, v17

    .line 651
    check-cast v14, Lcom/baidu/launcher/data/item/ListWidgetInfo;

    .line 652
    .local v14, lwi:Lcom/baidu/launcher/data/item/ListWidgetInfo;
    const/16 v21, 0x0

    iget v0, v14, Lcom/baidu/launcher/data/item/ListWidgetInfo;->spanX:I

    move/from16 v22, v0

    aput v22, v4, v21

    .line 653
    const/16 v21, 0x1

    iget v0, v14, Lcom/baidu/launcher/data/item/ListWidgetInfo;->spanY:I

    move/from16 v22, v0

    aput v22, v4, v21

    .line 669
    .end local v14           #lwi:Lcom/baidu/launcher/data/item/ListWidgetInfo;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mLayoutInflater:Landroid/view/LayoutInflater;

    move-object/from16 v21, v0

    const v22, 0x7f030051

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v12, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v19

    check-cast v19, Lcom/baidu/launcher/ui/editview/PagedViewWidget;

    .line 671
    .local v19, widget:Lcom/baidu/launcher/ui/editview/PagedViewWidget;
    const/16 v21, -0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2, v4}, Lcom/baidu/launcher/ui/editview/PagedViewWidget;->applyFromBaiduWidgetInfo(Ljava/lang/Object;I[I)V

    .line 672
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/editview/PagedViewWidget;->setTag(Ljava/lang/Object;)V

    .line 673
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/editview/PagedViewWidget;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 674
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/editview/PagedViewWidget;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 675
    invoke-virtual/range {v19 .. v19}, Lcom/baidu/launcher/ui/editview/PagedViewWidget;->loadPreview()V

    .line 679
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mWidgetCountX:I

    move/from16 v21, v0

    rem-int v10, v8, v21

    .line 680
    .local v10, ix:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mWidgetCountX:I

    move/from16 v21, v0

    div-int v11, v8, v21

    .line 681
    .local v11, iy:I
    new-instance v13, Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;

    sget-object v21, Lcom/baidu/launcher/ui/common/GridLayout;->LEFT:Lcom/baidu/launcher/ui/common/GridLayout$Alignment;

    move-object/from16 v0, v21

    invoke-static {v11, v0}, Lcom/baidu/launcher/ui/common/GridLayout;->spec(ILcom/baidu/launcher/ui/common/GridLayout$Alignment;)Lcom/baidu/launcher/ui/common/GridLayout$Spec;

    move-result-object v21

    sget-object v22, Lcom/baidu/launcher/ui/common/GridLayout;->TOP:Lcom/baidu/launcher/ui/common/GridLayout$Alignment;

    move-object/from16 v0, v22

    invoke-static {v10, v0}, Lcom/baidu/launcher/ui/common/GridLayout;->spec(ILcom/baidu/launcher/ui/common/GridLayout$Alignment;)Lcom/baidu/launcher/ui/common/GridLayout$Spec;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v13, v0, v1}, Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;-><init>(Lcom/baidu/launcher/ui/common/GridLayout$Spec;Lcom/baidu/launcher/ui/common/GridLayout$Spec;)V

    .line 684
    .local v13, lp:Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;
    iput v5, v13, Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;->width:I

    .line 685
    iput v3, v13, Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;->height:I

    .line 686
    const/16 v21, 0x33

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;->setGravity(I)V

    .line 687
    if-lez v10, :cond_2

    .line 688
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mWidgetWidthGap:I

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v13, Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;->leftMargin:I

    .line 689
    :cond_2
    if-lez v11, :cond_3

    .line 690
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mWidgetHeightGap:I

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v13, Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;->topMargin:I

    .line 691
    :cond_3
    move-object/from16 v0, v19

    invoke-virtual {v12, v0, v13}, Lcom/baidu/launcher/ui/common/PagedViewGridLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 692
    invoke-virtual {v12}, Lcom/baidu/launcher/ui/common/PagedViewGridLayout;->createHardwareLayer()V

    .line 648
    .end local v10           #ix:I
    .end local v11           #iy:I
    .end local v13           #lp:Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;
    .end local v19           #widget:Lcom/baidu/launcher/ui/editview/PagedViewWidget;
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 654
    :cond_4
    move-object/from16 v0, v17

    instance-of v0, v0, Landroid/appwidget/AppWidgetProviderInfo;

    move/from16 v21, v0

    if-eqz v21, :cond_1

    move-object/from16 v20, v17

    .line 655
    check-cast v20, Landroid/appwidget/AppWidgetProviderInfo;

    .line 656
    .local v20, widgetProvider:Landroid/appwidget/AppWidgetProviderInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->getSpanForWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)[I

    move-result-object v4

    .line 658
    const/16 v18, 0x1

    .line 659
    .local v18, shouldAddWidget:Z
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v21

    const-string v22, "com.baidu.launcher.searchbar.BaiduSearchWidgetProvider"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_5

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v21

    const-string v22, "com.baidu.home2"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 661
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKJB()Z

    move-result v21

    if-nez v21, :cond_5

    .line 662
    const/16 v18, 0x0

    .line 665
    :cond_5
    if-nez v18, :cond_1

    goto :goto_2

    .line 694
    .end local v17           #rawInfo:Ljava/lang/Object;
    .end local v18           #shouldAddWidget:Z
    .end local v20           #widgetProvider:Landroid/appwidget/AppWidgetProviderInfo;
    :cond_6
    return-void
.end method

.method updateCalendarIcon(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "icon"

    .prologue
    .line 1209
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->getPageCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1210
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;

    if-eqz v2, :cond_0

    .line 1211
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->getChildrenLayout()Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;

    move-result-object v1

    .line 1213
    .local v1, layout:Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;
    new-instance v2, Lcom/baidu/launcher/ui/editview/EditAppsListView$2;

    invoke-direct {v2, p0, v1, p1}, Lcom/baidu/launcher/ui/editview/EditAppsListView$2;-><init>(Lcom/baidu/launcher/ui/editview/EditAppsListView;Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->post(Ljava/lang/Runnable;)Z

    .line 1209
    .end local v1           #layout:Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1242
    :cond_1
    return-void
.end method

.method public updateData(Z)V
    .locals 2
    .parameter "refreshUI"

    .prologue
    .line 902
    new-instance v0, Lcom/baidu/launcher/ui/editview/EditAppsListView$LoadDataTask;

    invoke-direct {v0, p0, p1}, Lcom/baidu/launcher/ui/editview/EditAppsListView$LoadDataTask;-><init>(Lcom/baidu/launcher/ui/editview/EditAppsListView;Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/editview/EditAppsListView$LoadDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 903
    return-void
.end method
