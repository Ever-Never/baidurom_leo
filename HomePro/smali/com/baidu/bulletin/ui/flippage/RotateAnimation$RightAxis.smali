.class public Lcom/baidu/bulletin/ui/flippage/RotateAnimation$RightAxis;
.super Lcom/baidu/bulletin/ui/flippage/RotateAnimation$Horizontal;
.source "RotateAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/ui/flippage/RotateAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RightAxis"
.end annotation


# direct methods
.method protected constructor <init>(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 269
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/ui/flippage/RotateAnimation$Horizontal;-><init>(Landroid/view/View;)V

    .line 270
    return-void
.end method


# virtual methods
.method public getAngle()F
    .locals 2

    .prologue
    .line 281
    const/high16 v0, 0x4334

    iget v1, p0, Lcom/baidu/bulletin/ui/flippage/RotateAnimation$RightAxis;->mCurrentAngle:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public initialize(IIII)V
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "parentWidth"
    .parameter "parentHeight"

    .prologue
    .line 274
    invoke-super {p0, p1, p2, p3, p4}, Lcom/baidu/bulletin/ui/flippage/RotateAnimation$Horizontal;->initialize(IIII)V

    .line 275
    iput p1, p0, Lcom/baidu/bulletin/ui/flippage/RotateAnimation$RightAxis;->mXOffset:I

    .line 276
    div-int/lit8 v0, p2, 0x2

    iput v0, p0, Lcom/baidu/bulletin/ui/flippage/RotateAnimation$RightAxis;->mYOffset:I

    .line 277
    return-void
.end method

.method protected isVisible()Z
    .locals 2

    .prologue
    .line 291
    iget v0, p0, Lcom/baidu/bulletin/ui/flippage/RotateAnimation$RightAxis;->mCurrentAngle:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/baidu/bulletin/ui/flippage/RotateAnimation$RightAxis;->mCurrentAngle:F

    const/high16 v1, 0x42b4

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected localizeAngle(F)F
    .locals 1
    .parameter "angle"

    .prologue
    .line 286
    const/high16 v0, 0x4334

    sub-float/2addr v0, p1

    return v0
.end method
