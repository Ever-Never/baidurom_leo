.class public Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs;
.super Landroid/view/View;
.source "CenterTabs.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CenterTabs"


# instance fields
.field private mAlpha:I

.field private mCircleCenterX:I

.field private mCircleCenterY:I

.field private mContainer:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mOffset:I

.field private mOval:Landroid/graphics/RectF;

.field private mOvalStartAngle:F

.field private mTabBgPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs;->init(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs;)Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs;->mContainer:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 33
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs$1;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs$1;-><init>(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs;->mGestureDetector:Landroid/view/GestureDetector;

    .line 42
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs;->mTabBgPaint:Landroid/graphics/Paint;

    .line 43
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs;->mOval:Landroid/graphics/RectF;

    .line 44
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs;->mTabBgPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 45
    const/16 v0, 0x4c

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs;->mAlpha:I

    .line 46
    const/high16 v0, 0x4352

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs;->mOvalStartAngle:F

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0113

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs;->mOffset:I

    .line 48
    return-void
.end method


# virtual methods
.method public getOvalStartAngle()F
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs;->mOvalStartAngle:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x43b4

    .line 75
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs;->mTabBgPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs;->mAlpha:I

    const/16 v2, 0xf

    const/16 v3, 0x1f

    const/16 v4, 0x6c

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 76
    iget v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs;->mOvalStartAngle:F

    cmpl-float v0, v0, v5

    if-lez v0, :cond_2

    .line 77
    iget v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs;->mOvalStartAngle:F

    sub-float/2addr v0, v5

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs;->mOvalStartAngle:F

    .line 81
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs;->mOval:Landroid/graphics/RectF;

    iget v2, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs;->mOvalStartAngle:F

    const/high16 v3, 0x42f0

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs;->mTabBgPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 82
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs;->mContainer:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->isFlinging()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    iget v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs;->mCircleCenterX:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs;->mCircleCenterY:I

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v6, v6, v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs;->invalidate(IIII)V

    .line 85
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 86
    return-void

    .line 78
    :cond_2
    iget v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs;->mOvalStartAngle:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 79
    iget v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs;->mOvalStartAngle:F

    add-float/2addr v0, v5

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs;->mOvalStartAngle:F

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 54
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 55
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 66
    sub-int v0, p4, p2

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs;->mCircleCenterX:I

    .line 67
    sub-int v0, p5, p3

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs;->mCircleCenterY:I

    .line 68
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs;->mOval:Landroid/graphics/RectF;

    iget v1, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs;->mOffset:I

    int-to-float v1, v1

    iget v2, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs;->mOffset:I

    int-to-float v2, v2

    sub-int v3, p4, p2

    iget v4, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs;->mOffset:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sub-int v4, p5, p3

    iget v5, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs;->mOffset:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 69
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs;->mContainer:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    .line 70
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 71
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 60
    const/4 v0, 0x1

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .parameter "mAlpha"

    .prologue
    .line 98
    return-void
.end method

.method public setOvalStartAngle(F)V
    .locals 0
    .parameter "mOvalStartAngle"

    .prologue
    .line 93
    iput p1, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs;->mOvalStartAngle:F

    .line 94
    return-void
.end method

.method public setStartAngleFromTab(I)V
    .locals 2
    .parameter "tab"

    .prologue
    .line 101
    const/16 v0, 0xd2

    .line 102
    .local v0, angle:I
    packed-switch p1, :pswitch_data_0

    .line 115
    :goto_0
    int-to-float v1, v0

    iput v1, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs;->mOvalStartAngle:F

    .line 116
    return-void

    .line 104
    :pswitch_0
    const/16 v0, 0x5a

    .line 105
    goto :goto_0

    .line 107
    :pswitch_1
    const/16 v0, 0xd2

    .line 108
    goto :goto_0

    .line 110
    :pswitch_2
    const/16 v0, 0x14a

    .line 111
    goto :goto_0

    .line 102
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
