.class public Lcom/baidu/launcher/ui/common/TagFastBitmapDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "TagFastBitmapDrawable.java"


# instance fields
.field private mBgBitmap:Landroid/graphics/Bitmap;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mHeight:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "b"

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/baidu/launcher/ui/common/TagFastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 33
    if-eqz p1, :cond_0

    .line 34
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/TagFastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/baidu/launcher/ui/common/TagFastBitmapDrawable;->mWidth:I

    .line 35
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/TagFastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/baidu/launcher/ui/common/TagFastBitmapDrawable;->mHeight:I

    .line 39
    :goto_0
    return-void

    .line 37
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/launcher/ui/common/TagFastBitmapDrawable;->mHeight:I

    iput v0, p0, Lcom/baidu/launcher/ui/common/TagFastBitmapDrawable;->mWidth:I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "b"
    .parameter "bg"

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 41
    iput-object p2, p0, Lcom/baidu/launcher/ui/common/TagFastBitmapDrawable;->mBgBitmap:Landroid/graphics/Bitmap;

    .line 42
    iput-object p1, p0, Lcom/baidu/launcher/ui/common/TagFastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 43
    if-eqz p1, :cond_1

    .line 44
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/TagFastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/baidu/launcher/ui/common/TagFastBitmapDrawable;->mWidth:I

    .line 45
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/TagFastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/baidu/launcher/ui/common/TagFastBitmapDrawable;->mHeight:I

    .line 49
    :goto_0
    if-eqz p2, :cond_0

    .line 50
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/baidu/launcher/ui/common/TagFastBitmapDrawable;->mWidth:I

    .line 51
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/baidu/launcher/ui/common/TagFastBitmapDrawable;->mHeight:I

    .line 53
    :cond_0
    return-void

    .line 47
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/launcher/ui/common/TagFastBitmapDrawable;->mHeight:I

    iput v0, p0, Lcom/baidu/launcher/ui/common/TagFastBitmapDrawable;->mWidth:I

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 57
    iget-object v1, p0, Lcom/baidu/launcher/ui/common/TagFastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/launcher/ui/common/TagFastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    const/4 v0, 0x0

    .line 61
    .local v0, x:F
    iget-object v1, p0, Lcom/baidu/launcher/ui/common/TagFastBitmapDrawable;->mBgBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 62
    iget-object v1, p0, Lcom/baidu/launcher/ui/common/TagFastBitmapDrawable;->mBgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1, v3, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 63
    iget-object v1, p0, Lcom/baidu/launcher/ui/common/TagFastBitmapDrawable;->mBgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/baidu/launcher/ui/common/TagFastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v0, v1

    .line 65
    :cond_2
    iget-object v1, p0, Lcom/baidu/launcher/ui/common/TagFastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1, v0, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/TagFastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/baidu/launcher/ui/common/TagFastBitmapDrawable;->mHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/baidu/launcher/ui/common/TagFastBitmapDrawable;->mWidth:I

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/baidu/launcher/ui/common/TagFastBitmapDrawable;->mHeight:I

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/baidu/launcher/ui/common/TagFastBitmapDrawable;->mWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 70
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 75
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .parameter "cf"

    .prologue
    .line 79
    return-void
.end method
