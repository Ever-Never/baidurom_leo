.class public Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;
.super Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/ImageNode;
.source "OverlayNode.java"


# instance fields
.field private mAlphaAnim:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/AlphaAnim;

.field private mMaxAlphaAnimLength:I

.field private mSpeed:I

.field private mTranslateAnim:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/TranslateAnim;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "bmp"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/ImageNode;-><init>(Landroid/graphics/Bitmap;)V

    .line 15
    const/16 v0, 0x32

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;->mSpeed:I

    .line 16
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;->mMaxAlphaAnimLength:I

    .line 21
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/TranslateAnim;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/TranslateAnim;-><init>(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Node;)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;->mTranslateAnim:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/TranslateAnim;

    .line 22
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/AlphaAnim;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/AlphaAnim;-><init>(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Node;)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;->mAlphaAnim:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/AlphaAnim;

    .line 23
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;->mAlphaAnim:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/AlphaAnim;

    new-instance v1, Landroid/view/animation/CycleInterpolator;

    const/high16 v2, 0x3f00

    invoke-direct {v1, v2}, Landroid/view/animation/CycleInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/AlphaAnim;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 25
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;->mTranslateAnim:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/TranslateAnim;

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;->addAnim(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Anim;)V

    .line 26
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;->mAlphaAnim:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/AlphaAnim;

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;->addAnim(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Anim;)V

    .line 27
    return-void
.end method


# virtual methods
.method public doRecycle()V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method public getAlphaAnim()Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/AlphaAnim;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;->mAlphaAnim:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/AlphaAnim;

    return-object v0
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bmp"

    .prologue
    .line 60
    if-nez p1, :cond_0

    .line 71
    :goto_0
    return-void

    .line 63
    :cond_0
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;->mBitmap:Landroid/graphics/Bitmap;

    .line 66
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;->width:I

    .line 67
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;->height:I

    .line 69
    iget v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;->width:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;->mPivotX:I

    .line 70
    iget v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;->height:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;->mPivotY:I

    goto :goto_0
.end method

.method public setMaxAlphaDuration(I)V
    .locals 0
    .parameter "t"

    .prologue
    .line 51
    iput p1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;->mMaxAlphaAnimLength:I

    .line 52
    return-void
.end method

.method public setSpeed(I)V
    .locals 0
    .parameter "v"

    .prologue
    .line 30
    iput p1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;->mSpeed:I

    .line 31
    return-void
.end method

.method public setTargetLocation(II)V
    .locals 8
    .parameter "toX"
    .parameter "toY"

    .prologue
    const-wide/high16 v6, 0x4000

    .line 35
    iget v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;->x:I

    sub-int/2addr v2, p1

    int-to-double v2, v2

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    iget v4, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;->y:I

    sub-int/2addr v4, p2

    int-to-double v4, v4

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x3fe0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-int v0, v2

    .line 38
    .local v0, len:I
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;->mTranslateAnim:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/TranslateAnim;

    iget v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;->x:I

    iget v4, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;->y:I

    invoke-virtual {v2, v3, v4, p1, p2}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/TranslateAnim;->setTarget(IIII)V

    .line 40
    mul-int/lit16 v2, v0, 0x3e8

    iget v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;->mSpeed:I

    div-int v1, v2, v3

    .line 41
    .local v1, length:I
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;->mTranslateAnim:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/TranslateAnim;

    invoke-virtual {v2, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/TranslateAnim;->setDuration(I)V

    .line 42
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;->mAlphaAnim:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/AlphaAnim;

    const/4 v3, 0x0

    const/16 v4, 0xff

    invoke-virtual {v2, v3, v4}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/AlphaAnim;->setTargetAlpha(II)V

    .line 43
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;->mAlphaAnim:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/AlphaAnim;

    iget v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;->mMaxAlphaAnimLength:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/AlphaAnim;->setDuration(I)V

    .line 44
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;->startAnims()V

    .line 46
    return-void
.end method
