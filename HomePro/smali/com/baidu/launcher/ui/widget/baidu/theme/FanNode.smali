.class public Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;
.super Lcom/baidu/launcher/ui/widget/baidu/theme/Node;
.source "FanNode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode$ProgressAnim;
    }
.end annotation


# static fields
.field public static final TYPE_BUTTOM:I = 0x0

.field public static final TYPE_LEFT:I = 0x1

.field public static final TYPE_LEFT_TOP:I = 0x2

.field public static final TYPE_RIGHT:I = 0x4

.field public static final TYPE_RIGHT_TOP:I = 0x5

.field public static final TYPE_TOP:I = 0x3


# instance fields
.field private mAnim:Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode$ProgressAnim;

.field private mBitmapBG:Landroid/graphics/Bitmap;

.field private mBitmapMask:Landroid/graphics/Bitmap;

.field private mMaskPaint:Landroid/graphics/Paint;

.field private mMaskRect:Landroid/graphics/RectF;

.field private mPDmode:Landroid/graphics/PorterDuffXfermode;

.field private mProgress:I

.field private mStartAngle:I

.field private mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "ctx"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0xff

    .line 35
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/theme/Node;-><init>()V

    .line 21
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->mPDmode:Landroid/graphics/PorterDuffXfermode;

    .line 33
    iput v3, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->mType:I

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->mMaskPaint:Landroid/graphics/Paint;

    .line 39
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->mMaskPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 40
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->mMaskPaint:Landroid/graphics/Paint;

    invoke-static {v2, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 41
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->mMaskPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 43
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode$ProgressAnim;

    invoke-direct {v0, p0, p0}, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode$ProgressAnim;-><init>(Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;Lcom/baidu/launcher/ui/widget/baidu/theme/Node;)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->mAnim:Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode$ProgressAnim;

    .line 44
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->mAnim:Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode$ProgressAnim;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode$ProgressAnim;->setDuration(I)V

    .line 46
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->mAnim:Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode$ProgressAnim;

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->addAnim(Lcom/baidu/launcher/ui/widget/baidu/theme/Anim;)V

    .line 47
    invoke-virtual {p0, v3}, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->setProgress(I)V

    .line 49
    return-void
.end method

.method private calculateDuration(I)I
    .locals 3
    .parameter "targetNumber"

    .prologue
    .line 201
    const/16 v1, 0x64

    .line 203
    .local v1, ret:I
    iget v2, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->mProgress:I

    sub-int/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 205
    .local v0, len:I
    mul-int/lit8 v1, v0, 0x5

    .line 207
    return v1
.end method

.method private drawMask()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 171
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->mBitmapMask:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 172
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->mBitmapMask:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 174
    .local v0, c:Landroid/graphics/Canvas;
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->mMaskRect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->mStartAngle:I

    int-to-float v2, v2

    iget v3, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->mProgress:I

    mul-int/lit16 v3, v3, 0x168

    div-int/lit8 v3, v3, 0x64

    int-to-float v3, v3

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 175
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->mMaskPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->mPDmode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 177
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->mBitmapBG:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v6, v6, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 178
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->mMaskPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 180
    return-void
.end method


# virtual methods
.method public doDraw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    .locals 2
    .parameter "canvas"
    .parameter "matrix"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->mBitmapMask:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->mBitmapMask:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->mBitmapBG:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->mBitmapBG:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->drawMask()V

    .line 188
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->mBitmapMask:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 190
    :cond_0
    return-void
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->mProgress:I

    return v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->setTargetProgress(I)V

    .line 164
    return-void
.end method

.method public setImage(Landroid/content/Context;III)V
    .locals 2
    .parameter "ctx"
    .parameter "resid"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 53
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->mBitmapBG:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 54
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->mBitmapBG:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 55
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 56
    .local v0, temp:Landroid/graphics/Bitmap;
    const/4 v1, 0x1

    invoke-static {v0, p3, p4, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->mBitmapBG:Landroid/graphics/Bitmap;

    .line 57
    if-eqz v0, :cond_1

    .line 58
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 62
    :cond_1
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->mBitmapMask:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 63
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->mBitmapMask:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 65
    :cond_2
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p4, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->mBitmapMask:Landroid/graphics/Bitmap;

    .line 66
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->setRotatePivot(I)V

    .line 67
    return-void
.end method

.method public setProgress(I)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 194
    iput p1, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->mProgress:I

    .line 196
    return-void
.end method

.method public setRotatePivot(I)V
    .locals 5
    .parameter "type"

    .prologue
    .line 71
    iput p1, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->mType:I

    .line 72
    const/4 v1, 0x0

    .local v1, l:F
    const/4 v3, 0x0

    .local v3, t:F
    const/4 v2, 0x0

    .local v2, r:F
    const/4 v0, 0x0

    .line 75
    .local v0, b:F
    packed-switch p1, :pswitch_data_0

    .line 121
    :goto_0
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v1, v3, v2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->mMaskRect:Landroid/graphics/RectF;

    .line 124
    return-void

    .line 77
    :pswitch_0
    const/4 v1, 0x0

    .line 78
    const/4 v3, 0x0

    .line 79
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->mBitmapMask:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v2, v4

    .line 80
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->mBitmapMask:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    int-to-float v0, v4

    .line 82
    goto :goto_0

    .line 84
    :pswitch_1
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->mBitmapMask:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    neg-int v4, v4

    int-to-float v1, v4

    .line 85
    const/4 v3, 0x0

    .line 86
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->mBitmapMask:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v2, v4

    .line 87
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->mBitmapMask:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v0, v4

    .line 88
    goto :goto_0

    .line 90
    :pswitch_2
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->mBitmapMask:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    neg-int v4, v4

    int-to-float v1, v4

    .line 91
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->mBitmapMask:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    neg-int v4, v4

    int-to-float v3, v4

    .line 92
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->mBitmapMask:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v2, v4

    .line 93
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->mBitmapMask:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v0, v4

    .line 96
    goto :goto_0

    .line 98
    :pswitch_3
    const/4 v1, 0x0

    .line 99
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->mBitmapMask:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    neg-int v4, v4

    int-to-float v3, v4

    .line 100
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->mBitmapMask:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v2, v4

    .line 101
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->mBitmapMask:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v0, v4

    .line 103
    goto :goto_0

    .line 105
    :pswitch_4
    const/4 v1, 0x0

    .line 106
    const/4 v3, 0x0

    .line 107
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->mBitmapMask:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    int-to-float v2, v4

    .line 108
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->mBitmapMask:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v0, v4

    .line 110
    goto :goto_0

    .line 113
    :pswitch_5
    const/4 v1, 0x0

    .line 114
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->mBitmapMask:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    neg-int v4, v4

    int-to-float v3, v4

    .line 115
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->mBitmapMask:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    int-to-float v2, v4

    .line 116
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->mBitmapMask:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v0, v4

    goto/16 :goto_0

    .line 75
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setStartAngle(I)V
    .locals 0
    .parameter "angle"

    .prologue
    .line 167
    iput p1, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->mStartAngle:I

    .line 168
    return-void
.end method

.method public setTargetProgress(I)V
    .locals 2
    .parameter "p"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->mAnim:Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode$ProgressAnim;

    iget v1, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->mProgress:I

    invoke-virtual {v0, v1, p1}, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode$ProgressAnim;->setProgress(II)V

    .line 211
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->mAnim:Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode$ProgressAnim;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode$ProgressAnim;->stop()V

    .line 213
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->mAnim:Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode$ProgressAnim;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode$ProgressAnim;->start()V

    .line 214
    return-void
.end method

.method public setTargetProgress(II)V
    .locals 1
    .parameter "from"
    .parameter "to"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->mAnim:Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode$ProgressAnim;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode$ProgressAnim;->setProgress(II)V

    .line 217
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->mAnim:Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode$ProgressAnim;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode$ProgressAnim;->stop()V

    .line 219
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->mAnim:Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode$ProgressAnim;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode$ProgressAnim;->start()V

    .line 220
    return-void
.end method

.method public setTargetProgressWithNoAnim()V
    .locals 2

    .prologue
    .line 223
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->mAnim:Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode$ProgressAnim;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode$ProgressAnim;->getTargetProgress()I

    move-result v0

    .line 224
    .local v0, target:I
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->stopAnims()V

    .line 225
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->setProgress(I)V

    .line 227
    return-void
.end method

.method public show()V
    .locals 5

    .prologue
    const/16 v4, 0x10e

    const/16 v3, 0x32

    const/16 v2, -0x32

    const/16 v1, 0xb4

    .line 127
    iget v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 160
    :goto_0
    return-void

    .line 129
    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->setStartAngle(I)V

    .line 130
    invoke-virtual {p0, v3}, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->setTargetProgress(I)V

    goto :goto_0

    .line 134
    :pswitch_1
    invoke-virtual {p0, v4}, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->setStartAngle(I)V

    .line 135
    invoke-virtual {p0, v3}, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->setTargetProgress(I)V

    goto :goto_0

    .line 139
    :pswitch_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->setStartAngle(I)V

    .line 140
    const/16 v0, 0x19

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->setTargetProgress(I)V

    goto :goto_0

    .line 144
    :pswitch_3
    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->setStartAngle(I)V

    .line 145
    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->setTargetProgress(I)V

    goto :goto_0

    .line 150
    :pswitch_4
    invoke-virtual {p0, v4}, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->setStartAngle(I)V

    .line 151
    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->setTargetProgress(I)V

    goto :goto_0

    .line 155
    :pswitch_5
    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->setStartAngle(I)V

    .line 156
    const/16 v0, -0x19

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->setTargetProgress(I)V

    goto :goto_0

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
