.class public Lcom/android/systemui/recent/ProgressCircle;
.super Landroid/widget/ProgressBar;
.source "ProgressCircle.java"


# instance fields
.field private final indicatorPading:I

.field private mAngle:F

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPorter:Landroid/graphics/PorterDuffXfermode;

.field private mProgress:I

.field private mStartAngle:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recent/ProgressCircle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 36
    const v0, 0x1010077

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recent/ProgressCircle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    const/high16 v0, -0x3d4c

    iput v0, p0, Lcom/android/systemui/recent/ProgressCircle;->mStartAngle:F

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/recent/ProgressCircle;->mAngle:F

    .line 27
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recent/ProgressCircle;->mPaint:Landroid/graphics/Paint;

    .line 28
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/android/systemui/recent/ProgressCircle;->mPorter:Landroid/graphics/PorterDuffXfermode;

    .line 29
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/recent/ProgressCircle;->indicatorPading:I

    .line 41
    return-void
.end method


# virtual methods
.method public dp2Px(F)I
    .locals 3
    .parameter "dp"

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/android/systemui/recent/ProgressCircle;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 112
    .local v0, scale:F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/android/systemui/recent/ProgressCircle;->mProgress:I

    return v0
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/high16 v4, 0x4000

    .line 70
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/recent/ProgressCircle;->getProgressDrawable()Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 72
    .local v6, bg:Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_0

    .line 73
    :try_start_1
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 74
    .local v1, rect:Landroid/graphics/RectF;
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 76
    iget-object v0, p0, Lcom/android/systemui/recent/ProgressCircle;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 77
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x1f

    invoke-virtual {p1, v0, v2, v3}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    .line 78
    invoke-virtual {p0}, Lcom/android/systemui/recent/ProgressCircle;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/recent/ProgressCircle;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 79
    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    .end local v6           #bg:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/recent/ProgressCircle;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 80
    iget-object v0, p0, Lcom/android/systemui/recent/ProgressCircle;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/systemui/recent/ProgressCircle;->mPorter:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 81
    iget v0, v1, Landroid/graphics/RectF;->left:F

    iget v2, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v2

    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 82
    iget v0, v1, Landroid/graphics/RectF;->top:F

    iget v2, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v2

    iput v0, v1, Landroid/graphics/RectF;->top:F

    .line 83
    iget v0, v1, Landroid/graphics/RectF;->right:F

    mul-float/2addr v0, v4

    iput v0, v1, Landroid/graphics/RectF;->right:F

    .line 84
    iget v0, v1, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v0, v4

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    .line 85
    iget v0, p0, Lcom/android/systemui/recent/ProgressCircle;->mStartAngle:F

    iget v2, p0, Lcom/android/systemui/recent/ProgressCircle;->mAngle:F

    add-float/2addr v2, v0

    const/high16 v0, 0x43b4

    iget v3, p0, Lcom/android/systemui/recent/ProgressCircle;->mAngle:F

    sub-float v3, v0, v3

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/systemui/recent/ProgressCircle;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 100
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 104
    .end local v1           #rect:Landroid/graphics/RectF;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 102
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized setProgress(I)V
    .locals 3
    .parameter "progress"

    .prologue
    .line 61
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 62
    iput p1, p0, Lcom/android/systemui/recent/ProgressCircle;->mProgress:I

    .line 63
    int-to-float v1, p1

    invoke-virtual {p0}, Lcom/android/systemui/recent/ProgressCircle;->getMax()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 64
    .local v0, per:F
    const/high16 v1, 0x43b4

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/android/systemui/recent/ProgressCircle;->mAngle:F

    .line 65
    invoke-virtual {p0}, Lcom/android/systemui/recent/ProgressCircle;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    monitor-exit p0

    return-void

    .line 61
    .end local v0           #per:F
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setStartAngle(F)V
    .locals 0
    .parameter "startAngle"

    .prologue
    .line 50
    iput p1, p0, Lcom/android/systemui/recent/ProgressCircle;->mStartAngle:F

    .line 51
    return-void
.end method
