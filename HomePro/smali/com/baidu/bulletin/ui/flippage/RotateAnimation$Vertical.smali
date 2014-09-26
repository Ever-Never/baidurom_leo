.class Lcom/baidu/bulletin/ui/flippage/RotateAnimation$Vertical;
.super Lcom/baidu/bulletin/ui/flippage/RotateAnimation$Base;
.source "RotateAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/ui/flippage/RotateAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Vertical"
.end annotation


# instance fields
.field protected mXOffset:I

.field protected mYOffset:I


# direct methods
.method protected constructor <init>(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/ui/flippage/RotateAnimation$Base;-><init>(Landroid/view/View;)V

    .line 98
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 10
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    const/high16 v5, 0x4f00

    const/high16 v9, 0x3f80

    .line 102
    invoke-virtual {p0, p1}, Lcom/baidu/bulletin/ui/flippage/RotateAnimation$Vertical;->fixInterpolatedTime(F)F

    move-result p1

    .line 104
    invoke-virtual {p0, p1}, Lcom/baidu/bulletin/ui/flippage/RotateAnimation$Vertical;->updateRotation(F)F

    move-result v0

    .line 106
    .local v0, currentAngle:F
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    .line 108
    .local v1, matrix:Landroid/graphics/Matrix;
    iget-object v3, p0, Lcom/baidu/bulletin/ui/flippage/RotateAnimation$Vertical;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v3}, Landroid/graphics/Camera;->save()V

    .line 113
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/flippage/RotateAnimation$Vertical;->isVisible()Z

    move-result v3

    if-nez v3, :cond_0

    .line 114
    iget-object v3, p0, Lcom/baidu/bulletin/ui/flippage/RotateAnimation$Vertical;->mCamera:Landroid/graphics/Camera;

    const/4 v4, 0x0

    invoke-virtual {v3, v5, v5, v4}, Landroid/graphics/Camera;->translate(FFF)V

    .line 118
    :cond_0
    iget-object v3, p0, Lcom/baidu/bulletin/ui/flippage/RotateAnimation$Vertical;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v3, v0}, Landroid/graphics/Camera;->rotateX(F)V

    .line 119
    iget-object v3, p0, Lcom/baidu/bulletin/ui/flippage/RotateAnimation$Vertical;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v3, v1}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 120
    iget-object v3, p0, Lcom/baidu/bulletin/ui/flippage/RotateAnimation$Vertical;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v3}, Landroid/graphics/Camera;->restore()V

    .line 124
    const-wide v3, 0x3fc999999999999aL

    const-wide/high16 v5, 0x3fe0

    iget v7, p0, Lcom/baidu/bulletin/ui/flippage/RotateAnimation$Vertical;->mCurrentAngle:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    float-to-double v7, v7

    mul-double/2addr v5, v7

    const-wide v7, 0x4056800000000000L

    div-double/2addr v5, v7

    add-double/2addr v3, v5

    double-to-float v2, v3

    .line 125
    .local v2, scale:F
    invoke-virtual {v1, v9, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 126
    div-float v3, v9, v2

    invoke-virtual {v1, v9, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 129
    iget v3, p0, Lcom/baidu/bulletin/ui/flippage/RotateAnimation$Vertical;->mXOffset:I

    neg-int v3, v3

    int-to-float v3, v3

    iget v4, p0, Lcom/baidu/bulletin/ui/flippage/RotateAnimation$Vertical;->mYOffset:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 130
    iget v3, p0, Lcom/baidu/bulletin/ui/flippage/RotateAnimation$Vertical;->mXOffset:I

    int-to-float v3, v3

    iget v4, p0, Lcom/baidu/bulletin/ui/flippage/RotateAnimation$Vertical;->mYOffset:I

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 131
    return-void
.end method
