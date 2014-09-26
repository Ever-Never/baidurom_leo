.class public Lcom/inveno/newpiflow/animation/Animation3DBox;
.super Landroid/view/animation/Animation;
.source "Animation3DBox.java"


# instance fields
.field private mCamera:Landroid/graphics/Camera;

.field private mCenterX:F

.field private mCenterY:F

.field private mFromDegrees:F

.field private mToDegrees:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0
    .parameter "fromDegrees"
    .parameter "toDegrees"
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 35
    iput p1, p0, Lcom/inveno/newpiflow/animation/Animation3DBox;->mFromDegrees:F

    .line 36
    iput p2, p0, Lcom/inveno/newpiflow/animation/Animation3DBox;->mToDegrees:F

    .line 37
    iput p3, p0, Lcom/inveno/newpiflow/animation/Animation3DBox;->mCenterX:F

    .line 38
    iput p4, p0, Lcom/inveno/newpiflow/animation/Animation3DBox;->mCenterY:F

    .line 39
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 8
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    const/4 v7, 0x0

    .line 52
    iget v3, p0, Lcom/inveno/newpiflow/animation/Animation3DBox;->mFromDegrees:F

    .line 54
    .local v3, fromDegrees:F
    iget v5, p0, Lcom/inveno/newpiflow/animation/Animation3DBox;->mToDegrees:F

    sub-float/2addr v5, v3

    mul-float/2addr v5, p1

    add-float v2, v3, v5

    .line 55
    .local v2, degrees:F
    iget v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBox;->mCenterX:F

    .line 56
    .local v0, centerX:F
    iget v1, p0, Lcom/inveno/newpiflow/animation/Animation3DBox;->mCenterY:F

    .line 57
    .local v1, centerY:F
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    .line 59
    .local v4, matrix:Landroid/graphics/Matrix;
    const/high16 v5, -0x3d60

    cmpg-float v5, v2, v5

    if-gtz v5, :cond_0

    .line 60
    const/high16 v2, -0x3d4c

    .line 61
    iget-object v5, p0, Lcom/inveno/newpiflow/animation/Animation3DBox;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v5}, Landroid/graphics/Camera;->save()V

    .line 62
    iget-object v5, p0, Lcom/inveno/newpiflow/animation/Animation3DBox;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v5, v2}, Landroid/graphics/Camera;->rotateX(F)V

    .line 63
    iget-object v5, p0, Lcom/inveno/newpiflow/animation/Animation3DBox;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v5, v4}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 64
    iget-object v5, p0, Lcom/inveno/newpiflow/animation/Animation3DBox;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v5}, Landroid/graphics/Camera;->restore()V

    .line 80
    :goto_0
    neg-float v5, v0

    neg-float v6, v1

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 81
    invoke-virtual {v4, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 82
    return-void

    .line 65
    :cond_0
    const/high16 v5, 0x42a0

    cmpl-float v5, v2, v5

    if-ltz v5, :cond_1

    .line 66
    const/high16 v2, 0x42b4

    .line 67
    iget-object v5, p0, Lcom/inveno/newpiflow/animation/Animation3DBox;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v5}, Landroid/graphics/Camera;->save()V

    .line 68
    iget-object v5, p0, Lcom/inveno/newpiflow/animation/Animation3DBox;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v5, v2}, Landroid/graphics/Camera;->rotateX(F)V

    .line 69
    iget-object v5, p0, Lcom/inveno/newpiflow/animation/Animation3DBox;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v5, v4}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 70
    iget-object v5, p0, Lcom/inveno/newpiflow/animation/Animation3DBox;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v5}, Landroid/graphics/Camera;->restore()V

    goto :goto_0

    .line 72
    :cond_1
    iget-object v5, p0, Lcom/inveno/newpiflow/animation/Animation3DBox;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v5}, Landroid/graphics/Camera;->save()V

    .line 73
    iget-object v5, p0, Lcom/inveno/newpiflow/animation/Animation3DBox;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v5, v7, v7, v1}, Landroid/graphics/Camera;->translate(FFF)V

    .line 74
    iget-object v5, p0, Lcom/inveno/newpiflow/animation/Animation3DBox;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v5, v2}, Landroid/graphics/Camera;->rotateX(F)V

    .line 75
    iget-object v5, p0, Lcom/inveno/newpiflow/animation/Animation3DBox;->mCamera:Landroid/graphics/Camera;

    neg-float v6, v1

    invoke-virtual {v5, v7, v7, v6}, Landroid/graphics/Camera;->translate(FFF)V

    .line 76
    iget-object v5, p0, Lcom/inveno/newpiflow/animation/Animation3DBox;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v5, v4}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 77
    iget-object v5, p0, Lcom/inveno/newpiflow/animation/Animation3DBox;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v5}, Landroid/graphics/Camera;->restore()V

    goto :goto_0
.end method

.method public initialize(IIII)V
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "parentWidth"
    .parameter "parentHeight"

    .prologue
    .line 44
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 46
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBox;->mCamera:Landroid/graphics/Camera;

    .line 47
    return-void
.end method

.method public setCenterXY(FF)V
    .locals 0
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    .line 100
    iput p1, p0, Lcom/inveno/newpiflow/animation/Animation3DBox;->mCenterX:F

    .line 101
    iput p2, p0, Lcom/inveno/newpiflow/animation/Animation3DBox;->mCenterY:F

    .line 102
    return-void
.end method

.method public setDegrees(FF)V
    .locals 0
    .parameter "fromDegrees"
    .parameter "toDegrees"

    .prologue
    .line 90
    iput p1, p0, Lcom/inveno/newpiflow/animation/Animation3DBox;->mFromDegrees:F

    .line 91
    iput p2, p0, Lcom/inveno/newpiflow/animation/Animation3DBox;->mToDegrees:F

    .line 92
    return-void
.end method
