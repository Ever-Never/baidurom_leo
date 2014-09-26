.class public Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;
.super Landroid/widget/FrameLayout;
.source "QuickLauncherLayer.java"


# static fields
.field private static final ALPHA_BLUR:I = 0xb4

.field private static final ANIM_DURATION:I = 0x12c


# instance fields
.field private isExpanded:Z

.field private isTransing:Z

.field private mBgAlpha:I

.field private mContainer:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

.field private mDrawBG:Z

.field private mOriginalLocationX:F

.field private mOriginalLocationY:F

.field private mQuickLauncherWidget:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherWidget;

.field private mStartOffsetX:F

.field private mStartOffsetY:F

.field private mStartScaleX:F

.field private mStartScaleY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->mDrawBG:Z

    .line 48
    return-void
.end method

.method static synthetic access$002(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->isTransing:Z

    return p1
.end method

.method static synthetic access$102(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput p1, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->mBgAlpha:I

    return p1
.end method

.method static synthetic access$200(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;)Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->mContainer:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->clearAllIcons()V

    return-void
.end method

.method static synthetic access$402(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->isExpanded:Z

    return p1
.end method

.method static synthetic access$500(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;)Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherWidget;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->mQuickLauncherWidget:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherWidget;

    return-object v0
.end method

.method private clearAllIcons()V
    .locals 4

    .prologue
    .line 252
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->mContainer:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    invoke-virtual {v3}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->getChildCount()I

    move-result v0

    .line 253
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 254
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->mContainer:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    invoke-virtual {v3, v1}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 255
    .local v2, layout:Landroid/view/View;
    instance-of v3, v2, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;

    if-eqz v3, :cond_0

    .line 256
    check-cast v2, Landroid/view/ViewGroup;

    .end local v2           #layout:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 253
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 259
    :cond_1
    return-void
.end method


# virtual methods
.method public close()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/high16 v1, 0x3f80

    .line 170
    iget-boolean v2, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->isExpanded:Z

    if-nez v2, :cond_0

    .line 227
    :goto_0
    return-void

    .line 171
    :cond_0
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget v2, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->mStartScaleX:F

    iget v4, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->mStartScaleY:F

    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->mContainer:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    invoke-virtual {v3}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v5, v3

    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->mContainer:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    invoke-virtual {v3}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v6, v3

    move v3, v1

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 173
    .local v0, sa:Landroid/view/animation/ScaleAnimation;
    new-instance v9, Landroid/view/animation/TranslateAnimation;

    iget v2, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->mStartOffsetX:F

    iget v3, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->mStartOffsetY:F

    invoke-direct {v9, v10, v2, v10, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 175
    .local v9, ta:Landroid/view/animation/TranslateAnimation;
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f00

    invoke-direct {v7, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 176
    .local v7, aa:Landroid/view/animation/AlphaAnimation;
    new-instance v8, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v8, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 177
    .local v8, as:Landroid/view/animation/AnimationSet;
    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 178
    invoke-virtual {v8, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 179
    invoke-virtual {v8, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 180
    const-wide/16 v1, 0x12c

    invoke-virtual {v8, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 181
    new-instance v1, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer$2;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer$2;-><init>(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;)V

    invoke-virtual {v8, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 226
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->mContainer:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    invoke-virtual {v1, v8}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    const/4 v1, 0x0

    .line 237
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->mDrawBG:Z

    if-eqz v0, :cond_0

    .line 238
    iget v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->mBgAlpha:I

    invoke-virtual {p1, v0, v1, v1, v1}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 240
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 241
    return-void
.end method

.method public exitNow()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 244
    iput-boolean v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->isExpanded:Z

    .line 245
    iput-boolean v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->isTransing:Z

    .line 246
    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->mBgAlpha:I

    .line 247
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->setVisibility(I)V

    .line 248
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->clearAllIcons()V

    .line 249
    return-void
.end method

.method public expand(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherWidget;)V
    .locals 20
    .parameter "quickLauncherWidget"

    .prologue
    .line 72
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->isExpanded:Z

    if-eqz v3, :cond_0

    .line 167
    :goto_0
    return-void

    .line 73
    :cond_0
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->isExpanded:Z

    .line 74
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->setVisibility(I)V

    .line 75
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->mContainer:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    invoke-virtual {v3}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->getmCurShowLayout()Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->setVisibility(I)V

    .line 76
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->mQuickLauncherWidget:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherWidget;

    .line 78
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->mContainer:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    invoke-virtual {v3}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->getWidth()I

    move-result v12

    .line 79
    .local v12, expandLayoutWidth:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->mContainer:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    invoke-virtual {v3}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->getHeight()I

    move-result v11

    .line 80
    .local v11, expandLayoutHeight:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->mQuickLauncherWidget:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherWidget;

    invoke-virtual {v3}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherWidget;->getWidth()I

    move-result v16

    .line 81
    .local v16, originalWidth:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->mQuickLauncherWidget:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherWidget;

    invoke-virtual {v3}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherWidget;->getHeight()I

    move-result v15

    .line 82
    .local v15, originalHeight:I
    const/4 v3, 0x2

    new-array v14, v3, [I

    .line 83
    .local v14, location:[I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->mQuickLauncherWidget:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherWidget;

    invoke-virtual {v3, v14}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherWidget;->getLocationOnScreen([I)V

    .line 84
    const/4 v3, 0x0

    aget v3, v14, v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->mOriginalLocationX:F

    .line 85
    const/4 v3, 0x1

    aget v3, v14, v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->mOriginalLocationY:F

    .line 86
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->mContainer:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    invoke-virtual {v3, v14}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->getLocationOnScreen([I)V

    .line 87
    move/from16 v0, v16

    int-to-float v3, v0

    int-to-float v4, v12

    div-float/2addr v3, v4

    const v4, 0x3f19999a

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->mStartScaleX:F

    .line 88
    int-to-float v3, v15

    int-to-float v4, v11

    div-float/2addr v3, v4

    const v4, 0x3f19999a

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->mStartScaleY:F

    .line 90
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->mContainer:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    invoke-virtual {v3}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->getLeft()I

    move-result v13

    .line 91
    .local v13, left:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->mContainer:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    invoke-virtual {v3}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->getTop()I

    move-result v19

    .line 92
    .local v19, top:I
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0018

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    .line 93
    .local v17, statusBarHeight:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->mOriginalLocationX:F

    sub-int v4, v12, v16

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    int-to-float v4, v13

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->mStartOffsetX:F

    .line 94
    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->mOriginalLocationY:F

    sub-int v4, v11, v15

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    move/from16 v0, v19

    int-to-float v4, v0

    sub-float/2addr v3, v4

    move/from16 v0, v17

    int-to-float v4, v0

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->mStartOffsetY:F

    .line 96
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->mStartScaleX:F

    const/high16 v4, 0x3f80

    move-object/from16 v0, p0

    iget v5, v0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->mStartScaleY:F

    const/high16 v6, 0x3f80

    div-int/lit8 v7, v12, 0x2

    int-to-float v7, v7

    div-int/lit8 v8, v11, 0x2

    int-to-float v8, v8

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 98
    .local v2, sa:Landroid/view/animation/ScaleAnimation;
    new-instance v18, Landroid/view/animation/TranslateAnimation;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->mStartOffsetX:F

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->mStartOffsetY:F

    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 100
    .local v18, ta:Landroid/view/animation/TranslateAnimation;
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    invoke-direct {v9, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 101
    .local v9, aa:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v3, 0x12c

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 102
    const-wide/16 v3, 0x12c

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 103
    const-wide/16 v3, 0x258

    invoke-virtual {v9, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 105
    new-instance v10, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    invoke-direct {v10, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 107
    .local v10, as:Landroid/view/animation/AnimationSet;
    invoke-virtual {v10, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 108
    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 109
    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 111
    new-instance v3, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer$1;-><init>(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 166
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->mContainer:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    invoke-virtual {v3, v10}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0
.end method

.method public isExpanded()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->isExpanded:Z

    return v0
.end method

.method public isTransing()Z
    .locals 1

    .prologue
    .line 232
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->isTransing:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 52
    const v0, 0x7f080178

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->mContainer:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    .line 53
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 54
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->mContainer:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->isFlinging()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 59
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setExpanded(Z)V
    .locals 0
    .parameter "isExpended"

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->isExpanded:Z

    .line 69
    return-void
.end method
