.class public Lcom/baidu/launcher/ui/editview/ScreenSnapshot;
.super Landroid/view/ViewGroup;
.source "ScreenSnapshot.java"

# interfaces
.implements Lcom/baidu/launcher/ui/dragdrop/DropTarget;


# static fields
.field protected static final INDICATOR_H:I = 0x3c

.field protected static final INDICATOR_W:I = 0x10

.field private static final mScrollZone:I = 0xa


# instance fields
.field private childrenHeight:I

.field private childrenWidth:I

.field private index:I

.field private indicatorHeight:I

.field private indicatorWidth:I

.field private lastMotionTime:J

.field private mIndicator:Lcom/baidu/launcher/ui/editview/EditViewIndicator;

.field private rect:Landroid/graphics/Rect;

.field private thumbnailGroup:Lcom/baidu/launcher/ui/editview/ThumbnailGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/baidu/launcher/ui/editview/ScreenSnapshot;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/baidu/launcher/ui/editview/ScreenSnapshot;->lastMotionTime:J

    .line 51
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/editview/ScreenSnapshot;->setHapticFeedbackEnabled(Z)V

    .line 53
    const/16 v0, 0x10

    iput v0, p0, Lcom/baidu/launcher/ui/editview/ScreenSnapshot;->indicatorWidth:I

    .line 54
    const/16 v0, 0x3c

    iput v0, p0, Lcom/baidu/launcher/ui/editview/ScreenSnapshot;->indicatorHeight:I

    .line 55
    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/baidu/launcher/ui/dragdrop/DragSource;IIIILcom/baidu/launcher/ui/dragdrop/DragView;Ljava/lang/Object;)Z
    .locals 2
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 126
    iget v0, p0, Lcom/baidu/launcher/ui/editview/ScreenSnapshot;->index:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 127
    const/4 v0, 0x0

    .line 129
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/ScreenSnapshot;->thumbnailGroup:Lcom/baidu/launcher/ui/editview/ThumbnailGroup;

    iget v1, p0, Lcom/baidu/launcher/ui/editview/ScreenSnapshot;->index:I

    invoke-virtual {v0, p7, v1}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->acceptDrop(Ljava/lang/Object;I)Z

    move-result v0

    goto :goto_0
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
    .line 137
    const/4 v0, 0x0

    return-object v0
.end method

.method public getThumbnailGroup()Lcom/baidu/launcher/ui/editview/ThumbnailGroup;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/ScreenSnapshot;->thumbnailGroup:Lcom/baidu/launcher/ui/editview/ThumbnailGroup;

    return-object v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/editview/ScreenSnapshot;->getParent()Landroid/view/ViewParent;

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

.method public onDragEnter(Lcom/baidu/launcher/ui/dragdrop/DragSource;IIIILcom/baidu/launcher/ui/dragdrop/DragView;Ljava/lang/Object;)V
    .locals 0
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 144
    return-void
.end method

.method public onDragExit(Lcom/baidu/launcher/ui/dragdrop/DragSource;IIIILcom/baidu/launcher/ui/dragdrop/DragView;Ljava/lang/Object;)V
    .locals 2
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/ScreenSnapshot;->thumbnailGroup:Lcom/baidu/launcher/ui/editview/ThumbnailGroup;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->onDragExit()V

    .line 150
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/baidu/launcher/ui/editview/ScreenSnapshot;->lastMotionTime:J

    .line 151
    return-void
.end method

.method public onDragOver(Lcom/baidu/launcher/ui/dragdrop/DragSource;IIIILcom/baidu/launcher/ui/dragdrop/DragView;Ljava/lang/Object;)V
    .locals 7
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 156
    const/4 v3, -0x1

    iput v3, p0, Lcom/baidu/launcher/ui/editview/ScreenSnapshot;->index:I

    .line 157
    iget-object v3, p0, Lcom/baidu/launcher/ui/editview/ScreenSnapshot;->rect:Landroid/graphics/Rect;

    if-nez v3, :cond_0

    .line 158
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/baidu/launcher/ui/editview/ScreenSnapshot;->rect:Landroid/graphics/Rect;

    .line 159
    iget-object v3, p0, Lcom/baidu/launcher/ui/editview/ScreenSnapshot;->thumbnailGroup:Lcom/baidu/launcher/ui/editview/ThumbnailGroup;

    iget-object v4, p0, Lcom/baidu/launcher/ui/editview/ScreenSnapshot;->rect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->getHitRect(Landroid/graphics/Rect;)V

    .line 160
    iget-object v3, p0, Lcom/baidu/launcher/ui/editview/ScreenSnapshot;->rect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    add-int/lit8 v4, v4, 0xa

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 161
    iget-object v3, p0, Lcom/baidu/launcher/ui/editview/ScreenSnapshot;->rect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->right:I

    add-int/lit8 v4, v4, -0xa

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 163
    :cond_0
    iget-object v3, p0, Lcom/baidu/launcher/ui/editview/ScreenSnapshot;->rect:Landroid/graphics/Rect;

    invoke-virtual {v3, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 164
    iget-object v3, p0, Lcom/baidu/launcher/ui/editview/ScreenSnapshot;->thumbnailGroup:Lcom/baidu/launcher/ui/editview/ThumbnailGroup;

    invoke-virtual {v3, p2, p3, p7}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->onDragOver(IILjava/lang/Object;)I

    move-result v3

    iput v3, p0, Lcom/baidu/launcher/ui/editview/ScreenSnapshot;->index:I

    .line 165
    const-wide v3, 0x7fffffffffffffffL

    iput-wide v3, p0, Lcom/baidu/launcher/ui/editview/ScreenSnapshot;->lastMotionTime:J

    .line 189
    :cond_1
    :goto_0
    return-void

    .line 167
    :cond_2
    iget-object v3, p0, Lcom/baidu/launcher/ui/editview/ScreenSnapshot;->thumbnailGroup:Lcom/baidu/launcher/ui/editview/ThumbnailGroup;

    invoke-virtual {v3}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->onDragExit()V

    .line 168
    iget-object v3, p0, Lcom/baidu/launcher/ui/editview/ScreenSnapshot;->rect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v3, -0x5

    if-lt p2, v3, :cond_3

    iget-object v3, p0, Lcom/baidu/launcher/ui/editview/ScreenSnapshot;->rect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v3, 0x5

    if-gt p2, v3, :cond_3

    .line 171
    const-wide v3, 0x7fffffffffffffffL

    iput-wide v3, p0, Lcom/baidu/launcher/ui/editview/ScreenSnapshot;->lastMotionTime:J

    goto :goto_0

    .line 174
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 175
    .local v0, currentTime:J
    iget-wide v3, p0, Lcom/baidu/launcher/ui/editview/ScreenSnapshot;->lastMotionTime:J

    sub-long v3, v0, v3

    const-wide/16 v5, 0x12c

    cmp-long v3, v3, v5

    if-lez v3, :cond_6

    .line 177
    iget-object v4, p0, Lcom/baidu/launcher/ui/editview/ScreenSnapshot;->thumbnailGroup:Lcom/baidu/launcher/ui/editview/ThumbnailGroup;

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/editview/ScreenSnapshot;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    if-ge p2, v3, :cond_5

    const v3, 0x7f080112

    :goto_1
    invoke-virtual {v4, v3}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->getAutoScrollIndex(I)I

    move-result v2

    .line 180
    .local v2, idx:I
    iget-object v3, p0, Lcom/baidu/launcher/ui/editview/ScreenSnapshot;->thumbnailGroup:Lcom/baidu/launcher/ui/editview/ThumbnailGroup;

    invoke-virtual {v3, v2}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->isValidIndex(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 181
    iget-object v3, p0, Lcom/baidu/launcher/ui/editview/ScreenSnapshot;->thumbnailGroup:Lcom/baidu/launcher/ui/editview/ThumbnailGroup;

    invoke-virtual {v3, v2}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->snapToScreen(I)V

    .line 183
    :cond_4
    iput-wide v0, p0, Lcom/baidu/launcher/ui/editview/ScreenSnapshot;->lastMotionTime:J

    goto :goto_0

    .line 177
    .end local v2           #idx:I
    :cond_5
    const v3, 0x7f080117

    goto :goto_1

    .line 184
    :cond_6
    iget-wide v3, p0, Lcom/baidu/launcher/ui/editview/ScreenSnapshot;->lastMotionTime:J

    const-wide v5, 0x7fffffffffffffffL

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 186
    iput-wide v0, p0, Lcom/baidu/launcher/ui/editview/ScreenSnapshot;->lastMotionTime:J

    goto :goto_0
.end method

.method public onDrop(Lcom/baidu/launcher/ui/dragdrop/DragSource;IIIILcom/baidu/launcher/ui/dragdrop/DragView;Ljava/lang/Object;)V
    .locals 2
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/ScreenSnapshot;->thumbnailGroup:Lcom/baidu/launcher/ui/editview/ThumbnailGroup;

    iget v1, p0, Lcom/baidu/launcher/ui/editview/ScreenSnapshot;->index:I

    invoke-virtual {v0, p7, v1}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->onDrop(Ljava/lang/Object;I)V

    .line 199
    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    .line 59
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 62
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/editview/ScreenSnapshot;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0202be

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 64
    .local v1, icon:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 65
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 66
    .local v2, width:I
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 67
    .local v0, height:I
    const/16 v3, 0x10

    if-le v2, v3, :cond_0

    const/16 v3, 0x3c

    if-le v0, v3, :cond_0

    .line 68
    iput v2, p0, Lcom/baidu/launcher/ui/editview/ScreenSnapshot;->indicatorWidth:I

    .line 69
    iput v0, p0, Lcom/baidu/launcher/ui/editview/ScreenSnapshot;->indicatorHeight:I

    .line 72
    .end local v0           #height:I
    .end local v2           #width:I
    :cond_0
    const v3, 0x7f080113

    invoke-virtual {p0, v3}, Lcom/baidu/launcher/ui/editview/ScreenSnapshot;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;

    iput-object v3, p0, Lcom/baidu/launcher/ui/editview/ScreenSnapshot;->thumbnailGroup:Lcom/baidu/launcher/ui/editview/ThumbnailGroup;

    .line 76
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
    .line 205
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 108
    const/4 v5, 0x0

    .line 109
    .local v5, left:I
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/editview/ScreenSnapshot;->getMeasuredHeight()I

    move-result v2

    .line 110
    .local v2, height:I
    iget v7, p0, Lcom/baidu/launcher/ui/editview/ScreenSnapshot;->indicatorHeight:I

    sub-int v7, v2, v7

    div-int/lit8 v4, v7, 0x2

    .line 111
    .local v4, indicatorTop:I
    const/16 v6, 0x14

    .line 112
    .local v6, top:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/editview/ScreenSnapshot;->getChildCount()I

    move-result v7

    if-ge v3, v7, :cond_1

    .line 113
    invoke-virtual {p0, v3}, Lcom/baidu/launcher/ui/editview/ScreenSnapshot;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 114
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_0

    .line 115
    iget v1, p0, Lcom/baidu/launcher/ui/editview/ScreenSnapshot;->childrenWidth:I

    .line 116
    .local v1, childWidth:I
    add-int v7, v5, v1

    iget v8, p0, Lcom/baidu/launcher/ui/editview/ScreenSnapshot;->childrenHeight:I

    add-int/2addr v8, v6

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 118
    add-int/2addr v5, v1

    .line 112
    .end local v1           #childWidth:I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 121
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v9, 0x4000

    .line 80
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 81
    .local v6, widthSpecMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 83
    .local v7, widthSpecSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 84
    .local v3, heightSpecMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 85
    .local v4, heightSpecSize:I
    if-eqz v6, :cond_0

    if-nez v3, :cond_1

    .line 87
    :cond_0
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "ThumbnailTopLayout cannot have UNSPECIFIED dimensions"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 91
    :cond_1
    iput v7, p0, Lcom/baidu/launcher/ui/editview/ScreenSnapshot;->childrenWidth:I

    .line 92
    mul-int/lit8 v8, v4, 0xf

    div-int/lit8 v8, v8, 0x14

    iput v8, p0, Lcom/baidu/launcher/ui/editview/ScreenSnapshot;->childrenHeight:I

    .line 93
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/editview/ScreenSnapshot;->getChildCount()I

    move-result v2

    .line 94
    .local v2, count:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v2, :cond_2

    .line 95
    iget v8, p0, Lcom/baidu/launcher/ui/editview/ScreenSnapshot;->childrenWidth:I

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 97
    .local v1, childWidthMeasureSpec:I
    iget v8, p0, Lcom/baidu/launcher/ui/editview/ScreenSnapshot;->childrenHeight:I

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 99
    .local v0, childHeightMeasureSpec:I
    invoke-virtual {p0, v5}, Lcom/baidu/launcher/ui/editview/ScreenSnapshot;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v1, v0}, Landroid/view/View;->measure(II)V

    .line 94
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 103
    .end local v0           #childHeightMeasureSpec:I
    .end local v1           #childWidthMeasureSpec:I
    :cond_2
    invoke-virtual {p0, v7, v4}, Lcom/baidu/launcher/ui/editview/ScreenSnapshot;->setMeasuredDimension(II)V

    .line 104
    return-void
.end method

.method public updateThumbnail(I)V
    .locals 1
    .parameter "i"

    .prologue
    .line 217
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/ScreenSnapshot;->thumbnailGroup:Lcom/baidu/launcher/ui/editview/ThumbnailGroup;

    invoke-virtual {v0, p1}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->updateThumbnail(I)V

    .line 218
    return-void
.end method

.method public workspaceChanged(I)V
    .locals 1
    .parameter "screen"

    .prologue
    .line 213
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/ScreenSnapshot;->thumbnailGroup:Lcom/baidu/launcher/ui/editview/ThumbnailGroup;

    invoke-virtual {v0, p1}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->workspaceChanged(I)V

    .line 214
    return-void
.end method
