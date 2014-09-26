.class public abstract Lcom/baidu/launcher/ui/widget/baidu/theme/Anim;
.super Ljava/lang/Object;
.source "Anim.java"


# static fields
.field public static final STATUS_RUNNING:I = 0x0

.field public static final STATUS_STOP:I = 0x1


# instance fields
.field protected mCurrentTime:J

.field protected mDuration:I

.field protected mInterpolater:Landroid/view/animation/Interpolator;

.field protected mNode:Lcom/baidu/launcher/ui/widget/baidu/theme/Node;

.field protected mRepeat:Z

.field protected mStartTime:J

.field protected mStatus:I


# direct methods
.method public constructor <init>(Lcom/baidu/launcher/ui/widget/baidu/theme/Node;)V
    .locals 1
    .parameter "n"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Anim;->mStatus:I

    .line 16
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Anim;->mDuration:I

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Anim;->mRepeat:Z

    .line 37
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Anim;->mInterpolater:Landroid/view/animation/Interpolator;

    .line 41
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Anim;->mNode:Lcom/baidu/launcher/ui/widget/baidu/theme/Node;

    .line 42
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/theme/Anim;->stop()V

    .line 43
    return-void
.end method


# virtual methods
.method public Step()V
    .locals 8

    .prologue
    .line 53
    iget v2, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Anim;->mStatus:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Anim;->mCurrentTime:J

    .line 60
    iget-wide v2, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Anim;->mCurrentTime:J

    iget-wide v4, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Anim;->mStartTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    iget v3, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Anim;->mDuration:I

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 61
    .local v1, timePercent:F
    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    invoke-virtual {p0, v1, v2, v3}, Lcom/baidu/launcher/ui/widget/baidu/theme/Anim;->clamp(FFF)F

    move-result v1

    .line 63
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Anim;->mInterpolater:Landroid/view/animation/Interpolator;

    invoke-interface {v2, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 65
    .local v0, animPercent:F
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/theme/Anim;->doTransform(F)V

    .line 68
    iget-wide v2, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Anim;->mCurrentTime:J

    iget-wide v4, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Anim;->mStartTime:J

    iget v6, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Anim;->mDuration:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 69
    iget-boolean v2, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Anim;->mRepeat:Z

    if-eqz v2, :cond_2

    .line 70
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/theme/Anim;->start()V

    goto :goto_0

    .line 72
    :cond_2
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/theme/Anim;->stop()V

    goto :goto_0
.end method

.method protected clamp(FFF)F
    .locals 1
    .parameter "i"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 45
    cmpg-float v0, p1, p2

    if-gez v0, :cond_0

    .line 49
    .end local p2
    :goto_0
    return p2

    .line 47
    .restart local p2
    :cond_0
    cmpl-float v0, p1, p3

    if-lez v0, :cond_1

    move p2, p3

    .line 48
    goto :goto_0

    :cond_1
    move p2, p1

    .line 49
    goto :goto_0
.end method

.method public abstract doTransform(F)V
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Anim;->mStatus:I

    .line 94
    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/theme/Anim;->doTransform(F)V

    .line 95
    return-void
.end method

.method public setDuration(I)V
    .locals 0
    .parameter "d"

    .prologue
    .line 97
    iput p1, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Anim;->mDuration:I

    .line 99
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .parameter "i"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Anim;->mInterpolater:Landroid/view/animation/Interpolator;

    .line 103
    return-void
.end method

.method public setRepeat(Z)V
    .locals 0
    .parameter "r"

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Anim;->mRepeat:Z

    .line 106
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 81
    const-string v0, "anim"

    const-string v1, "start"

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Anim;->mStartTime:J

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Anim;->mStatus:I

    .line 86
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Anim;->mStatus:I

    .line 91
    return-void
.end method
