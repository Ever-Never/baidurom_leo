.class public Lcom/baidu/bulletin/ui/flippage/PageFlipper;
.super Ljava/lang/Object;
.source "PageFlipper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bulletin/ui/flippage/PageFlipper$2;,
        Lcom/baidu/bulletin/ui/flippage/PageFlipper$FlipDetector;,
        Lcom/baidu/bulletin/ui/flippage/PageFlipper$Provider;,
        Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;,
        Lcom/baidu/bulletin/ui/flippage/PageFlipper$ViewName;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field mFlipDetector:Lcom/baidu/bulletin/ui/flippage/PageFlipper$FlipDetector;

.field mFlipPerformer:Lcom/baidu/bulletin/ui/flippage/FlipPerformer;

.field private mFlipPerformerObserver:Lcom/baidu/bulletin/ui/flippage/FlipPerformer$Observer;

.field mProvider:Lcom/baidu/bulletin/ui/flippage/PageFlipper$Provider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/baidu/bulletin/ui/flippage/PageFlipper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/bulletin/ui/flippage/PageFlipper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/baidu/bulletin/ui/flippage/PageFlipper$Provider;)V
    .locals 2
    .parameter "context"
    .parameter "provider"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/baidu/bulletin/ui/flippage/PageFlipper$FlipDetector;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/baidu/bulletin/ui/flippage/PageFlipper$FlipDetector;-><init>(Lcom/baidu/bulletin/ui/flippage/PageFlipper;Lcom/baidu/bulletin/ui/flippage/PageFlipper$1;)V

    iput-object v0, p0, Lcom/baidu/bulletin/ui/flippage/PageFlipper;->mFlipDetector:Lcom/baidu/bulletin/ui/flippage/PageFlipper$FlipDetector;

    .line 116
    new-instance v0, Lcom/baidu/bulletin/ui/flippage/PageFlipper$1;

    invoke-direct {v0, p0}, Lcom/baidu/bulletin/ui/flippage/PageFlipper$1;-><init>(Lcom/baidu/bulletin/ui/flippage/PageFlipper;)V

    iput-object v0, p0, Lcom/baidu/bulletin/ui/flippage/PageFlipper;->mFlipPerformerObserver:Lcom/baidu/bulletin/ui/flippage/FlipPerformer$Observer;

    .line 48
    iput-object p2, p0, Lcom/baidu/bulletin/ui/flippage/PageFlipper;->mProvider:Lcom/baidu/bulletin/ui/flippage/PageFlipper$Provider;

    .line 49
    new-instance v0, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;

    invoke-direct {v0, p1}, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/bulletin/ui/flippage/PageFlipper;->mFlipPerformer:Lcom/baidu/bulletin/ui/flippage/FlipPerformer;

    .line 50
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/PageFlipper;->mFlipPerformer:Lcom/baidu/bulletin/ui/flippage/FlipPerformer;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/flippage/PageFlipper;->mFlipPerformerObserver:Lcom/baidu/bulletin/ui/flippage/FlipPerformer$Observer;

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;->setObserver(Lcom/baidu/bulletin/ui/flippage/FlipPerformer$Observer;)V

    .line 51
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/PageFlipper;->mProvider:Lcom/baidu/bulletin/ui/flippage/PageFlipper$Provider;

    invoke-interface {v0}, Lcom/baidu/bulletin/ui/flippage/PageFlipper$Provider;->getHost()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bulletin/ui/flippage/PageFlipper;->mFlipPerformer:Lcom/baidu/bulletin/ui/flippage/FlipPerformer;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 52
    return-void
.end method

.method private getDesView(Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;)Landroid/view/View;
    .locals 3
    .parameter "direction"

    .prologue
    .line 163
    sget-object v1, Lcom/baidu/bulletin/ui/flippage/PageFlipper$2;->$SwitchMap$com$baidu$bulletin$ui$flippage$PageFlipper$Direction:[I

    invoke-virtual {p1}, Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 177
    const/4 v1, 0x0

    .line 180
    :goto_0
    return-object v1

    .line 165
    :pswitch_0
    sget-object v0, Lcom/baidu/bulletin/ui/flippage/PageFlipper$ViewName;->Above:Lcom/baidu/bulletin/ui/flippage/PageFlipper$ViewName;

    .line 180
    .local v0, name:Lcom/baidu/bulletin/ui/flippage/PageFlipper$ViewName;
    :goto_1
    iget-object v1, p0, Lcom/baidu/bulletin/ui/flippage/PageFlipper;->mProvider:Lcom/baidu/bulletin/ui/flippage/PageFlipper$Provider;

    invoke-interface {v1, v0}, Lcom/baidu/bulletin/ui/flippage/PageFlipper$Provider;->getView(Lcom/baidu/bulletin/ui/flippage/PageFlipper$ViewName;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 168
    .end local v0           #name:Lcom/baidu/bulletin/ui/flippage/PageFlipper$ViewName;
    :pswitch_1
    sget-object v0, Lcom/baidu/bulletin/ui/flippage/PageFlipper$ViewName;->Below:Lcom/baidu/bulletin/ui/flippage/PageFlipper$ViewName;

    .line 169
    .restart local v0       #name:Lcom/baidu/bulletin/ui/flippage/PageFlipper$ViewName;
    goto :goto_1

    .line 171
    .end local v0           #name:Lcom/baidu/bulletin/ui/flippage/PageFlipper$ViewName;
    :pswitch_2
    sget-object v0, Lcom/baidu/bulletin/ui/flippage/PageFlipper$ViewName;->Left:Lcom/baidu/bulletin/ui/flippage/PageFlipper$ViewName;

    .line 172
    .restart local v0       #name:Lcom/baidu/bulletin/ui/flippage/PageFlipper$ViewName;
    goto :goto_1

    .line 174
    .end local v0           #name:Lcom/baidu/bulletin/ui/flippage/PageFlipper$ViewName;
    :pswitch_3
    sget-object v0, Lcom/baidu/bulletin/ui/flippage/PageFlipper$ViewName;->Right:Lcom/baidu/bulletin/ui/flippage/PageFlipper$ViewName;

    .line 175
    .restart local v0       #name:Lcom/baidu/bulletin/ui/flippage/PageFlipper$ViewName;
    goto :goto_1

    .line 163
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private onTouchDown(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/PageFlipper;->mFlipDetector:Lcom/baidu/bulletin/ui/flippage/PageFlipper$FlipDetector;

    invoke-virtual {v0, p1}, Lcom/baidu/bulletin/ui/flippage/PageFlipper$FlipDetector;->start(Landroid/view/MotionEvent;)V

    .line 135
    return-void
.end method

.method private onTouchMove(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 138
    iget-object v2, p0, Lcom/baidu/bulletin/ui/flippage/PageFlipper;->mFlipDetector:Lcom/baidu/bulletin/ui/flippage/PageFlipper$FlipDetector;

    invoke-virtual {v2}, Lcom/baidu/bulletin/ui/flippage/PageFlipper$FlipDetector;->isDetecting()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 139
    iget-object v2, p0, Lcom/baidu/bulletin/ui/flippage/PageFlipper;->mFlipDetector:Lcom/baidu/bulletin/ui/flippage/PageFlipper$FlipDetector;

    invoke-virtual {v2, p1}, Lcom/baidu/bulletin/ui/flippage/PageFlipper$FlipDetector;->detect(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 140
    iget-object v2, p0, Lcom/baidu/bulletin/ui/flippage/PageFlipper;->mFlipPerformer:Lcom/baidu/bulletin/ui/flippage/FlipPerformer;

    iget-object v3, p0, Lcom/baidu/bulletin/ui/flippage/PageFlipper;->mFlipDetector:Lcom/baidu/bulletin/ui/flippage/PageFlipper$FlipDetector;

    invoke-virtual {v3}, Lcom/baidu/bulletin/ui/flippage/PageFlipper$FlipDetector;->getDirection()Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;->canFlip(Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 141
    iget-object v2, p0, Lcom/baidu/bulletin/ui/flippage/PageFlipper;->mFlipPerformer:Lcom/baidu/bulletin/ui/flippage/FlipPerformer;

    invoke-virtual {v2}, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;->flipOverLast()V

    .line 143
    iget-object v2, p0, Lcom/baidu/bulletin/ui/flippage/PageFlipper;->mFlipDetector:Lcom/baidu/bulletin/ui/flippage/PageFlipper$FlipDetector;

    invoke-virtual {v2}, Lcom/baidu/bulletin/ui/flippage/PageFlipper$FlipDetector;->getDirection()Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/baidu/bulletin/ui/flippage/PageFlipper;->getDesView(Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;)Landroid/view/View;

    move-result-object v1

    .line 144
    .local v1, opening:Landroid/view/View;
    iget-object v2, p0, Lcom/baidu/bulletin/ui/flippage/PageFlipper;->mProvider:Lcom/baidu/bulletin/ui/flippage/PageFlipper$Provider;

    sget-object v3, Lcom/baidu/bulletin/ui/flippage/PageFlipper$ViewName;->Current:Lcom/baidu/bulletin/ui/flippage/PageFlipper$ViewName;

    invoke-interface {v2, v3}, Lcom/baidu/bulletin/ui/flippage/PageFlipper$Provider;->getView(Lcom/baidu/bulletin/ui/flippage/PageFlipper$ViewName;)Landroid/view/View;

    move-result-object v0

    .line 145
    .local v0, closing:Landroid/view/View;
    iget-object v2, p0, Lcom/baidu/bulletin/ui/flippage/PageFlipper;->mFlipPerformer:Lcom/baidu/bulletin/ui/flippage/FlipPerformer;

    iget-object v3, p0, Lcom/baidu/bulletin/ui/flippage/PageFlipper;->mFlipDetector:Lcom/baidu/bulletin/ui/flippage/PageFlipper$FlipDetector;

    invoke-virtual {v3}, Lcom/baidu/bulletin/ui/flippage/PageFlipper$FlipDetector;->getDirection()Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;

    move-result-object v3

    invoke-virtual {v2, v1, v0, v3}, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;->flipNext(Landroid/view/View;Landroid/view/View;Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;)V

    .line 153
    .end local v0           #closing:Landroid/view/View;
    .end local v1           #opening:Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    iget-object v2, p0, Lcom/baidu/bulletin/ui/flippage/PageFlipper;->mFlipDetector:Lcom/baidu/bulletin/ui/flippage/PageFlipper$FlipDetector;

    invoke-virtual {v2}, Lcom/baidu/bulletin/ui/flippage/PageFlipper$FlipDetector;->cancel()V

    goto :goto_0

    .line 151
    :cond_2
    iget-object v2, p0, Lcom/baidu/bulletin/ui/flippage/PageFlipper;->mFlipPerformer:Lcom/baidu/bulletin/ui/flippage/FlipPerformer;

    iget-object v3, p0, Lcom/baidu/bulletin/ui/flippage/PageFlipper;->mFlipDetector:Lcom/baidu/bulletin/ui/flippage/PageFlipper$FlipDetector;

    invoke-virtual {v3, p1}, Lcom/baidu/bulletin/ui/flippage/PageFlipper$FlipDetector;->track(Landroid/view/MotionEvent;)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;->flipTo(F)V

    goto :goto_0
.end method

.method private onTouchUp(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/PageFlipper;->mFlipPerformer:Lcom/baidu/bulletin/ui/flippage/FlipPerformer;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/flippage/PageFlipper;->mFlipDetector:Lcom/baidu/bulletin/ui/flippage/PageFlipper$FlipDetector;

    invoke-virtual {v1}, Lcom/baidu/bulletin/ui/flippage/PageFlipper$FlipDetector;->getVelocity()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;->finishFlipping(F)V

    .line 157
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/PageFlipper;->mFlipDetector:Lcom/baidu/bulletin/ui/flippage/PageFlipper$FlipDetector;

    invoke-virtual {v0}, Lcom/baidu/bulletin/ui/flippage/PageFlipper$FlipDetector;->cancel()V

    .line 158
    return-void
.end method


# virtual methods
.method public flip(Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;)V
    .locals 5
    .parameter "direction"

    .prologue
    .line 100
    iget-object v2, p0, Lcom/baidu/bulletin/ui/flippage/PageFlipper;->mProvider:Lcom/baidu/bulletin/ui/flippage/PageFlipper$Provider;

    invoke-interface {v2, p1}, Lcom/baidu/bulletin/ui/flippage/PageFlipper$Provider;->canFlip(Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 101
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/ui/flippage/PageFlipper;->getDesView(Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;)Landroid/view/View;

    move-result-object v1

    .line 102
    .local v1, opening:Landroid/view/View;
    iget-object v2, p0, Lcom/baidu/bulletin/ui/flippage/PageFlipper;->mProvider:Lcom/baidu/bulletin/ui/flippage/PageFlipper$Provider;

    sget-object v3, Lcom/baidu/bulletin/ui/flippage/PageFlipper$ViewName;->Current:Lcom/baidu/bulletin/ui/flippage/PageFlipper$ViewName;

    invoke-interface {v2, v3}, Lcom/baidu/bulletin/ui/flippage/PageFlipper$Provider;->getView(Lcom/baidu/bulletin/ui/flippage/PageFlipper$ViewName;)Landroid/view/View;

    move-result-object v0

    .line 103
    .local v0, closing:Landroid/view/View;
    iget-object v2, p0, Lcom/baidu/bulletin/ui/flippage/PageFlipper;->mFlipPerformer:Lcom/baidu/bulletin/ui/flippage/FlipPerformer;

    invoke-virtual {v2, v1, v0, p1}, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;->flipNext(Landroid/view/View;Landroid/view/View;Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;)V

    .line 104
    iget-object v2, p0, Lcom/baidu/bulletin/ui/flippage/PageFlipper;->mFlipPerformer:Lcom/baidu/bulletin/ui/flippage/FlipPerformer;

    const/4 v3, 0x1

    const/high16 v4, 0x44fa

    invoke-virtual {v2, v3, v4}, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;->finishFlipping(ZF)V

    .line 106
    .end local v0           #closing:Landroid/view/View;
    .end local v1           #opening:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public isFlipping()Z
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/PageFlipper;->mFlipPerformer:Lcom/baidu/bulletin/ui/flippage/FlipPerformer;

    invoke-virtual {v0}, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;->isFlipping()Z

    move-result v0

    return v0
.end method

.method public layout(IIII)V
    .locals 1
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/PageFlipper;->mFlipPerformer:Lcom/baidu/bulletin/ui/flippage/FlipPerformer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;->layout(IIII)V

    .line 114
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 59
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 61
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 76
    :goto_0
    iget-object v1, p0, Lcom/baidu/bulletin/ui/flippage/PageFlipper;->mFlipDetector:Lcom/baidu/bulletin/ui/flippage/PageFlipper$FlipDetector;

    invoke-virtual {v1}, Lcom/baidu/bulletin/ui/flippage/PageFlipper$FlipDetector;->isDetecting()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 63
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/ui/flippage/PageFlipper;->onTouchDown(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 67
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/ui/flippage/PageFlipper;->onTouchMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 72
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/ui/flippage/PageFlipper;->onTouchUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 76
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 61
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 80
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 82
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 96
    :goto_0
    :pswitch_0
    const/4 v1, 0x1

    return v1

    .line 87
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/ui/flippage/PageFlipper;->onTouchMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 92
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/ui/flippage/PageFlipper;->onTouchUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 82
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setEndPageView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/PageFlipper;->mFlipPerformer:Lcom/baidu/bulletin/ui/flippage/FlipPerformer;

    invoke-virtual {v0, p1}, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;->setEndPageView(Landroid/view/View;)V

    .line 56
    return-void
.end method
