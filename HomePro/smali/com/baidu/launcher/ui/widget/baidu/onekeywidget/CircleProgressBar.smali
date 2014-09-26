.class public Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CircleProgressBar;
.super Landroid/view/View;
.source "CircleProgressBar.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CircleProgressBar"


# instance fields
.field private mColorList:[I

.field private mLevel1Color:I

.field private mLevel1LightColor:I

.field private mLevel2Color:I

.field private mLevel2LightColor:I

.field private mLevel3Color:I

.field private mLevel3LightColor:I

.field private mOval:Landroid/graphics/RectF;

.field private mPaddingWidth:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPaintWidth:I

.field private mProgress:I

.field private mShader:Landroid/graphics/SweepGradient;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CircleProgressBar;->init()V

    .line 44
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 47
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CircleProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 49
    .local v0, res:Landroid/content/res/Resources;
    const/4 v1, 0x3

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CircleProgressBar;->mColorList:[I

    .line 51
    const v1, 0x7f09004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CircleProgressBar;->mLevel1Color:I

    .line 52
    const v1, 0x7f09004c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CircleProgressBar;->mLevel1LightColor:I

    .line 53
    const v1, 0x7f09004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CircleProgressBar;->mLevel2Color:I

    .line 54
    const v1, 0x7f09004e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CircleProgressBar;->mLevel2LightColor:I

    .line 55
    const v1, 0x7f09004f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CircleProgressBar;->mLevel3Color:I

    .line 56
    const v1, 0x7f090050

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CircleProgressBar;->mLevel3LightColor:I

    .line 58
    const v1, 0x7f0b00ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CircleProgressBar;->mPaintWidth:I

    .line 59
    const v1, 0x7f0b00b9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CircleProgressBar;->mPaddingWidth:I

    .line 61
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CircleProgressBar;->mOval:Landroid/graphics/RectF;

    .line 62
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CircleProgressBar;->mPaint:Landroid/graphics/Paint;

    .line 63
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CircleProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 64
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CircleProgressBar;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 65
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CircleProgressBar;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CircleProgressBar;->mPaintWidth:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 66
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/high16 v8, 0x3f00

    const/4 v4, 0x0

    .line 87
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v12

    .line 88
    .local v12, width:I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v11

    .line 90
    .local v11, height:I
    const/high16 v0, 0x43b4

    iget v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CircleProgressBar;->mProgress:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x42c8

    div-float v3, v0, v1

    .line 92
    .local v3, sweepAngle:F
    iget v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CircleProgressBar;->mProgress:I

    const/16 v1, 0x50

    if-ge v0, v1, :cond_0

    .line 94
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CircleProgressBar;->mColorList:[I

    iget v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CircleProgressBar;->mLevel1Color:I

    aput v1, v0, v4

    .line 95
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CircleProgressBar;->mColorList:[I

    iget v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CircleProgressBar;->mLevel1LightColor:I

    aput v1, v0, v5

    .line 96
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CircleProgressBar;->mColorList:[I

    iget v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CircleProgressBar;->mLevel1LightColor:I

    aput v1, v0, v6

    .line 111
    :goto_0
    new-instance v0, Landroid/graphics/SweepGradient;

    int-to-float v1, v12

    mul-float/2addr v1, v8

    int-to-float v5, v11

    mul-float/2addr v5, v8

    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CircleProgressBar;->mColorList:[I

    const/4 v7, 0x3

    new-array v7, v7, [F

    fill-array-data v7, :array_0

    invoke-direct {v0, v1, v5, v6, v7}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CircleProgressBar;->mShader:Landroid/graphics/SweepGradient;

    .line 114
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CircleProgressBar;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CircleProgressBar;->mShader:Landroid/graphics/SweepGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 116
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 117
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 118
    const/high16 v0, -0x3d4c

    int-to-float v1, v12

    mul-float/2addr v1, v8

    int-to-float v5, v11

    mul-float/2addr v5, v8

    invoke-virtual {p1, v0, v1, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 119
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CircleProgressBar;->mOval:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CircleProgressBar;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 120
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 121
    const/high16 v0, 0x3f80

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 129
    :goto_1
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 130
    return-void

    .line 98
    :cond_0
    iget v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CircleProgressBar;->mProgress:I

    const/16 v1, 0x5a

    if-ge v0, v1, :cond_1

    .line 100
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CircleProgressBar;->mColorList:[I

    iget v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CircleProgressBar;->mLevel2Color:I

    aput v1, v0, v4

    .line 101
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CircleProgressBar;->mColorList:[I

    iget v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CircleProgressBar;->mLevel2LightColor:I

    aput v1, v0, v5

    .line 102
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CircleProgressBar;->mColorList:[I

    iget v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CircleProgressBar;->mLevel2LightColor:I

    aput v1, v0, v6

    goto :goto_0

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CircleProgressBar;->mColorList:[I

    iget v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CircleProgressBar;->mLevel3Color:I

    aput v1, v0, v4

    .line 107
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CircleProgressBar;->mColorList:[I

    iget v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CircleProgressBar;->mLevel3LightColor:I

    aput v1, v0, v5

    .line 108
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CircleProgressBar;->mColorList:[I

    iget v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CircleProgressBar;->mLevel3LightColor:I

    aput v1, v0, v6

    goto :goto_0

    .line 124
    :cond_2
    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CircleProgressBar;->mOval:Landroid/graphics/RectF;

    const/high16 v7, -0x3d4c

    iget-object v10, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CircleProgressBar;->mPaint:Landroid/graphics/Paint;

    move-object v5, p1

    move v8, v3

    move v9, v4

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 125
    const/high16 v0, 0x3f80

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 111
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 137
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 138
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 142
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 144
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 145
    .local v1, width:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 147
    .local v0, height:I
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CircleProgressBar;->mOval:Landroid/graphics/RectF;

    iget v3, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CircleProgressBar;->mPaddingWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CircleProgressBar;->mPaddingWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CircleProgressBar;->mPaddingWidth:I

    sub-int v5, v1, v5

    int-to-float v5, v5

    iget v6, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CircleProgressBar;->mPaddingWidth:I

    sub-int v6, v0, v6

    int-to-float v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 148
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 69
    const/16 v0, 0x64

    if-gt p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    iput p1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CircleProgressBar;->mProgress:I

    .line 74
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CircleProgressBar;->invalidate()V

    goto :goto_0
.end method
