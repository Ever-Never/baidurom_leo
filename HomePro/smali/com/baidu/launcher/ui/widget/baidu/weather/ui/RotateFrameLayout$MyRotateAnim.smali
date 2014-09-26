.class Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$MyRotateAnim;
.super Landroid/view/animation/Animation;
.source "RotateFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyRotateAnim"
.end annotation


# instance fields
.field private mCamera:Landroid/graphics/Camera;

.field private mCameraMatrix:Landroid/graphics/Matrix;

.field private mCenterX:I

.field private mCenterY:I

.field private mFromAlpha:F

.field private mFromAngle:F

.field private mHeight:I

.field private mLastTransformedAlpha:F

.field private mLastTransformedAngle:F

.field private mToAlpha:F

.field private mToAngle:F

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 198
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 200
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$MyRotateAnim;->mCamera:Landroid/graphics/Camera;

    .line 201
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$MyRotateAnim;->mCameraMatrix:Landroid/graphics/Matrix;

    .line 203
    return-void
.end method

.method private genTargetAlpha(F)F
    .locals 3
    .parameter "interpolatedTime"

    .prologue
    .line 248
    iget v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$MyRotateAnim;->mFromAlpha:F

    iget v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$MyRotateAnim;->mToAlpha:F

    iget v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$MyRotateAnim;->mFromAlpha:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$MyRotateAnim;->mLastTransformedAlpha:F

    .line 251
    iget v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$MyRotateAnim;->mLastTransformedAlpha:F

    return v0
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 4
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    .line 258
    iget v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$MyRotateAnim;->mFromAngle:F

    iget v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$MyRotateAnim;->mToAngle:F

    iget v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$MyRotateAnim;->mFromAngle:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$MyRotateAnim;->mLastTransformedAngle:F

    .line 261
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 263
    .local v0, m:Landroid/graphics/Matrix;
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$MyRotateAnim;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v1}, Landroid/graphics/Camera;->save()V

    .line 265
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$MyRotateAnim;->mCamera:Landroid/graphics/Camera;

    iget v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$MyRotateAnim;->mLastTransformedAngle:F

    invoke-virtual {v1, v2}, Landroid/graphics/Camera;->rotateX(F)V

    .line 266
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$MyRotateAnim;->mCameraMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 267
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$MyRotateAnim;->mCamera:Landroid/graphics/Camera;

    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$MyRotateAnim;->mCameraMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 268
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$MyRotateAnim;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v1}, Landroid/graphics/Camera;->restore()V

    .line 270
    iget v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$MyRotateAnim;->mCenterX:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$MyRotateAnim;->mCenterY:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 271
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$MyRotateAnim;->mCameraMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 272
    iget v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$MyRotateAnim;->mCenterX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$MyRotateAnim;->mCenterY:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 274
    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$MyRotateAnim;->genTargetAlpha(F)F

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 276
    return-void
.end method

.method public initialize(IIII)V
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "parentWidth"
    .parameter "parentHeight"

    .prologue
    .line 236
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 237
    iput p1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$MyRotateAnim;->mWidth:I

    .line 238
    iput p2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$MyRotateAnim;->mHeight:I

    .line 240
    div-int/lit8 v0, p1, 0x2

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$MyRotateAnim;->mCenterX:I

    .line 241
    div-int/lit8 v0, p2, 0x2

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$MyRotateAnim;->mCenterY:I

    .line 245
    return-void
.end method

.method public setAlpha(F)V
    .locals 1
    .parameter "to"

    .prologue
    .line 227
    iput p1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$MyRotateAnim;->mToAlpha:F

    .line 229
    iget v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$MyRotateAnim;->mLastTransformedAlpha:F

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$MyRotateAnim;->mFromAlpha:F

    .line 231
    return-void
.end method

.method public setAlpha(FF)V
    .locals 1
    .parameter "from"
    .parameter "to"

    .prologue
    .line 221
    iput p1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$MyRotateAnim;->mFromAlpha:F

    .line 222
    iput p2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$MyRotateAnim;->mToAlpha:F

    .line 223
    iget v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$MyRotateAnim;->mFromAlpha:F

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$MyRotateAnim;->mLastTransformedAlpha:F

    .line 224
    return-void
.end method

.method public setAngle(F)V
    .locals 1
    .parameter "to"

    .prologue
    .line 214
    iput p1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$MyRotateAnim;->mToAngle:F

    .line 216
    iget v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$MyRotateAnim;->mLastTransformedAngle:F

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$MyRotateAnim;->mFromAngle:F

    .line 218
    return-void
.end method

.method public setAngle(FF)V
    .locals 1
    .parameter "from"
    .parameter "to"

    .prologue
    .line 206
    iput p1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$MyRotateAnim;->mFromAngle:F

    .line 207
    iput p2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$MyRotateAnim;->mToAngle:F

    .line 209
    iget v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$MyRotateAnim;->mFromAngle:F

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$MyRotateAnim;->mLastTransformedAngle:F

    .line 211
    return-void
.end method
