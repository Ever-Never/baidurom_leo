.class public Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;
.super Landroid/view/ViewGroup;
.source "QuickLauncherLayout.java"


# instance fields
.field private mCenterTabSize:I

.field private mChildHeight:I

.field private mChildWidth:I

.field public mCircleHeight:I

.field private mCirclePadding:I

.field public mCircleWidth:I

.field private mParent:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

.field private mRadius:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00c8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->mCenterTabSize:I

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->mCircleHeight:I

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00ca

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->mCirclePadding:I

    .line 43
    iget v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->mCircleHeight:I

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->mCircleWidth:I

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->mChildWidth:I

    .line 26
    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->mChildHeight:I

    .line 29
    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->mRadius:I

    .line 48
    return-void
.end method

.method private changeChildAlpha(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherView;)V
    .locals 6
    .parameter "child"

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0xff

    .line 219
    if-nez p1, :cond_0

    .line 227
    :goto_0
    return-void

    .line 220
    :cond_0
    invoke-virtual {p1}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v0, v2, v3

    .line 221
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 222
    check-cast v1, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;

    .line 223
    .local v1, iconBitemap:Lcom/baidu/launcher/ui/common/FastBitmapDrawable;
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->mParent:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    iget v2, v2, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mAlpha:I

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;->setDrawbleAlpha(I)V

    .line 224
    invoke-virtual {p1, v5, v1, v5, v5}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 226
    .end local v1           #iconBitemap:Lcom/baidu/launcher/ui/common/FastBitmapDrawable;
    :cond_1
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->mParent:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    iget v2, v2, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mAlpha:I

    invoke-static {v2, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherView;->setTextColor(I)V

    goto :goto_0
.end method

.method private changeChildrenAlpha()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/16 v7, 0xff

    .line 203
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->getChildCount()I

    move-result v0

    .line 204
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 205
    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherView;

    .line 206
    .local v3, icon:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherView;
    invoke-virtual {v3}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherView;->getVisibility()I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_0

    invoke-virtual {v3}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherView;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_1

    .line 204
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 209
    :cond_1
    invoke-virtual {v3}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aget-object v1, v5, v8

    .line 210
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aget-object v5, v5, v8

    if-eqz v5, :cond_0

    move-object v4, v1

    .line 211
    check-cast v4, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;

    .line 212
    .local v4, iconBitemap:Lcom/baidu/launcher/ui/common/FastBitmapDrawable;
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->mParent:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    iget v5, v5, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mAlpha:I

    invoke-virtual {v4, v5}, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;->setDrawbleAlpha(I)V

    .line 213
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->mParent:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    iget v5, v5, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mAlpha:I

    invoke-static {v5, v7, v7, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherView;->setTextColor(I)V

    goto :goto_1

    .line 216
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v3           #icon:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherView;
    .end local v4           #iconBitemap:Lcom/baidu/launcher/ui/common/FastBitmapDrawable;
    :cond_2
    return-void
.end method

.method private getTabFromAngle(F)I
    .locals 4
    .parameter "curAngle"

    .prologue
    const/4 v0, 0x0

    const/high16 v3, 0x4387

    const/high16 v2, 0x4316

    .line 172
    const/high16 v1, 0x41f0

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_1

    cmpg-float v1, p1, v2

    if-gtz v1, :cond_1

    .line 173
    const/4 v0, 0x1

    .line 179
    :cond_0
    :goto_0
    return v0

    .line 174
    :cond_1
    cmpl-float v1, p1, v2

    if-ltz v1, :cond_2

    cmpg-float v1, p1, v3

    if-lez v1, :cond_0

    .line 176
    :cond_2
    cmpl-float v1, p1, v3

    if-gez v1, :cond_3

    const/high16 v1, 0x43c3

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    .line 177
    :cond_3
    const/4 v0, 0x2

    goto :goto_0
.end method


# virtual methods
.method public getAnotherLayout()Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 183
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->mParent:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->mParent:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;

    .line 186
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->mParent:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 54
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 14
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 77
    iget v5, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->mCircleWidth:I

    .line 78
    .local v5, layoutWidth:I
    iget v4, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->mCircleHeight:I

    .line 79
    .local v4, layoutHeight:I
    iget v8, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->mCenterTabSize:I

    div-int/lit8 v8, v8, 0x2

    iget v9, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->mCirclePadding:I

    sub-int v9, v5, v9

    div-int/lit8 v9, v9, 0x2

    iget v10, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->mCenterTabSize:I

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->mChildWidth:I

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    iget v9, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->mChildWidth:I

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    iput v8, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->mRadius:I

    .line 82
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->getChildCount()I

    move-result v2

    .line 83
    .local v2, childCount:I
    if-nez v2, :cond_0

    .line 118
    :goto_0
    return-void

    .line 86
    :cond_0
    const/4 v6, 0x0

    .local v6, left:I
    const/4 v7, 0x0

    .line 88
    .local v7, top:I
    const/high16 v8, 0x43b4

    int-to-float v9, v2

    div-float v0, v8, v9

    .line 90
    .local v0, angleDelay:F
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v2, :cond_4

    .line 91
    invoke-virtual {p0, v3}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 92
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_1

    .line 90
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 96
    :cond_1
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->mParent:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    iget v8, v8, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCurAngle:F

    const/high16 v9, 0x43b4

    cmpl-float v8, v8, v9

    if-lez v8, :cond_3

    .line 97
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->mParent:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    iget v9, v8, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCurAngle:F

    const/high16 v10, 0x43b4

    sub-float/2addr v9, v10

    iput v9, v8, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCurAngle:F

    .line 102
    :cond_2
    :goto_3
    div-int/lit8 v8, v5, 0x2

    iget v9, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->mChildWidth:I

    div-int/lit8 v9, v9, 0x2

    sub-int/2addr v8, v9

    int-to-double v8, v8

    iget v10, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->mRadius:I

    int-to-double v10, v10

    iget-object v12, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->mParent:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    iget v12, v12, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCurAngle:F

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    double-to-float v8, v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 104
    div-int/lit8 v8, v4, 0x2

    iget v9, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->mChildHeight:I

    div-int/lit8 v9, v9, 0x2

    sub-int/2addr v8, v9

    int-to-double v8, v8

    iget v10, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->mRadius:I

    int-to-double v10, v10

    iget-object v12, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->mParent:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    iget v12, v12, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCurAngle:F

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    double-to-float v8, v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 107
    iget v8, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->mChildWidth:I

    add-int/2addr v8, v6

    iget v9, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->mChildHeight:I

    add-int/2addr v9, v7

    invoke-virtual {v1, v6, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 108
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->mParent:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    iget v9, v8, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCurAngle:F

    add-float/2addr v9, v0

    iput v9, v8, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCurAngle:F

    goto :goto_2

    .line 98
    :cond_3
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->mParent:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    iget v8, v8, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCurAngle:F

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-gez v8, :cond_2

    .line 99
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->mParent:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    iget v9, v8, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCurAngle:F

    const/high16 v10, 0x43b4

    add-float/2addr v9, v10

    iput v9, v8, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCurAngle:F

    goto :goto_3

    .line 111
    .end local v1           #child:Landroid/view/View;
    :cond_4
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->mParent:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    iget v8, v8, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCurAngle:F

    const/high16 v9, 0x43b4

    cmpl-float v8, v8, v9

    if-lez v8, :cond_6

    .line 112
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->mParent:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    iget v9, v8, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCurAngle:F

    const/high16 v10, 0x43b4

    sub-float/2addr v9, v10

    iput v9, v8, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCurAngle:F

    .line 117
    :cond_5
    :goto_4
    const-string v8, "onLayout"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mCurAngle = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->mParent:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    iget v10, v10, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCurAngle:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 113
    :cond_6
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->mParent:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    iget v8, v8, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCurAngle:F

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-gez v8, :cond_5

    .line 114
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->mParent:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    iget v9, v8, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCurAngle:F

    const/high16 v10, 0x43b4

    add-float/2addr v9, v10

    iput v9, v8, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCurAngle:F

    goto :goto_4
.end method

.method protected onMeasure(II)V
    .locals 8
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v7, 0x4000

    .line 58
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 59
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->getChildCount()I

    move-result v3

    .line 60
    .local v3, count:I
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b00cb

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->mChildWidth:I

    .line 61
    iget v5, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->mChildWidth:I

    iput v5, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->mChildHeight:I

    .line 62
    iget v5, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->mChildWidth:I

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 63
    .local v2, childWidthMeasureSpec:I
    iget v5, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->mChildHeight:I

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 64
    .local v1, childHeightMeasureSpec:I
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    iput-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->mParent:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    .line 65
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 66
    invoke-virtual {p0, v4}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 67
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_0

    .line 65
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    goto :goto_1

    .line 73
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public pointToPosition(FF)I
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 192
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 193
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 194
    .local v1, item:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, v2, p1

    if-gez v2, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v2, p1

    if-lez v2, :cond_0

    move v2, v3

    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v5, v5, p2

    if-gez v5, :cond_1

    move v5, v3

    :goto_2
    and-int/2addr v2, v5

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v2, p2

    if-lez v2, :cond_2

    .line 199
    .end local v0           #i:I
    .end local v1           #item:Landroid/view/View;
    :goto_3
    return v0

    .restart local v0       #i:I
    .restart local v1       #item:Landroid/view/View;
    :cond_0
    move v2, v4

    .line 194
    goto :goto_1

    :cond_1
    move v5, v4

    goto :goto_2

    .line 192
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 199
    .end local v1           #item:Landroid/view/View;
    :cond_3
    const/4 v0, -0x1

    goto :goto_3
.end method

.method public rotateIcons()V
    .locals 14

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;

    move-result-object v5

    .line 128
    .local v5, qm:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->mParent:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    iget v8, v8, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCurAngle:F

    invoke-direct {p0, v8}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->getTabFromAngle(F)I

    move-result v6

    .line 129
    .local v6, tab:I
    invoke-virtual {v5}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->getCurrentShowTab()I

    move-result v8

    if-eq v6, v8, :cond_1

    .line 130
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->mParent:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    invoke-virtual {v8, v6}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->onTabChange(I)V

    .line 131
    const/4 v8, 0x4

    invoke-virtual {p0, v8}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->setVisibility(I)V

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->getChildCount()I

    move-result v2

    .line 137
    .local v2, childCount:I
    if-eqz v2, :cond_0

    .line 140
    const/high16 v8, 0x43b4

    int-to-float v9, v2

    div-float v0, v8, v9

    .line 141
    .local v0, angleDelay:F
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v2, :cond_5

    .line 142
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->mParent:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    iget v8, v8, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCurAngle:F

    const/high16 v9, 0x43b4

    cmpl-float v8, v8, v9

    if-lez v8, :cond_3

    .line 143
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->mParent:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    iget v9, v8, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCurAngle:F

    const/high16 v10, 0x43b4

    sub-float/2addr v9, v10

    iput v9, v8, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCurAngle:F

    .line 148
    :cond_2
    :goto_2
    invoke-virtual {p0, v3}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherView;

    .line 149
    .local v1, child:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherView;
    invoke-virtual {v1}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherView;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_4

    .line 141
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 144
    .end local v1           #child:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherView;
    :cond_3
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->mParent:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    iget v8, v8, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCurAngle:F

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-gez v8, :cond_2

    .line 145
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->mParent:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    iget v9, v8, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCurAngle:F

    const/high16 v10, 0x43b4

    add-float/2addr v9, v10

    iput v9, v8, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCurAngle:F

    goto :goto_2

    .line 153
    .restart local v1       #child:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherView;
    :cond_4
    iget v8, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->mCircleWidth:I

    div-int/lit8 v8, v8, 0x2

    iget v9, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->mChildWidth:I

    div-int/lit8 v9, v9, 0x2

    sub-int/2addr v8, v9

    int-to-double v8, v8

    iget v10, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->mRadius:I

    int-to-double v10, v10

    iget-object v12, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->mParent:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    iget v12, v12, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCurAngle:F

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    double-to-float v8, v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 155
    .local v4, left:I
    iget v8, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->mCircleHeight:I

    div-int/lit8 v8, v8, 0x2

    iget v9, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->mChildHeight:I

    div-int/lit8 v9, v9, 0x2

    sub-int/2addr v8, v9

    int-to-double v8, v8

    iget v10, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->mRadius:I

    int-to-double v10, v10

    iget-object v12, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->mParent:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    iget v12, v12, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCurAngle:F

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    double-to-float v8, v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 158
    .local v7, top:I
    invoke-direct {p0, v1}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->changeChildAlpha(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherView;)V

    .line 160
    iget v8, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->mChildWidth:I

    add-int/2addr v8, v4

    iget v9, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->mChildHeight:I

    add-int/2addr v9, v7

    invoke-virtual {v1, v4, v7, v8, v9}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherView;->layout(IIII)V

    .line 161
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->mParent:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    iget v9, v8, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCurAngle:F

    add-float/2addr v9, v0

    iput v9, v8, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCurAngle:F

    goto :goto_3

    .line 163
    .end local v1           #child:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherView;
    .end local v4           #left:I
    .end local v7           #top:I
    :cond_5
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->mParent:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    iget v8, v8, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCurAngle:F

    const/high16 v9, 0x43b4

    cmpl-float v8, v8, v9

    if-lez v8, :cond_6

    .line 164
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->mParent:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    iget v9, v8, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCurAngle:F

    const/high16 v10, 0x43b4

    sub-float/2addr v9, v10

    iput v9, v8, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCurAngle:F

    goto/16 :goto_0

    .line 165
    :cond_6
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->mParent:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    iget v8, v8, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCurAngle:F

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-gez v8, :cond_0

    .line 166
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->mParent:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    iget v9, v8, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCurAngle:F

    const/high16 v10, 0x43b4

    add-float/2addr v9, v10

    iput v9, v8, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCurAngle:F

    goto/16 :goto_0
.end method
