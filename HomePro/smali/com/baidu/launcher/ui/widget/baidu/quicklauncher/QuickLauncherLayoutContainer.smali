.class public Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;
.super Landroid/widget/FrameLayout;
.source "QuickLauncherLayoutContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer$MyGestureListener;
    }
.end annotation


# static fields
.field private static mScale:F


# instance fields
.field public mAlpha:I

.field private mCenterStartAng:F

.field private mCenterTabTemp:F

.field private mCenterTabs:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs;

.field public mCenterTargetAngle:F

.field public mCurAngle:F

.field private mCurShowLayout:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;

.field private mFirstChildInitAngle:F

.field private mFlingTargetAngle:F

.field protected mFlinging:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mMostUsedLayout:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;

.field private mRecentlyInstalledLayout:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;

.field private mRecentlyLaunchedLayout:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;

.field private mRotatTabAnimation:Lcom/baidu/launcher/ui/animation/ValueAnimator;

.field private mRotatTime:J

.field private mRotatable:Z

.field private mStartAngle:D

.field private mTappedView:Landroid/view/View;

.field private mTappedViewsPostition:I

.field private mTargetAngle:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    const/high16 v0, 0x42b4

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mFirstChildInitAngle:F

    .line 52
    iget v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mFirstChildInitAngle:F

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCurAngle:F

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mRotatable:Z

    .line 65
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mRotatTime:J

    .line 66
    const/16 v0, 0xff

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mAlpha:I

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mTappedViewsPostition:I

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mTappedView:Landroid/view/View;

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mFlinging:Z

    .line 77
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->init()V

    .line 78
    return-void
.end method

.method static synthetic access$100(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->rotateIcons()V

    return-void
.end method

.method static synthetic access$1000(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;F)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->getTabFromAngle(F)I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mTappedViewsPostition:I

    return v0
.end method

.method static synthetic access$1102(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput p1, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mTappedViewsPostition:I

    return p1
.end method

.method static synthetic access$1200(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;)Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCurShowLayout:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mTappedView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mTappedView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;Landroid/content/ComponentName;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->syncLaunchEventToApplist(Landroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;FF)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->touchOutsideCircle(FF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCenterStartAng:F

    return v0
.end method

.method static synthetic access$300(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCenterTabTemp:F

    return v0
.end method

.method static synthetic access$400(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;)Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCenterTabs:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs;

    return-object v0
.end method

.method static synthetic access$500(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mRotatable:Z

    return v0
.end method

.method static synthetic access$600(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;)Lcom/baidu/launcher/ui/animation/ValueAnimator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mRotatTabAnimation:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$700(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->clockwiseGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mFlingTargetAngle:F

    return v0
.end method

.method static synthetic access$802(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput p1, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mFlingTargetAngle:F

    return p1
.end method

.method static synthetic access$900(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;Z)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->getFlingTargetAngleFromCurAngle(Z)I

    move-result v0

    return v0
.end method

.method private calculateIntersectinY(FFFF)F
    .locals 2
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"

    .prologue
    .line 433
    sub-float v0, p4, p2

    sub-float v1, p3, p1

    div-float/2addr v0, v1

    mul-float/2addr v0, p1

    sub-float v0, p2, v0

    return v0
.end method

.method private clockwiseGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "e1"
    .parameter "e2"

    .prologue
    .line 523
    const/4 v2, 0x0

    .line 525
    .local v2, inverse:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCurShowLayout:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;

    iget v6, v6, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->mCircleWidth:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float/2addr v5, v6

    float-to-double v5, v5

    iget-object v7, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCurShowLayout:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;

    iget v7, v7, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->mCircleHeight:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    sub-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v5, v6, v7, v8}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->getQuadrant(DD)I

    move-result v3

    .line 526
    .local v3, q1:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCurShowLayout:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;

    iget v6, v6, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->mCircleWidth:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float/2addr v5, v6

    float-to-double v5, v5

    iget-object v7, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCurShowLayout:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;

    iget v7, v7, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->mCircleHeight:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    sub-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v5, v6, v7, v8}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->getQuadrant(DD)I

    move-result v4

    .line 528
    .local v4, q2:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCurShowLayout:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;

    iget v6, v6, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->mCircleWidth:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCurShowLayout:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;

    iget v6, v6, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->mCircleHeight:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCurShowLayout:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;

    iget v8, v8, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->mCircleWidth:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    sub-float/2addr v7, v8

    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCurShowLayout:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;

    iget v8, v8, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->mCircleHeight:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    sub-float/2addr v8, v9

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->calculateIntersectinY(FFFF)F

    move-result v1

    .line 531
    .local v1, intersectionY:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    sub-float v0, v5, v6

    .line 532
    .local v0, dy:F
    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    :cond_0
    const/4 v5, 0x2

    if-ne v3, v5, :cond_1

    const/4 v5, 0x3

    if-eq v4, v5, :cond_3

    :cond_1
    const/4 v5, 0x3

    if-ne v3, v5, :cond_2

    const/4 v5, 0x4

    if-eq v4, v5, :cond_3

    :cond_2
    const/4 v5, 0x4

    if-ne v3, v5, :cond_4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 536
    :cond_3
    const/4 v2, 0x1

    .line 539
    :cond_4
    const/4 v5, 0x1

    if-ne v3, v5, :cond_5

    const/4 v5, 0x3

    if-ne v4, v5, :cond_5

    const/4 v5, 0x0

    cmpl-float v5, v1, v5

    if-gtz v5, :cond_8

    :cond_5
    const/4 v5, 0x3

    if-ne v3, v5, :cond_6

    const/4 v5, 0x1

    if-ne v4, v5, :cond_6

    const/4 v5, 0x0

    cmpg-float v5, v1, v5

    if-ltz v5, :cond_8

    :cond_6
    const/4 v5, 0x2

    if-ne v3, v5, :cond_7

    const/4 v5, 0x4

    if-ne v4, v5, :cond_7

    const/4 v5, 0x0

    cmpg-float v5, v1, v5

    if-ltz v5, :cond_8

    :cond_7
    const/4 v5, 0x4

    if-ne v3, v5, :cond_9

    const/4 v5, 0x2

    if-ne v4, v5, :cond_9

    const/4 v5, 0x0

    cmpl-float v5, v1, v5

    if-lez v5, :cond_9

    .line 544
    :cond_8
    const/4 v2, 0x1

    .line 547
    :cond_9
    if-ne v3, v4, :cond_b

    .line 548
    const/4 v5, 0x1

    if-eq v3, v5, :cond_a

    const/4 v5, 0x4

    if-ne v3, v5, :cond_c

    .line 549
    :cond_a
    const/4 v5, 0x0

    cmpg-float v5, v0, v5

    if-gez v5, :cond_b

    const/4 v2, 0x1

    .line 555
    :cond_b
    :goto_0
    return v2

    .line 550
    :cond_c
    const/4 v5, 0x3

    if-eq v3, v5, :cond_d

    const/4 v5, 0x2

    if-ne v3, v5, :cond_b

    .line 551
    :cond_d
    const/4 v5, 0x0

    cmpl-float v5, v0, v5

    if-lez v5, :cond_b

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private getAngle(DD)D
    .locals 10
    .parameter "xTouch"
    .parameter "yTouch"

    .prologue
    .line 171
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCurShowLayout:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;

    iget v4, v4, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->mCircleWidth:I

    int-to-double v4, v4

    const-wide/high16 v6, 0x4000

    div-double/2addr v4, v6

    sub-double v0, p1, v4

    .line 172
    .local v0, x:D
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCurShowLayout:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;

    iget v4, v4, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->mCircleHeight:I

    int-to-double v4, v4

    sub-double/2addr v4, p3

    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCurShowLayout:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;

    iget v6, v6, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->mCircleHeight:I

    int-to-double v6, v6

    const-wide/high16 v8, 0x4000

    div-double/2addr v6, v8

    sub-double v2, v4, v6

    .line 173
    .local v2, y:D
    invoke-static {v0, v1, v2, v3}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->getQuadrant(DD)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 182
    const-wide/16 v4, 0x0

    :goto_0
    return-wide v4

    .line 175
    :pswitch_0
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    div-double v4, v2, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->asin(D)D

    move-result-wide v4

    const-wide v6, 0x4066800000000000L

    mul-double/2addr v4, v6

    const-wide v6, 0x400921fb54442d18L

    div-double/2addr v4, v6

    goto :goto_0

    .line 178
    :pswitch_1
    const-wide v4, 0x4066800000000000L

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    div-double v6, v2, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->asin(D)D

    move-result-wide v6

    const-wide v8, 0x4066800000000000L

    mul-double/2addr v6, v8

    const-wide v8, 0x400921fb54442d18L

    div-double/2addr v6, v8

    sub-double/2addr v4, v6

    goto :goto_0

    .line 180
    :pswitch_2
    const-wide v4, 0x4076800000000000L

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    div-double v6, v2, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->asin(D)D

    move-result-wide v6

    const-wide v8, 0x4066800000000000L

    mul-double/2addr v6, v8

    const-wide v8, 0x400921fb54442d18L

    div-double/2addr v6, v8

    add-double/2addr v4, v6

    goto :goto_0

    .line 173
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getCenterNextStartAngle(I)F
    .locals 3
    .parameter "targetTab"

    .prologue
    const/high16 v1, 0x4352

    .line 304
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->getCurrentShowTab()I

    move-result v0

    .line 305
    .local v0, curTab:I
    packed-switch v0, :pswitch_data_0

    .line 325
    int-to-float v1, p1

    :cond_0
    :goto_0
    return v1

    .line 307
    :pswitch_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 308
    const/high16 v1, -0x3e10

    goto :goto_0

    .line 313
    :pswitch_1
    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    .line 316
    const/high16 v1, 0x43e1

    goto :goto_0

    .line 319
    :pswitch_2
    if-nez p1, :cond_1

    .line 320
    const/high16 v1, 0x42b4

    goto :goto_0

    .line 322
    :cond_1
    const/high16 v1, 0x43a5

    goto :goto_0

    .line 305
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private getCenterTargetAngleFromCurAngle(Z)F
    .locals 5
    .parameter "inverse"

    .prologue
    const/high16 v2, 0x43a5

    const/high16 v1, 0x4352

    const/high16 v3, 0x42b4

    .line 380
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCenterTabs:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs;

    invoke-virtual {v4}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs;->getOvalStartAngle()F

    move-result v0

    .line 381
    .local v0, startAng:F
    cmpl-float v4, v0, v1

    if-ltz v4, :cond_2

    cmpg-float v4, v0, v2

    if-gez v4, :cond_2

    .line 382
    if-eqz p1, :cond_1

    .line 404
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 385
    goto :goto_0

    .line 387
    :cond_2
    cmpl-float v4, v0, v3

    if-ltz v4, :cond_3

    cmpg-float v4, v0, v1

    if-gez v4, :cond_3

    .line 388
    if-eqz p1, :cond_0

    move v1, v3

    .line 389
    goto :goto_0

    .line 394
    :cond_3
    if-eqz p1, :cond_5

    .line 395
    cmpl-float v1, v0, v2

    if-ltz v1, :cond_4

    move v1, v2

    .line 396
    goto :goto_0

    .line 398
    :cond_4
    const/high16 v1, -0x3e10

    goto :goto_0

    .line 401
    :cond_5
    cmpg-float v1, v0, v3

    if-gez v1, :cond_6

    move v1, v3

    .line 402
    goto :goto_0

    .line 404
    :cond_6
    const/high16 v1, 0x43e1

    goto :goto_0
.end method

.method private getFlingTargetAngleFromCurAngle(Z)I
    .locals 6
    .parameter "inverse"

    .prologue
    const/16 v0, 0xd2

    const/16 v1, 0x5a

    const/high16 v5, 0x43a5

    const/high16 v4, 0x4352

    const/high16 v3, 0x42b4

    .line 350
    iget v2, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCurAngle:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_2

    iget v2, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCurAngle:F

    cmpg-float v2, v2, v4

    if-gez v2, :cond_2

    .line 351
    if-eqz p1, :cond_1

    .line 373
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 354
    goto :goto_0

    .line 356
    :cond_2
    iget v2, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCurAngle:F

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_3

    iget v2, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCurAngle:F

    cmpg-float v2, v2, v5

    if-gez v2, :cond_3

    .line 357
    if-eqz p1, :cond_0

    .line 358
    const/16 v0, 0x14a

    goto :goto_0

    .line 363
    :cond_3
    if-eqz p1, :cond_5

    .line 364
    iget v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCurAngle:F

    cmpl-float v0, v0, v5

    if-ltz v0, :cond_4

    .line 365
    const/16 v0, 0x1c2

    goto :goto_0

    :cond_4
    move v0, v1

    .line 367
    goto :goto_0

    .line 370
    :cond_5
    iget v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCurAngle:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_6

    .line 371
    const/16 v0, -0x1e

    goto :goto_0

    .line 373
    :cond_6
    const/16 v0, 0x14a

    goto :goto_0
.end method

.method private static getQuadrant(DD)I
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    const-wide/16 v1, 0x0

    .line 190
    cmpl-double v0, p0, v1

    if-ltz v0, :cond_1

    .line 191
    cmpl-double v0, p2, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    .line 193
    :goto_0
    return v0

    .line 191
    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    .line 193
    :cond_1
    cmpl-double v0, p2, v1

    if-ltz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private getTabFromAngle(F)I
    .locals 5
    .parameter "angle"

    .prologue
    const/4 v0, 0x0

    const/high16 v4, 0x4387

    const/high16 v3, 0x4316

    const/high16 v2, 0x41f0

    .line 160
    cmpl-float v1, p1, v2

    if-ltz v1, :cond_1

    cmpg-float v1, p1, v3

    if-gez v1, :cond_1

    .line 167
    :cond_0
    :goto_0
    return v0

    .line 162
    :cond_1
    cmpl-float v1, p1, v3

    if-ltz v1, :cond_2

    cmpg-float v1, p1, v4

    if-gtz v1, :cond_2

    .line 163
    const/4 v0, 0x1

    goto :goto_0

    .line 164
    :cond_2
    cmpl-float v1, p1, v4

    if-gez v1, :cond_3

    cmpg-float v1, p1, v2

    if-gez v1, :cond_0

    .line 165
    :cond_3
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private getTargetAngOfTab(I)I
    .locals 3
    .parameter "tab"

    .prologue
    .line 411
    const/16 v0, 0x5a

    .line 412
    .local v0, angle:I
    packed-switch p1, :pswitch_data_0

    .line 429
    :goto_0
    return v0

    .line 414
    :pswitch_0
    const/16 v0, 0x5a

    .line 415
    goto :goto_0

    .line 417
    :pswitch_1
    const/16 v0, 0xd2

    .line 418
    goto :goto_0

    .line 420
    :pswitch_2
    iget v1, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCurAngle:F

    const/high16 v2, 0x41f0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 421
    const/16 v0, -0x1e

    goto :goto_0

    .line 423
    :cond_0
    const/16 v0, 0x14a

    .line 425
    goto :goto_0

    .line 412
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getTargetAngleFromClickTab(I)F
    .locals 4
    .parameter "clickTab"

    .prologue
    const/high16 v1, 0x4352

    const/4 v3, 0x1

    .line 489
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->getCurrentShowTab()I

    move-result v0

    .line 490
    .local v0, curTab:I
    if-nez v0, :cond_2

    .line 491
    if-ne p1, v3, :cond_1

    .line 492
    const/high16 v1, 0x42b4

    .line 506
    :cond_0
    :goto_0
    return v1

    .line 494
    :cond_1
    const/high16 v1, 0x43a5

    goto :goto_0

    .line 496
    :cond_2
    if-ne v0, v3, :cond_3

    .line 497
    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 498
    const/high16 v1, -0x3e10

    goto :goto_0

    .line 503
    :cond_3
    if-ne p1, v3, :cond_0

    .line 504
    const/high16 v1, 0x43e1

    goto :goto_0
.end method

.method private rotateIcons()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCurShowLayout:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->rotateIcons()V

    .line 157
    return-void
.end method

.method private syncLaunchEventToApplist(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "componentName"

    .prologue
    .line 437
    if-eqz p1, :cond_0

    .line 438
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer$3;

    invoke-direct {v1, p0, p1}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer$3;-><init>(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;Landroid/content/ComponentName;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 452
    :cond_0
    return-void
.end method

.method private touchOutsideCircle(FF)Z
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    .line 560
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->getWidth()I

    move-result v3

    .line 561
    .local v3, width:I
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->getHeight()I

    move-result v2

    .line 563
    .local v2, height:I
    div-int/lit8 v4, v3, 0x2

    int-to-float v4, v4

    sub-float v4, p1, v4

    div-int/lit8 v5, v3, 0x2

    int-to-float v5, v5

    sub-float v5, p1, v5

    mul-float/2addr v4, v5

    div-int/lit8 v5, v2, 0x2

    int-to-float v5, v5

    sub-float v5, p2, v5

    div-int/lit8 v6, v2, 0x2

    int-to-float v6, v6

    sub-float v6, p2, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 564
    .local v0, distance:D
    div-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, -0x14

    int-to-double v4, v4

    cmpl-double v4, v0, v4

    if-lez v4, :cond_0

    .line 565
    const/4 v4, 0x1

    .line 567
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method public changeCurViewAlpha()V
    .locals 4

    .prologue
    .line 234
    iget v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCurAngle:F

    const/high16 v1, 0x42b4

    sub-float/2addr v0, v1

    const/high16 v1, 0x4040

    mul-float/2addr v0, v1

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x406fe00000000000L

    mul-double/2addr v0, v2

    double-to-int v0, v0

    rsub-int v0, v0, 0xff

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mAlpha:I

    .line 235
    return-void
.end method

.method public getLayoutFormTab(I)Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;
    .locals 1
    .parameter "tab"

    .prologue
    .line 512
    if-nez p1, :cond_0

    .line 513
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mMostUsedLayout:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;

    .line 519
    :goto_0
    return-object v0

    .line 514
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 515
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mRecentlyInstalledLayout:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;

    goto :goto_0

    .line 516
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 517
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mRecentlyLaunchedLayout:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;

    goto :goto_0

    .line 519
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getmCurShowLayout()Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCurShowLayout:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;

    return-object v0
.end method

.method public getmMostUsedLayout()Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mMostUsedLayout:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;

    return-object v0
.end method

.method public getmRecentlyInstalledLayout()Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mRecentlyInstalledLayout:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;

    return-object v0
.end method

.method public getmRecentlyLaunchedLayout()Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mRecentlyLaunchedLayout:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;

    return-object v0
.end method

.method protected init()V
    .locals 4

    .prologue
    .line 81
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer$MyGestureListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer$MyGestureListener;-><init>(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer$1;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mGestureDetector:Landroid/view/GestureDetector;

    .line 83
    const v0, 0x3f638da4

    sput v0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mScale:F

    .line 84
    return-void
.end method

.method public isFlinging()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mFlinging:Z

    return v0
.end method

.method public loadInitShowViews(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/launcher/data/item/ListAppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 206
    .local p1, currentAppInfos:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/launcher/data/item/ListAppInfo;>;"
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCurShowLayout:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->loadShowViews(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;Ljava/util/List;Z)V

    .line 207
    return-void
.end method

.method public loadShowViews(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;Ljava/util/List;Z)V
    .locals 9
    .parameter "layout"
    .parameter
    .parameter "opaque"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/launcher/data/item/ListAppInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p2, showInfos:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/launcher/data/item/ListAppInfo;>;"
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/16 v6, 0xff

    .line 210
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 231
    :cond_0
    return-void

    .line 211
    :cond_1
    invoke-virtual {p1}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->removeAllViews()V

    .line 212
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    const/4 v4, 0x6

    if-ge v0, v4, :cond_0

    .line 213
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030080

    invoke-virtual {v4, v5, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherView;

    .line 214
    .local v1, icon:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherView;
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/data/item/ListAppInfo;

    .line 215
    .local v3, info:Lcom/baidu/launcher/data/item/ListAppInfo;
    iget-object v4, v3, Lcom/baidu/launcher/data/item/ListAppInfo;->iconBitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_2

    .line 212
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 217
    :cond_2
    new-instance v2, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;

    iget-object v4, v3, Lcom/baidu/launcher/data/item/ListAppInfo;->iconBitmap:Landroid/graphics/Bitmap;

    sget v5, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mScale:F

    invoke-direct {v2, v4, v5}, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;F)V

    .line 218
    .local v2, iconBitemap:Lcom/baidu/launcher/ui/common/FastBitmapDrawable;
    if-eqz p3, :cond_3

    .line 219
    invoke-virtual {v2, v7}, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;->setDrawbleAlpha(I)V

    .line 220
    invoke-static {v7, v6, v6, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherView;->setTextColor(I)V

    .line 225
    :goto_2
    iput-boolean v7, v1, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherView;->shouldDrawBlur:Z

    .line 226
    invoke-virtual {v1, v8, v2, v8, v8}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 227
    iget-object v4, v3, Lcom/baidu/launcher/data/item/ListAppInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    invoke-virtual {v1, v3}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherView;->setTag(Ljava/lang/Object;)V

    .line 229
    invoke-virtual {p1, v1}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 222
    :cond_3
    iget v4, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mAlpha:I

    invoke-virtual {v2, v4}, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;->setDrawbleAlpha(I)V

    .line 223
    iget v4, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mAlpha:I

    invoke-static {v4, v6, v6, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherView;->setTextColor(I)V

    goto :goto_2
.end method

.method public onCenterTabClick(Landroid/view/MotionEvent;)V
    .locals 13
    .parameter "e"

    .prologue
    .line 464
    iget-boolean v7, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mFlinging:Z

    if-eqz v7, :cond_1

    .line 486
    :cond_0
    :goto_0
    return-void

    .line 465
    :cond_1
    iget-object v7, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCenterTabs:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs;

    invoke-virtual {v7}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs;->getWidth()I

    move-result v4

    .line 466
    .local v4, width:I
    iget-object v7, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCenterTabs:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs;

    invoke-virtual {v7}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs;->getHeight()I

    move-result v2

    .line 467
    .local v2, height:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 468
    .local v5, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 469
    .local v6, y:F
    const/4 v0, 0x0

    .line 470
    .local v0, clickTab:I
    div-int/lit8 v7, v2, 0x2

    int-to-double v7, v7

    div-int/lit8 v9, v4, 0x4

    int-to-double v9, v9

    const-wide/high16 v11, 0x403e

    invoke-static {v11, v12}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Math;->tan(D)D

    move-result-wide v11

    mul-double/2addr v9, v11

    sub-double/2addr v7, v9

    double-to-float v1, v7

    .line 471
    .local v1, dividerY:F
    cmpl-float v7, v6, v1

    if-ltz v7, :cond_3

    .line 472
    div-int/lit8 v7, v4, 0x2

    int-to-float v7, v7

    cmpg-float v7, v5, v7

    if-gtz v7, :cond_2

    .line 473
    const/4 v0, 0x0

    .line 481
    :goto_1
    iget-object v7, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;

    move-result-object v7

    invoke-virtual {v7}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->getCurrentShowTab()I

    move-result v7

    if-eq v0, v7, :cond_0

    .line 482
    invoke-direct {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->getTargetAngleFromClickTab(I)F

    move-result v3

    .line 483
    .local v3, targetAngle:F
    const/4 v7, 0x1

    invoke-virtual {p0, v3, v0, v7}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->rotateToTargetAngle(FIZ)V

    goto :goto_0

    .line 475
    .end local v3           #targetAngle:F
    :cond_2
    const/4 v0, 0x2

    goto :goto_1

    .line 478
    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 105
    const v0, 0x7f080179

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mMostUsedLayout:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;

    .line 106
    const v0, 0x7f08017a

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mRecentlyLaunchedLayout:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;

    .line 107
    const v0, 0x7f08017b

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mRecentlyInstalledLayout:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;

    .line 108
    const v0, 0x7f08017c

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCenterTabs:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs;

    .line 109
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mRecentlyLaunchedLayout:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCurShowLayout:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;

    .line 110
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 111
    return-void
.end method

.method public onTabChange(I)V
    .locals 3
    .parameter "targetTab"

    .prologue
    .line 455
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;

    move-result-object v0

    .line 456
    .local v0, qm:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;
    invoke-virtual {v0, p1}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->setCurrentShowTab(I)V

    .line 457
    invoke-virtual {v0, p1}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->getAppInfosFromTab(I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->setmCurrentAppInfos(Ljava/util/List;)V

    .line 458
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->getLayoutFormTab(I)Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->setmCurShowLayout(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;)V

    .line 459
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCurShowLayout:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->requestLayout()V

    .line 460
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCurShowLayout:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->setVisibility(I)V

    .line 461
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "event"

    .prologue
    const/high16 v8, 0x43b4

    const/4 v3, 0x0

    .line 116
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mRotatTabAnimation:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mFlinging:Z

    if-eqz v4, :cond_1

    .line 152
    :cond_0
    :goto_0
    return v3

    .line 119
    :cond_1
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 120
    iget-boolean v4, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mRotatable:Z

    if-eqz v4, :cond_2

    .line 121
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 149
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 150
    const/4 v3, 0x1

    goto :goto_0

    .line 123
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-double v5, v5

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->getAngle(DD)D

    move-result-wide v3

    iput-wide v3, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mStartAngle:D

    goto :goto_1

    .line 126
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-double v6, v6

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->getAngle(DD)D

    move-result-wide v0

    .line 127
    .local v0, currentAngle:D
    iget v4, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCurAngle:F

    iget-wide v5, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mStartAngle:D

    sub-double v5, v0, v5

    double-to-float v5, v5

    add-float/2addr v4, v5

    iput v4, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCurAngle:F

    .line 128
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCenterTabs:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs;

    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCenterTabs:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs;

    invoke-virtual {v5}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs;->getOvalStartAngle()F

    move-result v5

    iget-wide v6, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mStartAngle:D

    sub-double v6, v0, v6

    double-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs;->setOvalStartAngle(F)V

    .line 129
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCenterTabs:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs;

    iget v5, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mAlpha:I

    invoke-virtual {v4, v5}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs;->setAlpha(I)V

    .line 130
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCenterTabs:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs;

    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCenterTabs:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs;

    invoke-virtual {v5}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs;->getRight()I

    move-result v5

    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCenterTabs:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs;

    invoke-virtual {v6}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs;->getBottom()I

    move-result v6

    invoke-virtual {v4, v3, v3, v5, v6}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs;->invalidate(IIII)V

    .line 131
    iget v3, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCurAngle:F

    cmpl-float v3, v3, v8

    if-lez v3, :cond_4

    .line 132
    iget v3, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCurAngle:F

    sub-float/2addr v3, v8

    iput v3, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCurAngle:F

    .line 136
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->changeCurViewAlpha()V

    .line 137
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->rotateIcons()V

    .line 138
    iput-wide v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mStartAngle:D

    goto :goto_1

    .line 133
    :cond_4
    iget v3, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCurAngle:F

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    .line 134
    iget v3, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCurAngle:F

    add-float/2addr v3, v8

    iput v3, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCurAngle:F

    goto :goto_2

    .line 141
    .end local v0           #currentAngle:D
    :pswitch_2
    iget v4, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCurAngle:F

    invoke-direct {p0, v4}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->getTabFromAngle(F)I

    move-result v2

    .line 142
    .local v2, targetTab:I
    invoke-direct {p0, v2}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->getTargetAngOfTab(I)I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mTargetAngle:F

    .line 143
    iget v4, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mTargetAngle:F

    iget v5, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCurAngle:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_2

    .line 144
    iget v4, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mTargetAngle:F

    invoke-virtual {p0, v4, v2, v3}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->rotateToTargetAngle(FIZ)V

    goto/16 :goto_1

    .line 121
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public rotateToTargetAngle(FIZ)V
    .locals 6
    .parameter "targetAngle"
    .parameter "targetTab"
    .parameter "fromCenterClick"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 238
    iget v1, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCurAngle:F

    cmpl-float v1, v1, p1

    if-lez v1, :cond_1

    move v0, v2

    .line 239
    .local v0, clockwise:Z
    :goto_0
    if-eqz p3, :cond_2

    .line 240
    invoke-direct {p0, p2}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->getCenterNextStartAngle(I)F

    move-result v1

    iput v1, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCenterTargetAngle:F

    .line 244
    :goto_1
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCenterTabs:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs;->getOvalStartAngle()F

    move-result v1

    iput v1, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCenterStartAng:F

    .line 245
    iget v1, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCenterTargetAngle:F

    iget v4, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCenterStartAng:F

    sub-float/2addr v1, v4

    iput v1, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCenterTabTemp:F

    .line 247
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mRotatTabAnimation:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mRotatTabAnimation:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 248
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mRotatTabAnimation:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->cancel()V

    .line 251
    :cond_0
    new-instance v1, Lcom/baidu/launcher/ui/animation/ValueAnimator;

    invoke-direct {v1}, Lcom/baidu/launcher/ui/animation/ValueAnimator;-><init>()V

    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mRotatTabAnimation:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    .line 252
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mRotatTabAnimation:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    const/4 v4, 0x2

    new-array v4, v4, [F

    iget v5, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCurAngle:F

    aput v5, v4, v3

    aput p1, v4, v2

    invoke-virtual {v1, v4}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->setFloatValues([F)V

    .line 253
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mRotatTabAnimation:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    new-instance v2, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer$1;

    invoke-direct {v2, p0}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer$1;-><init>(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;)V

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->addUpdateListener(Lcom/baidu/launcher/ui/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 274
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mRotatTabAnimation:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    new-instance v2, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer$2;

    invoke-direct {v2, p0}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer$2;-><init>(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;)V

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->addListener(Lcom/baidu/launcher/ui/animation/Animator$AnimatorListener;)V

    .line 299
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mRotatTabAnimation:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    iget-wide v2, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mRotatTime:J

    invoke-virtual {v1, v2, v3}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->setDuration(J)Lcom/baidu/launcher/ui/animation/ValueAnimator;

    .line 300
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mRotatTabAnimation:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->start()V

    .line 301
    return-void

    .end local v0           #clockwise:Z
    :cond_1
    move v0, v3

    .line 238
    goto :goto_0

    .line 242
    .restart local v0       #clockwise:Z
    :cond_2
    if-nez v0, :cond_3

    move v1, v2

    :goto_2
    invoke-direct {p0, v1}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->getCenterTargetAngleFromCurAngle(Z)F

    move-result v1

    iput v1, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCenterTargetAngle:F

    goto :goto_1

    :cond_3
    move v1, v3

    goto :goto_2
.end method

.method public setmCurShowLayout(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;)V
    .locals 0
    .parameter "mCurShowLayout"

    .prologue
    .line 202
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCurShowLayout:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;

    .line 203
    return-void
.end method
