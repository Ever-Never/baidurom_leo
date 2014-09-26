.class public Lcom/baidu/launcher/ui/common/FastBitmapDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "FastBitmapDrawable.java"


# instance fields
.field private mBgBitmap:Landroid/graphics/Bitmap;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mHeight:I

.field mMatrix:Landroid/graphics/Matrix;

.field private mPaint:Landroid/graphics/Paint;

.field mScale:F

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "b"

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 32
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    .line 33
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;->mScale:F

    .line 34
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;->mMatrix:Landroid/graphics/Matrix;

    .line 37
    iput-object p1, p0, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 38
    if-eqz p1, :cond_0

    .line 39
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;->mWidth:I

    .line 40
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;->mHeight:I

    .line 44
    :goto_0
    return-void

    .line 42
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;->mHeight:I

    iput v0, p0, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;->mWidth:I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;F)V
    .locals 3
    .parameter "b"
    .parameter "scale"

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 32
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    .line 33
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;->mScale:F

    .line 34
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;->mMatrix:Landroid/graphics/Matrix;

    .line 47
    iput-object p1, p0, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 48
    iput p2, p0, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;->mScale:F

    .line 49
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;->mScale:F

    iget v2, p0, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;->mScale:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 50
    if-eqz p1, :cond_0

    .line 51
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;->mWidth:I

    .line 52
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;->mHeight:I

    .line 57
    :goto_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 58
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 59
    return-void

    .line 55
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;->mHeight:I

    iput v0, p0, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;->mWidth:I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "b"
    .parameter "bg"

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 32
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    .line 33
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;->mScale:F

    .line 34
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;->mMatrix:Landroid/graphics/Matrix;

    .line 61
    iput-object p2, p0, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;->mBgBitmap:Landroid/graphics/Bitmap;

    .line 62
    iput-object p1, p0, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 63
    if-eqz p1, :cond_1

    .line 64
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;->mWidth:I

    .line 65
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;->mHeight:I

    .line 69
    :goto_0
    if-eqz p2, :cond_0

    .line 70
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;->mWidth:I

    .line 71
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;->mHeight:I

    .line 73
    :cond_0
    return-void

    .line 67
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;->mHeight:I

    iput v0, p0, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;->mWidth:I

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    const/4 v4, 0x0

    .line 77
    iget-object v2, p0, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    const/4 v0, 0x0

    .line 81
    .local v0, x:F
    const/4 v1, 0x0

    .line 82
    .local v1, y:F
    iget-object v2, p0, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;->mBgBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    .line 83
    iget-object v2, p0, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;->mBgBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 84
    iget-object v2, p0, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;->mBgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v0, v2

    .line 85
    iget-object v2, p0, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;->mBgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v1, v2

    .line 88
    :cond_2
    iget-object v2, p0, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;->mMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;->mHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;->mWidth:I

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;->mHeight:I

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;->mWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 94
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 99
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .parameter "cf"

    .prologue
    .line 103
    return-void
.end method

.method public setDrawbleAlpha(I)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 131
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;->invalidateSelf()V

    .line 132
    return-void
.end method
