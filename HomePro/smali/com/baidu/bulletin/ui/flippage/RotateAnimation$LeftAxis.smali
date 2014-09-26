.class public Lcom/baidu/bulletin/ui/flippage/RotateAnimation$LeftAxis;
.super Lcom/baidu/bulletin/ui/flippage/RotateAnimation$Horizontal;
.source "RotateAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/ui/flippage/RotateAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LeftAxis"
.end annotation


# direct methods
.method protected constructor <init>(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 238
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/ui/flippage/RotateAnimation$Horizontal;-><init>(Landroid/view/View;)V

    .line 239
    return-void
.end method


# virtual methods
.method public getAngle()F
    .locals 1

    .prologue
    .line 250
    iget v0, p0, Lcom/baidu/bulletin/ui/flippage/RotateAnimation$LeftAxis;->mCurrentAngle:F

    neg-float v0, v0

    return v0
.end method

.method public initialize(IIII)V
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "parentWidth"
    .parameter "parentHeight"

    .prologue
    .line 243
    invoke-super {p0, p1, p2, p3, p4}, Lcom/baidu/bulletin/ui/flippage/RotateAnimation$Horizontal;->initialize(IIII)V

    .line 244
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/bulletin/ui/flippage/RotateAnimation$LeftAxis;->mXOffset:I

    .line 245
    div-int/lit8 v0, p2, 0x2

    iput v0, p0, Lcom/baidu/bulletin/ui/flippage/RotateAnimation$LeftAxis;->mYOffset:I

    .line 246
    return-void
.end method

.method protected isVisible()Z
    .locals 2

    .prologue
    .line 260
    iget v0, p0, Lcom/baidu/bulletin/ui/flippage/RotateAnimation$LeftAxis;->mCurrentAngle:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/baidu/bulletin/ui/flippage/RotateAnimation$LeftAxis;->mCurrentAngle:F

    const/high16 v1, -0x3d4c

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

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
    .line 255
    neg-float v0, p1

    return v0
.end method
