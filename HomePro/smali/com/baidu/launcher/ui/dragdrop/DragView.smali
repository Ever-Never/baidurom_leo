.class public Lcom/baidu/launcher/ui/dragdrop/DragView;
.super Landroid/view/View;
.source "DragView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/ui/dragdrop/DragView$ScaleAnimation;
    }
.end annotation


# instance fields
.field mAnim:Lcom/baidu/launcher/ui/animation/ValueAnimator;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mDragLayer:Lcom/baidu/launcher/ui/dragdrop/DragLayer;

.field private mDragRegion:Landroid/graphics/Rect;

.field private mDragVisualizeOffset:Landroid/graphics/Point;

.field private mHasDrawn:Z

.field private mLastDropTarget:Lcom/baidu/launcher/ui/dragdrop/DropTarget;

.field private mLayoutParams:Lcom/baidu/launcher/ui/dragdrop/DragLayer$LayoutParams;

.field private mOffsetX:F

.field private mOffsetY:F

.field private mPaint:Landroid/graphics/Paint;

.field private mRegistrationX:I

.field private mRegistrationY:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(Lcom/baidu/launcher/ui/dragdrop/DragLayer;Landroid/graphics/Bitmap;IIIIII)V
    .locals 5
    .parameter "dragLayer"
    .parameter "bitmap"
    .parameter "registrationX"
    .parameter "registrationY"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 75
    invoke-virtual {p1}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 48
    iput-object v3, p0, Lcom/baidu/launcher/ui/dragdrop/DragView;->mDragVisualizeOffset:Landroid/graphics/Point;

    .line 49
    iput-object v3, p0, Lcom/baidu/launcher/ui/dragdrop/DragView;->mDragRegion:Landroid/graphics/Rect;

    .line 50
    iput-object v3, p0, Lcom/baidu/launcher/ui/dragdrop/DragView;->mDragLayer:Lcom/baidu/launcher/ui/dragdrop/DragLayer;

    .line 51
    iput-boolean v2, p0, Lcom/baidu/launcher/ui/dragdrop/DragView;->mHasDrawn:Z

    .line 54
    iput v4, p0, Lcom/baidu/launcher/ui/dragdrop/DragView;->mOffsetX:F

    .line 55
    iput v4, p0, Lcom/baidu/launcher/ui/dragdrop/DragView;->mOffsetY:F

    .line 76
    iput-object p1, p0, Lcom/baidu/launcher/ui/dragdrop/DragView;->mDragLayer:Lcom/baidu/launcher/ui/dragdrop/DragLayer;

    .line 78
    invoke-static {p2, p5, p6, p7, p8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragView;->mBitmap:Landroid/graphics/Bitmap;

    .line 79
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v2, v2, p7, p8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/dragdrop/DragView;->setDragRegion(Landroid/graphics/Rect;)V

    .line 82
    iput p3, p0, Lcom/baidu/launcher/ui/dragdrop/DragView;->mRegistrationX:I

    .line 83
    iput p4, p0, Lcom/baidu/launcher/ui/dragdrop/DragView;->mRegistrationY:I

    .line 86
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 87
    .local v0, ms:I
    invoke-virtual {p0, v0, v0}, Lcom/baidu/launcher/ui/dragdrop/DragView;->measure(II)V

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/launcher/ui/dragdrop/DragView;)Lcom/baidu/launcher/ui/dragdrop/DragLayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragView;->mDragLayer:Lcom/baidu/launcher/ui/dragdrop/DragLayer;

    return-object v0
.end method


# virtual methods
.method public getDragRegion()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragView;->mDragRegion:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getDragRegionHeight()I
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragView;->mDragRegion:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method public getDragRegionLeft()I
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragView;->mDragRegion:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getDragRegionTop()I
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragView;->mDragRegion:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public getDragRegionWidth()I
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragView;->mDragRegion:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method public getDragVisualizeOffset()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragView;->mDragVisualizeOffset:Landroid/graphics/Point;

    return-object v0
.end method

.method public getLastDropTarget()Lcom/baidu/launcher/ui/dragdrop/DropTarget;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragView;->mLastDropTarget:Lcom/baidu/launcher/ui/dragdrop/DropTarget;

    return-object v0
.end method

.method public getOffsetY()F
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragView;->mOffsetY:F

    return v0
.end method

.method public hasDrawn()Z
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragView;->mHasDrawn:Z

    return v0
.end method

.method move(II)V
    .locals 3
    .parameter "touchX"
    .parameter "touchY"

    .prologue
    .line 237
    iput p1, p0, Lcom/baidu/launcher/ui/dragdrop/DragView;->x:I

    .line 238
    iput p2, p0, Lcom/baidu/launcher/ui/dragdrop/DragView;->y:I

    .line 239
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragView;->mLayoutParams:Lcom/baidu/launcher/ui/dragdrop/DragLayer$LayoutParams;

    .line 240
    .local v0, lp:Lcom/baidu/launcher/ui/dragdrop/DragLayer$LayoutParams;
    iget v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragView;->mRegistrationX:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/baidu/launcher/ui/dragdrop/DragView;->mOffsetX:F

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$LayoutParams;->x:I

    .line 241
    iget v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragView;->mRegistrationY:I

    sub-int v1, p2, v1

    iget v2, p0, Lcom/baidu/launcher/ui/dragdrop/DragView;->mOffsetY:F

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$LayoutParams;->y:I

    .line 242
    iget-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragView;->mDragLayer:Lcom/baidu/launcher/ui/dragdrop/DragLayer;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->requestLayout()V

    .line 243
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 132
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 133
    new-instance v0, Lcom/baidu/launcher/ui/dragdrop/DragView$ScaleAnimation;

    invoke-direct {v0, p0, p0}, Lcom/baidu/launcher/ui/dragdrop/DragView$ScaleAnimation;-><init>(Lcom/baidu/launcher/ui/dragdrop/DragView;Landroid/view/View;)V

    .line 134
    .local v0, animation:Lcom/baidu/launcher/ui/dragdrop/DragView$ScaleAnimation;
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/dragdrop/DragView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 135
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragView;->mHasDrawn:Z

    .line 181
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 182
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/baidu/launcher/ui/dragdrop/DragView;->setMeasuredDimension(II)V

    .line 176
    return-void
.end method

.method remove()V
    .locals 1

    .prologue
    .line 246
    new-instance v0, Lcom/baidu/launcher/ui/dragdrop/DragView$1;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/ui/dragdrop/DragView$1;-><init>(Lcom/baidu/launcher/ui/dragdrop/DragView;)V

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/dragdrop/DragView;->post(Ljava/lang/Runnable;)Z

    .line 256
    return-void
.end method

.method public setAlpha(F)V
    .locals 2
    .parameter "alpha"

    .prologue
    .line 195
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    invoke-super {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragView;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    .line 199
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragView;->mPaint:Landroid/graphics/Paint;

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x437f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 202
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/dragdrop/DragView;->invalidate()V

    .line 203
    return-void
.end method

.method public setDragRegion(Landroid/graphics/Rect;)V
    .locals 0
    .parameter "r"

    .prologue
    .line 166
    iput-object p1, p0, Lcom/baidu/launcher/ui/dragdrop/DragView;->mDragRegion:Landroid/graphics/Rect;

    .line 167
    return-void
.end method

.method public setDragVisualizeOffset(Landroid/graphics/Point;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 158
    iput-object p1, p0, Lcom/baidu/launcher/ui/dragdrop/DragView;->mDragVisualizeOffset:Landroid/graphics/Point;

    .line 159
    return-void
.end method

.method public setLastDropTarget(Lcom/baidu/launcher/ui/dragdrop/DropTarget;)V
    .locals 0
    .parameter "target"

    .prologue
    .line 268
    iput-object p1, p0, Lcom/baidu/launcher/ui/dragdrop/DragView;->mLastDropTarget:Lcom/baidu/launcher/ui/dragdrop/DropTarget;

    .line 269
    return-void
.end method

.method public setPaint(Landroid/graphics/Paint;)V
    .locals 0
    .parameter "paint"

    .prologue
    .line 185
    iput-object p1, p0, Lcom/baidu/launcher/ui/dragdrop/DragView;->mPaint:Landroid/graphics/Paint;

    .line 186
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/dragdrop/DragView;->invalidate()V

    .line 187
    return-void
.end method

.method public show(II)V
    .locals 4
    .parameter "touchX"
    .parameter "touchY"

    .prologue
    const/4 v3, 0x0

    .line 213
    iput p1, p0, Lcom/baidu/launcher/ui/dragdrop/DragView;->x:I

    .line 214
    iput p2, p0, Lcom/baidu/launcher/ui/dragdrop/DragView;->y:I

    .line 215
    iget-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragView;->mDragLayer:Lcom/baidu/launcher/ui/dragdrop/DragLayer;

    invoke-virtual {v1, p0}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->addView(Landroid/view/View;)V

    .line 216
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/dragdrop/DragView;->isHardwareAccelerated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/baidu/launcher/ui/dragdrop/DragView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 219
    :cond_0
    new-instance v0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$LayoutParams;

    invoke-direct {v0, v3, v3}, Lcom/baidu/launcher/ui/dragdrop/DragLayer$LayoutParams;-><init>(II)V

    .line 220
    .local v0, lp:Lcom/baidu/launcher/ui/dragdrop/DragLayer$LayoutParams;
    iget-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$LayoutParams;->width:I

    .line 221
    iget-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$LayoutParams;->height:I

    .line 222
    iget v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragView;->mRegistrationX:I

    sub-int v1, p1, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/baidu/launcher/ui/dragdrop/DragView;->mOffsetX:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$LayoutParams;->x:I

    .line 223
    iget v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragView;->mRegistrationY:I

    sub-int v1, p2, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/baidu/launcher/ui/dragdrop/DragView;->mOffsetY:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$LayoutParams;->y:I

    .line 224
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$LayoutParams;->customPosition:Z

    .line 225
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/dragdrop/DragView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 226
    iput-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragView;->mLayoutParams:Lcom/baidu/launcher/ui/dragdrop/DragLayer$LayoutParams;

    .line 228
    return-void
.end method
