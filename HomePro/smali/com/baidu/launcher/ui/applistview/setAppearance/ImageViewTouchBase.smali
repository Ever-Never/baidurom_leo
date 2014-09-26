.class abstract Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;
.super Landroid/widget/ImageView;
.source "ImageViewTouchBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase$Recycler;
    }
.end annotation


# static fields
.field static final SCALE_RATE:F = 1.25f

.field private static final TAG:Ljava/lang/String; = "ImageViewTouchBase"


# instance fields
.field protected mBaseMatrix:Landroid/graphics/Matrix;

.field protected final mBitmapDisplayed:Lcom/baidu/launcher/ui/applistview/setAppearance/RotateBitmap;

.field private final mDisplayMatrix:Landroid/graphics/Matrix;

.field protected mHandler:Landroid/os/Handler;

.field protected mLastXTouchPos:I

.field protected mLastYTouchPos:I

.field private final mMatrixValues:[F

.field mMaxZoom:F

.field private mOnLayoutRunnable:Ljava/lang/Runnable;

.field private mRecycler:Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase$Recycler;

.field protected mSuppMatrix:Landroid/graphics/Matrix;

.field mThisHeight:I

.field mThisWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 234
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 42
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 49
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 53
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 56
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->mMatrixValues:[F

    .line 59
    new-instance v0, Lcom/baidu/launcher/ui/applistview/setAppearance/RotateBitmap;

    invoke-direct {v0, v2}, Lcom/baidu/launcher/ui/applistview/setAppearance/RotateBitmap;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->mBitmapDisplayed:Lcom/baidu/launcher/ui/applistview/setAppearance/RotateBitmap;

    .line 61
    iput v1, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->mThisWidth:I

    iput v1, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->mThisHeight:I

    .line 118
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    .line 148
    iput-object v2, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 235
    invoke-direct {p0}, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->init()V

    .line 236
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 239
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 49
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 53
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 56
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->mMatrixValues:[F

    .line 59
    new-instance v0, Lcom/baidu/launcher/ui/applistview/setAppearance/RotateBitmap;

    invoke-direct {v0, v2}, Lcom/baidu/launcher/ui/applistview/setAppearance/RotateBitmap;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->mBitmapDisplayed:Lcom/baidu/launcher/ui/applistview/setAppearance/RotateBitmap;

    .line 61
    iput v1, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->mThisWidth:I

    iput v1, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->mThisHeight:I

    .line 118
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    .line 148
    iput-object v2, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 240
    invoke-direct {p0}, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->init()V

    .line 241
    return-void
.end method

.method private getProperBaseMatrix(Lcom/baidu/launcher/ui/applistview/setAppearance/RotateBitmap;Landroid/graphics/Matrix;)V
    .locals 10
    .parameter "bitmap"
    .parameter "matrix"

    .prologue
    const/high16 v8, 0x4040

    const/high16 v9, 0x4000

    .line 263
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->getWidth()I

    move-result v7

    int-to-float v4, v7

    .line 264
    .local v4, viewWidth:F
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->getHeight()I

    move-result v7

    int-to-float v3, v7

    .line 266
    .local v3, viewHeight:F
    invoke-virtual {p1}, Lcom/baidu/launcher/ui/applistview/setAppearance/RotateBitmap;->getWidth()I

    move-result v7

    int-to-float v5, v7

    .line 267
    .local v5, w:F
    invoke-virtual {p1}, Lcom/baidu/launcher/ui/applistview/setAppearance/RotateBitmap;->getHeight()I

    move-result v7

    int-to-float v0, v7

    .line 268
    .local v0, h:F
    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    .line 272
    div-float v7, v4, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 273
    .local v6, widthScale:F
    div-float v7, v3, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 274
    .local v1, heightScale:F
    invoke-static {v6, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 276
    .local v2, scale:F
    invoke-virtual {p1}, Lcom/baidu/launcher/ui/applistview/setAppearance/RotateBitmap;->getRotateMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {p2, v7}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 277
    invoke-virtual {p2, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 279
    mul-float v7, v5, v2

    sub-float v7, v4, v7

    div-float/2addr v7, v9

    mul-float v8, v0, v2

    sub-float v8, v3, v8

    div-float/2addr v8, v9

    invoke-virtual {p2, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 281
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 244
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 245
    return-void
.end method

.method private setImageBitmap(Landroid/graphics/Bitmap;I)V
    .locals 3
    .parameter "bitmap"
    .parameter "rotation"

    .prologue
    .line 129
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 130
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 131
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 132
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 135
    :cond_0
    iget-object v2, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->mBitmapDisplayed:Lcom/baidu/launcher/ui/applistview/setAppearance/RotateBitmap;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/applistview/setAppearance/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 136
    .local v1, old:Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->mBitmapDisplayed:Lcom/baidu/launcher/ui/applistview/setAppearance/RotateBitmap;

    invoke-virtual {v2, p1}, Lcom/baidu/launcher/ui/applistview/setAppearance/RotateBitmap;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 137
    iget-object v2, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->mBitmapDisplayed:Lcom/baidu/launcher/ui/applistview/setAppearance/RotateBitmap;

    invoke-virtual {v2, p2}, Lcom/baidu/launcher/ui/applistview/setAppearance/RotateBitmap;->setRotation(I)V

    .line 139
    if-eqz v1, :cond_1

    if-eq v1, p1, :cond_1

    iget-object v2, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->mRecycler:Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase$Recycler;

    if-eqz v2, :cond_1

    .line 140
    iget-object v2, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->mRecycler:Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase$Recycler;

    invoke-interface {v2, v1}, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase$Recycler;->recycle(Landroid/graphics/Bitmap;)V

    .line 142
    :cond_1
    return-void
.end method


# virtual methods
.method protected center(ZZ)V
    .locals 12
    .parameter "horizontal"
    .parameter "vertical"

    .prologue
    const/high16 v11, 0x4000

    const/4 v10, 0x0

    .line 191
    iget-object v8, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->mBitmapDisplayed:Lcom/baidu/launcher/ui/applistview/setAppearance/RotateBitmap;

    invoke-virtual {v8}, Lcom/baidu/launcher/ui/applistview/setAppearance/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    if-nez v8, :cond_0

    .line 231
    :goto_0
    return-void

    .line 195
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    .line 197
    .local v3, m:Landroid/graphics/Matrix;
    new-instance v4, Landroid/graphics/RectF;

    iget-object v8, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->mBitmapDisplayed:Lcom/baidu/launcher/ui/applistview/setAppearance/RotateBitmap;

    invoke-virtual {v8}, Lcom/baidu/launcher/ui/applistview/setAppearance/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->mBitmapDisplayed:Lcom/baidu/launcher/ui/applistview/setAppearance/RotateBitmap;

    invoke-virtual {v9}, Lcom/baidu/launcher/ui/applistview/setAppearance/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-direct {v4, v10, v10, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 200
    .local v4, rect:Landroid/graphics/RectF;
    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 202
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v2

    .line 203
    .local v2, height:F
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v7

    .line 205
    .local v7, width:F
    const/4 v0, 0x0

    .local v0, deltaX:F
    const/4 v1, 0x0

    .line 207
    .local v1, deltaY:F
    if-eqz p2, :cond_1

    .line 208
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->getHeight()I

    move-result v5

    .line 209
    .local v5, viewHeight:I
    int-to-float v8, v5

    cmpg-float v8, v2, v8

    if-gez v8, :cond_3

    .line 210
    int-to-float v8, v5

    sub-float/2addr v8, v2

    div-float/2addr v8, v11

    iget v9, v4, Landroid/graphics/RectF;->top:F

    sub-float v1, v8, v9

    .line 218
    .end local v5           #viewHeight:I
    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    .line 219
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->getWidth()I

    move-result v6

    .line 220
    .local v6, viewWidth:I
    int-to-float v8, v6

    cmpg-float v8, v7, v8

    if-gez v8, :cond_5

    .line 221
    int-to-float v8, v6

    sub-float/2addr v8, v7

    div-float/2addr v8, v11

    iget v9, v4, Landroid/graphics/RectF;->left:F

    sub-float v0, v8, v9

    .line 229
    .end local v6           #viewWidth:I
    :cond_2
    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->postTranslate(FF)V

    .line 230
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 211
    .restart local v5       #viewHeight:I
    :cond_3
    iget v8, v4, Landroid/graphics/RectF;->top:F

    cmpl-float v8, v8, v10

    if-lez v8, :cond_4

    .line 212
    iget v8, v4, Landroid/graphics/RectF;->top:F

    neg-float v1, v8

    goto :goto_1

    .line 213
    :cond_4
    iget v8, v4, Landroid/graphics/RectF;->bottom:F

    int-to-float v9, v5

    cmpg-float v8, v8, v9

    if-gez v8, :cond_1

    .line 214
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->getHeight()I

    move-result v8

    int-to-float v8, v8

    iget v9, v4, Landroid/graphics/RectF;->bottom:F

    sub-float v1, v8, v9

    goto :goto_1

    .line 222
    .end local v5           #viewHeight:I
    .restart local v6       #viewWidth:I
    :cond_5
    iget v8, v4, Landroid/graphics/RectF;->left:F

    cmpl-float v8, v8, v10

    if-lez v8, :cond_6

    .line 223
    iget v8, v4, Landroid/graphics/RectF;->left:F

    neg-float v0, v8

    goto :goto_2

    .line 224
    :cond_6
    iget v8, v4, Landroid/graphics/RectF;->right:F

    int-to-float v9, v6

    cmpg-float v8, v8, v9

    if-gez v8, :cond_2

    .line 225
    int-to-float v8, v6

    iget v9, v4, Landroid/graphics/RectF;->right:F

    sub-float v0, v8, v9

    goto :goto_2
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 145
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->setImageBitmapResetBase(Landroid/graphics/Bitmap;Z)V

    .line 146
    return-void
.end method

.method protected getImageViewMatrix()Landroid/graphics/Matrix;
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 288
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 289
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method protected getScale()F
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->getScale(Landroid/graphics/Matrix;)F

    move-result v0

    return v0
.end method

.method protected getScale(Landroid/graphics/Matrix;)F
    .locals 1
    .parameter "matrix"

    .prologue
    .line 254
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->getValue(Landroid/graphics/Matrix;I)F

    move-result v0

    return v0
.end method

.method protected getValue(Landroid/graphics/Matrix;I)F
    .locals 1
    .parameter "matrix"
    .parameter "whichValue"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->mMatrixValues:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 249
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->mMatrixValues:[F

    aget v0, v0, p2

    return v0
.end method

.method protected maxZoom()F
    .locals 5

    .prologue
    .line 299
    iget-object v3, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->mBitmapDisplayed:Lcom/baidu/launcher/ui/applistview/setAppearance/RotateBitmap;

    invoke-virtual {v3}, Lcom/baidu/launcher/ui/applistview/setAppearance/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_0

    .line 300
    const/high16 v2, 0x3f80

    .line 306
    :goto_0
    return v2

    .line 303
    :cond_0
    iget-object v3, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->mBitmapDisplayed:Lcom/baidu/launcher/ui/applistview/setAppearance/RotateBitmap;

    invoke-virtual {v3}, Lcom/baidu/launcher/ui/applistview/setAppearance/RotateBitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->mThisWidth:I

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 304
    .local v1, fw:F
    iget-object v3, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->mBitmapDisplayed:Lcom/baidu/launcher/ui/applistview/setAppearance/RotateBitmap;

    invoke-virtual {v3}, Lcom/baidu/launcher/ui/applistview/setAppearance/RotateBitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->mThisHeight:I

    int-to-float v4, v4

    div-float v0, v3, v4

    .line 305
    .local v0, fh:F
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/high16 v4, 0x4080

    mul-float v2, v3, v4

    .line 306
    .local v2, max:F
    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 96
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 98
    const/4 v0, 0x1

    .line 100
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/high16 v1, 0x3f80

    .line 105
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->getScale()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 111
    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->zoomTo(F)V

    .line 112
    const/4 v0, 0x1

    .line 115
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 80
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 81
    sub-int v1, p4, p2

    iput v1, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->mThisWidth:I

    .line 82
    sub-int v1, p5, p3

    iput v1, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->mThisHeight:I

    .line 83
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 84
    .local v0, r:Ljava/lang/Runnable;
    if-eqz v0, :cond_0

    .line 85
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 86
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 88
    :cond_0
    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->mBitmapDisplayed:Lcom/baidu/launcher/ui/applistview/setAppearance/RotateBitmap;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/applistview/setAppearance/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 89
    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->mBitmapDisplayed:Lcom/baidu/launcher/ui/applistview/setAppearance/RotateBitmap;

    iget-object v2, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, v1, v2}, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->getProperBaseMatrix(Lcom/baidu/launcher/ui/applistview/setAppearance/RotateBitmap;Landroid/graphics/Matrix;)V

    .line 90
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 92
    :cond_1
    return-void
.end method

.method protected panBy(FF)V
    .locals 1
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 408
    invoke-virtual {p0, p1, p2}, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->postTranslate(FF)V

    .line 409
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 410
    return-void
.end method

.method protected postTranslate(FF)V
    .locals 1
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 404
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 405
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 125
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;I)V

    .line 126
    return-void
.end method

.method public setImageBitmapResetBase(Landroid/graphics/Bitmap;Z)V
    .locals 1
    .parameter "bitmap"
    .parameter "resetSupp"

    .prologue
    .line 154
    new-instance v0, Lcom/baidu/launcher/ui/applistview/setAppearance/RotateBitmap;

    invoke-direct {v0, p1}, Lcom/baidu/launcher/ui/applistview/setAppearance/RotateBitmap;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0, p2}, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->setImageRotateBitmapResetBase(Lcom/baidu/launcher/ui/applistview/setAppearance/RotateBitmap;Z)V

    .line 155
    return-void
.end method

.method public setImageRotateBitmapResetBase(Lcom/baidu/launcher/ui/applistview/setAppearance/RotateBitmap;Z)V
    .locals 3
    .parameter "bitmap"
    .parameter "resetSupp"

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->getWidth()I

    move-result v0

    .line 161
    .local v0, viewWidth:I
    if-gtz v0, :cond_0

    .line 162
    new-instance v1, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase$1;-><init>(Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;Lcom/baidu/launcher/ui/applistview/setAppearance/RotateBitmap;Z)V

    iput-object v1, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 183
    :goto_0
    return-void

    .line 170
    :cond_0
    invoke-virtual {p1}, Lcom/baidu/launcher/ui/applistview/setAppearance/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 171
    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, p1, v1}, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->getProperBaseMatrix(Lcom/baidu/launcher/ui/applistview/setAppearance/RotateBitmap;Landroid/graphics/Matrix;)V

    .line 172
    invoke-virtual {p1}, Lcom/baidu/launcher/ui/applistview/setAppearance/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p1}, Lcom/baidu/launcher/ui/applistview/setAppearance/RotateBitmap;->getRotation()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;I)V

    .line 178
    :goto_1
    if-eqz p2, :cond_1

    .line 179
    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 181
    :cond_1
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 182
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->maxZoom()F

    move-result v1

    iput v1, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->mMaxZoom:F

    goto :goto_0

    .line 174
    :cond_2
    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 175
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method public setRecycler(Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase$Recycler;)V
    .locals 0
    .parameter "r"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->mRecycler:Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase$Recycler;

    .line 73
    return-void
.end method

.method protected zoomIn()V
    .locals 1

    .prologue
    .line 358
    const/high16 v0, 0x3fa0

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->zoomIn(F)V

    .line 359
    return-void
.end method

.method protected zoomIn(F)V
    .locals 5
    .parameter "rate"

    .prologue
    const/high16 v4, 0x4000

    .line 366
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->getScale()F

    move-result v2

    iget v3, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->mMaxZoom:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 369
    :cond_1
    iget-object v2, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->mBitmapDisplayed:Lcom/baidu/launcher/ui/applistview/setAppearance/RotateBitmap;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/applistview/setAppearance/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 373
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v2, v4

    .line 374
    .local v0, cx:F
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v2, v4

    .line 376
    .local v1, cy:F
    iget-object v2, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, p1, p1, v0, v1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 377
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0
.end method

.method protected zoomOut()V
    .locals 1

    .prologue
    .line 362
    const/high16 v0, 0x3fa0

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->zoomOut(F)V

    .line 363
    return-void
.end method

.method protected zoomOut(F)V
    .locals 7
    .parameter "rate"

    .prologue
    const/4 v6, 0x1

    const/high16 v4, 0x4000

    const/high16 v5, 0x3f80

    .line 381
    iget-object v3, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->mBitmapDisplayed:Lcom/baidu/launcher/ui/applistview/setAppearance/RotateBitmap;

    invoke-virtual {v3}, Lcom/baidu/launcher/ui/applistview/setAppearance/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_0

    .line 401
    :goto_0
    return-void

    .line 385
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v3, v4

    .line 386
    .local v0, cx:F
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v1, v3, v4

    .line 389
    .local v1, cy:F
    new-instance v2, Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-direct {v2, v3}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 390
    .local v2, tmp:Landroid/graphics/Matrix;
    div-float v3, v5, p1

    div-float v4, v5, p1

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 393
    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->getScale(Landroid/graphics/Matrix;)F

    move-result v3

    cmpg-float v3, v3, v5

    if-gez v3, :cond_1

    .line 395
    iget-object v3, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v5, v5, v0, v1}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 399
    :goto_1
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 400
    invoke-virtual {p0, v6, v6}, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->center(ZZ)V

    goto :goto_0

    .line 397
    :cond_1
    iget-object v3, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    div-float v4, v5, p1

    div-float/2addr v5, p1

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    goto :goto_1
.end method

.method protected zoomTo(F)V
    .locals 4
    .parameter "scale"

    .prologue
    const/high16 v3, 0x4000

    .line 343
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v2, v3

    .line 344
    .local v0, cx:F
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v2, v3

    .line 346
    .local v1, cy:F
    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->zoomTo(FFF)V

    .line 347
    return-void
.end method

.method protected zoomTo(FFF)V
    .locals 4
    .parameter "scale"
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    const/4 v3, 0x1

    .line 310
    iget v2, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->mMaxZoom:F

    cmpl-float v2, p1, v2

    if-lez v2, :cond_0

    .line 311
    iget p1, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->mMaxZoom:F

    .line 314
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->getScale()F

    move-result v1

    .line 315
    .local v1, oldScale:F
    div-float v0, p1, v1

    .line 317
    .local v0, deltaScale:F
    iget-object v2, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v0, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 318
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 319
    invoke-virtual {p0, v3, v3}, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->center(ZZ)V

    .line 320
    return-void
.end method

.method protected zoomTo(FFFF)V
    .locals 10
    .parameter "scale"
    .parameter "centerX"
    .parameter "centerY"
    .parameter "durationMs"

    .prologue
    .line 324
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->getScale()F

    move-result v0

    sub-float v0, p1, v0

    div-float v6, v0, p4

    .line 325
    .local v6, incrementPerMs:F
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->getScale()F

    move-result v5

    .line 326
    .local v5, oldScale:F
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 328
    .local v3, startTime:J
    iget-object v9, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase$2;

    move-object v1, p0

    move v2, p4

    move v7, p2

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase$2;-><init>(Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;FJFFFF)V

    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 340
    return-void
.end method

.method protected zoomToPoint(FFF)V
    .locals 4
    .parameter "scale"
    .parameter "pointX"
    .parameter "pointY"

    .prologue
    const/high16 v3, 0x4000

    .line 350
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v2, v3

    .line 351
    .local v0, cx:F
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v2, v3

    .line 353
    .local v1, cy:F
    sub-float v2, v0, p2

    sub-float v3, v1, p3

    invoke-virtual {p0, v2, v3}, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->panBy(FF)V

    .line 354
    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->zoomTo(FFF)V

    .line 355
    return-void
.end method
