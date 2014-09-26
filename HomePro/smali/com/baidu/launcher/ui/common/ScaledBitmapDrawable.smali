.class public Lcom/baidu/launcher/ui/common/ScaledBitmapDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ScaledBitmapDrawable.java"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mHeight:I

.field private mMatrix:Landroid/graphics/Matrix;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;F)V
    .locals 1
    .parameter "b"
    .parameter "scale"

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/baidu/launcher/ui/common/ScaledBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 21
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/common/ScaledBitmapDrawable;->mMatrix:Landroid/graphics/Matrix;

    .line 22
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/ScaledBitmapDrawable;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 23
    if-eqz p1, :cond_0

    .line 24
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/ScaledBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/baidu/launcher/ui/common/ScaledBitmapDrawable;->mWidth:I

    .line 25
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/ScaledBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/baidu/launcher/ui/common/ScaledBitmapDrawable;->mHeight:I

    .line 29
    :goto_0
    return-void

    .line 27
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/launcher/ui/common/ScaledBitmapDrawable;->mHeight:I

    iput v0, p0, Lcom/baidu/launcher/ui/common/ScaledBitmapDrawable;->mWidth:I

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/ScaledBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/launcher/ui/common/ScaledBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 37
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/ScaledBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/baidu/launcher/ui/common/ScaledBitmapDrawable;->mMatrix:Landroid/graphics/Matrix;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/ScaledBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/baidu/launcher/ui/common/ScaledBitmapDrawable;->mHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/baidu/launcher/ui/common/ScaledBitmapDrawable;->mWidth:I

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/baidu/launcher/ui/common/ScaledBitmapDrawable;->mHeight:I

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/baidu/launcher/ui/common/ScaledBitmapDrawable;->mWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 42
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 47
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .parameter "cf"

    .prologue
    .line 51
    return-void
.end method
