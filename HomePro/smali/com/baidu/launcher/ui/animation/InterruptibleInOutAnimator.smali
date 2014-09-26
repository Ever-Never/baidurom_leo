.class public Lcom/baidu/launcher/ui/animation/InterruptibleInOutAnimator;
.super Ljava/lang/Object;
.source "InterruptibleInOutAnimator.java"


# static fields
.field private static final IN:I = 0x1

.field private static final OUT:I = 0x2

.field private static final STOPPED:I


# instance fields
.field private mAnimator:Lcom/baidu/launcher/ui/animation/ValueAnimator;

.field private mDirection:I

.field private mFirstRun:Z

.field private mOriginalDuration:J

.field private mOriginalFromValue:F

.field private mOriginalToValue:F

.field private mTag:Ljava/lang/Object;


# direct methods
.method public constructor <init>(JFF)V
    .locals 3
    .parameter "duration"
    .parameter "fromValue"
    .parameter "toValue"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-boolean v2, p0, Lcom/baidu/launcher/ui/animation/InterruptibleInOutAnimator;->mFirstRun:Z

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/launcher/ui/animation/InterruptibleInOutAnimator;->mTag:Ljava/lang/Object;

    .line 43
    iput v1, p0, Lcom/baidu/launcher/ui/animation/InterruptibleInOutAnimator;->mDirection:I

    .line 46
    const/4 v0, 0x2

    new-array v0, v0, [F

    aput p3, v0, v1

    aput p4, v0, v2

    invoke-static {v0}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->ofFloat([F)Lcom/baidu/launcher/ui/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->setDuration(J)Lcom/baidu/launcher/ui/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/animation/InterruptibleInOutAnimator;->mAnimator:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    .line 47
    iput-wide p1, p0, Lcom/baidu/launcher/ui/animation/InterruptibleInOutAnimator;->mOriginalDuration:J

    .line 48
    iput p3, p0, Lcom/baidu/launcher/ui/animation/InterruptibleInOutAnimator;->mOriginalFromValue:F

    .line 49
    iput p4, p0, Lcom/baidu/launcher/ui/animation/InterruptibleInOutAnimator;->mOriginalToValue:F

    .line 51
    iget-object v0, p0, Lcom/baidu/launcher/ui/animation/InterruptibleInOutAnimator;->mAnimator:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    new-instance v1, Lcom/baidu/launcher/ui/animation/InterruptibleInOutAnimator$1;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/ui/animation/InterruptibleInOutAnimator$1;-><init>(Lcom/baidu/launcher/ui/animation/InterruptibleInOutAnimator;)V

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->addListener(Lcom/baidu/launcher/ui/animation/Animator$AnimatorListener;)V

    .line 57
    return-void
.end method

.method static synthetic access$002(Lcom/baidu/launcher/ui/animation/InterruptibleInOutAnimator;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput p1, p0, Lcom/baidu/launcher/ui/animation/InterruptibleInOutAnimator;->mDirection:I

    return p1
.end method

.method private animate(I)V
    .locals 13
    .parameter "direction"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 60
    iget-object v6, p0, Lcom/baidu/launcher/ui/animation/InterruptibleInOutAnimator;->mAnimator:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    invoke-virtual {v6}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v0

    .line 61
    .local v0, currentPlayTime:J
    if-ne p1, v12, :cond_0

    iget v5, p0, Lcom/baidu/launcher/ui/animation/InterruptibleInOutAnimator;->mOriginalToValue:F

    .line 62
    .local v5, toValue:F
    :goto_0
    iget-boolean v6, p0, Lcom/baidu/launcher/ui/animation/InterruptibleInOutAnimator;->mFirstRun:Z

    if-eqz v6, :cond_1

    iget v4, p0, Lcom/baidu/launcher/ui/animation/InterruptibleInOutAnimator;->mOriginalFromValue:F

    .line 66
    .local v4, startValue:F
    :goto_1
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/animation/InterruptibleInOutAnimator;->cancel()V

    .line 70
    iput p1, p0, Lcom/baidu/launcher/ui/animation/InterruptibleInOutAnimator;->mDirection:I

    .line 73
    iget-wide v6, p0, Lcom/baidu/launcher/ui/animation/InterruptibleInOutAnimator;->mOriginalDuration:J

    sub-long v2, v6, v0

    .line 74
    .local v2, duration:J
    iget-object v6, p0, Lcom/baidu/launcher/ui/animation/InterruptibleInOutAnimator;->mAnimator:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    const-wide/16 v7, 0x0

    iget-wide v9, p0, Lcom/baidu/launcher/ui/animation/InterruptibleInOutAnimator;->mOriginalDuration:J

    invoke-static {v2, v3, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->setDuration(J)Lcom/baidu/launcher/ui/animation/ValueAnimator;

    .line 76
    iget-object v6, p0, Lcom/baidu/launcher/ui/animation/InterruptibleInOutAnimator;->mAnimator:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    const/4 v7, 0x2

    new-array v7, v7, [F

    aput v4, v7, v11

    aput v5, v7, v12

    invoke-virtual {v6, v7}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->setFloatValues([F)V

    .line 77
    iget-object v6, p0, Lcom/baidu/launcher/ui/animation/InterruptibleInOutAnimator;->mAnimator:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    invoke-virtual {v6}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->start()V

    .line 78
    iput-boolean v11, p0, Lcom/baidu/launcher/ui/animation/InterruptibleInOutAnimator;->mFirstRun:Z

    .line 79
    return-void

    .line 61
    .end local v2           #duration:J
    .end local v4           #startValue:F
    .end local v5           #toValue:F
    :cond_0
    iget v5, p0, Lcom/baidu/launcher/ui/animation/InterruptibleInOutAnimator;->mOriginalFromValue:F

    goto :goto_0

    .line 62
    .restart local v5       #toValue:F
    :cond_1
    iget-object v6, p0, Lcom/baidu/launcher/ui/animation/InterruptibleInOutAnimator;->mAnimator:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    invoke-virtual {v6}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v4

    goto :goto_1
.end method


# virtual methods
.method public animateIn()V
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/baidu/launcher/ui/animation/InterruptibleInOutAnimator;->animate(I)V

    .line 105
    return-void
.end method

.method public animateOut()V
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/baidu/launcher/ui/animation/InterruptibleInOutAnimator;->animate(I)V

    .line 115
    return-void
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/baidu/launcher/ui/animation/InterruptibleInOutAnimator;->mAnimator:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->cancel()V

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/launcher/ui/animation/InterruptibleInOutAnimator;->mDirection:I

    .line 84
    return-void
.end method

.method public end()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/baidu/launcher/ui/animation/InterruptibleInOutAnimator;->mAnimator:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->end()V

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/launcher/ui/animation/InterruptibleInOutAnimator;->mDirection:I

    .line 89
    return-void
.end method

.method public getAnimator()Lcom/baidu/launcher/ui/animation/ValueAnimator;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/baidu/launcher/ui/animation/InterruptibleInOutAnimator;->mAnimator:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/baidu/launcher/ui/animation/InterruptibleInOutAnimator;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public isStopped()Z
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/baidu/launcher/ui/animation/InterruptibleInOutAnimator;->mDirection:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0
    .parameter "tag"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/baidu/launcher/ui/animation/InterruptibleInOutAnimator;->mTag:Ljava/lang/Object;

    .line 119
    return-void
.end method
