.class public Lcom/baidu/bulletin/ui/flippage/RotateAnimation$Base;
.super Landroid/view/animation/Animation;
.source "RotateAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/ui/flippage/RotateAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Base"
.end annotation


# instance fields
.field protected mCamera:Landroid/graphics/Camera;

.field protected mCurrentAngle:F

.field protected mEffectedView:Landroid/view/View;

.field protected mFromAngle:F

.field protected mToAngle:F


# direct methods
.method protected constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 19
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/baidu/bulletin/ui/flippage/RotateAnimation$Base;->mCamera:Landroid/graphics/Camera;

    .line 26
    iput-object p1, p0, Lcom/baidu/bulletin/ui/flippage/RotateAnimation$Base;->mEffectedView:Landroid/view/View;

    .line 27
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/flippage/RotateAnimation$Base;->resetRotation()V

    .line 28
    return-void
.end method


# virtual methods
.method protected fixInterpolatedTime(F)F
    .locals 4
    .parameter "interpolatedTime"

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/flippage/RotateAnimation$Base;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    const/high16 p1, 0x3f80

    goto :goto_0
.end method

.method public getAngle()F
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/baidu/bulletin/ui/flippage/RotateAnimation$Base;->mCurrentAngle:F

    return v0
.end method

.method public initialize(IIII)V
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "parentWidth"
    .parameter "parentHeight"

    .prologue
    .line 32
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 33
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/baidu/bulletin/ui/flippage/RotateAnimation$Base;->setFillAfter(Z)V

    .line 34
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Lcom/baidu/bulletin/ui/flippage/RotateAnimation$Base;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 35
    return-void
.end method

.method protected isVisible()Z
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method protected localizeAngle(F)F
    .locals 0
    .parameter "angle"

    .prologue
    .line 59
    return p1
.end method

.method protected refreshVisibility()V
    .locals 2

    .prologue
    .line 78
    iget-object v1, p0, Lcom/baidu/bulletin/ui/flippage/RotateAnimation$Base;->mEffectedView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/flippage/RotateAnimation$Base;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 79
    return-void

    .line 78
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public resetRotation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-virtual {p0, v1}, Lcom/baidu/bulletin/ui/flippage/RotateAnimation$Base;->localizeAngle(F)F

    move-result v0

    iput v0, p0, Lcom/baidu/bulletin/ui/flippage/RotateAnimation$Base;->mCurrentAngle:F

    .line 39
    invoke-virtual {p0, v1}, Lcom/baidu/bulletin/ui/flippage/RotateAnimation$Base;->localizeAngle(F)F

    move-result v0

    iput v0, p0, Lcom/baidu/bulletin/ui/flippage/RotateAnimation$Base;->mFromAngle:F

    .line 40
    invoke-virtual {p0, v1}, Lcom/baidu/bulletin/ui/flippage/RotateAnimation$Base;->localizeAngle(F)F

    move-result v0

    iput v0, p0, Lcom/baidu/bulletin/ui/flippage/RotateAnimation$Base;->mToAngle:F

    .line 41
    return-void
.end method

.method public rotateTo(FJLandroid/view/animation/Animation$AnimationListener;)V
    .locals 1
    .parameter "toAngle"
    .parameter "duration"
    .parameter "listener"

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/flippage/RotateAnimation$Base;->reset()V

    .line 45
    invoke-virtual {p0, p2, p3}, Lcom/baidu/bulletin/ui/flippage/RotateAnimation$Base;->setDuration(J)V

    .line 46
    invoke-virtual {p0, p4}, Lcom/baidu/bulletin/ui/flippage/RotateAnimation$Base;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 47
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/RotateAnimation$Base;->mEffectedView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 49
    iget v0, p0, Lcom/baidu/bulletin/ui/flippage/RotateAnimation$Base;->mCurrentAngle:F

    iput v0, p0, Lcom/baidu/bulletin/ui/flippage/RotateAnimation$Base;->mFromAngle:F

    .line 50
    invoke-virtual {p0, p1}, Lcom/baidu/bulletin/ui/flippage/RotateAnimation$Base;->localizeAngle(F)F

    move-result v0

    iput v0, p0, Lcom/baidu/bulletin/ui/flippage/RotateAnimation$Base;->mToAngle:F

    .line 51
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/bulletin/ui/flippage/RotateAnimation$Base;->fixInterpolatedTime(F)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/bulletin/ui/flippage/RotateAnimation$Base;->updateRotation(F)F

    move-result v0

    iput v0, p0, Lcom/baidu/bulletin/ui/flippage/RotateAnimation$Base;->mCurrentAngle:F

    .line 52
    return-void
.end method

.method protected updateRotation(F)F
    .locals 2
    .parameter "interpolatedTime"

    .prologue
    .line 63
    const/high16 v0, 0x3f80

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 64
    iget v0, p0, Lcom/baidu/bulletin/ui/flippage/RotateAnimation$Base;->mToAngle:F

    iput v0, p0, Lcom/baidu/bulletin/ui/flippage/RotateAnimation$Base;->mCurrentAngle:F

    .line 69
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/flippage/RotateAnimation$Base;->refreshVisibility()V

    .line 70
    iget v0, p0, Lcom/baidu/bulletin/ui/flippage/RotateAnimation$Base;->mCurrentAngle:F

    return v0

    .line 66
    :cond_0
    iget v0, p0, Lcom/baidu/bulletin/ui/flippage/RotateAnimation$Base;->mToAngle:F

    iget v1, p0, Lcom/baidu/bulletin/ui/flippage/RotateAnimation$Base;->mFromAngle:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/baidu/bulletin/ui/flippage/RotateAnimation$Base;->mFromAngle:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/baidu/bulletin/ui/flippage/RotateAnimation$Base;->mCurrentAngle:F

    goto :goto_0
.end method
