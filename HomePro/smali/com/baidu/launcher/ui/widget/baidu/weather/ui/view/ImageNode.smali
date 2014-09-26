.class public Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/ImageNode;
.super Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Node;
.source "ImageNode.java"


# instance fields
.field protected mBitmap:Landroid/graphics/Bitmap;

.field protected mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bmp"

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Node;-><init>()V

    .line 15
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/ImageNode;->mPaint:Landroid/graphics/Paint;

    .line 16
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/ImageNode;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 17
    return-void
.end method


# virtual methods
.method public doDraw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    .locals 2
    .parameter "canvas"
    .parameter "matrix"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/ImageNode;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/ImageNode;->alpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 31
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/ImageNode;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/ImageNode;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/ImageNode;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/ImageNode;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 37
    :cond_0
    return-void
.end method

.method public doRecycle()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/ImageNode;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/ImageNode;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/ImageNode;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 47
    :cond_0
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bmp"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/ImageNode;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/ImageNode;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/ImageNode;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 25
    :cond_0
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/ImageNode;->mBitmap:Landroid/graphics/Bitmap;

    .line 26
    return-void
.end method
