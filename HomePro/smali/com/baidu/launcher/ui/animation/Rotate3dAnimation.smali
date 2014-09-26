.class public Lcom/baidu/launcher/ui/animation/Rotate3dAnimation;
.super Landroid/view/animation/Animation;
.source "Rotate3dAnimation.java"


# static fields
.field public static final ROTATE_AXIS_X:I = 0x0

.field public static final ROTATE_AXIS_Y:I = 0x1

.field public static final ROTATE_AXIS_Z:I = 0x10


# instance fields
.field private mCamera:Landroid/graphics/Camera;

.field private final mCenterX:F

.field private final mCenterY:F

.field private final mDepthZ:F

.field private final mFromDegrees:F

.field private final mReverse:Z

.field private mRoateAxis:I

.field private final mToDegrees:F


# direct methods
.method public constructor <init>(FFFFFZ)V
    .locals 0
    .parameter "fromDegrees"
    .parameter "toDegrees"
    .parameter "centerX"
    .parameter "centerY"
    .parameter "depthZ"
    .parameter "reverse"

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 43
    iput p1, p0, Lcom/baidu/launcher/ui/animation/Rotate3dAnimation;->mFromDegrees:F

    .line 44
    iput p2, p0, Lcom/baidu/launcher/ui/animation/Rotate3dAnimation;->mToDegrees:F

    .line 45
    iput p3, p0, Lcom/baidu/launcher/ui/animation/Rotate3dAnimation;->mCenterX:F

    .line 46
    iput p4, p0, Lcom/baidu/launcher/ui/animation/Rotate3dAnimation;->mCenterY:F

    .line 47
    iput p5, p0, Lcom/baidu/launcher/ui/animation/Rotate3dAnimation;->mDepthZ:F

    .line 48
    iput-boolean p6, p0, Lcom/baidu/launcher/ui/animation/Rotate3dAnimation;->mReverse:Z

    .line 49
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 9
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    const/4 v8, 0x0

    .line 69
    iget v4, p0, Lcom/baidu/launcher/ui/animation/Rotate3dAnimation;->mFromDegrees:F

    .line 70
    .local v4, fromDegrees:F
    iget v6, p0, Lcom/baidu/launcher/ui/animation/Rotate3dAnimation;->mToDegrees:F

    sub-float/2addr v6, v4

    mul-float/2addr v6, p1

    add-float v3, v4, v6

    .line 72
    .local v3, degrees:F
    iget v1, p0, Lcom/baidu/launcher/ui/animation/Rotate3dAnimation;->mCenterX:F

    .line 73
    .local v1, centerX:F
    iget v2, p0, Lcom/baidu/launcher/ui/animation/Rotate3dAnimation;->mCenterY:F

    .line 74
    .local v2, centerY:F
    iget-object v0, p0, Lcom/baidu/launcher/ui/animation/Rotate3dAnimation;->mCamera:Landroid/graphics/Camera;

    .line 76
    .local v0, camera:Landroid/graphics/Camera;
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    .line 78
    .local v5, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v0}, Landroid/graphics/Camera;->save()V

    .line 79
    iget-boolean v6, p0, Lcom/baidu/launcher/ui/animation/Rotate3dAnimation;->mReverse:Z

    if-eqz v6, :cond_0

    .line 80
    iget v6, p0, Lcom/baidu/launcher/ui/animation/Rotate3dAnimation;->mDepthZ:F

    mul-float/2addr v6, p1

    invoke-virtual {v0, v8, v8, v6}, Landroid/graphics/Camera;->translate(FFF)V

    .line 84
    :goto_0
    iget v6, p0, Lcom/baidu/launcher/ui/animation/Rotate3dAnimation;->mRoateAxis:I

    sparse-switch v6, :sswitch_data_0

    .line 96
    :goto_1
    invoke-virtual {v0, v5}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 97
    invoke-virtual {v0}, Landroid/graphics/Camera;->restore()V

    .line 99
    neg-float v6, v1

    neg-float v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 100
    invoke-virtual {v5, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 101
    return-void

    .line 82
    :cond_0
    iget v6, p0, Lcom/baidu/launcher/ui/animation/Rotate3dAnimation;->mDepthZ:F

    const/high16 v7, 0x3f80

    sub-float/2addr v7, p1

    mul-float/2addr v6, v7

    invoke-virtual {v0, v8, v8, v6}, Landroid/graphics/Camera;->translate(FFF)V

    goto :goto_0

    .line 86
    :sswitch_0
    invoke-virtual {v0, v3}, Landroid/graphics/Camera;->rotateX(F)V

    goto :goto_1

    .line 89
    :sswitch_1
    invoke-virtual {v0, v3}, Landroid/graphics/Camera;->rotateY(F)V

    goto :goto_1

    .line 92
    :sswitch_2
    invoke-virtual {v0, v3}, Landroid/graphics/Camera;->rotateZ(F)V

    goto :goto_1

    .line 84
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public initialize(IIII)V
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "parentWidth"
    .parameter "parentHeight"

    .prologue
    .line 53
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 54
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/animation/Rotate3dAnimation;->mCamera:Landroid/graphics/Camera;

    .line 55
    return-void
.end method

.method public setRotateAxis(I)V
    .locals 0
    .parameter "axis"

    .prologue
    .line 64
    iput p1, p0, Lcom/baidu/launcher/ui/animation/Rotate3dAnimation;->mRoateAxis:I

    .line 65
    return-void
.end method
