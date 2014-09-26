.class public Lcom/baidu/launcher/ui/common/PagedViewCellLayout;
.super Landroid/view/ViewGroup;
.source "PagedViewCellLayout.java"

# interfaces
.implements Lcom/baidu/launcher/ui/common/Page;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "PagedViewCellLayout"


# instance fields
.field public alphaForLowApi:F

.field private mCellCountX:I

.field private mCellCountY:I

.field private mCellHeight:I

.field private mCellWidth:I

.field protected mChildren:Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;

.field private mHeightGap:I

.field private mOriginalCellHeight:I

.field private mOriginalCellWidth:I

.field private mOriginalHeightGap:I

.field private mOriginalWidthGap:I

.field private mWidthGap:I

.field private pivotXForLowApi:F

.field private pivotYForLowApi:F

.field private rotationYForLowApi:F

.field private scaleXForLowApi:F

.field private scaleYForLowApi:F

.field public translationXForLowApi:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x4

    const/high16 v3, 0x3f00

    const/4 v2, 0x0

    const/high16 v1, 0x3f80

    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    iput v1, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->alphaForLowApi:F

    .line 40
    iput v3, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->pivotXForLowApi:F

    .line 41
    iput v3, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->pivotYForLowApi:F

    .line 42
    iput v2, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->rotationYForLowApi:F

    .line 43
    iput v2, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->translationXForLowApi:F

    .line 44
    iput v1, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->scaleXForLowApi:F

    .line 45
    iput v1, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->scaleYForLowApi:F

    .line 60
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 64
    .local v0, resources:Landroid/content/res/Resources;
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->initCellWidth(Landroid/content/res/Resources;)I

    move-result v1

    iput v1, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mCellWidth:I

    iput v1, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mOriginalCellWidth:I

    .line 65
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->initCellHeight(Landroid/content/res/Resources;)I

    move-result v1

    iput v1, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mCellHeight:I

    iput v1, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mOriginalCellHeight:I

    .line 66
    iput v4, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mCellCountX:I

    .line 67
    iput v4, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mCellCountY:I

    .line 68
    const/4 v1, -0x1

    iput v1, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mHeightGap:I

    iput v1, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mWidthGap:I

    iput v1, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mOriginalHeightGap:I

    iput v1, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mOriginalWidthGap:I

    .line 72
    new-instance v1, Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;

    invoke-direct {v1, p1}, Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mChildren:Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;

    .line 73
    iget-object v1, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mChildren:Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;

    iget v2, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mCellWidth:I

    iget v3, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mCellHeight:I

    invoke-virtual {v1, v2, v3}, Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;->setCellDimensions(II)V

    .line 74
    iget-object v1, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mChildren:Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;

    iget v2, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mWidthGap:I

    iget v3, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mHeightGap:I

    invoke-virtual {v1, v2, v3}, Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;->setGap(II)V

    .line 76
    iget-object v1, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mChildren:Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->addView(Landroid/view/View;)V

    .line 79
    return-void
.end method


# virtual methods
.method public addViewToCellLayout(Landroid/view/View;IILcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;)Z
    .locals 3
    .parameter "child"
    .parameter "index"
    .parameter "childId"
    .parameter "params"

    .prologue
    .line 236
    move-object v0, p4

    .line 241
    .local v0, lp:Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;
    iget v1, v0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->cellX:I

    if-ltz v1, :cond_2

    iget v1, v0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->cellX:I

    iget v2, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mCellCountX:I

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_2

    iget v1, v0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->cellY:I

    if-ltz v1, :cond_2

    iget v1, v0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->cellY:I

    iget v2, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mCellCountY:I

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_2

    .line 245
    iget v1, v0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->cellHSpan:I

    if-gez v1, :cond_0

    .line 246
    iget v1, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mCellCountX:I

    iput v1, v0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->cellHSpan:I

    .line 247
    :cond_0
    iget v1, v0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->cellVSpan:I

    if-gez v1, :cond_1

    .line 248
    iget v1, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mCellCountY:I

    iput v1, v0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->cellVSpan:I

    .line 250
    :cond_1
    invoke-virtual {p1, p3}, Landroid/view/View;->setId(I)V

    .line 251
    iget-object v1, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mChildren:Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;

    invoke-virtual {v1, p1, p2, v0}, Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 253
    const/4 v1, 0x1

    .line 255
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public calculateCellCount(IIII)V
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "maxCellCountX"
    .parameter "maxCellCountY"

    .prologue
    .line 498
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->estimateCellHSpan(I)I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mCellCountX:I

    .line 499
    invoke-virtual {p0, p2}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->estimateCellVSpan(I)I

    move-result v0

    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mCellCountY:I

    .line 500
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->requestLayout()V

    .line 501
    return-void
.end method

.method public cancelLongPress()V
    .locals 3

    .prologue
    .line 224
    invoke-super {p0}, Landroid/view/ViewGroup;->cancelLongPress()V

    .line 227
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->getChildCount()I

    move-result v1

    .line 228
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 229
    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 230
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 228
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 232
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 526
    instance-of v0, p1, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;

    return v0
.end method

.method public computeChildCoordinate(I)[I
    .locals 6
    .parameter "index"

    .prologue
    .line 657
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 658
    .local v0, coordinate:[I
    iget v3, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mCellCountX:I

    rem-int v1, p1, v3

    .line 659
    .local v1, myCellX:I
    iget v3, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mCellCountX:I

    div-int v2, p1, v3

    .line 660
    .local v2, myCellY:I
    const/4 v3, 0x0

    iget v4, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mCellWidth:I

    iget v5, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mWidthGap:I

    add-int/2addr v4, v5

    mul-int/2addr v4, v1

    aput v4, v0, v3

    .line 661
    const/4 v3, 0x1

    iget v4, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mCellHeight:I

    iget v5, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mHeightGap:I

    add-int/2addr v4, v5

    mul-int/2addr v4, v2

    aput v4, v0, v3

    .line 662
    return-object v0
.end method

.method public createHardwareLayers()V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mChildren:Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;->createHardwareLayer()V

    .line 220
    return-void
.end method

.method public destroyHardwareLayers()V
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mChildren:Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;->destroyHardwareLayer()V

    .line 214
    return-void
.end method

.method public enableCenteredContent(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 411
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mChildren:Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;->enableCenteredContent(Z)V

    .line 412
    return-void
.end method

.method public estimateCellHSpan(I)I
    .locals 6
    .parameter "width"

    .prologue
    .line 462
    iget v2, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mPaddingLeft:I

    iget v3, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mPaddingRight:I

    add-int/2addr v2, v3

    sub-int v0, p1, v2

    .line 466
    .local v0, availWidth:I
    const/4 v2, 0x1

    iget v3, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mWidthGap:I

    add-int/2addr v3, v0

    iget v4, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mCellWidth:I

    iget v5, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mWidthGap:I

    add-int/2addr v4, v5

    div-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 469
    .local v1, n:I
    return v1
.end method

.method public estimateCellHeight(I)I
    .locals 1
    .parameter "vSpan"

    .prologue
    .line 516
    iget v0, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mCellHeight:I

    mul-int/2addr v0, p1

    return v0
.end method

.method public estimateCellPosition(II)[I
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 491
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mPaddingLeft:I

    iget v3, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mCellWidth:I

    mul-int/2addr v3, p1

    add-int/2addr v2, v3

    iget v3, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mWidthGap:I

    mul-int/2addr v3, p1

    add-int/2addr v2, v3

    iget v3, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mCellWidth:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mPaddingTop:I

    iget v3, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mCellHeight:I

    mul-int/2addr v3, p2

    add-int/2addr v2, v3

    iget v3, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mHeightGap:I

    mul-int/2addr v3, p2

    add-int/2addr v2, v3

    iget v3, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mCellHeight:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    aput v2, v0, v1

    return-object v0
.end method

.method public estimateCellVSpan(I)I
    .locals 6
    .parameter "height"

    .prologue
    .line 479
    iget v2, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mPaddingTop:I

    iget v3, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mPaddingBottom:I

    add-int/2addr v2, v3

    sub-int v0, p1, v2

    .line 483
    .local v0, availHeight:I
    const/4 v2, 0x1

    iget v3, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mHeightGap:I

    add-int/2addr v3, v0

    iget v4, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mCellHeight:I

    iget v5, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mHeightGap:I

    add-int/2addr v4, v5

    div-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 486
    .local v1, n:I
    return v1
.end method

.method public estimateCellWidth(I)I
    .locals 1
    .parameter "hSpan"

    .prologue
    .line 508
    iget v0, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mCellWidth:I

    mul-int/2addr v0, p1

    return v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 521
    new-instance v0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 531
    new-instance v0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getAlpha()F
    .locals 1

    .prologue
    .line 106
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    invoke-super {p0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v0

    .line 109
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->alphaForLowApi:F

    goto :goto_0
.end method

.method public getCellCountForDimensions(II)[I
    .locals 5
    .parameter "width"
    .parameter "height"

    .prologue
    .line 433
    iget v3, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mCellWidth:I

    iget v4, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mCellHeight:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 436
    .local v0, smallerSize:I
    add-int v3, p1, v0

    div-int v1, v3, v0

    .line 437
    .local v1, spanX:I
    add-int v3, p2, v0

    div-int v2, v3, v0

    .line 439
    .local v2, spanY:I
    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v1, v3, v4

    const/4 v4, 0x1

    aput v2, v3, v4

    return-object v3
.end method

.method public getCellCountX()I
    .locals 1

    .prologue
    .line 301
    iget v0, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mCellCountX:I

    return v0
.end method

.method public getCellCountY()I
    .locals 1

    .prologue
    .line 305
    iget v0, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mCellCountY:I

    return v0
.end method

.method public getCellHeight()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mCellHeight:I

    return v0
.end method

.method public getCellWidth()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mCellWidth:I

    return v0
.end method

.method public getChildOnPageAt(I)Landroid/view/View;
    .locals 1
    .parameter "i"

    .prologue
    .line 292
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mChildren:Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildrenLayout()Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mChildren:Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;

    return-object v0
.end method

.method public getContentHeight()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 368
    iget v1, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mCellCountY:I

    if-lez v1, :cond_0

    .line 369
    iget v1, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mCellCountY:I

    iget v2, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mCellHeight:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mCellCountY:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mHeightGap:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int/2addr v0, v2

    add-int/2addr v0, v1

    .line 371
    :cond_0
    return v0
.end method

.method public getContentWidth()I
    .locals 2

    .prologue
    .line 364
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->getWidthBeforeFirstLayout()I

    move-result v0

    iget v1, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mPaddingLeft:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mPaddingRight:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getGap()[I
    .locals 3

    .prologue
    .line 427
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mWidthGap:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mWidthGap:I

    aput v2, v0, v1

    return-object v0
.end method

.method public getPageChildCount()I
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mChildren:Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getPivotX()F
    .locals 1

    .prologue
    .line 122
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    invoke-super {p0}, Landroid/view/ViewGroup;->getPivotX()F

    move-result v0

    .line 125
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->pivotXForLowApi:F

    goto :goto_0
.end method

.method public getPivotY()F
    .locals 1

    .prologue
    .line 138
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    invoke-super {p0}, Landroid/view/ViewGroup;->getPivotY()F

    move-result v0

    .line 141
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->pivotYForLowApi:F

    goto :goto_0
.end method

.method public getRotationY()F
    .locals 1

    .prologue
    .line 154
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    invoke-super {p0}, Landroid/view/ViewGroup;->getRotationY()F

    move-result v0

    .line 157
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->rotationYForLowApi:F

    goto :goto_0
.end method

.method public getScaleX()F
    .locals 1

    .prologue
    .line 186
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    invoke-super {p0}, Landroid/view/ViewGroup;->getScaleX()F

    move-result v0

    .line 189
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->scaleXForLowApi:F

    goto :goto_0
.end method

.method public getScaleY()F
    .locals 1

    .prologue
    .line 202
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    invoke-super {p0}, Landroid/view/ViewGroup;->getScaleY()F

    move-result v0

    .line 205
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->scaleYForLowApi:F

    goto :goto_0
.end method

.method public getTranslationX()F
    .locals 1

    .prologue
    .line 170
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    invoke-super {p0}, Landroid/view/ViewGroup;->getTranslationX()F

    move-result v0

    .line 173
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->translationXForLowApi:F

    goto :goto_0
.end method

.method public getWidthBeforeFirstLayout()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 375
    iget v1, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mCellCountX:I

    if-lez v1, :cond_0

    .line 376
    iget v1, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mCellCountX:I

    iget v2, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mCellWidth:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mCellCountX:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mWidthGap:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int/2addr v0, v2

    add-int/2addr v0, v1

    .line 378
    :cond_0
    return v0
.end method

.method public indexOfChildOnPage(Landroid/view/View;)I
    .locals 1
    .parameter "v"

    .prologue
    .line 297
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mChildren:Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;->indexOfChild(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method protected initCellHeight(Landroid/content/res/Resources;)I
    .locals 1
    .parameter "resources"

    .prologue
    .line 86
    const v0, 0x7f0b003f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method protected initCellWidth(Landroid/content/res/Resources;)I
    .locals 1
    .parameter "resources"

    .prologue
    .line 82
    const v0, 0x7f0b003e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method onDragChild(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 450
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;

    .line 452
    .local v0, lp:Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->isDragging:Z

    .line 453
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 383
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->getChildCount()I

    move-result v1

    .line 384
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 385
    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 386
    .local v0, child:Landroid/view/View;
    iget v3, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mPaddingLeft:I

    iget v4, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mPaddingTop:I

    sub-int v5, p4, p2

    iget v6, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mPaddingRight:I

    sub-int/2addr v5, v6

    sub-int v6, p5, p3

    iget v7, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mPaddingBottom:I

    sub-int/2addr v6, v7

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 384
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 389
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 22
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 309
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v17

    .line 310
    .local v17, widthSpecMode:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v18

    .line 312
    .local v18, widthSpecSize:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 313
    .local v8, heightSpecMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 315
    .local v9, heightSpecSize:I
    if-eqz v17, :cond_0

    if-nez v8, :cond_1

    .line 316
    :cond_0
    new-instance v19, Ljava/lang/RuntimeException;

    const-string v20, "CellLayout cannot have UNSPECIFIED dimensions"

    invoke-direct/range {v19 .. v20}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 319
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mCellCountX:I

    move/from16 v19, v0

    add-int/lit8 v14, v19, -0x1

    .line 320
    .local v14, numWidthGaps:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mCellCountY:I

    move/from16 v19, v0

    add-int/lit8 v13, v19, -0x1

    .line 322
    .local v13, numHeightGaps:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mOriginalWidthGap:I

    move/from16 v19, v0

    if-ltz v19, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mOriginalHeightGap:I

    move/from16 v19, v0

    if-gez v19, :cond_6

    .line 323
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mPaddingLeft:I

    move/from16 v19, v0

    sub-int v19, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mPaddingRight:I

    move/from16 v20, v0

    sub-int v7, v19, v20

    .line 324
    .local v7, hSpace:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mPaddingTop:I

    move/from16 v19, v0

    sub-int v19, v9, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mPaddingBottom:I

    move/from16 v20, v0

    sub-int v16, v19, v20

    .line 325
    .local v16, vSpace:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mCellCountX:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mOriginalCellWidth:I

    move/from16 v20, v0

    mul-int v19, v19, v20

    sub-int v6, v7, v19

    .line 326
    .local v6, hFreeSpace:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mCellCountY:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mOriginalCellHeight:I

    move/from16 v20, v0

    mul-int v19, v19, v20

    sub-int v15, v16, v19

    .line 327
    .local v15, vFreeSpace:I
    if-lez v14, :cond_4

    div-int v19, v6, v14

    :goto_0
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mWidthGap:I

    .line 328
    if-lez v13, :cond_5

    div-int v19, v15, v13

    :goto_1
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mHeightGap:I

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mChildren:Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mWidthGap:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mHeightGap:I

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;->setGap(II)V

    .line 336
    .end local v6           #hFreeSpace:I
    .end local v7           #hSpace:I
    .end local v15           #vFreeSpace:I
    .end local v16           #vSpace:I
    :goto_2
    move/from16 v12, v18

    .line 337
    .local v12, newWidth:I
    move v11, v9

    .line 338
    .local v11, newHeight:I
    const/high16 v19, -0x8000

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 339
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mPaddingLeft:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mPaddingRight:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mCellCountX:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mCellWidth:I

    move/from16 v21, v0

    mul-int v20, v20, v21

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mCellCountX:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mWidthGap:I

    move/from16 v21, v0

    mul-int v20, v20, v21

    add-int v12, v19, v20

    .line 341
    const-string v19, "PagedViewCellLayout"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "mPaddingLeft = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mPaddingLeft:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", mPaddingRight = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mPaddingRight:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", mCellCountX = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mCellCountX:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", mCellWidth = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mCellWidth:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    const-string v19, "PagedViewCellLayout"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "newWidth = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mPaddingTop:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mPaddingBottom:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mCellCountY:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mCellHeight:I

    move/from16 v21, v0

    mul-int v20, v20, v21

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mCellCountY:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mHeightGap:I

    move/from16 v21, v0

    mul-int v20, v20, v21

    add-int v11, v19, v20

    .line 345
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v11}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->setMeasuredDimension(II)V

    .line 348
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->getChildCount()I

    move-result v5

    .line 349
    .local v5, count:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_3
    if-ge v10, v5, :cond_7

    .line 350
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 351
    .local v2, child:Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mPaddingLeft:I

    move/from16 v19, v0

    sub-int v19, v12, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mPaddingRight:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    const/high16 v20, 0x4000

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 354
    .local v3, childWidthMeasureSpec:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mPaddingTop:I

    move/from16 v19, v0

    sub-int v19, v11, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mPaddingBottom:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    const/high16 v20, 0x4000

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 357
    .local v4, childheightMeasureSpec:I
    invoke-virtual {v2, v3, v4}, Landroid/view/View;->measure(II)V

    .line 349
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 327
    .end local v2           #child:Landroid/view/View;
    .end local v3           #childWidthMeasureSpec:I
    .end local v4           #childheightMeasureSpec:I
    .end local v5           #count:I
    .end local v10           #i:I
    .end local v11           #newHeight:I
    .end local v12           #newWidth:I
    .restart local v6       #hFreeSpace:I
    .restart local v7       #hSpace:I
    .restart local v15       #vFreeSpace:I
    .restart local v16       #vSpace:I
    :cond_4
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 328
    :cond_5
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 332
    .end local v6           #hFreeSpace:I
    .end local v7           #hSpace:I
    .end local v15           #vFreeSpace:I
    .end local v16           #vSpace:I
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mOriginalWidthGap:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mWidthGap:I

    .line 333
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mOriginalHeightGap:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mHeightGap:I

    goto/16 :goto_2

    .line 360
    .restart local v5       #count:I
    .restart local v10       #i:I
    .restart local v11       #newHeight:I
    .restart local v12       #newWidth:I
    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v11}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->setMeasuredDimension(II)V

    .line 361
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    .line 393
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 394
    .local v4, result:Z
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->getPageChildCount()I

    move-result v2

    .line 395
    .local v2, count:I
    if-lez v2, :cond_2

    .line 398
    add-int/lit8 v5, v2, -0x1

    invoke-virtual {p0, v5}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v1

    .line 399
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 400
    .local v0, bottom:I
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->getPageChildCount()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->getCellCountX()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v3, v5

    .line 401
    .local v3, numRows:I
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->getCellCountY()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 403
    iget v5, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mCellHeight:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v0, v5

    .line 405
    :cond_0
    if-nez v4, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    int-to-float v6, v0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_3

    :cond_1
    const/4 v4, 0x1

    .line 407
    .end local v0           #bottom:I
    .end local v1           #child:Landroid/view/View;
    .end local v3           #numRows:I
    :cond_2
    :goto_0
    return v4

    .line 405
    .restart local v0       #bottom:I
    .restart local v1       #child:Landroid/view/View;
    .restart local v3       #numRows:I
    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public removeAllViewsOnPage()V
    .locals 2

    .prologue
    .line 260
    invoke-static {}, Lcom/baidu/launcher/utils/EventNumberUtil;->getInstance()Lcom/baidu/launcher/utils/EventNumberUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mChildren:Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/utils/EventNumberUtil;->unregisterViewGroup(Landroid/view/ViewGroup;)V

    .line 261
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mChildren:Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;->removeAllViews()V

    .line 262
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->destroyHardwareLayers()V

    .line 263
    return-void
.end method

.method public removeViewOnPageAt(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 267
    invoke-static {}, Lcom/baidu/launcher/utils/EventNumberUtil;->getInstance()Lcom/baidu/launcher/utils/EventNumberUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mChildren:Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;

    invoke-virtual {v1, p1}, Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/utils/EventNumberUtil;->unregisterView(Landroid/view/View;)Z

    .line 268
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mChildren:Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;->removeViewAt(I)V

    .line 269
    return-void
.end method

.method public resetChildrenOnKeyListeners()V
    .locals 4

    .prologue
    .line 275
    iget-object v2, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mChildren:Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;->getChildCount()I

    move-result v0

    .line 276
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 277
    iget-object v2, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mChildren:Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;

    invoke-virtual {v2, v1}, Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 276
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 279
    :cond_0
    return-void
.end method

.method public setAlpha(F)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 98
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mChildren:Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;->setAlpha(F)V

    .line 103
    :goto_0
    return-void

    .line 101
    :cond_0
    iput p1, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->alphaForLowApi:F

    goto :goto_0
.end method

.method public setCellCount(II)V
    .locals 0
    .parameter "xCount"
    .parameter "yCount"

    .prologue
    .line 415
    iput p1, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mCellCountX:I

    .line 416
    iput p2, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mCellCountY:I

    .line 417
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->requestLayout()V

    .line 418
    return-void
.end method

.method public setGap(II)V
    .locals 1
    .parameter "widthGap"
    .parameter "heightGap"

    .prologue
    .line 421
    iput p1, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mWidthGap:I

    iput p1, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mOriginalWidthGap:I

    .line 422
    iput p2, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mHeightGap:I

    iput p2, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mOriginalHeightGap:I

    .line 423
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->mChildren:Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;->setGap(II)V

    .line 424
    return-void
.end method

.method public setPivotX(F)V
    .locals 1
    .parameter "pivotX"

    .prologue
    .line 114
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setPivotX(F)V

    .line 119
    :goto_0
    return-void

    .line 117
    :cond_0
    iput p1, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->pivotXForLowApi:F

    goto :goto_0
.end method

.method public setPivotY(F)V
    .locals 1
    .parameter "pivotY"

    .prologue
    .line 130
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setPivotY(F)V

    .line 135
    :goto_0
    return-void

    .line 133
    :cond_0
    iput p1, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->pivotYForLowApi:F

    goto :goto_0
.end method

.method public setRotationY(F)V
    .locals 1
    .parameter "rotationY"

    .prologue
    .line 146
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setRotationY(F)V

    .line 151
    :goto_0
    return-void

    .line 149
    :cond_0
    iput p1, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->rotationYForLowApi:F

    goto :goto_0
.end method

.method public setScaleX(F)V
    .locals 1
    .parameter "scaleX"

    .prologue
    .line 178
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 183
    :goto_0
    return-void

    .line 181
    :cond_0
    iput p1, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->scaleXForLowApi:F

    goto :goto_0
.end method

.method public setScaleY(F)V
    .locals 1
    .parameter "scaleY"

    .prologue
    .line 194
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setScaleY(F)V

    .line 199
    :goto_0
    return-void

    .line 197
    :cond_0
    iput p1, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->scaleYForLowApi:F

    goto :goto_0
.end method

.method public setTranslationX(F)V
    .locals 1
    .parameter "translationX"

    .prologue
    .line 162
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 167
    :goto_0
    return-void

    .line 165
    :cond_0
    iput p1, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;->translationXForLowApi:F

    goto :goto_0
.end method
