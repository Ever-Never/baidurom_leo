.class public Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;
.super Landroid/view/ViewGroup;
.source "PagedViewCellLayoutChildren.java"


# static fields
.field static final TAG:Ljava/lang/String; = "PagedViewCellLayout"


# instance fields
.field private mCellHeight:I

.field private mCellWidth:I

.field private mCenterContent:Z

.field private mHeightGap:I

.field private mWidthGap:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 28
    return-void
.end method


# virtual methods
.method public cancelLongPress()V
    .locals 3

    .prologue
    .line 32
    invoke-super {p0}, Landroid/view/ViewGroup;->cancelLongPress()V

    .line 35
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;->getChildCount()I

    move-result v1

    .line 36
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 37
    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 38
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 36
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 40
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return-void
.end method

.method createHardwareLayer()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 144
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;->setLayerType(ILandroid/graphics/Paint;)V

    .line 150
    :goto_0
    return-void

    .line 147
    :cond_0
    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 148
    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;->setChildrenDrawingCacheEnabled(Z)V

    goto :goto_0
.end method

.method destroyHardwareLayer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 135
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;->setLayerType(ILandroid/graphics/Paint;)V

    .line 141
    :goto_0
    return-void

    .line 138
    :cond_0
    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 139
    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;->setChildrenDrawingCacheEnabled(Z)V

    goto :goto_0
.end method

.method public enableCenteredContent(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 159
    iput-boolean p1, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;->mCenterContent:Z

    .line 160
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 12
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;->getChildCount()I

    move-result v3

    .line 100
    .local v3, count:I
    const/4 v9, 0x0

    .line 101
    .local v9, offsetX:I
    iget-boolean v10, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;->mCenterContent:Z

    if-eqz v10, :cond_2

    if-lez v3, :cond_2

    .line 103
    const/4 v7, 0x0

    .line 104
    .local v7, maxRowX:I
    const v8, 0x7fffffff

    .line 105
    .local v8, minRowX:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 106
    invoke-virtual {p0, v4}, Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 107
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-eq v10, v11, :cond_0

    .line 108
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;

    .line 110
    .local v5, lp:Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;
    iget v10, v5, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->x:I

    invoke-static {v8, v10}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 111
    iget v10, v5, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->x:I

    iget v11, v5, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->width:I

    add-int/2addr v10, v11

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 105
    .end local v5           #lp:Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 114
    .end local v0           #child:Landroid/view/View;
    :cond_1
    sub-int v6, v7, v8

    .line 115
    .local v6, maxRowWidth:I
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;->getMeasuredWidth()I

    move-result v10

    sub-int/2addr v10, v6

    div-int/lit8 v9, v10, 0x2

    .line 118
    .end local v4           #i:I
    .end local v6           #maxRowWidth:I
    .end local v7           #maxRowX:I
    .end local v8           #minRowX:I
    :cond_2
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_1
    if-ge v4, v3, :cond_4

    .line 119
    invoke-virtual {p0, v4}, Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 120
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-eq v10, v11, :cond_3

    .line 121
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;

    .line 123
    .restart local v5       #lp:Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;
    iget v10, v5, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->x:I

    add-int v1, v9, v10

    .line 124
    .local v1, childLeft:I
    iget v2, v5, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->y:I

    .line 125
    .local v2, childTop:I
    iget v10, v5, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->width:I

    add-int/2addr v10, v1

    iget v11, v5, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->height:I

    add-int/2addr v11, v2

    invoke-virtual {v0, v1, v2, v10, v11}, Landroid/view/View;->layout(IIII)V

    .line 118
    .end local v1           #childLeft:I
    .end local v2           #childTop:I
    .end local v5           #lp:Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 132
    .end local v0           #child:Landroid/view/View;
    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 18
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 66
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v16

    .line 67
    .local v16, widthSpecMode:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v17

    .line 69
    .local v17, widthSpecSize:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    .line 70
    .local v13, heightSpecMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v14

    .line 72
    .local v14, heightSpecSize:I
    if-eqz v16, :cond_0

    if-nez v13, :cond_1

    .line 73
    :cond_0
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "CellLayout cannot have UNSPECIFIED dimensions"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 76
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;->getChildCount()I

    move-result v12

    .line 77
    .local v12, count:I
    const/4 v15, 0x0

    .local v15, i:I
    :goto_0
    if-ge v15, v12, :cond_3

    .line 78
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 79
    .local v9, child:Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;

    .line 81
    .local v2, lp:Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;
    iget-boolean v3, v2, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->animating:Z

    if-nez v3, :cond_2

    .line 82
    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;->mCellWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;->mCellHeight:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;->mWidthGap:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;->mHeightGap:I

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;->getPaddingLeft()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;->getPaddingTop()I

    move-result v8

    invoke-virtual/range {v2 .. v8}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->setup(IIIIII)V

    .line 85
    iget v3, v2, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->width:I

    const/high16 v4, 0x4000

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 87
    .local v10, childWidthMeasureSpec:I
    iget v3, v2, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->height:I

    const/high16 v4, 0x4000

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 90
    .local v11, childheightMeasureSpec:I
    invoke-virtual {v9, v10, v11}, Landroid/view/View;->measure(II)V

    .line 77
    .end local v10           #childWidthMeasureSpec:I
    .end local v11           #childheightMeasureSpec:I
    :cond_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 94
    .end local v2           #lp:Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;
    .end local v9           #child:Landroid/view/View;
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v14}, Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;->setMeasuredDimension(II)V

    .line 95
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 56
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 57
    if-eqz p1, :cond_0

    .line 58
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 59
    .local v0, r:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 60
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    .line 62
    .end local v0           #r:Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method public setAlpha(F)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 153
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 156
    :cond_0
    return-void
.end method

.method public setCellDimensions(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 49
    iput p1, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;->mCellWidth:I

    .line 50
    iput p2, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;->mCellHeight:I

    .line 51
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;->requestLayout()V

    .line 52
    return-void
.end method

.method protected setChildrenDrawingCacheEnabled(Z)V
    .locals 6
    .parameter "enabled"

    .prologue
    const/4 v4, 0x1

    .line 163
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;->getChildCount()I

    move-result v1

    .line 164
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 165
    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 166
    .local v3, view:Landroid/view/View;
    invoke-virtual {v3, p1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 167
    move v0, p1

    .line 168
    .local v0, cache:Z
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 169
    if-eqz p1, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v5

    if-nez v5, :cond_2

    move v0, v4

    .line 172
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 173
    invoke-virtual {v3, v4}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 164
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 169
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 176
    .end local v0           #cache:Z
    .end local v3           #view:Landroid/view/View;
    :cond_3
    return-void
.end method

.method public setGap(II)V
    .locals 0
    .parameter "widthGap"
    .parameter "heightGap"

    .prologue
    .line 43
    iput p1, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;->mWidthGap:I

    .line 44
    iput p2, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;->mHeightGap:I

    .line 45
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;->requestLayout()V

    .line 46
    return-void
.end method
