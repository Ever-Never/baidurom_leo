.class public Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;
.super Landroid/widget/LinearLayout;
.source "SwitchExtLayer.java"


# static fields
.field private static final ALPHA_BLUR:I = 0x96

.field private static final ANIMATION_MILLILS:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "SwitchExtLayer"

.field private static mCloseAnimationGoing:Z

.field private static mOpenAnimationGoing:Z


# instance fields
.field private mBgAlpha:I

.field protected mContext:Landroid/content/Context;

.field private mDrawBg:Z

.field private mHeightDelta:I

.field private mOriginalHeight:I

.field private mOriginalWidth:I

.field private mOriginalX:I

.field private mOriginalY:I

.field private mSwitchExtBar:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar;

.field private mSwitchWidgetBar:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;

.field private mTargetTop:I

.field private mTopOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->mDrawBg:Z

    .line 58
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->mContext:Landroid/content/Context;

    .line 59
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00bd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->mHeightDelta:I

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->startStretchAnimation()V

    return-void
.end method

.method static synthetic access$1002(Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->mDrawBg:Z

    return p1
.end method

.method static synthetic access$102(Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput p1, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->mBgAlpha:I

    return p1
.end method

.method static synthetic access$1102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 25
    sput-boolean p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->mOpenAnimationGoing:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->mTargetTop:I

    return v0
.end method

.method static synthetic access$1300(Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->onLayerClosed()V

    return-void
.end method

.method static synthetic access$200(Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->mHeightDelta:I

    return v0
.end method

.method static synthetic access$300(Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->mOriginalY:I

    return v0
.end method

.method static synthetic access$400(Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->mTopOffset:I

    return v0
.end method

.method static synthetic access$500(Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->mOriginalHeight:I

    return v0
.end method

.method static synthetic access$600(Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->mOriginalX:I

    return v0
.end method

.method static synthetic access$700(Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->mOriginalWidth:I

    return v0
.end method

.method static synthetic access$800(Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;)Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->mSwitchExtBar:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar;

    return-object v0
.end method

.method static synthetic access$900(Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;)Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->mSwitchWidgetBar:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;

    return-object v0
.end method

.method private bindWidgetBar(Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;)V
    .locals 5
    .parameter "switchWidgetBar"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->mSwitchWidgetBar:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;

    .line 74
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 75
    .local v0, originalLocation:[I
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->mSwitchWidgetBar:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;

    invoke-virtual {v2, v0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;->getLocationOnScreen([I)V

    .line 76
    const/4 v2, 0x0

    aget v2, v0, v2

    iput v2, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->mOriginalX:I

    .line 77
    const/4 v2, 0x1

    aget v2, v0, v2

    iput v2, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->mOriginalY:I

    .line 78
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->mSwitchWidgetBar:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->mOriginalHeight:I

    .line 79
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->mSwitchWidgetBar:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->mOriginalWidth:I

    .line 81
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v3, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->mTopOffset:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->mHeightDelta:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->mTargetTop:I

    .line 82
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->mTopOffset:I

    .line 85
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->mOriginalWidth:I

    iget v3, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->mOriginalHeight:I

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 86
    .local v1, params:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 0x33

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 87
    iget v2, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->mOriginalX:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 88
    iget v2, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->mOriginalY:I

    iget v3, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->mTopOffset:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 90
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0300cd

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar;

    iput-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->mSwitchExtBar:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar;

    .line 91
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->mSwitchExtBar:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar;

    new-instance v3, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer$1;

    invoke-direct {v3, p0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer$1;-><init>(Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;)V

    invoke-virtual {v2, v3}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar;->setInitAnimationCallback(Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar$InitAnimationCallback;)V

    .line 100
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->removeAllViews()V

    .line 101
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->mSwitchExtBar:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar;

    invoke-virtual {p0, v2, v1}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    return-void
.end method

.method private onLayerClosed()V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->mSwitchWidgetBar:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;->showWidget()V

    .line 213
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->removeAllViews()V

    .line 214
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->setVisibility(I)V

    .line 215
    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->mCloseAnimationGoing:Z

    .line 216
    return-void
.end method

.method private startStretchAnimation()V
    .locals 5

    .prologue
    .line 119
    iget v2, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->mTargetTop:I

    iget v3, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->mOriginalY:I

    iget v4, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->mTopOffset:I

    sub-int/2addr v3, v4

    sub-int v1, v2, v3

    .line 121
    .local v1, topDleta:I
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->ofFloat([F)Lcom/baidu/launcher/ui/animation/ValueAnimator;

    move-result-object v0

    .line 122
    .local v0, animator:Lcom/baidu/launcher/ui/animation/ValueAnimator;
    new-instance v2, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer$2;

    invoke-direct {v2, p0, v1}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer$2;-><init>(Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;I)V

    invoke-virtual {v0, v2}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->addUpdateListener(Lcom/baidu/launcher/ui/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 142
    new-instance v2, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer$3;

    invoke-direct {v2, p0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer$3;-><init>(Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;)V

    invoke-virtual {v0, v2}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->addListener(Lcom/baidu/launcher/ui/animation/Animator$AnimatorListener;)V

    .line 153
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 154
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->setDuration(J)Lcom/baidu/launcher/ui/animation/ValueAnimator;

    .line 155
    invoke-virtual {v0}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->start()V

    .line 156
    return-void

    .line 121
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    const/4 v1, 0x0

    .line 64
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->mDrawBg:Z

    if-eqz v0, :cond_0

    .line 65
    iget v0, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->mBgAlpha:I

    invoke-virtual {p1, v0, v1, v1, v1}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 68
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 69
    return-void
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startCloseAnimation()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 159
    sget-boolean v5, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->mOpenAnimationGoing:Z

    if-nez v5, :cond_0

    sget-boolean v5, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->mCloseAnimationGoing:Z

    if-nez v5, :cond_0

    .line 160
    sput-boolean v6, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->mCloseAnimationGoing:Z

    .line 165
    new-array v3, v7, [I

    .line 166
    .local v3, targetLocation:[I
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->mSwitchExtBar:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar;

    invoke-virtual {v5, v3}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar;->getLocationOnScreen([I)V

    .line 167
    aget v5, v3, v6

    iput v5, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->mTargetTop:I

    .line 168
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->mSwitchExtBar:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar;

    invoke-virtual {v5}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar;->getHeight()I

    move-result v2

    .line 170
    .local v2, targetHeight:I
    iget v5, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->mOriginalY:I

    iget v6, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->mTargetTop:I

    sub-int/2addr v5, v6

    int-to-float v4, v5

    .line 171
    .local v4, topDleta:F
    iget v5, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->mOriginalY:I

    iget v6, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->mOriginalHeight:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->mTargetTop:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v2

    int-to-float v1, v5

    .line 173
    .local v1, bottomDelta:F
    new-array v5, v7, [F

    fill-array-data v5, :array_0

    invoke-static {v5}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->ofFloat([F)Lcom/baidu/launcher/ui/animation/ValueAnimator;

    move-result-object v0

    .line 174
    .local v0, animator:Lcom/baidu/launcher/ui/animation/ValueAnimator;
    new-instance v5, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer$4;

    invoke-direct {v5, p0, v4, v1, v2}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer$4;-><init>(Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;FFI)V

    invoke-virtual {v0, v5}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->addUpdateListener(Lcom/baidu/launcher/ui/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 194
    new-instance v5, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer$5;

    invoke-direct {v5, p0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer$5;-><init>(Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;)V

    invoke-virtual {v0, v5}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->addListener(Lcom/baidu/launcher/ui/animation/Animator$AnimatorListener;)V

    .line 206
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v5}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 207
    const-wide/16 v5, 0xc8

    invoke-virtual {v0, v5, v6}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->setDuration(J)Lcom/baidu/launcher/ui/animation/ValueAnimator;

    .line 208
    invoke-virtual {v0}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->start()V

    .line 209
    .end local v0           #animator:Lcom/baidu/launcher/ui/animation/ValueAnimator;
    .end local v1           #bottomDelta:F
    .end local v2           #targetHeight:I
    .end local v3           #targetLocation:[I
    .end local v4           #topDleta:F
    :cond_0
    return-void

    .line 173
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public startOpenAnimation(Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;)V
    .locals 1
    .parameter "switchWidgetBar"

    .prologue
    .line 106
    sget-boolean v0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->mOpenAnimationGoing:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->mCloseAnimationGoing:Z

    if-nez v0, :cond_0

    .line 107
    const/4 v0, 0x1

    sput-boolean v0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->mOpenAnimationGoing:Z

    .line 111
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->setVisibility(I)V

    .line 113
    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->bindWidgetBar(Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;)V

    .line 114
    :cond_0
    return-void
.end method
