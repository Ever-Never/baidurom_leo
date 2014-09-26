.class public Lcom/baidu/launcher/ui/folder/FillFolderView;
.super Lcom/baidu/launcher/ui/common/BaiduViewPagger;
.source "FillFolderView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/ui/folder/FillFolderView$1;,
        Lcom/baidu/launcher/ui/folder/FillFolderView$FillFolderPagedViewCellLayout;,
        Lcom/baidu/launcher/ui/folder/FillFolderView$AppDataLoader;,
        Lcom/baidu/launcher/ui/folder/FillFolderView$SelectItem;
    }
.end annotation


# static fields
.field private static TRANSITION_MAX_OVERSCROLL:F = 0.0f

.field protected static final mScale:F = 0.85f


# instance fields
.field private mApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/ui/folder/FillFolderView$SelectItem;",
            ">;"
        }
    .end annotation
.end field

.field private mContentWidth:I

.field private mFolderType:I

.field private mIndicator:Lcom/baidu/launcher/ui/homeview/Indicator;

.field private mInitItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/data/item/BaseItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mMaxAppCellCountX:I

.field private mMaxAppCellCountY:I

.field private mNumAppsPages:I

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mWidgetSpacingLayout:Lcom/baidu/launcher/ui/folder/FillFolderView$FillFolderPagedViewCellLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const v0, 0x3ec28f5c

    sput v0, Lcom/baidu/launcher/ui/folder/FillFolderView;->TRANSITION_MAX_OVERSCROLL:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 79
    invoke-direct {p0, p1, p2}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/ui/folder/FillFolderView;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 81
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/baidu/launcher/ui/folder/FillFolderView;->mApps:Ljava/util/ArrayList;

    .line 82
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/baidu/launcher/ui/folder/FillFolderView;->mInitItems:Ljava/util/ArrayList;

    .line 84
    sget-object v1, Lcom/baidu/home2/R$styleable;->AppsCustomizePagedView:[I

    invoke-virtual {p1, p2, v1, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 85
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/baidu/launcher/ui/folder/FillFolderView;->mMaxAppCellCountX:I

    .line 86
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/baidu/launcher/ui/folder/FillFolderView;->mMaxAppCellCountY:I

    .line 87
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 88
    new-instance v1, Lcom/baidu/launcher/ui/folder/FillFolderView$FillFolderPagedViewCellLayout;

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/folder/FillFolderView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/baidu/launcher/ui/folder/FillFolderView$FillFolderPagedViewCellLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/baidu/launcher/ui/folder/FillFolderView;->mWidgetSpacingLayout:Lcom/baidu/launcher/ui/folder/FillFolderView$FillFolderPagedViewCellLayout;

    .line 90
    iput-boolean v3, p0, Lcom/baidu/launcher/ui/folder/FillFolderView;->mFadeInAdjacentScreens:Z

    .line 91
    return-void
.end method

.method static synthetic access$100(Lcom/baidu/launcher/ui/folder/FillFolderView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/FillFolderView;->mInitItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/baidu/launcher/ui/folder/FillFolderView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/baidu/launcher/ui/folder/FillFolderView;->mFolderType:I

    return v0
.end method

.method private removeDupItems(Ljava/util/ArrayList;Lcom/baidu/launcher/data/item/BaseItemInfo;)V
    .locals 5
    .parameter
    .parameter "item"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/data/item/ListAppInfo;",
            ">;",
            "Lcom/baidu/launcher/data/item/BaseItemInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 413
    .local p1, appList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListAppInfo;>;"
    const/4 v2, -0x1

    .line 414
    .local v2, index:I
    const/4 v0, 0x0

    .line 415
    .local v0, component:Landroid/content/ComponentName;
    instance-of v4, p2, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    if-eqz v4, :cond_3

    .line 416
    check-cast p2, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    .end local p2
    iget-object v3, p2, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->intent:Landroid/content/Intent;

    .line 417
    .local v3, intent:Landroid/content/Intent;
    if-nez v3, :cond_2

    const/4 v0, 0x0

    .line 421
    .end local v3           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    if-nez v0, :cond_4

    .line 431
    :cond_1
    :goto_1
    return-void

    .line 417
    .restart local v3       #intent:Landroid/content/Intent;
    :cond_2
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_0

    .line 418
    .end local v3           #intent:Landroid/content/Intent;
    .restart local p2
    :cond_3
    instance-of v4, p2, Lcom/baidu/launcher/data/item/ListAppInfo;

    if-eqz v4, :cond_0

    .line 419
    check-cast p2, Lcom/baidu/launcher/data/item/ListAppInfo;

    .end local p2
    iget-object v0, p2, Lcom/baidu/launcher/data/item/ListAppInfo;->componentName:Landroid/content/ComponentName;

    goto :goto_0

    .line 422
    :cond_4
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 423
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/launcher/data/item/ListAppInfo;

    iget-object v4, v4, Lcom/baidu/launcher/data/item/ListAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 424
    move v2, v1

    .line 428
    :cond_5
    const/4 v4, -0x1

    if-le v2, v4, :cond_1

    .line 429
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 422
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private setVisibilityOnChildren(Landroid/view/ViewGroup;I)V
    .locals 3
    .parameter "layout"
    .parameter "visibility"

    .prologue
    .line 212
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 213
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 214
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/view/View;->setVisibility(I)V

    .line 213
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 216
    :cond_0
    return-void
.end method

.method private setupPage(Lcom/baidu/launcher/ui/common/PagedViewCellLayout;)V
    .locals 7
    .parameter "layout"

    .prologue
    const/high16 v6, -0x8000

    .line 219
    iget v2, p0, Lcom/baidu/launcher/ui/folder/FillFolderView;->mCellCountX:I

    iget v3, p0, Lcom/baidu/launcher/ui/folder/FillFolderView;->mCellCountY:I

    invoke-virtual {p1, v2, v3}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->setCellCount(II)V

    .line 220
    iget v2, p0, Lcom/baidu/launcher/ui/folder/FillFolderView;->mPageLayoutWidthGap:I

    iget v3, p0, Lcom/baidu/launcher/ui/folder/FillFolderView;->mPageLayoutHeightGap:I

    invoke-virtual {p1, v2, v3}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->setGap(II)V

    .line 221
    iget v2, p0, Lcom/baidu/launcher/ui/folder/FillFolderView;->mPageLayoutPaddingLeft:I

    iget v3, p0, Lcom/baidu/launcher/ui/folder/FillFolderView;->mPageLayoutPaddingTop:I

    iget v4, p0, Lcom/baidu/launcher/ui/folder/FillFolderView;->mPageLayoutPaddingRight:I

    iget v5, p0, Lcom/baidu/launcher/ui/folder/FillFolderView;->mPageLayoutPaddingBottom:I

    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->setPadding(IIII)V

    .line 228
    const/16 v2, 0x8

    invoke-direct {p0, p1, v2}, Lcom/baidu/launcher/ui/folder/FillFolderView;->setVisibilityOnChildren(Landroid/view/ViewGroup;I)V

    .line 229
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/folder/FillFolderView;->getMeasuredWidth()I

    move-result v2

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 230
    .local v1, widthSpec:I
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/folder/FillFolderView;->getMeasuredHeight()I

    move-result v2

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 231
    .local v0, heightSpec:I
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/folder/FillFolderView;->getPageContentWidth()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->setMinimumWidth(I)V

    .line 232
    invoke-virtual {p1, v1, v0}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->measure(II)V

    .line 233
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/baidu/launcher/ui/folder/FillFolderView;->setVisibilityOnChildren(Landroid/view/ViewGroup;I)V

    .line 234
    return-void
.end method

.method private syncAppsPageItems(IZ)V
    .locals 15
    .parameter "page"
    .parameter "immediate"

    .prologue
    .line 238
    iget v0, p0, Lcom/baidu/launcher/ui/folder/FillFolderView;->mCellCountX:I

    iget v3, p0, Lcom/baidu/launcher/ui/folder/FillFolderView;->mCellCountY:I

    mul-int v12, v0, v3

    .line 239
    .local v12, numCells:I
    mul-int v13, p1, v12

    .line 240
    .local v13, startIndex:I
    add-int v0, v13, v12

    iget-object v3, p0, Lcom/baidu/launcher/ui/folder/FillFolderView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 242
    .local v6, endIndex:I
    invoke-virtual/range {p0 .. p1}, Lcom/baidu/launcher/ui/folder/FillFolderView;->getPageAt(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;

    .line 244
    .local v11, layout:Lcom/baidu/launcher/ui/common/PagedViewCellLayout;
    invoke-virtual {v11}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->removeAllViewsOnPage()V

    .line 245
    move v7, v13

    .local v7, i:I
    :goto_0
    if-ge v7, v6, :cond_1

    .line 246
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/FillFolderView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/baidu/launcher/ui/folder/FillFolderView$SelectItem;

    .line 247
    .local v10, item:Lcom/baidu/launcher/ui/folder/FillFolderView$SelectItem;
    iget-object v9, v10, Lcom/baidu/launcher/ui/folder/FillFolderView$SelectItem;->app:Lcom/baidu/launcher/data/item/BaseItemInfo;

    .line 248
    .local v9, info:Lcom/baidu/launcher/data/item/BaseItemInfo;
    iget-object v0, v9, Lcom/baidu/launcher/data/item/BaseItemInfo;->iconBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 245
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/FillFolderView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030007

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v11, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/baidu/launcher/ui/folder/FillFolderTextView;

    .line 250
    .local v8, icon:Lcom/baidu/launcher/ui/folder/FillFolderTextView;
    const/4 v0, 0x0

    iput-boolean v0, v8, Lcom/baidu/launcher/ui/folder/FillFolderTextView;->shouldDrawBlur:Z

    .line 251
    const/4 v0, 0x0

    new-instance v3, Lcom/baidu/launcher/ui/common/ScaledBitmapDrawable;

    iget-object v4, v9, Lcom/baidu/launcher/data/item/BaseItemInfo;->iconBitmap:Landroid/graphics/Bitmap;

    const v14, 0x3f59999a

    invoke-direct {v3, v4, v14}, Lcom/baidu/launcher/ui/common/ScaledBitmapDrawable;-><init>(Landroid/graphics/Bitmap;F)V

    const/4 v4, 0x0

    const/4 v14, 0x0

    invoke-virtual {v8, v0, v3, v4, v14}, Lcom/baidu/launcher/ui/folder/FillFolderTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 252
    iget-object v0, v9, Lcom/baidu/launcher/data/item/BaseItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v8, v0}, Lcom/baidu/launcher/ui/folder/FillFolderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    invoke-virtual {v8, v10}, Lcom/baidu/launcher/ui/folder/FillFolderTextView;->setTag(Ljava/lang/Object;)V

    .line 254
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/FillFolderView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v0}, Lcom/baidu/launcher/ui/folder/FillFolderTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    iget-boolean v0, v10, Lcom/baidu/launcher/ui/folder/FillFolderView$SelectItem;->selected:Z

    invoke-virtual {v8, v0}, Lcom/baidu/launcher/ui/folder/FillFolderTextView;->setItemSelected(Z)V

    .line 256
    sub-int v5, v7, v13

    .line 257
    .local v5, index:I
    iget v0, p0, Lcom/baidu/launcher/ui/folder/FillFolderView;->mCellCountX:I

    rem-int v1, v5, v0

    .line 258
    .local v1, x:I
    iget v0, p0, Lcom/baidu/launcher/ui/folder/FillFolderView;->mCellCountX:I

    div-int v2, v5, v0

    .line 259
    .local v2, y:I
    const/4 v14, -0x1

    new-instance v0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;-><init>(IIIII)V

    invoke-virtual {v11, v8, v14, v7, v0}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;)Z

    goto :goto_1

    .line 263
    .end local v1           #x:I
    .end local v2           #y:I
    .end local v5           #index:I
    .end local v8           #icon:Lcom/baidu/launcher/ui/folder/FillFolderTextView;
    .end local v9           #info:Lcom/baidu/launcher/data/item/BaseItemInfo;
    .end local v10           #item:Lcom/baidu/launcher/ui/folder/FillFolderView$SelectItem;
    :cond_1
    invoke-virtual {v11}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->createHardwareLayers()V

    .line 264
    return-void
.end method

.method private testDataReady()Z
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/FillFolderView;->mApps:Ljava/util/ArrayList;

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

.method private updatePageCounts()V
    .locals 3

    .prologue
    .line 124
    iget v0, p0, Lcom/baidu/launcher/ui/folder/FillFolderView;->mCellCountX:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/baidu/launcher/ui/folder/FillFolderView;->mCellCountY:I

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/FillFolderView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/baidu/launcher/ui/folder/FillFolderView;->mCellCountX:I

    iget v2, p0, Lcom/baidu/launcher/ui/folder/FillFolderView;->mCellCountY:I

    mul-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/baidu/launcher/ui/folder/FillFolderView;->mNumAppsPages:I

    .line 130
    :goto_0
    return-void

    .line 127
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/launcher/ui/folder/FillFolderView;->mNumAppsPages:I

    goto :goto_0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    const/4 v10, -0x1

    .line 184
    invoke-super {p0, p1}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 186
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/folder/FillFolderView;->getChildCount()I

    move-result v4

    .line 187
    .local v4, pageCount:I
    if-lez v4, :cond_1

    .line 188
    iget-object v8, p0, Lcom/baidu/launcher/ui/folder/FillFolderView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v8}, Lcom/baidu/launcher/ui/folder/FillFolderView;->getVisiblePages([I)V

    .line 189
    iget-object v8, p0, Lcom/baidu/launcher/ui/folder/FillFolderView;->mTempVisiblePagesRange:[I

    const/4 v9, 0x0

    aget v3, v8, v9

    .line 190
    .local v3, leftScreen:I
    iget-object v8, p0, Lcom/baidu/launcher/ui/folder/FillFolderView;->mTempVisiblePagesRange:[I

    const/4 v9, 0x1

    aget v5, v8, v9

    .line 191
    .local v5, rightScreen:I
    if-eq v3, v10, :cond_1

    if-eq v5, v10, :cond_1

    .line 192
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/folder/FillFolderView;->getDrawingTime()J

    move-result-wide v0

    .line 193
    .local v0, drawingTime:J
    move v2, v3

    .local v2, i:I
    :goto_0
    if-gt v2, v5, :cond_1

    .line 194
    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/folder/FillFolderView;->getPageAt(I)Landroid/view/View;

    move-result-object v7

    .line 195
    .local v7, v:Landroid/view/View;
    const/4 v6, 0x0

    .line 196
    .local v6, translationX:F
    instance-of v8, v7, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;

    if-eqz v8, :cond_0

    move-object v8, v7

    .line 197
    check-cast v8, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;

    iget v6, v8, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->translationXForLowApi:F

    .line 199
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 200
    const/4 v8, 0x0

    invoke-virtual {p1, v6, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 201
    invoke-virtual {p0, p1, v7, v0, v1}, Lcom/baidu/launcher/ui/folder/FillFolderView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 202
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 193
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 206
    .end local v0           #drawingTime:J
    .end local v2           #i:I
    .end local v3           #leftScreen:I
    .end local v5           #rightScreen:I
    .end local v6           #translationX:F
    .end local v7           #v:Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected getAllItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/ui/folder/FillFolderView$SelectItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 355
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/FillFolderView;->mApps:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPageAt(I)Landroid/view/View;
    .locals 1
    .parameter "index"

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/folder/FillFolderView;->getChildCount()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/folder/FillFolderView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getPageContentWidth()I
    .locals 1

    .prologue
    .line 342
    iget v0, p0, Lcom/baidu/launcher/ui/folder/FillFolderView;->mContentWidth:I

    return v0
.end method

.method public indexToPage(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 300
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/folder/FillFolderView;->getChildCount()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method protected init()V
    .locals 1

    .prologue
    .line 95
    invoke-super {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->init()V

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/folder/FillFolderView;->mCenterPagesVertically:Z

    .line 97
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

    .line 134
    const v1, 0x7fffffff

    .line 135
    .local v1, maxCellCountX:I
    const v2, 0x7fffffff

    .line 136
    .local v2, maxCellCountY:I
    iget v4, p0, Lcom/baidu/launcher/ui/folder/FillFolderView;->mMaxAppCellCountX:I

    if-le v4, v5, :cond_0

    .line 137
    iget v4, p0, Lcom/baidu/launcher/ui/folder/FillFolderView;->mMaxAppCellCountX:I

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 139
    :cond_0
    iget v4, p0, Lcom/baidu/launcher/ui/folder/FillFolderView;->mMaxAppCellCountY:I

    if-le v4, v5, :cond_1

    .line 140
    iget v4, p0, Lcom/baidu/launcher/ui/folder/FillFolderView;->mMaxAppCellCountY:I

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 145
    :cond_1
    iget-object v4, p0, Lcom/baidu/launcher/ui/folder/FillFolderView;->mWidgetSpacingLayout:Lcom/baidu/launcher/ui/folder/FillFolderView$FillFolderPagedViewCellLayout;

    iget v5, p0, Lcom/baidu/launcher/ui/folder/FillFolderView;->mPageLayoutWidthGap:I

    iget v6, p0, Lcom/baidu/launcher/ui/folder/FillFolderView;->mPageLayoutHeightGap:I

    invoke-virtual {v4, v5, v6}, Lcom/baidu/launcher/ui/folder/FillFolderView$FillFolderPagedViewCellLayout;->setGap(II)V

    .line 146
    iget-object v4, p0, Lcom/baidu/launcher/ui/folder/FillFolderView;->mWidgetSpacingLayout:Lcom/baidu/launcher/ui/folder/FillFolderView$FillFolderPagedViewCellLayout;

    iget v5, p0, Lcom/baidu/launcher/ui/folder/FillFolderView;->mPageLayoutPaddingLeft:I

    iget v6, p0, Lcom/baidu/launcher/ui/folder/FillFolderView;->mPageLayoutPaddingTop:I

    iget v7, p0, Lcom/baidu/launcher/ui/folder/FillFolderView;->mPageLayoutPaddingRight:I

    iget v8, p0, Lcom/baidu/launcher/ui/folder/FillFolderView;->mPageLayoutPaddingBottom:I

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/baidu/launcher/ui/folder/FillFolderView$FillFolderPagedViewCellLayout;->setPadding(IIII)V

    .line 148
    iget-object v4, p0, Lcom/baidu/launcher/ui/folder/FillFolderView;->mWidgetSpacingLayout:Lcom/baidu/launcher/ui/folder/FillFolderView$FillFolderPagedViewCellLayout;

    invoke-virtual {v4, p1, p2, v1, v2}, Lcom/baidu/launcher/ui/folder/FillFolderView$FillFolderPagedViewCellLayout;->calculateCellCount(IIII)V

    .line 149
    iget-object v4, p0, Lcom/baidu/launcher/ui/folder/FillFolderView;->mWidgetSpacingLayout:Lcom/baidu/launcher/ui/folder/FillFolderView$FillFolderPagedViewCellLayout;

    invoke-virtual {v4}, Lcom/baidu/launcher/ui/folder/FillFolderView$FillFolderPagedViewCellLayout;->getCellCountX()I

    move-result v4

    iput v4, p0, Lcom/baidu/launcher/ui/folder/FillFolderView;->mCellCountX:I

    .line 150
    iget-object v4, p0, Lcom/baidu/launcher/ui/folder/FillFolderView;->mWidgetSpacingLayout:Lcom/baidu/launcher/ui/folder/FillFolderView$FillFolderPagedViewCellLayout;

    invoke-virtual {v4}, Lcom/baidu/launcher/ui/folder/FillFolderView$FillFolderPagedViewCellLayout;->getCellCountY()I

    move-result v4

    iput v4, p0, Lcom/baidu/launcher/ui/folder/FillFolderView;->mCellCountY:I

    .line 151
    iget v4, p0, Lcom/baidu/launcher/ui/folder/FillFolderView;->mCellCountY:I

    if-ge v4, v11, :cond_2

    .line 152
    iput v11, p0, Lcom/baidu/launcher/ui/folder/FillFolderView;->mCellCountY:I

    .line 154
    :cond_2
    invoke-direct {p0}, Lcom/baidu/launcher/ui/folder/FillFolderView;->updatePageCounts()V

    .line 157
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/folder/FillFolderView;->getMeasuredWidth()I

    move-result v4

    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 158
    .local v3, widthSpec:I
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/folder/FillFolderView;->getMeasuredHeight()I

    move-result v4

    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 159
    .local v0, heightSpec:I
    iget-object v4, p0, Lcom/baidu/launcher/ui/folder/FillFolderView;->mWidgetSpacingLayout:Lcom/baidu/launcher/ui/folder/FillFolderView$FillFolderPagedViewCellLayout;

    invoke-virtual {v4, v3, v0}, Lcom/baidu/launcher/ui/folder/FillFolderView$FillFolderPagedViewCellLayout;->measure(II)V

    .line 160
    iget-object v4, p0, Lcom/baidu/launcher/ui/folder/FillFolderView;->mWidgetSpacingLayout:Lcom/baidu/launcher/ui/folder/FillFolderView$FillFolderPagedViewCellLayout;

    invoke-virtual {v4}, Lcom/baidu/launcher/ui/folder/FillFolderView$FillFolderPagedViewCellLayout;->getContentWidth()I

    move-result v4

    iput v4, p0, Lcom/baidu/launcher/ui/folder/FillFolderView;->mContentWidth:I

    .line 162
    invoke-virtual {p0, v10, v10}, Lcom/baidu/launcher/ui/folder/FillFolderView;->invalidatePageData(IZ)V

    .line 164
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 169
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 170
    .local v1, width:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 171
    .local v0, height:I
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/folder/FillFolderView;->isDataReady()Z

    move-result v2

    if-nez v2, :cond_0

    .line 172
    invoke-direct {p0}, Lcom/baidu/launcher/ui/folder/FillFolderView;->testDataReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 173
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/folder/FillFolderView;->setDataIsReady()V

    .line 174
    invoke-virtual {p0, v1, v0}, Lcom/baidu/launcher/ui/folder/FillFolderView;->setMeasuredDimension(II)V

    .line 175
    invoke-virtual {p0, v1, v0}, Lcom/baidu/launcher/ui/folder/FillFolderView;->onDataReady(II)V

    .line 179
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->onMeasure(II)V

    .line 180
    return-void
.end method

.method public onPageBeginMoving()V
    .locals 0

    .prologue
    .line 346
    invoke-super {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->onPageBeginMoving()V

    .line 347
    return-void
.end method

.method public onPageEndMoving()V
    .locals 0

    .prologue
    .line 351
    invoke-super {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->onPageEndMoving()V

    .line 352
    return-void
.end method

.method protected onUnhandledTap(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "ev"

    .prologue
    .line 111
    return-void
.end method

.method protected overScroll(F)V
    .locals 0
    .parameter "amount"

    .prologue
    .line 338
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/folder/FillFolderView;->acceleratedOverScroll(F)V

    .line 339
    return-void
.end method

.method public pageBeginMoving()V
    .locals 0

    .prologue
    .line 307
    invoke-super {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->pageBeginMoving()V

    .line 308
    return-void
.end method

.method public pageEndMoving()V
    .locals 2

    .prologue
    .line 312
    invoke-super {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->pageEndMoving()V

    .line 313
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/FillFolderView;->mIndicator:Lcom/baidu/launcher/ui/homeview/Indicator;

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/folder/FillFolderView;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/homeview/Indicator;->setCurrentScreen(I)V

    .line 314
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/FillFolderView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 453
    return-void
.end method

.method public screenScrolled(I)V
    .locals 8
    .parameter "screenCenter"

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x0

    .line 319
    iget v5, p0, Lcom/baidu/launcher/ui/folder/FillFolderView;->mOverScrollX:I

    if-ltz v5, :cond_0

    iget v5, p0, Lcom/baidu/launcher/ui/folder/FillFolderView;->mOverScrollX:I

    iget v6, p0, Lcom/baidu/launcher/ui/folder/FillFolderView;->mMaxScrollX:I

    if-le v5, v6, :cond_4

    .line 320
    :cond_0
    iget v5, p0, Lcom/baidu/launcher/ui/folder/FillFolderView;->mOverScrollX:I

    if-gez v5, :cond_2

    .line 321
    .local v0, index:I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/folder/FillFolderView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;

    .line 322
    .local v2, pcl:Lcom/baidu/launcher/ui/common/PagedViewCellLayout;
    if-nez v2, :cond_3

    .line 335
    .end local v0           #index:I
    .end local v2           #pcl:Lcom/baidu/launcher/ui/common/PagedViewCellLayout;
    :cond_1
    :goto_1
    return-void

    .line 320
    :cond_2
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/folder/FillFolderView;->getChildCount()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    goto :goto_0

    .line 323
    .restart local v0       #index:I
    .restart local v2       #pcl:Lcom/baidu/launcher/ui/common/PagedViewCellLayout;
    :cond_3
    invoke-virtual {p0, p1, v2, v0}, Lcom/baidu/launcher/ui/folder/FillFolderView;->getScrollProgress(ILandroid/view/View;I)F

    move-result v4

    .line 324
    .local v4, scrollProgress:F
    neg-float v5, v4

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    sget v6, Lcom/baidu/launcher/ui/folder/FillFolderView;->TRANSITION_MAX_OVERSCROLL:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    int-to-float v5, v5

    iput v5, v2, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->translationXForLowApi:F

    goto :goto_1

    .line 326
    .end local v0           #index:I
    .end local v2           #pcl:Lcom/baidu/launcher/ui/common/PagedViewCellLayout;
    .end local v4           #scrollProgress:F
    :cond_4
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/folder/FillFolderView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;

    .line 327
    .local v1, left:Lcom/baidu/launcher/ui/common/PagedViewCellLayout;
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/folder/FillFolderView;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v5}, Lcom/baidu/launcher/ui/folder/FillFolderView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;

    .line 328
    .local v3, right:Lcom/baidu/launcher/ui/common/PagedViewCellLayout;
    if-eqz v1, :cond_5

    .line 329
    iput v7, v1, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->translationXForLowApi:F

    .line 331
    :cond_5
    if-eqz v3, :cond_1

    .line 332
    iput v7, v3, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->translationXForLowApi:F

    goto :goto_1
.end method

.method public setCurrentPage(I)V
    .locals 2
    .parameter "currentPage"

    .prologue
    .line 267
    invoke-super {p0, p1}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->setCurrentPage(I)V

    .line 268
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/FillFolderView;->mIndicator:Lcom/baidu/launcher/ui/homeview/Indicator;

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/folder/FillFolderView;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/homeview/Indicator;->setCurrentScreen(I)V

    .line 269
    return-void
.end method

.method protected setIndicator(Lcom/baidu/launcher/ui/homeview/Indicator;)V
    .locals 0
    .parameter "indicator"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/baidu/launcher/ui/folder/FillFolderView;->mIndicator:Lcom/baidu/launcher/ui/homeview/Indicator;

    .line 101
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/baidu/launcher/ui/folder/FillFolderView;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 106
    return-void
.end method

.method public syncPageItems(IZ)V
    .locals 1
    .parameter "page"
    .parameter "immediate"

    .prologue
    .line 287
    iget v0, p0, Lcom/baidu/launcher/ui/folder/FillFolderView;->mNumAppsPages:I

    if-ge p1, v0, :cond_0

    .line 288
    invoke-direct {p0, p1, p2}, Lcom/baidu/launcher/ui/folder/FillFolderView;->syncAppsPageItems(IZ)V

    .line 290
    :cond_0
    return-void
.end method

.method public syncPages()V
    .locals 4

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/folder/FillFolderView;->removeAllViews()V

    .line 275
    iget-object v3, p0, Lcom/baidu/launcher/ui/folder/FillFolderView;->mIndicator:Lcom/baidu/launcher/ui/homeview/Indicator;

    invoke-virtual {v3}, Lcom/baidu/launcher/ui/homeview/Indicator;->removeAllViews()V

    .line 276
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/folder/FillFolderView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 277
    .local v0, context:Landroid/content/Context;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v3, p0, Lcom/baidu/launcher/ui/folder/FillFolderView;->mNumAppsPages:I

    if-ge v1, v3, :cond_0

    .line 278
    new-instance v2, Lcom/baidu/launcher/ui/folder/FillFolderView$FillFolderPagedViewCellLayout;

    invoke-direct {v2, v0}, Lcom/baidu/launcher/ui/folder/FillFolderView$FillFolderPagedViewCellLayout;-><init>(Landroid/content/Context;)V

    .line 279
    .local v2, layout:Lcom/baidu/launcher/ui/folder/FillFolderView$FillFolderPagedViewCellLayout;
    invoke-direct {p0, v2}, Lcom/baidu/launcher/ui/folder/FillFolderView;->setupPage(Lcom/baidu/launcher/ui/common/PagedViewCellLayout;)V

    .line 280
    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/folder/FillFolderView;->addView(Landroid/view/View;)V

    .line 281
    iget-object v3, p0, Lcom/baidu/launcher/ui/folder/FillFolderView;->mIndicator:Lcom/baidu/launcher/ui/homeview/Indicator;

    invoke-virtual {v3}, Lcom/baidu/launcher/ui/homeview/Indicator;->addScreen()V

    .line 277
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 283
    .end local v2           #layout:Lcom/baidu/launcher/ui/folder/FillFolderView$FillFolderPagedViewCellLayout;
    :cond_0
    return-void
.end method

.method public updateApps(Ljava/util/ArrayList;IZ)V
    .locals 13
    .parameter
    .parameter "folderType"
    .parameter "refresh"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<+",
            "Lcom/baidu/launcher/data/item/BaseItemInfo;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 359
    .local p1, initItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Lcom/baidu/launcher/data/item/BaseItemInfo;>;"
    iget-object v9, p0, Lcom/baidu/launcher/ui/folder/FillFolderView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 360
    iput p2, p0, Lcom/baidu/launcher/ui/folder/FillFolderView;->mFolderType:I

    .line 361
    iget-object v9, p0, Lcom/baidu/launcher/ui/folder/FillFolderView;->mInitItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 362
    iget-object v9, p0, Lcom/baidu/launcher/ui/folder/FillFolderView;->mInitItems:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 364
    :cond_0
    iget-object v9, p0, Lcom/baidu/launcher/ui/folder/FillFolderView;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/baidu/launcher/data/AppsDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/AppsDataManager;

    move-result-object v8

    .line 365
    .local v8, manager:Lcom/baidu/launcher/data/AppsDataManager;
    invoke-virtual {v8}, Lcom/baidu/launcher/data/AppsDataManager;->isAppLoaded()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 366
    invoke-virtual {v8}, Lcom/baidu/launcher/data/AppsDataManager;->getAllApps()Ljava/util/ArrayList;

    move-result-object v1

    .line 368
    .local v1, appList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListAppInfo;>;"
    const/4 v3, 0x0

    .line 369
    .local v3, i:I
    iget-object v9, p0, Lcom/baidu/launcher/ui/folder/FillFolderView;->mInitItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/baidu/launcher/data/item/BaseItemInfo;

    .line 370
    .local v6, initItem:Lcom/baidu/launcher/data/item/BaseItemInfo;
    new-instance v7, Lcom/baidu/launcher/ui/folder/FillFolderView$SelectItem;

    invoke-direct {v7}, Lcom/baidu/launcher/ui/folder/FillFolderView$SelectItem;-><init>()V

    .line 371
    .local v7, item:Lcom/baidu/launcher/ui/folder/FillFolderView$SelectItem;
    iput-object v6, v7, Lcom/baidu/launcher/ui/folder/FillFolderView$SelectItem;->app:Lcom/baidu/launcher/data/item/BaseItemInfo;

    .line 372
    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .local v4, i:I
    iput v3, v7, Lcom/baidu/launcher/ui/folder/FillFolderView$SelectItem;->index:I

    .line 373
    const/4 v9, 0x1

    iput-boolean v9, v7, Lcom/baidu/launcher/ui/folder/FillFolderView$SelectItem;->selected:Z

    .line 374
    iget-object v9, p0, Lcom/baidu/launcher/ui/folder/FillFolderView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    invoke-direct {p0, v1, v6}, Lcom/baidu/launcher/ui/folder/FillFolderView;->removeDupItems(Ljava/util/ArrayList;Lcom/baidu/launcher/data/item/BaseItemInfo;)V

    move v3, v4

    .end local v4           #i:I
    .restart local v3       #i:I
    goto :goto_0

    .line 377
    .end local v6           #initItem:Lcom/baidu/launcher/data/item/BaseItemInfo;
    .end local v7           #item:Lcom/baidu/launcher/ui/folder/FillFolderView$SelectItem;
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/data/item/ListAppInfo;

    .line 379
    .local v0, app:Lcom/baidu/launcher/data/item/ListAppInfo;
    const/16 v9, 0xb

    if-ne p2, v9, :cond_3

    iget-wide v9, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->container:J

    const-wide/16 v11, -0x3e8

    cmp-long v9, v9, v11

    if-nez v9, :cond_2

    :cond_3
    iget-boolean v9, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->isVisible:Z

    if-eqz v9, :cond_2

    .line 384
    new-instance v7, Lcom/baidu/launcher/ui/folder/FillFolderView$SelectItem;

    invoke-direct {v7}, Lcom/baidu/launcher/ui/folder/FillFolderView$SelectItem;-><init>()V

    .line 385
    .restart local v7       #item:Lcom/baidu/launcher/ui/folder/FillFolderView$SelectItem;
    iput-object v0, v7, Lcom/baidu/launcher/ui/folder/FillFolderView$SelectItem;->app:Lcom/baidu/launcher/data/item/BaseItemInfo;

    .line 386
    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .restart local v4       #i:I
    iput v3, v7, Lcom/baidu/launcher/ui/folder/FillFolderView$SelectItem;->index:I

    .line 387
    iget-object v9, p0, Lcom/baidu/launcher/ui/folder/FillFolderView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v4

    .end local v4           #i:I
    .restart local v3       #i:I
    goto :goto_1

    .line 389
    .end local v0           #app:Lcom/baidu/launcher/data/item/ListAppInfo;
    .end local v7           #item:Lcom/baidu/launcher/ui/folder/FillFolderView$SelectItem;
    :cond_4
    iget-object v9, p0, Lcom/baidu/launcher/ui/folder/FillFolderView;->mInitItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 390
    iget-object v9, p0, Lcom/baidu/launcher/ui/folder/FillFolderView;->mContext:Landroid/content/Context;

    instance-of v9, v9, Lcom/baidu/launcher/ui/folder/FillFolder;

    if-eqz v9, :cond_5

    .line 391
    iget-object v9, p0, Lcom/baidu/launcher/ui/folder/FillFolderView;->mContext:Landroid/content/Context;

    check-cast v9, Lcom/baidu/launcher/ui/folder/FillFolder;

    invoke-virtual {v9}, Lcom/baidu/launcher/ui/folder/FillFolder;->onAppsLoaded()V

    .line 399
    :cond_5
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/folder/FillFolderView;->isDataReady()Z

    move-result v9

    if-nez v9, :cond_8

    .line 400
    invoke-direct {p0}, Lcom/baidu/launcher/ui/folder/FillFolderView;->updatePageCounts()V

    .line 401
    invoke-direct {p0}, Lcom/baidu/launcher/ui/folder/FillFolderView;->testDataReady()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/folder/FillFolderView;->requestLayout()V

    .line 410
    .end local v1           #appList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListAppInfo;>;"
    .end local v3           #i:I
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_6
    :goto_2
    return-void

    .line 394
    :cond_7
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/folder/FillFolderView;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 395
    .local v2, container:Landroid/view/ViewGroup;
    iget-object v9, p0, Lcom/baidu/launcher/ui/folder/FillFolderView;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0x7f030078

    invoke-virtual {v9, v10, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 396
    new-instance v9, Lcom/baidu/launcher/ui/folder/FillFolderView$AppDataLoader;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/baidu/launcher/ui/folder/FillFolderView$AppDataLoader;-><init>(Lcom/baidu/launcher/ui/folder/FillFolderView;Lcom/baidu/launcher/ui/folder/FillFolderView$1;)V

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Void;

    invoke-virtual {v9, v10}, Lcom/baidu/launcher/ui/folder/FillFolderView$AppDataLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_2

    .line 403
    .end local v2           #container:Landroid/view/ViewGroup;
    .restart local v1       #appList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListAppInfo;>;"
    .restart local v3       #i:I
    .restart local v5       #i$:Ljava/util/Iterator;
    :cond_8
    invoke-direct {p0}, Lcom/baidu/launcher/ui/folder/FillFolderView;->updatePageCounts()V

    .line 404
    if-eqz p3, :cond_9

    .line 405
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/baidu/launcher/ui/folder/FillFolderView;->invalidatePageData(I)V

    goto :goto_2

    .line 407
    :cond_9
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/folder/FillFolderView;->syncPages()V

    goto :goto_2
.end method
