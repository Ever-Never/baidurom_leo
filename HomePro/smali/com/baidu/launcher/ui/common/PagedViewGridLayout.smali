.class public Lcom/baidu/launcher/ui/common/PagedViewGridLayout;
.super Lcom/baidu/launcher/ui/common/GridLayout;
.source "PagedViewGridLayout.java"

# interfaces
.implements Lcom/baidu/launcher/ui/common/Page;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/ui/common/PagedViewGridLayout$LayoutParams;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "PagedViewGridLayout"


# instance fields
.field private mCellCountX:I

.field private mCellCountY:I

.field private mOnLayoutListener:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2
    .parameter "context"
    .parameter "cellCountX"
    .parameter "cellCountY"

    .prologue
    .line 38
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/baidu/launcher/ui/common/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    iput p2, p0, Lcom/baidu/launcher/ui/common/PagedViewGridLayout;->mCellCountX:I

    .line 40
    iput p3, p0, Lcom/baidu/launcher/ui/common/PagedViewGridLayout;->mCellCountY:I

    .line 41
    return-void
.end method


# virtual methods
.method public createHardwareLayer()V
    .locals 2

    .prologue
    .line 110
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/PagedViewGridLayout;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/baidu/launcher/ui/common/PagedViewGridLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 114
    :cond_0
    return-void
.end method

.method public destroyHardwareLayer()V
    .locals 2

    .prologue
    .line 104
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/baidu/launcher/ui/common/PagedViewGridLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 107
    :cond_0
    return-void
.end method

.method public getCellCountX()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/baidu/launcher/ui/common/PagedViewGridLayout;->mCellCountX:I

    return v0
.end method

.method public getCellCountY()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/baidu/launcher/ui/common/PagedViewGridLayout;->mCellCountY:I

    return v0
.end method

.method public getChildOnPageAt(I)Landroid/view/View;
    .locals 1
    .parameter "i"

    .prologue
    .line 134
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/common/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getPageChildCount()I
    .locals 1

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/PagedViewGridLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method public indexOfChildOnPage(Landroid/view/View;)I
    .locals 1
    .parameter "v"

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/common/PagedViewGridLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 75
    invoke-super {p0}, Lcom/baidu/launcher/ui/common/GridLayout;->onDetachedFromWindow()V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/launcher/ui/common/PagedViewGridLayout;->mOnLayoutListener:Ljava/lang/Runnable;

    .line 77
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 84
    invoke-super/range {p0 .. p5}, Lcom/baidu/launcher/ui/common/GridLayout;->onLayout(ZIIII)V

    .line 85
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/PagedViewGridLayout;->mOnLayoutListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/PagedViewGridLayout;->mOnLayoutListener:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 88
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/PagedViewGridLayout;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 68
    .local v1, widthSpecSize:I
    const/high16 v0, 0x4000

    .line 69
    .local v0, widthSpecMode:I
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-super {p0, v2, p2}, Lcom/baidu/launcher/ui/common/GridLayout;->onMeasure(II)V

    .line 71
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/baidu/launcher/ui/common/GridLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 93
    .local v3, result:Z
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/PagedViewGridLayout;->getPageChildCount()I

    move-result v2

    .line 94
    .local v2, count:I
    if-lez v2, :cond_1

    .line 96
    add-int/lit8 v4, v2, -0x1

    invoke-virtual {p0, v4}, Lcom/baidu/launcher/ui/common/PagedViewGridLayout;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v1

    .line 97
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 98
    .local v0, bottom:I
    if-nez v3, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    int-to-float v5, v0

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    :cond_0
    const/4 v3, 0x1

    .line 100
    .end local v0           #bottom:I
    .end local v1           #child:Landroid/view/View;
    :cond_1
    :goto_0
    return v3

    .line 98
    .restart local v0       #bottom:I
    .restart local v1       #child:Landroid/view/View;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public removeAllViewsOnPage()V
    .locals 0

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/PagedViewGridLayout;->removeAllViews()V

    .line 119
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/PagedViewGridLayout;->destroyHardwareLayer()V

    .line 120
    return-void
.end method

.method public removeViewOnPageAt(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/common/PagedViewGridLayout;->removeViewAt(I)V

    .line 125
    return-void
.end method

.method public resetChildrenOnKeyListeners()V
    .locals 4

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/PagedViewGridLayout;->getChildCount()I

    move-result v0

    .line 56
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 57
    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/common/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 56
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59
    :cond_0
    return-void
.end method

.method public setOnLayoutListener(Ljava/lang/Runnable;)V
    .locals 0
    .parameter "r"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/baidu/launcher/ui/common/PagedViewGridLayout;->mOnLayoutListener:Ljava/lang/Runnable;

    .line 81
    return-void
.end method
