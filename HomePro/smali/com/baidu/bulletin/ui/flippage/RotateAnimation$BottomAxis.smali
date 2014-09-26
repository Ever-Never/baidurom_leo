.class public Lcom/baidu/bulletin/ui/flippage/RotateAnimation$BottomAxis;
.super Lcom/baidu/bulletin/ui/flippage/RotateAnimation$Vertical;
.source "RotateAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/ui/flippage/RotateAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BottomAxis"
.end annotation


# direct methods
.method protected constructor <init>(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 160
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/ui/flippage/RotateAnimation$Vertical;-><init>(Landroid/view/View;)V

    .line 161
    return-void
.end method


# virtual methods
.method public getAngle()F
    .locals 2

    .prologue
    .line 172
    iget v0, p0, Lcom/baidu/bulletin/ui/flippage/RotateAnimation$BottomAxis;->mCurrentAngle:F

    const/high16 v1, 0x4334

    add-float/2addr v0, v1

    return v0
.end method

.method public initialize(IIII)V
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "parentWidth"
    .parameter "parentHeight"

    .prologue
    .line 165
    invoke-super {p0, p1, p2, p3, p4}, Lcom/baidu/bulletin/ui/flippage/RotateAnimation$Vertical;->initialize(IIII)V

    .line 166
    div-int/lit8 v0, p1, 0x2

    iput v0, p0, Lcom/baidu/bulletin/ui/flippage/RotateAnimation$BottomAxis;->mXOffset:I

    .line 167
    iput p2, p0, Lcom/baidu/bulletin/ui/flippage/RotateAnimation$BottomAxis;->mYOffset:I

    .line 168
    return-void
.end method

.method protected isVisible()Z
    .locals 2

    .prologue
    .line 182
    iget v0, p0, Lcom/baidu/bulletin/ui/flippage/RotateAnimation$BottomAxis;->mCurrentAngle:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/baidu/bulletin/ui/flippage/RotateAnimation$BottomAxis;->mCurrentAngle:F

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
    .line 177
    const/high16 v0, 0x4334

    sub-float v0, p1, v0

    return v0
.end method
