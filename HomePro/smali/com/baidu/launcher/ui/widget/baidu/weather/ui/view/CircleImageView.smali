.class public Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/CircleImageView;
.super Landroid/widget/ImageView;
.source "CircleImageView.java"


# static fields
.field private static final MAX_TIME:J = 0x1eL

.field private static final SPEED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CircleImageView"


# instance fields
.field private distance:I

.field private isMoveLeft:Z

.field private isStartAnimation:Z

.field private outBitmap:Landroid/graphics/Bitmap;

.field private paint:Landroid/graphics/Paint;

.field private pd:Landroid/graphics/PorterDuffXfermode;

.field private rectF:Landroid/graphics/RectF;

.field private x:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 34
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 23
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/CircleImageView;->paint:Landroid/graphics/Paint;

    .line 24
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/CircleImageView;->pd:Landroid/graphics/PorterDuffXfermode;

    .line 27
    iput v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/CircleImageView;->x:I

    .line 29
    iput v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/CircleImageView;->distance:I

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/CircleImageView;->isMoveLeft:Z

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/CircleImageView;->paint:Landroid/graphics/Paint;

    .line 24
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/CircleImageView;->pd:Landroid/graphics/PorterDuffXfermode;

    .line 27
    iput v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/CircleImageView;->x:I

    .line 29
    iput v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/CircleImageView;->distance:I

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/CircleImageView;->isMoveLeft:Z

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/CircleImageView;->paint:Landroid/graphics/Paint;

    .line 24
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/CircleImageView;->pd:Landroid/graphics/PorterDuffXfermode;

    .line 27
    iput v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/CircleImageView;->x:I

    .line 29
    iput v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/CircleImageView;->distance:I

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/CircleImageView;->isMoveLeft:Z

    .line 44
    return-void
.end method

.method private toRoundCorner(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "bitmap"

    .prologue
    const/4 v3, 0x1

    const/high16 v10, 0x4170

    const/4 v9, 0x0

    const/4 v4, 0x0

    .line 70
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/CircleImageView;->rectF:Landroid/graphics/RectF;

    if-nez v5, :cond_0

    .line 71
    new-instance v5, Landroid/graphics/RectF;

    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/CircleImageView;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/CircleImageView;->getHeight()I

    move-result v8

    invoke-direct {v6, v4, v4, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {v5, v6}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iput-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/CircleImageView;->rectF:Landroid/graphics/RectF;

    .line 72
    const-string v5, "CircleImageView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "width = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " real = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/CircleImageView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/CircleImageView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/CircleImageView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    sub-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/CircleImageView;->distance:I

    .line 76
    :cond_0
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/CircleImageView;->outBitmap:Landroid/graphics/Bitmap;

    if-nez v5, :cond_1

    .line 77
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/CircleImageView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/CircleImageView;->getHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/CircleImageView;->outBitmap:Landroid/graphics/Bitmap;

    .line 79
    :cond_1
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/CircleImageView;->outBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 80
    .local v0, canvas:Landroid/graphics/Canvas;
    const v1, -0xbdbdbe

    .line 81
    .local v1, color:I
    const/high16 v2, 0x4170

    .line 82
    .local v2, roundPX:F
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 83
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/CircleImageView;->paint:Landroid/graphics/Paint;

    const v6, -0xbdbdbe

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 84
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/CircleImageView;->rectF:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/CircleImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5, v10, v10, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 85
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/CircleImageView;->paint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/CircleImageView;->pd:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 86
    iget v5, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/CircleImageView;->distance:I

    if-lez v5, :cond_4

    .line 87
    iget v5, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/CircleImageView;->x:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/CircleImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v5, v9, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 92
    :goto_0
    iget-boolean v5, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/CircleImageView;->isMoveLeft:Z

    if-eqz v5, :cond_5

    .line 93
    iget v5, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/CircleImageView;->x:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/CircleImageView;->x:I

    .line 97
    :goto_1
    iget v5, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/CircleImageView;->x:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/CircleImageView;->distance:I

    if-gt v5, v6, :cond_2

    iget v5, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/CircleImageView;->x:I

    if-nez v5, :cond_3

    .line 98
    :cond_2
    iget-boolean v5, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/CircleImageView;->isMoveLeft:Z

    if-nez v5, :cond_6

    :goto_2
    iput-boolean v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/CircleImageView;->isMoveLeft:Z

    .line 99
    iget v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/CircleImageView;->x:I

    if-nez v3, :cond_3

    .line 100
    iput-boolean v4, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/CircleImageView;->isStartAnimation:Z

    .line 103
    :cond_3
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/CircleImageView;->outBitmap:Landroid/graphics/Bitmap;

    return-object v3

    .line 89
    :cond_4
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/CircleImageView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/CircleImageView;->getHeight()I

    move-result v6

    invoke-static {p1, v5, v6, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 90
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/CircleImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v9, v9, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 95
    :cond_5
    iget v5, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/CircleImageView;->x:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/CircleImageView;->x:I

    goto :goto_1

    :cond_6
    move v3, v4

    .line 98
    goto :goto_2
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter "canvas"

    .prologue
    const-wide/16 v10, 0x1e

    const/4 v9, 0x0

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 49
    .local v3, start:J
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/CircleImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 50
    .local v2, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_1

    .line 51
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .end local v2           #drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 52
    .local v1, bitmap:Landroid/graphics/Bitmap;
    invoke-direct {p0, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/CircleImageView;->toRoundCorner(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 53
    .local v0, b:Landroid/graphics/Bitmap;
    iget-object v7, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/CircleImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->reset()V

    .line 54
    iget-object v7, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/CircleImageView;->paint:Landroid/graphics/Paint;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 55
    iget-object v7, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/CircleImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v9, v9, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 59
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v5, v7, v3

    .line 60
    .local v5, totalTime:J
    iget v7, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/CircleImageView;->distance:I

    if-lez v7, :cond_0

    iget-boolean v7, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/CircleImageView;->isStartAnimation:Z

    if-eqz v7, :cond_0

    .line 61
    cmp-long v7, v10, v5

    if-lez v7, :cond_2

    .line 62
    sub-long v7, v10, v5

    invoke-virtual {p0, v7, v8}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/CircleImageView;->postInvalidateDelayed(J)V

    .line 67
    :cond_0
    :goto_1
    return-void

    .line 57
    .end local v5           #totalTime:J
    .restart local v2       #drawable:Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 64
    .end local v2           #drawable:Landroid/graphics/drawable/Drawable;
    .restart local v5       #totalTime:J
    :cond_2
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/CircleImageView;->postInvalidate()V

    goto :goto_1
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 116
    iput-boolean v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/CircleImageView;->isStartAnimation:Z

    .line 117
    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/CircleImageView;->x:I

    .line 118
    return-void
.end method

.method public startMove()V
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/CircleImageView;->isStartAnimation:Z

    .line 108
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/CircleImageView;->postInvalidate()V

    .line 109
    return-void
.end method

.method public stopMove()V
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/CircleImageView;->isStartAnimation:Z

    .line 113
    return-void
.end method
