.class Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;
.super Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;
.source "CropImageView.java"


# instance fields
.field HighlightViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/ui/applistview/setAppearance/HighlightView;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field mLastX:F

.field mLastY:F

.field mMotionEdge:I

.field mMotionHighlightView:Lcom/baidu/launcher/ui/applistview/setAppearance/HighlightView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;->HighlightViews:Ljava/util/ArrayList;

    .line 12
    iput-object v1, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;->mMotionHighlightView:Lcom/baidu/launcher/ui/applistview/setAppearance/HighlightView;

    .line 36
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 37
    return-void
.end method

.method private centerBasedOnForLayout(Lcom/baidu/launcher/ui/applistview/setAppearance/HighlightView;)V
    .locals 13
    .parameter "hv"

    .prologue
    .line 191
    iget-object v1, p1, Lcom/baidu/launcher/ui/applistview/setAppearance/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    .line 193
    .local v1, drawRect:Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v5, v9

    .line 194
    .local v5, width:F
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v2, v9

    .line 196
    .local v2, height:F
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;->getWidth()I

    move-result v9

    int-to-float v4, v9

    .line 197
    .local v4, thisWidth:F
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;->getHeight()I

    move-result v9

    int-to-float v3, v9

    .line 199
    .local v3, thisHeight:F
    div-float v9, v4, v5

    const v10, 0x3f19999a

    mul-float v6, v9, v10

    .line 200
    .local v6, z1:F
    div-float v9, v3, v2

    const v10, 0x3f19999a

    mul-float v7, v9, v10

    .line 202
    .local v7, z2:F
    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 203
    .local v8, zoom:F
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;->getScale()F

    move-result v9

    mul-float/2addr v8, v9

    .line 204
    const/high16 v9, 0x3f80

    invoke-static {v9, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 206
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;->getScale()F

    move-result v9

    sub-float v9, v8, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    div-float/2addr v9, v8

    float-to-double v9, v9

    const-wide v11, 0x3fb999999999999aL

    cmpl-double v9, v9, v11

    if-lez v9, :cond_0

    .line 207
    const/4 v9, 0x2

    new-array v0, v9, [F

    const/4 v9, 0x0

    iget-object v10, p1, Lcom/baidu/launcher/ui/applistview/setAppearance/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerX()F

    move-result v10

    aput v10, v0, v9

    const/4 v9, 0x1

    iget-object v10, p1, Lcom/baidu/launcher/ui/applistview/setAppearance/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerY()F

    move-result v10

    aput v10, v0, v9

    .line 209
    .local v0, coordinates:[F
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 210
    const/4 v9, 0x0

    aget v9, v0, v9

    const/4 v10, 0x1

    aget v10, v0, v10

    invoke-virtual {p0, v8, v9, v10}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;->zoomTo(FFF)V

    .line 212
    .end local v0           #coordinates:[F
    :cond_0
    return-void
.end method

.method private centerBasedOnHighlightView(Lcom/baidu/launcher/ui/applistview/setAppearance/HighlightView;)V
    .locals 13
    .parameter "hv"

    .prologue
    .line 165
    iget-object v1, p1, Lcom/baidu/launcher/ui/applistview/setAppearance/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    .line 167
    .local v1, drawRect:Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v5, v9

    .line 168
    .local v5, width:F
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v2, v9

    .line 170
    .local v2, height:F
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;->getWidth()I

    move-result v9

    int-to-float v4, v9

    .line 171
    .local v4, thisWidth:F
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;->getHeight()I

    move-result v9

    int-to-float v3, v9

    .line 173
    .local v3, thisHeight:F
    div-float v9, v4, v5

    const v10, 0x3f19999a

    mul-float v6, v9, v10

    .line 174
    .local v6, z1:F
    div-float v9, v3, v2

    const v10, 0x3f19999a

    mul-float v7, v9, v10

    .line 176
    .local v7, z2:F
    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 177
    .local v8, zoom:F
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;->getScale()F

    move-result v9

    mul-float/2addr v8, v9

    .line 178
    const/high16 v9, 0x3f80

    invoke-static {v9, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 180
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;->getScale()F

    move-result v9

    sub-float v9, v8, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    div-float/2addr v9, v8

    float-to-double v9, v9

    const-wide v11, 0x3fb999999999999aL

    cmpl-double v9, v9, v11

    if-lez v9, :cond_0

    .line 181
    const/4 v9, 0x2

    new-array v0, v9, [F

    const/4 v9, 0x0

    iget-object v10, p1, Lcom/baidu/launcher/ui/applistview/setAppearance/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerX()F

    move-result v10

    aput v10, v0, v9

    const/4 v9, 0x1

    iget-object v10, p1, Lcom/baidu/launcher/ui/applistview/setAppearance/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerY()F

    move-result v10

    aput v10, v0, v9

    .line 183
    .local v0, coordinates:[F
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 184
    const/4 v9, 0x0

    aget v9, v0, v9

    const/4 v10, 0x1

    aget v10, v0, v10

    const/high16 v11, 0x4396

    invoke-virtual {p0, v8, v9, v10, v11}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;->zoomTo(FFFF)V

    .line 187
    .end local v0           #coordinates:[F
    :cond_0
    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;->ensureVisible(Lcom/baidu/launcher/ui/applistview/setAppearance/HighlightView;)V

    .line 188
    return-void
.end method

.method private ensureVisible(Lcom/baidu/launcher/ui/applistview/setAppearance/HighlightView;)V
    .locals 10
    .parameter "hv"

    .prologue
    const/4 v9, 0x0

    .line 146
    iget-object v6, p1, Lcom/baidu/launcher/ui/applistview/setAppearance/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    .line 148
    .local v6, r:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;->getLeft()I

    move-result v7

    iget v8, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 149
    .local v1, panDeltaX1:I
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;->getRight()I

    move-result v7

    iget v8, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 151
    .local v2, panDeltaX2:I
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;->getTop()I

    move-result v7

    iget v8, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 152
    .local v4, panDeltaY1:I
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;->getBottom()I

    move-result v7

    iget v8, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 154
    .local v5, panDeltaY2:I
    if-eqz v1, :cond_2

    move v0, v1

    .line 155
    .local v0, panDeltaX:I
    :goto_0
    if-eqz v4, :cond_3

    move v3, v4

    .line 157
    .local v3, panDeltaY:I
    :goto_1
    if-nez v0, :cond_0

    if-eqz v3, :cond_1

    .line 158
    :cond_0
    int-to-float v7, v0

    int-to-float v8, v3

    invoke-virtual {p0, v7, v8}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;->panBy(FF)V

    .line 160
    :cond_1
    return-void

    .end local v0           #panDeltaX:I
    .end local v3           #panDeltaY:I
    :cond_2
    move v0, v2

    .line 154
    goto :goto_0

    .restart local v0       #panDeltaX:I
    :cond_3
    move v3, v5

    .line 155
    goto :goto_1
.end method


# virtual methods
.method public add(Lcom/baidu/launcher/ui/applistview/setAppearance/HighlightView;)V
    .locals 1
    .parameter "hv"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;->HighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;->invalidate()V

    .line 225
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 216
    invoke-super {p0, p1}, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->onDraw(Landroid/graphics/Canvas;)V

    .line 217
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;->HighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 218
    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;->HighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/applistview/setAppearance/HighlightView;

    invoke-virtual {v1, p1}, Lcom/baidu/launcher/ui/applistview/setAppearance/HighlightView;->draw(Landroid/graphics/Canvas;)V

    .line 217
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 220
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 21
    iget-object v2, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;->HighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 32
    :cond_0
    return-void

    .line 22
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->onLayout(ZIIII)V

    .line 23
    iget-object v2, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;->mBitmapDisplayed:Lcom/baidu/launcher/ui/applistview/setAppearance/RotateBitmap;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/applistview/setAppearance/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 24
    iget-object v2, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;->HighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/applistview/setAppearance/HighlightView;

    .line 25
    .local v0, hv:Lcom/baidu/launcher/ui/applistview/setAppearance/HighlightView;
    iget-object v2, v0, Lcom/baidu/launcher/ui/applistview/setAppearance/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 26
    invoke-virtual {v0}, Lcom/baidu/launcher/ui/applistview/setAppearance/HighlightView;->invalidate()V

    .line 27
    iget-boolean v2, v0, Lcom/baidu/launcher/ui/applistview/setAppearance/HighlightView;->mIsFocused:Z

    if-eqz v2, :cond_2

    .line 28
    invoke-direct {p0, v0}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;->centerBasedOnForLayout(Lcom/baidu/launcher/ui/applistview/setAppearance/HighlightView;)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    .line 78
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;

    .line 79
    .local v0, cropImage:Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;
    iget-boolean v4, v0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->mSaving:Z

    if-eqz v4, :cond_0

    .line 80
    const/4 v4, 0x0

    .line 141
    :goto_0
    return v4

    .line 83
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 126
    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    :cond_2
    :goto_2
    move v4, v5

    .line 141
    goto :goto_0

    .line 85
    :pswitch_0
    const/4 v3, 0x0

    .local v3, i:I
    :goto_3
    iget-object v4, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;->HighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 86
    iget-object v4, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;->HighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/ui/applistview/setAppearance/HighlightView;

    .line 87
    .local v2, hv:Lcom/baidu/launcher/ui/applistview/setAppearance/HighlightView;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v2, v4, v6}, Lcom/baidu/launcher/ui/applistview/setAppearance/HighlightView;->getHit(FF)I

    move-result v1

    .line 88
    .local v1, edge:I
    if-eq v1, v5, :cond_4

    .line 89
    iput v1, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;->mMotionEdge:I

    .line 90
    iput-object v2, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;->mMotionHighlightView:Lcom/baidu/launcher/ui/applistview/setAppearance/HighlightView;

    .line 91
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;->mLastX:F

    .line 92
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;->mLastY:F

    .line 93
    iget-object v6, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;->mMotionHighlightView:Lcom/baidu/launcher/ui/applistview/setAppearance/HighlightView;

    const/16 v4, 0x20

    if-ne v1, v4, :cond_3

    sget-object v4, Lcom/baidu/launcher/ui/applistview/setAppearance/HighlightView$ModifyMode;->Move:Lcom/baidu/launcher/ui/applistview/setAppearance/HighlightView$ModifyMode;

    :goto_4
    invoke-virtual {v6, v4}, Lcom/baidu/launcher/ui/applistview/setAppearance/HighlightView;->setMode(Lcom/baidu/launcher/ui/applistview/setAppearance/HighlightView$ModifyMode;)V

    goto :goto_1

    :cond_3
    sget-object v4, Lcom/baidu/launcher/ui/applistview/setAppearance/HighlightView$ModifyMode;->Grow:Lcom/baidu/launcher/ui/applistview/setAppearance/HighlightView$ModifyMode;

    goto :goto_4

    .line 85
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 101
    .end local v1           #edge:I
    .end local v2           #hv:Lcom/baidu/launcher/ui/applistview/setAppearance/HighlightView;
    .end local v3           #i:I
    :pswitch_1
    iget-object v4, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;->mMotionHighlightView:Lcom/baidu/launcher/ui/applistview/setAppearance/HighlightView;

    if-eqz v4, :cond_5

    .line 102
    iget-object v4, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;->mMotionHighlightView:Lcom/baidu/launcher/ui/applistview/setAppearance/HighlightView;

    invoke-direct {p0, v4}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;->centerBasedOnHighlightView(Lcom/baidu/launcher/ui/applistview/setAppearance/HighlightView;)V

    .line 103
    iget-object v4, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;->mMotionHighlightView:Lcom/baidu/launcher/ui/applistview/setAppearance/HighlightView;

    sget-object v6, Lcom/baidu/launcher/ui/applistview/setAppearance/HighlightView$ModifyMode;->None:Lcom/baidu/launcher/ui/applistview/setAppearance/HighlightView$ModifyMode;

    invoke-virtual {v4, v6}, Lcom/baidu/launcher/ui/applistview/setAppearance/HighlightView;->setMode(Lcom/baidu/launcher/ui/applistview/setAppearance/HighlightView$ModifyMode;)V

    .line 105
    :cond_5
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;->mMotionHighlightView:Lcom/baidu/launcher/ui/applistview/setAppearance/HighlightView;

    goto :goto_1

    .line 108
    :pswitch_2
    iget-object v4, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;->mMotionHighlightView:Lcom/baidu/launcher/ui/applistview/setAppearance/HighlightView;

    if-eqz v4, :cond_1

    .line 109
    iget-object v4, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;->mMotionHighlightView:Lcom/baidu/launcher/ui/applistview/setAppearance/HighlightView;

    iget v6, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;->mMotionEdge:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iget v8, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;->mLastX:F

    sub-float/2addr v7, v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iget v9, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;->mLastY:F

    sub-float/2addr v8, v9

    invoke-virtual {v4, v6, v7, v8}, Lcom/baidu/launcher/ui/applistview/setAppearance/HighlightView;->handleMotion(IFF)V

    .line 111
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;->mLastX:F

    .line 112
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;->mLastY:F

    .line 120
    iget-object v4, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;->mMotionHighlightView:Lcom/baidu/launcher/ui/applistview/setAppearance/HighlightView;

    invoke-direct {p0, v4}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;->ensureVisible(Lcom/baidu/launcher/ui/applistview/setAppearance/HighlightView;)V

    goto/16 :goto_1

    .line 128
    :pswitch_3
    invoke-virtual {p0, v5, v5}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;->center(ZZ)V

    goto/16 :goto_2

    .line 135
    :pswitch_4
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;->getScale()F

    move-result v4

    const/high16 v6, 0x3f80

    cmpl-float v4, v4, v6

    if-nez v4, :cond_2

    .line 136
    invoke-virtual {p0, v5, v5}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;->center(ZZ)V

    goto/16 :goto_2

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 126
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected postTranslate(FF)V
    .locals 3
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    .line 68
    invoke-super {p0, p1, p2}, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->postTranslate(FF)V

    .line 69
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;->HighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 70
    iget-object v2, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;->HighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/applistview/setAppearance/HighlightView;

    .line 71
    .local v0, hv:Lcom/baidu/launcher/ui/applistview/setAppearance/HighlightView;
    iget-object v2, v0, Lcom/baidu/launcher/ui/applistview/setAppearance/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 72
    invoke-virtual {v0}, Lcom/baidu/launcher/ui/applistview/setAppearance/HighlightView;->invalidate()V

    .line 69
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 74
    .end local v0           #hv:Lcom/baidu/launcher/ui/applistview/setAppearance/HighlightView;
    :cond_0
    return-void
.end method

.method protected zoomIn()V
    .locals 4

    .prologue
    .line 50
    invoke-super {p0}, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->zoomIn()V

    .line 51
    iget-object v2, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;->HighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/applistview/setAppearance/HighlightView;

    .line 52
    .local v0, hv:Lcom/baidu/launcher/ui/applistview/setAppearance/HighlightView;
    iget-object v2, v0, Lcom/baidu/launcher/ui/applistview/setAppearance/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 53
    invoke-virtual {v0}, Lcom/baidu/launcher/ui/applistview/setAppearance/HighlightView;->invalidate()V

    goto :goto_0

    .line 55
    .end local v0           #hv:Lcom/baidu/launcher/ui/applistview/setAppearance/HighlightView;
    :cond_0
    return-void
.end method

.method protected zoomOut()V
    .locals 4

    .prologue
    .line 59
    invoke-super {p0}, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->zoomOut()V

    .line 60
    iget-object v2, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;->HighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/applistview/setAppearance/HighlightView;

    .line 61
    .local v0, hv:Lcom/baidu/launcher/ui/applistview/setAppearance/HighlightView;
    iget-object v2, v0, Lcom/baidu/launcher/ui/applistview/setAppearance/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 62
    invoke-virtual {v0}, Lcom/baidu/launcher/ui/applistview/setAppearance/HighlightView;->invalidate()V

    goto :goto_0

    .line 64
    .end local v0           #hv:Lcom/baidu/launcher/ui/applistview/setAppearance/HighlightView;
    :cond_0
    return-void
.end method

.method protected zoomTo(FFF)V
    .locals 4
    .parameter "scale"
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    .line 41
    invoke-super {p0, p1, p2, p3}, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->zoomTo(FFF)V

    .line 42
    iget-object v2, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;->HighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/applistview/setAppearance/HighlightView;

    .line 43
    .local v0, hv:Lcom/baidu/launcher/ui/applistview/setAppearance/HighlightView;
    iget-object v2, v0, Lcom/baidu/launcher/ui/applistview/setAppearance/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 44
    invoke-virtual {v0}, Lcom/baidu/launcher/ui/applistview/setAppearance/HighlightView;->invalidate()V

    goto :goto_0

    .line 46
    .end local v0           #hv:Lcom/baidu/launcher/ui/applistview/setAppearance/HighlightView;
    :cond_0
    return-void
.end method
