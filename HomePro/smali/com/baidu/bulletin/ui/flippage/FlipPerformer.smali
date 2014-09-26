.class public Lcom/baidu/bulletin/ui/flippage/FlipPerformer;
.super Landroid/view/ViewGroup;
.source "FlipPerformer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bulletin/ui/flippage/FlipPerformer$2;,
        Lcom/baidu/bulletin/ui/flippage/FlipPerformer$FrequencyBlocker;,
        Lcom/baidu/bulletin/ui/flippage/FlipPerformer$Observer;
    }
.end annotation


# static fields
.field private static final FLING_MAX_DURATION:I = 0x3e8

.field private static final FLING_MAX_VELOCITY:I = 0x7d0

.field private static final FLING_MIN_DURATION:F = 300.0f

.field private static final FLING_VELOCITY_EFFECT_FACTOR:F = 0.5f

.field private static final FLIP_SLOP:I = 0x32

.field private static final VIBRATE_DURATION:I = 0x28


# instance fields
.field private mDirection:Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;

.field private mDragPercent:F

.field private mEndPage:Landroid/view/View;

.field private mFlippingPage:Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;

.field private mFrequencyBlocker:Lcom/baidu/bulletin/ui/flippage/FlipPerformer$FrequencyBlocker;

.field private mHaveEndPage:Z

.field private mHaveNext:Z

.field private mListener:Lcom/baidu/bulletin/ui/flippage/PageFactory$Listener;

.field private mObserver:Lcom/baidu/bulletin/ui/flippage/FlipPerformer$Observer;

.field private mPageFactory:Lcom/baidu/bulletin/ui/flippage/PageFactory;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 40
    sget-object v0, Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;->None:Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;

    iput-object v0, p0, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;->mDirection:Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;

    .line 49
    new-instance v0, Lcom/baidu/bulletin/ui/flippage/FlipPerformer$FrequencyBlocker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/baidu/bulletin/ui/flippage/FlipPerformer$FrequencyBlocker;-><init>(Lcom/baidu/bulletin/ui/flippage/FlipPerformer;Lcom/baidu/bulletin/ui/flippage/FlipPerformer$1;)V

    iput-object v0, p0, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;->mFrequencyBlocker:Lcom/baidu/bulletin/ui/flippage/FlipPerformer$FrequencyBlocker;

    .line 260
    new-instance v0, Lcom/baidu/bulletin/ui/flippage/FlipPerformer$1;

    invoke-direct {v0, p0}, Lcom/baidu/bulletin/ui/flippage/FlipPerformer$1;-><init>(Lcom/baidu/bulletin/ui/flippage/FlipPerformer;)V

    iput-object v0, p0, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;->mListener:Lcom/baidu/bulletin/ui/flippage/PageFactory$Listener;

    .line 55
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;->setVisibility(I)V

    .line 56
    new-instance v0, Lcom/baidu/bulletin/ui/flippage/PageFactory;

    invoke-direct {v0, p0}, Lcom/baidu/bulletin/ui/flippage/PageFactory;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;->mPageFactory:Lcom/baidu/bulletin/ui/flippage/PageFactory;

    .line 57
    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;->mVibrator:Landroid/os/Vibrator;

    .line 58
    return-void
.end method

.method static synthetic access$100(Lcom/baidu/bulletin/ui/flippage/FlipPerformer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;->stopFlipping()V

    return-void
.end method

.method private flipTo(FJLcom/baidu/bulletin/ui/flippage/PageFactory$Listener;)V
    .locals 2
    .parameter "percent"
    .parameter "duration"
    .parameter "listener"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;->mFlippingPage:Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;->mFlippingPage:Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;

    invoke-direct {p0, p1}, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;->getFixedPercent(F)F

    move-result v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;->flipTo(FJLcom/baidu/bulletin/ui/flippage/PageFactory$Listener;)V

    .line 212
    :cond_0
    return-void
.end method

.method private getDirection()Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;->mDirection:Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;

    return-object v0
.end method

.method private getDirectionalPercent(F)F
    .locals 2
    .parameter "percent"

    .prologue
    .line 249
    sget-object v0, Lcom/baidu/bulletin/ui/flippage/FlipPerformer$2;->$SwitchMap$com$baidu$bulletin$ui$flippage$PageFlipper$Direction:[I

    invoke-direct {p0}, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;->getDirection()Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 257
    :goto_0
    return p1

    .line 253
    :pswitch_0
    const/high16 v0, 0x3f80

    sub-float p1, v0, p1

    goto :goto_0

    .line 249
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getFixedPercent(F)F
    .locals 1
    .parameter "percent"

    .prologue
    .line 241
    iget-boolean v0, p0, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;->mHaveNext:Z

    if-nez v0, :cond_0

    .line 242
    const v0, 0x3ecccccd

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 245
    :cond_0
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;->getDirectionalPercent(F)F

    move-result v0

    return v0
.end method

.method private getFlingDuration(ZF)J
    .locals 6
    .parameter "flippedOver"
    .parameter "velocity"

    .prologue
    const/high16 v5, 0x44fa

    const/high16 v4, 0x3f80

    .line 220
    iget-boolean v2, p0, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;->mHaveNext:Z

    if-nez v2, :cond_0

    .line 221
    const-wide/16 v2, 0x12c

    .line 237
    :goto_0
    return-wide v2

    .line 223
    :cond_0
    const/4 v1, 0x0

    .line 224
    .local v1, velocityEffect:F
    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    if-lez v2, :cond_3

    const/4 v2, 0x1

    :goto_1
    if-ne p1, v2, :cond_1

    .line 225
    const/high16 v2, 0x3f00

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    mul-float/2addr v2, v3

    div-float v1, v2, v5

    .line 228
    :cond_1
    const/high16 v2, 0x447a

    sub-float v3, v4, v1

    mul-float v0, v2, v3

    .line 229
    .local v0, duration:F
    const/high16 v2, 0x4396

    cmpg-float v2, v0, v2

    if-gez v2, :cond_2

    .line 230
    const/high16 v0, 0x4396

    .line 232
    :cond_2
    if-eqz p1, :cond_4

    .line 233
    iget v2, p0, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;->mDragPercent:F

    sub-float v2, v4, v2

    mul-float/2addr v0, v2

    .line 237
    :goto_2
    float-to-long v2, v0

    goto :goto_0

    .line 224
    .end local v0           #duration:F
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 235
    .restart local v0       #duration:F
    :cond_4
    iget v2, p0, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;->mDragPercent:F

    mul-float/2addr v0, v2

    goto :goto_2
.end method

.method private isDirective(Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;)Z
    .locals 2
    .parameter "direction"

    .prologue
    .line 91
    invoke-virtual {p1}, Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;->ordinal()I

    move-result v0

    sget-object v1, Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;->None:Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;

    invoke-virtual {v1}, Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;->ordinal()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyFlipResult()V
    .locals 2

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;->getDirection()Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;->isDirective(Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;->mObserver:Lcom/baidu/bulletin/ui/flippage/FlipPerformer$Observer;

    invoke-direct {p0}, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;->getDirection()Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/baidu/bulletin/ui/flippage/FlipPerformer$Observer;->onFlipped(Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;)V

    .line 157
    :cond_0
    return-void
.end method

.method private stopFlipping()V
    .locals 1

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;->isFlipping()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    invoke-direct {p0}, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;->notifyFlipResult()V

    .line 144
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;->mPageFactory:Lcom/baidu/bulletin/ui/flippage/PageFactory;

    invoke-virtual {v0}, Lcom/baidu/bulletin/ui/flippage/PageFactory;->clearPages()V

    .line 147
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;->mObserver:Lcom/baidu/bulletin/ui/flippage/FlipPerformer$Observer;

    invoke-interface {v0}, Lcom/baidu/bulletin/ui/flippage/FlipPerformer$Observer;->onStop()V

    .line 148
    sget-object v0, Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;->None:Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;

    iput-object v0, p0, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;->mDirection:Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;

    .line 150
    :cond_0
    return-void
.end method


# virtual methods
.method public canFlip(Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;)Z
    .locals 3
    .parameter "direction"

    .prologue
    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;->isDirective(Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 81
    invoke-direct {p0}, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;->getDirection()Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;

    move-result-object v1

    sget-object v2, Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;->None:Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;

    if-eq v1, v2, :cond_0

    invoke-direct {p0}, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;->getDirection()Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;->mPageFactory:Lcom/baidu/bulletin/ui/flippage/PageFactory;

    invoke-virtual {v1}, Lcom/baidu/bulletin/ui/flippage/PageFactory;->canFlipMore()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;->mFrequencyBlocker:Lcom/baidu/bulletin/ui/flippage/FlipPerformer$FrequencyBlocker;

    invoke-virtual {v1}, Lcom/baidu/bulletin/ui/flippage/FlipPerformer$FrequencyBlocker;->canDo()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 87
    :cond_1
    return v0
.end method

.method public finishFlipping(F)V
    .locals 3
    .parameter "velocity"

    .prologue
    .line 172
    iget v1, p0, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;->mDragPercent:F

    const/high16 v2, 0x447a

    mul-float/2addr v1, v2

    add-float/2addr v1, p1

    const/high16 v2, 0x4248

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    .line 173
    .local v0, flippedOver:Z
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;->finishFlipping(ZF)V

    .line 174
    return-void

    .line 172
    .end local v0           #flippedOver:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public finishFlipping(ZF)V
    .locals 5
    .parameter "flippedOver"
    .parameter "velocity"

    .prologue
    .line 177
    iget-object v2, p0, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;->mFlippingPage:Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;

    if-nez v2, :cond_0

    .line 197
    :goto_0
    return-void

    .line 185
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;->getFlingDuration(ZF)J

    move-result-wide v0

    .line 186
    .local v0, duration:J
    if-eqz p1, :cond_2

    const/high16 v2, 0x3f80

    :goto_1
    iget-object v3, p0, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;->mListener:Lcom/baidu/bulletin/ui/flippage/PageFactory$Listener;

    invoke-direct {p0, v2, v0, v1, v3}, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;->flipTo(FJLcom/baidu/bulletin/ui/flippage/PageFactory$Listener;)V

    .line 188
    if-nez p1, :cond_3

    .line 189
    sget-object v2, Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;->Finishing:Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;

    iput-object v2, p0, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;->mDirection:Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;

    .line 196
    :cond_1
    :goto_2
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;->mFlippingPage:Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;

    goto :goto_0

    .line 186
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 191
    :cond_3
    iget-boolean v2, p0, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;->mHaveNext:Z

    if-nez v2, :cond_1

    .line 192
    iget-object v2, p0, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v3, 0x28

    invoke-virtual {v2, v3, v4}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_2
.end method

.method public flipNext(Landroid/view/View;Landroid/view/View;Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;)V
    .locals 9
    .parameter "opening"
    .parameter "closing"
    .parameter "direction"

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    const-wide/16 v5, 0x0

    .line 95
    invoke-virtual {p0, p3}, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;->canFlip(Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 130
    :goto_0
    return-void

    .line 99
    :cond_0
    invoke-direct {p0}, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;->getDirection()Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;

    move-result-object v2

    sget-object v4, Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;->None:Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;

    if-ne v2, v4, :cond_1

    .line 100
    iput-object p3, p0, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;->mDirection:Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;

    .line 103
    :cond_1
    if-eqz p1, :cond_3

    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, p0, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;->mHaveNext:Z

    .line 104
    iget-boolean v2, p0, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;->mHaveNext:Z

    if-nez v2, :cond_2

    sget-object v2, Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;->FromBottomToTop:Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;

    if-ne p3, v2, :cond_2

    iget-boolean v2, p0, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;->mHaveEndPage:Z

    if-eqz v2, :cond_2

    .line 105
    iget-object p1, p0, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;->mEndPage:Landroid/view/View;

    .line 108
    :cond_2
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;->isFlipping()Z

    move-result v2

    if-nez v2, :cond_4

    .line 109
    iget-object v2, p0, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;->mPageFactory:Lcom/baidu/bulletin/ui/flippage/PageFactory;

    invoke-virtual {v2}, Lcom/baidu/bulletin/ui/flippage/PageFactory;->clearPages()V

    .line 111
    iget-object v2, p0, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;->mPageFactory:Lcom/baidu/bulletin/ui/flippage/PageFactory;

    invoke-virtual {v2, p2, v8, p3}, Lcom/baidu/bulletin/ui/flippage/PageFactory;->addPage(Landroid/view/View;Landroid/view/View;Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;)Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;

    move-result-object v0

    .line 112
    .local v0, closingPage:Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;
    const/high16 v2, 0x3f80

    invoke-direct {p0, v2}, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;->getDirectionalPercent(F)F

    move-result v2

    invoke-virtual {v0, v2, v5, v6}, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;->flipTo(FJ)V

    .line 114
    iget-object v2, p0, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;->mPageFactory:Lcom/baidu/bulletin/ui/flippage/PageFactory;

    invoke-virtual {v2, p1, p2, p3}, Lcom/baidu/bulletin/ui/flippage/PageFactory;->addPage(Landroid/view/View;Landroid/view/View;Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;)Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;->mFlippingPage:Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;

    .line 115
    iget-object v2, p0, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;->mFlippingPage:Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;

    invoke-direct {p0, v7}, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;->getDirectionalPercent(F)F

    move-result v4

    invoke-virtual {v2, v4, v5, v6}, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;->flipTo(FJ)V

    .line 121
    .end local v0           #closingPage:Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;
    :goto_2
    iget-object v2, p0, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;->mPageFactory:Lcom/baidu/bulletin/ui/flippage/PageFactory;

    invoke-virtual {v2, v8, p1, p3}, Lcom/baidu/bulletin/ui/flippage/PageFactory;->addPage(Landroid/view/View;Landroid/view/View;Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;)Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;

    move-result-object v1

    .line 122
    .local v1, openingPage:Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;
    invoke-direct {p0, v7}, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;->getDirectionalPercent(F)F

    move-result v2

    invoke-virtual {v1, v2, v5, v6}, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;->flipTo(FJ)V

    .line 124
    iget-object v2, p0, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;->mPageFactory:Lcom/baidu/bulletin/ui/flippage/PageFactory;

    invoke-virtual {v2}, Lcom/baidu/bulletin/ui/flippage/PageFactory;->fixPagesZIndex()V

    .line 125
    invoke-virtual {p0, v3}, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;->setVisibility(I)V

    .line 126
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;->bringToFront()V

    .line 127
    iget-object v2, p0, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;->mObserver:Lcom/baidu/bulletin/ui/flippage/FlipPerformer$Observer;

    invoke-interface {v2}, Lcom/baidu/bulletin/ui/flippage/FlipPerformer$Observer;->onStart()V

    .line 129
    iget-object v2, p0, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;->mFrequencyBlocker:Lcom/baidu/bulletin/ui/flippage/FlipPerformer$FrequencyBlocker;

    invoke-virtual {v2}, Lcom/baidu/bulletin/ui/flippage/FlipPerformer$FrequencyBlocker;->doNext()V

    goto :goto_0

    .end local v1           #openingPage:Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;
    :cond_3
    move v2, v3

    .line 103
    goto :goto_1

    .line 117
    :cond_4
    iget-object v2, p0, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;->mPageFactory:Lcom/baidu/bulletin/ui/flippage/PageFactory;

    invoke-virtual {v2}, Lcom/baidu/bulletin/ui/flippage/PageFactory;->getOpeningPage()Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;->mFlippingPage:Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;

    .line 118
    iget-object v2, p0, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;->mFlippingPage:Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;

    invoke-virtual {v2, p1, p2, p3}, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;->setContent(Landroid/view/View;Landroid/view/View;Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;)V

    goto :goto_2
.end method

.method public flipOverLast()V
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;->isFlipping()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    invoke-direct {p0}, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;->notifyFlipResult()V

    .line 137
    :cond_0
    return-void
.end method

.method public flipTo(F)V
    .locals 3
    .parameter "percent"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;->mFlippingPage:Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;

    if-nez v0, :cond_0

    .line 166
    :goto_0
    return-void

    .line 164
    :cond_0
    iput p1, p0, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;->mDragPercent:F

    .line 165
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;->flipTo(FJLcom/baidu/bulletin/ui/flippage/PageFactory$Listener;)V

    goto :goto_0
.end method

.method public isFlipping()Z
    .locals 1

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;->mPageFactory:Lcom/baidu/bulletin/ui/flippage/PageFactory;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/baidu/bulletin/ui/flippage/PageFactory;->layoutPages(IIII)V

    .line 77
    return-void
.end method

.method public setEndPageView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 65
    if-eqz p1, :cond_0

    .line 66
    iput-object p1, p0, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;->mEndPage:Landroid/view/View;

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;->mHaveEndPage:Z

    .line 72
    :goto_0
    return-void

    .line 69
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;->mEndPage:Landroid/view/View;

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;->mHaveEndPage:Z

    goto :goto_0
.end method

.method public setObserver(Lcom/baidu/bulletin/ui/flippage/FlipPerformer$Observer;)V
    .locals 0
    .parameter "observer"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;->mObserver:Lcom/baidu/bulletin/ui/flippage/FlipPerformer$Observer;

    .line 62
    return-void
.end method
