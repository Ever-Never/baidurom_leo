.class public abstract Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Anim;
.super Ljava/lang/Object;
.source "Anim.java"


# static fields
.field public static final STATUS_RUNNING:I = 0x0

.field public static final STATUS_STOP:I = 0x1


# instance fields
.field protected mCurrentTime:J

.field protected mDuration:I

.field protected mInterpolater:Landroid/view/animation/Interpolator;

.field protected mNode:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Node;

.field protected mRepeat:Z

.field protected mStartTime:J

.field protected mStatus:I


# direct methods
.method public constructor <init>(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Node;)V
    .locals 1
    .parameter "n"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Anim;->mStatus:I

    .line 13
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Anim;->mDuration:I

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Anim;->mRepeat:Z

    .line 17
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Anim;->mInterpolater:Landroid/view/animation/Interpolator;

    .line 21
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Anim;->mNode:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Node;

    .line 22
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Anim;->stop()V

    .line 23
    return-void
.end method


# virtual methods
.method public Step()V
    .locals 8

    .prologue
    .line 33
    iget v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Anim;->mStatus:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 37
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Anim;->mCurrentTime:J

    .line 40
    iget-wide v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Anim;->mCurrentTime:J

    iget-wide v4, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Anim;->mStartTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    iget v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Anim;->mDuration:I

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 41
    .local v1, timePercent:F
    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    invoke-virtual {p0, v1, v2, v3}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Anim;->clamp(FFF)F

    move-result v1

    .line 43
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Anim;->mInterpolater:Landroid/view/animation/Interpolator;

    invoke-interface {v2, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 45
    .local v0, animPercent:F
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Anim;->doTransform(F)V

    .line 48
    iget-wide v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Anim;->mCurrentTime:J

    iget-wide v4, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Anim;->mStartTime:J

    iget v6, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Anim;->mDuration:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 49
    iget-boolean v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Anim;->mRepeat:Z

    if-eqz v2, :cond_2

    .line 50
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Anim;->start()V

    goto :goto_0

    .line 52
    :cond_2
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Anim;->stop()V

    goto :goto_0
.end method

.method protected clamp(FFF)F
    .locals 1
    .parameter "i"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 25
    cmpg-float v0, p1, p2

    if-gez v0, :cond_0

    .line 29
    .end local p2
    :goto_0
    return p2

    .line 27
    .restart local p2
    :cond_0
    cmpl-float v0, p1, p3

    if-lez v0, :cond_1

    move p2, p3

    .line 28
    goto :goto_0

    :cond_1
    move p2, p1

    .line 29
    goto :goto_0
.end method

.method public abstract doTransform(F)V
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Anim;->mStatus:I

    .line 72
    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Anim;->doTransform(F)V

    .line 73
    return-void
.end method

.method public setDuration(I)V
    .locals 0
    .parameter "d"

    .prologue
    .line 75
    iput p1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Anim;->mDuration:I

    .line 77
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .parameter "i"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Anim;->mInterpolater:Landroid/view/animation/Interpolator;

    .line 81
    return-void
.end method

.method public setRepeat(Z)V
    .locals 0
    .parameter "r"

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Anim;->mRepeat:Z

    .line 84
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Anim;->mStartTime:J

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Anim;->mStatus:I

    .line 64
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Anim;->mStatus:I

    .line 69
    return-void
.end method
