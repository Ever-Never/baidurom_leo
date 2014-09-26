.class Lcom/baidu/bulletin/ui/flippage/PageFlipper$FlipDetector;
.super Ljava/lang/Object;
.source "PageFlipper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/ui/flippage/PageFlipper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlipDetector"
.end annotation


# static fields
.field private static final OFFSET_SCALE:F = 1.3f

.field static final TIME_UINIT:I = 0x1f4


# instance fields
.field private final START_SLOP:I

.field mDirection:Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;

.field mStartX:F

.field mStartY:F

.field mVelocityTracker:Landroid/view/VelocityTracker;

.field final synthetic this$0:Lcom/baidu/bulletin/ui/flippage/PageFlipper;


# direct methods
.method private constructor <init>(Lcom/baidu/bulletin/ui/flippage/PageFlipper;)V
    .locals 1
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/baidu/bulletin/ui/flippage/PageFlipper$FlipDetector;->this$0:Lcom/baidu/bulletin/ui/flippage/PageFlipper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    invoke-static {}, Landroid/view/ViewConfiguration;->getEdgeSlop()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/baidu/bulletin/ui/flippage/PageFlipper$FlipDetector;->START_SLOP:I

    .line 186
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bulletin/ui/flippage/PageFlipper$FlipDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 187
    sget-object v0, Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;->None:Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;

    iput-object v0, p0, Lcom/baidu/bulletin/ui/flippage/PageFlipper$FlipDetector;->mDirection:Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/bulletin/ui/flippage/PageFlipper;Lcom/baidu/bulletin/ui/flippage/PageFlipper$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 183
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/ui/flippage/PageFlipper$FlipDetector;-><init>(Lcom/baidu/bulletin/ui/flippage/PageFlipper;)V

    return-void
.end method

.method private getPercent(FF)F
    .locals 2
    .parameter "current"
    .parameter "total"

    .prologue
    const/4 v0, 0x0

    .line 295
    cmpl-float v1, p2, v0

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    div-float v1, p1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x3f80

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_0
.end method

.method private isOffsetSlopped(F)Z
    .locals 2
    .parameter "offset"

    .prologue
    .line 242
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/baidu/bulletin/ui/flippage/PageFlipper$FlipDetector;->START_SLOP:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private scaleOffset(F)F
    .locals 1
    .parameter "offset"

    .prologue
    .line 220
    const v0, 0x3fa66666

    mul-float/2addr v0, p1

    return v0
.end method

.method private tryFlip(Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;)V
    .locals 1
    .parameter "direction"

    .prologue
    .line 236
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/PageFlipper$FlipDetector;->this$0:Lcom/baidu/bulletin/ui/flippage/PageFlipper;

    iget-object v0, v0, Lcom/baidu/bulletin/ui/flippage/PageFlipper;->mProvider:Lcom/baidu/bulletin/ui/flippage/PageFlipper$Provider;

    invoke-interface {v0, p1}, Lcom/baidu/bulletin/ui/flippage/PageFlipper$Provider;->canFlip(Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    iput-object p1, p0, Lcom/baidu/bulletin/ui/flippage/PageFlipper$FlipDetector;->mDirection:Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;

    .line 239
    :cond_0
    return-void
.end method

.method private tryHorizontalFlip(F)V
    .locals 1
    .parameter "offset"

    .prologue
    .line 230
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/ui/flippage/PageFlipper$FlipDetector;->isOffsetSlopped(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    sget-object v0, Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;->FromLeftToRight:Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;

    :goto_0
    invoke-direct {p0, v0}, Lcom/baidu/bulletin/ui/flippage/PageFlipper$FlipDetector;->tryFlip(Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;)V

    .line 233
    :cond_0
    return-void

    .line 231
    :cond_1
    sget-object v0, Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;->FromRightToLeft:Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;

    goto :goto_0
.end method

.method private tryVerticalFlip(F)V
    .locals 1
    .parameter "offset"

    .prologue
    .line 224
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/ui/flippage/PageFlipper$FlipDetector;->isOffsetSlopped(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    sget-object v0, Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;->FromTopToBottom:Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;

    :goto_0
    invoke-direct {p0, v0}, Lcom/baidu/bulletin/ui/flippage/PageFlipper$FlipDetector;->tryFlip(Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;)V

    .line 227
    :cond_0
    return-void

    .line 225
    :cond_1
    sget-object v0, Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;->FromBottomToTop:Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 299
    sget-object v0, Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;->None:Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;

    iput-object v0, p0, Lcom/baidu/bulletin/ui/flippage/PageFlipper$FlipDetector;->mDirection:Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;

    .line 300
    return-void
.end method

.method public detect(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 201
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/flippage/PageFlipper$FlipDetector;->isDetecting()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 202
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget v6, p0, Lcom/baidu/bulletin/ui/flippage/PageFlipper$FlipDetector;->mStartX:F

    sub-float/2addr v5, v6

    invoke-direct {p0, v5}, Lcom/baidu/bulletin/ui/flippage/PageFlipper$FlipDetector;->scaleOffset(F)F

    move-result v1

    .line 203
    .local v1, xOffset:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget v6, p0, Lcom/baidu/bulletin/ui/flippage/PageFlipper$FlipDetector;->mStartY:F

    sub-float/2addr v5, v6

    invoke-direct {p0, v5}, Lcom/baidu/bulletin/ui/flippage/PageFlipper$FlipDetector;->scaleOffset(F)F

    move-result v2

    .line 204
    .local v2, yOffset:F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    move v0, v3

    .line 205
    .local v0, isVertical:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/flippage/PageFlipper$FlipDetector;->isDetecting()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0, v2}, Lcom/baidu/bulletin/ui/flippage/PageFlipper$FlipDetector;->tryVerticalFlip(F)V

    .line 214
    .end local v0           #isVertical:Z
    .end local v1           #xOffset:F
    .end local v2           #yOffset:F
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/flippage/PageFlipper$FlipDetector;->isDetecting()Z

    move-result v5

    if-nez v5, :cond_2

    :goto_1
    return v3

    .restart local v1       #xOffset:F
    .restart local v2       #yOffset:F
    :cond_1
    move v0, v4

    .line 204
    goto :goto_0

    .end local v1           #xOffset:F
    .end local v2           #yOffset:F
    :cond_2
    move v3, v4

    .line 214
    goto :goto_1
.end method

.method public getDirection()Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/PageFlipper$FlipDetector;->mDirection:Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;

    return-object v0
.end method

.method public getVelocity()F
    .locals 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/PageFlipper$FlipDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 277
    sget-object v0, Lcom/baidu/bulletin/ui/flippage/PageFlipper$2;->$SwitchMap$com$baidu$bulletin$ui$flippage$PageFlipper$Direction:[I

    iget-object v1, p0, Lcom/baidu/bulletin/ui/flippage/PageFlipper$FlipDetector;->mDirection:Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;

    invoke-virtual {v1}, Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 291
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 279
    :pswitch_0
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/PageFlipper$FlipDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    goto :goto_0

    .line 282
    :pswitch_1
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/PageFlipper$FlipDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    neg-float v0, v0

    goto :goto_0

    .line 285
    :pswitch_2
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/PageFlipper$FlipDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    goto :goto_0

    .line 288
    :pswitch_3
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/PageFlipper$FlipDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    neg-float v0, v0

    goto :goto_0

    .line 277
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public isDetecting()Z
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/PageFlipper$FlipDetector;->mDirection:Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;

    sget-object v1, Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;->None:Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public start(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 192
    sget-object v0, Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;->None:Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;

    iput-object v0, p0, Lcom/baidu/bulletin/ui/flippage/PageFlipper$FlipDetector;->mDirection:Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;

    .line 193
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/baidu/bulletin/ui/flippage/PageFlipper$FlipDetector;->mStartX:F

    .line 194
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/baidu/bulletin/ui/flippage/PageFlipper$FlipDetector;->mStartY:F

    .line 196
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/PageFlipper$FlipDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 197
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/PageFlipper$FlipDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 198
    return-void
.end method

.method public track(Landroid/view/MotionEvent;)F
    .locals 4
    .parameter "event"

    .prologue
    .line 246
    iget-object v2, p0, Lcom/baidu/bulletin/ui/flippage/PageFlipper$FlipDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 248
    const/4 v0, 0x0

    .line 249
    .local v0, offset:F
    const/4 v1, 0x0

    .line 250
    .local v1, total:I
    sget-object v2, Lcom/baidu/bulletin/ui/flippage/PageFlipper$2;->$SwitchMap$com$baidu$bulletin$ui$flippage$PageFlipper$Direction:[I

    iget-object v3, p0, Lcom/baidu/bulletin/ui/flippage/PageFlipper$FlipDetector;->mDirection:Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;

    invoke-virtual {v3}, Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 269
    :goto_0
    invoke-direct {p0, v0}, Lcom/baidu/bulletin/ui/flippage/PageFlipper$FlipDetector;->scaleOffset(F)F

    move-result v2

    int-to-float v3, v1

    invoke-direct {p0, v2, v3}, Lcom/baidu/bulletin/ui/flippage/PageFlipper$FlipDetector;->getPercent(FF)F

    move-result v2

    return v2

    .line 252
    :pswitch_0
    iget v2, p0, Lcom/baidu/bulletin/ui/flippage/PageFlipper$FlipDetector;->mStartY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float v0, v2, v3

    .line 253
    iget-object v2, p0, Lcom/baidu/bulletin/ui/flippage/PageFlipper$FlipDetector;->this$0:Lcom/baidu/bulletin/ui/flippage/PageFlipper;

    iget-object v2, v2, Lcom/baidu/bulletin/ui/flippage/PageFlipper;->mFlipPerformer:Lcom/baidu/bulletin/ui/flippage/FlipPerformer;

    invoke-virtual {v2}, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;->getHeight()I

    move-result v1

    .line 254
    goto :goto_0

    .line 256
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/baidu/bulletin/ui/flippage/PageFlipper$FlipDetector;->mStartY:F

    sub-float v0, v2, v3

    .line 257
    iget-object v2, p0, Lcom/baidu/bulletin/ui/flippage/PageFlipper$FlipDetector;->this$0:Lcom/baidu/bulletin/ui/flippage/PageFlipper;

    iget-object v2, v2, Lcom/baidu/bulletin/ui/flippage/PageFlipper;->mFlipPerformer:Lcom/baidu/bulletin/ui/flippage/FlipPerformer;

    invoke-virtual {v2}, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;->getHeight()I

    move-result v1

    .line 258
    goto :goto_0

    .line 260
    :pswitch_2
    iget v2, p0, Lcom/baidu/bulletin/ui/flippage/PageFlipper$FlipDetector;->mStartX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float v0, v2, v3

    .line 261
    iget-object v2, p0, Lcom/baidu/bulletin/ui/flippage/PageFlipper$FlipDetector;->this$0:Lcom/baidu/bulletin/ui/flippage/PageFlipper;

    iget-object v2, v2, Lcom/baidu/bulletin/ui/flippage/PageFlipper;->mFlipPerformer:Lcom/baidu/bulletin/ui/flippage/FlipPerformer;

    invoke-virtual {v2}, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;->getWidth()I

    move-result v1

    .line 262
    goto :goto_0

    .line 264
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/baidu/bulletin/ui/flippage/PageFlipper$FlipDetector;->mStartX:F

    sub-float v0, v2, v3

    .line 265
    iget-object v2, p0, Lcom/baidu/bulletin/ui/flippage/PageFlipper$FlipDetector;->this$0:Lcom/baidu/bulletin/ui/flippage/PageFlipper;

    iget-object v2, v2, Lcom/baidu/bulletin/ui/flippage/PageFlipper;->mFlipPerformer:Lcom/baidu/bulletin/ui/flippage/FlipPerformer;

    invoke-virtual {v2}, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;->getWidth()I

    move-result v1

    goto :goto_0

    .line 250
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
